##################################
# write_tests.py
#
# jcarlin@hmc.edu 6 October 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
##################################

"""
Individual test generation utilities for cvw-arch-verif.
"""

from random import seed
from typing import Literal

# Import common utilities
from testgen.common import load_float_reg, load_int_reg, myhash, write_sigupd

# Import edge value definitions
from testgen.edges import (
    FLOAT_EDGES,
    IMMEDIATE_EDGES,
    INTEGER_EDGES,
    MEMORY_EDGES,
    get_general_edges,
    get_orcb_edges,
)

# Import immediate formatting utility
from testgen.immediates import gen_random_imm, modify_imm

# Import template utilities
from testgen.load_templates import insert_test_template

# Import register management
from testgen.test_data import TestData


def write_tests_for_instruction(
    instr_name: str, instr_data: dict[str, str | list[str]], test_data: TestData, extension: str
) -> str:
    """Generate tests for a specific instruction based on its coverpoints."""
    # Extract relevant data
    instr_type: str = instr_data["type"]
    coverpoints: list[str] = instr_data["coverpoints"]
    test_lines: list[str] = []
    # Iterate through each coverpoint and generate tests
    for coverpoint in coverpoints:
        # produce a deterministic seed for repeatable random numbers distinct for each instruction and coverpoint
        hashval = myhash(instr_name + coverpoint)
        seed(hashval)
        # If cp_asm_count is the only coverpoint, generate a trivial test:
        if coverpoint == "cp_asm_count":
            if len(coverpoints) == 1:
                test_lines.extend(
                    [
                        "# Testcase cp_asm_count",
                        f"{instr_name}",
                    ]
                )

        elif coverpoint == "cp_rd":
            test_lines.extend(make_rd(instr_name, instr_type, test_data, range(test_data.int_regs.reg_count)))

        # Skip coverpoints that are covered by crosses or other coverpoints
        elif coverpoint in ["cp_imm_edges_6bit_n0"]:
            print(f"Skipping {instr_name} {coverpoint} as it is covered by crosses")
        # else:
        # print(f"Warning: {coverpoint} not implemented yet for {instr_name}")

    # Combine test lines into a single string
    return "\n".join(test_lines) + "\n"


def make_rd(instr_name: str, instr_type: str, test_data: TestData, rd_values) -> list[str]:
    """Generate tests to cover the cp_rd coverpoint."""
    test_lines = []
    for rd in rd_values:
        test_lines.append(test_data.int_regs.consume_registers([rd]))
        [rs1, rs2] = test_data.int_regs.get_registers(2)
        [rs1val, rs2val, immval] = [gen_random_imm(test_data.xlen) for _ in range(3)]
        desc = "cp_rd (Test destination rd = x" + str(rd) + ")"
        test_lines.append(
            write_test_case(
                desc,
                instr_name,
                instr_type,
                test_data,
                rs1=rs1,
                rs2=rs2,
                rd=rd,
                rs1val=rs1val,
                rs2val=rs2val,
                immval=immval,
            )
        )
        test_data.int_regs.return_registers([rd, rs1, rs2])
    return test_lines


def write_test_case(
    desc: str,
    instr_name: str,
    instr_type: str,
    test_data: TestData,
    *,
    rs1: int | None = None,
    rs2: int | None = None,
    rs3: int | None = None,
    rd: int | None = None,
    rs1val: int | None = None,
    rs2val: int | None = None,
    rs3val: int | None = None,
    rdval: int | None = None,
    immval: int | None = None,
    frm: bool = False,
) -> str:
    """Generate a single test case for a specific instruction and coverpoint."""
    test_lines = [f"# Testcase {desc}"]
    match instr_type:
        case "R":
            test_lines.extend(
                [
                    load_int_reg("rs1", rs1, rs1val, test_data),
                    load_int_reg("rs2", rs2, rs2val, test_data),
                    f"{instr_name} x{rd}, x{rs1}, x{rs2} # perform operation",
                    write_sigupd(rd, test_data, "int"),
                ]
            )
        case "I":
            scaled_imm = modify_imm(immval, 12)
            test_lines.extend(
                [
                    load_int_reg("rs1", rs1, rs1val, test_data),
                    f"{instr_name} x{rd}, x{rs1}, {scaled_imm} # perform operation",
                    write_sigupd(rd, test_data, "int"),
                ]
            )
        case "U":
            scaled_imm = modify_imm(immval, 20, signed=False)
            test_lines.extend(
                [
                    f"{instr_name} x{rd}, {scaled_imm} # perform operation",
                    write_sigupd(rd, test_data, "int"),
                ]
            )
        case "B":
            # TODO: Maybe loop over rs1val and rs2val being the same?
            test_lines.extend(
                [
                    load_int_reg("rs1", rs1, rs1val, test_data),
                    load_int_reg("rs2", rs2, rs2val, test_data),
                    f"LI(x{rd}, 1) # initialize rd to a value that should get changed to 0 if branch taken\n",
                    f"{instr_name} x{rs1}, x{rs2}, 1f # perform operation",
                    f"LI(x{rd}, 0) # branch not taken, set rd to 0",
                    "1:",
                    write_sigupd(rd, test_data, "int"),
                ]
            )
        case "J":
            test_lines.extend(
                [
                    f"LI(x{rs2}, {rs1}) # branch is taken",
                    f"{instr_name} x{rd}, 1f # perform operation",
                    f"LI(x{rs2}, 0) # branch not taken",
                    "1:",
                    write_sigupd(rd, test_data, "int"),
                    write_sigupd(rs2, test_data, "int"),
                ]
            )
        case "JR":
            scaled_imm = modify_imm(immval, 12, restrict_offset=True)
            neg_scaled_imm = modify_imm(-immval, 12, restrict_offset=True)
            test_lines.extend(
                [
                    f"LA(x{rs1}, 1f) # jump destination address",
                    f"addi x{rs1}, x{rs1}, {neg_scaled_imm} # add immediate to lower part of rs1",
                    f"LI(x{rs2}, {rs1}) # branch is taken",
                    f"{instr_name} x{rd}, x{rs1}, {scaled_imm} # perform operation",
                    f"LI(x{rs2}, 0) # branch not taken",
                    "1:",
                    write_sigupd(rd, test_data, "int"),
                    write_sigupd(rs2, test_data, "int"),
                ]
            )
        case "IS":
            scaled_imm = modify_imm(immval, test_data.xlen, modulo=True)
            test_lines.extend(
                [
                    load_int_reg("rs1", rs1, rs1val, test_data),
                    f"{instr_name} x{rd}, x{rs1}, {immval} # perform operation",
                    write_sigupd(rd, test_data, "int"),
                ]
            )
        case "ISW":
            scaled_imm = modify_imm(immval, 32, modulo=True)
            test_lines.extend(
                [
                    load_int_reg("rs1", rs1, rs1val, test_data),
                    f"{instr_name} x{rd}, x{rs1}, {immval} # perform operation",
                    write_sigupd(rd, test_data, "int"),
                ]
            )
        case "L":
            scaled_imm = modify_imm(immval, 12)
            test_lines.extend(
                [
                    load_int_reg("rs2", rs2, rs2val, test_data),
                    f"LA(x{rs1}, scratch) # base address",
                ]
            )
            if immval == -2048:
                test_lines.extend(
                    [
                        f"addi x{rs1}, x{rs1}, 2047 # increment rs1 by 2047",
                        f"addi x{rs1}, x{rs1}, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048",
                    ]
                )
            else:
                neg_scaled_imm = modify_imm(-immval, 12)
                test_lines.append(f"addi x{rs1}, x{rs1}, {neg_scaled_imm} # sub immediate from rs1 to counter offset")
            test_lines.extend(
                [
                    f"SREG x{rs2}, {scaled_imm}(x{rs1}) # store value to put something in memory",
                    f"{instr_name} x{rd}, {scaled_imm}(x{rs1}) # perform operation",
                    write_sigupd(rd, test_data, "int"),
                ]
            )
        case "I1":
            test_lines.extend(
                [
                    load_int_reg("rs1", rs1, rs1val, test_data),
                    f"{instr_name} x{rd}, x{rs1} # perform operation",
                    write_sigupd(rd, test_data, "int"),
                ]
            )

        # case "FR":
        #     test_lines.extend(
        #         [
        #             "fsflagsi 0b00000 # clear all fflags",
        #             load_float_reg("rs1", rs1, rs1val, test_data.flen, test_data),
        #             load_float_reg("rs2", rs2, rs2val, test_data.flen, test_data),
        #         ]
        #     )
    return "\n".join(test_lines)
