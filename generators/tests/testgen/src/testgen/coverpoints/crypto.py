# testgen/coverpoints/crypto.py
"""Coverpoint test generation for crypto instructions."""

from testgen.coverpoints.coverpoints import add_coverpoint_generator
from testgen.data.instruction_params import generate_random_params
from testgen.data.test_data import TestData
from testgen.instruction_formatters import format_single_test


@add_coverpoint_generator("cp_bs")
def make_cp_bs(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    """Generate tests for bs field of crypto instructions."""
    if coverpoint == "cp_bs":
        bs_vals = range(4)
    else:
        raise ValueError(f"Unknown cp_bs coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []
    for bs in bs_vals:
        test_lines.append("")
        params = generate_random_params(test_data, instr_type, immval=bs)
        desc = f"{coverpoint}: bs={bs}"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


@add_coverpoint_generator("cp_sbox")
def make_cp_sbox(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    """Generate tests to exercise sbox."""
    if coverpoint == "cp_sbox":
        sbox_vals = range(256)
    else:
        raise ValueError(f"Unknown cp_sbox coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []
    for sbox in sbox_vals:
        # repeat sbox value in each byte
        if test_data.xlen == 32:
            s = sbox | sbox << 8 | sbox << 16 | sbox << 24
        else:  # test_data.xlen == 64
            s = sbox | sbox << 8 | sbox << 16 | sbox << 24 | sbox << 32 | sbox << 40 | sbox << 48 | sbox << 56

        test_lines.append("")
        params = generate_random_params(test_data, instr_type, allow_x0=False, rs1val=s, rs2val=s)
        desc = f"{coverpoint} = {sbox}"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


@add_coverpoint_generator("cp_rnum")
def make_cp_rnum(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    """Generate tests for rnum field of crypto instructions."""
    if coverpoint == "cp_rnum":
        rnum_vals = range(0xB)  # rnum values above 0xA are reserved
    else:
        raise ValueError(f"Unknown cp_rnum coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []
    for rnum in rnum_vals:
        test_lines.append("")
        params = generate_random_params(test_data, instr_type, immval=rnum)
        desc = f"{coverpoint}: rnum={rnum}"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines
