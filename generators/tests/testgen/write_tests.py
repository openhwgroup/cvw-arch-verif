##################################
# write_tests.py
#
# jcarlin@hmc.edu 6 October 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
##################################

"""
Individual test generation utilities for cvw-arch-verif.

Architecture:
- Two-level design: Coverpoint handlers (iterate test values) + Instruction formatters (format assembly)
- Coverpoint handlers: make_rd(), make_rs1_edges(), make_cp_gpr_hazard(), etc.
- InstructionGenerator: Handles type-specific instruction formatting
- InstructionParams: Structured parameters for test cases
"""

from random import seed

from testgen.common import myhash
from testgen.make_coverpoints import *
from testgen.test_data import TestData

# ============================================================================
# COVERPOINT DISPATCHER
# ============================================================================


def write_tests_for_instruction(
    instr_name: str, instr_data: dict[str, str | list[str]], test_data: TestData, extension: str
) -> str:
    """
    Generate tests for a specific instruction based on its coverpoints.
    Each coverpoint generates multiple test cases.

    Args:
        instr_name: Instruction mnemonic (e.g., 'add', 'lw')
        instr_data: Dictionary with 'type' and 'coverpoints' keys
        test_data: Test data context
        extension: Extension name (e.g., 'I', 'M', 'Zba')

    Returns:
        Generated test code as a string
    """
    # Extract relevant data
    instr_type: str = instr_data["type"]
    coverpoints: list[str] = instr_data["coverpoints"]
    test_lines: list[str] = []

    # Coverpoints that don't need dedicated test generation
    skip_coverpoints = {
        "cp_imm_edges_6bit_n0",  # Used only for cross products
        "cp_rd_sign",  # Already covered by rd_edges
        "cmp_rd_rs1_eqval",  # Already covered by cr_rs1_rs2_edges
        "cmp_rd_rs2_eqval",  # Already covered by cr_rs1_rs2_edges
    }

    # Iterate through each coverpoint and generate tests
    for coverpoint in coverpoints:
        # Skip coverpoints that don't need test generation
        if coverpoint in skip_coverpoints:
            continue

        # Produce a deterministic seed for repeatable random numbers
        hashval = myhash(instr_name + coverpoint)
        seed(hashval)

        # ====================================================================
        # SPECIAL/TRIVIAL COVERPOINTS
        # ====================================================================
        # If cp_asm_count is the only coverpoint, generate a trivial test:
        if coverpoint == "cp_asm_count":
            if len(coverpoints) == 1:
                test_lines.extend(["# Testcase cp_asm_count", f"{instr_name}"])

        # ====================================================================
        # EDGE VALUE COVERPOINTS
        # ====================================================================

        elif coverpoint.startswith("cp_rs1_edges"):
            test_lines.extend(make_rs1_edges(instr_name, instr_type, coverpoint, test_data))

        elif coverpoint.startswith("cp_rs2_edges"):
            test_lines.extend(make_rs2_edges(instr_name, instr_type, coverpoint, test_data))

        elif coverpoint.startswith("cr_rs1_rs2_edges"):
            test_lines.extend(make_cr_rs1_rs2_edges(instr_name, instr_type, coverpoint, test_data))

        elif coverpoint.startswith("cr_rs1_imm_edges"):
            test_lines.extend(make_cr_rs1_imm_edges(instr_name, instr_type, coverpoint, test_data))

        # ====================================================================
        # HAZARD COVERPOINTS (special handling - instruction sequences)
        # ====================================================================

        elif coverpoint.startswith("cp_gpr_hazard") or coverpoint.startswith("cp_fpr_hazard"):
            test_lines.extend(make_cp_gpr_hazard(instr_name, instr_type, coverpoint, test_data))

        elif coverpoint == "cp_mem_hazard":
            test_lines.extend(make_mem_hazard(instr_name, instr_type, test_data))

        elif coverpoint == "cp_f_mem_hazard":
            test_lines.extend(make_f_mem_hazard(instr_name, instr_type, test_data))

        # ====================================================================
        # BASIC REGISTER COVERPOINTS
        # ====================================================================

        elif coverpoint.startswith("cp_rd"):
            test_lines.extend(make_rd(instr_name, instr_type, coverpoint, test_data))

        elif coverpoint.startswith("cp_rs1"):
            test_lines.extend(make_rs1(instr_name, instr_type, coverpoint, test_data))

        elif coverpoint.startswith("cp_rs2"):
            test_lines.extend(make_rs2(instr_name, instr_type, coverpoint, test_data))

        # ====================================================================
        # COMPARE REGISTER COVERPOINTS
        # ====================================================================

        elif coverpoint.startswith("cmp_rd_rs1_rs2"):
            test_lines.extend(make_cmp_rd_rs1_rs2(instr_name, instr_type, coverpoint, test_data))

        elif coverpoint.startswith("cmp_rs1_rs2"):
            test_lines.extend(make_cmp_rs1_rs2(instr_name, instr_type, coverpoint, test_data))

        elif coverpoint.startswith("cmp_rd_rs1"):
            test_lines.extend(make_cmp_rd_rs1(instr_name, instr_type, coverpoint, test_data))

        elif coverpoint.startswith("cmp_rd_rs2"):
            test_lines.extend(make_cmp_rd_rs2(instr_name, instr_type, coverpoint, test_data))

        # ====================================================================
        # IMMEDIATE COVERPOINTS
        # ====================================================================

        elif coverpoint.startswith("cp_imm_edges"):
            # Different handling based on instruction
            # if instr_name == "jalr":
            #     test_lines.extend(make_imm_edges_jalr(instr_name, instr_type, test_data))
            # else:
            test_lines.extend(make_cp_imm_edges(instr_name, instr_type, coverpoint, test_data))

        # ====================================================================
        # WARNING FOR MISSING COVERPOINT IMPLEMENTATIONS
        # ====================================================================

        else:
            print(f"Warning: {coverpoint} not implemented yet for {instr_name}")

    # Combine test lines into a single string
    return "\n".join(test_lines) + "\n"
