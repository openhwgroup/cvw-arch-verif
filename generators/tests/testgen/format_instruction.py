from collections.abc import Callable

from testgen.common import load_int_reg, write_sigupd
from testgen.immediates import modify_imm
from testgen.instruction_params import InstructionParams
from testgen.test_data import TestData


def select_formatter(
    instr_type: str,
) -> Callable[[str, TestData, InstructionParams], tuple[list[str], list[str], list[str]]]:
    """Select the appropriate formatter function based on instruction type."""
    for pattern, handler in INSTRUCTION_FORMAT_HANDLERS.items():
        if instr_type == pattern:
            return handler
    raise ValueError(f"No formatter handler found for formatter: {instr_type}")


def format_instruction(
    instr_name: str, instr_type: str, test_data: TestData, params: InstructionParams
) -> tuple[str, str, str]:
    """
    Generate just the instruction part (for hazard sequences).

    This generates register setup and the instruction itself, but no
    signature update. Used when generating instruction sequences where
    only the final result needs to be captured.

    Args:
        params: Instruction parameters

    Returns:
        List of assembly instruction lines
        List of signature update lines
    """
    # Get the type-specific formatter
    format_handler = select_formatter(instr_type)

    # Call the formatter to get test lines
    setup, test, check = format_handler(instr_name, test_data, params)
    return "\n".join(setup), "\n".join(test), "\n".join(check)


def format_single_test(
    instr_name: str, instr_type: str, test_data: TestData, params: InstructionParams, desc: str
) -> str:
    """
    Generate a complete single-instruction test with setup and sigupd.

    This is the main entry point for generating a full test case including:
    - Test description comment
    - Register initialization
    - The instruction itself
    - Signature update

    Args:
        desc: Test description (e.g., "cp_rd (Test destination rd = x5)")
        params: Instruction parameters

    Returns:
        Complete test case as a string
    """
    test_lines = [f"# Testcase {desc}"]

    # Add test and signature update lines
    setup, test, check = format_instruction(instr_name, instr_type, test_data, params)
    test_lines.extend([setup, test, check])

    return "\n".join(test_lines)


# ========================================================================
# INSTRUCTION TYPE FORMATTERS
# ========================================================================


def format_r_type(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format R-type instruction (add, sub, and, or, xor, etc.)."""
    assert params.rs1 is not None and params.rs1val is not None
    assert params.rs2 is not None and params.rs2val is not None
    assert params.rd is not None
    setup = [
        load_int_reg("rs1", params.rs1, params.rs1val, test_data),
        load_int_reg("rs2", params.rs2, params.rs2val, test_data),
    ]
    test = [
        f"{instr_name} x{params.rd}, x{params.rs1}, x{params.rs2} # perform operation",
    ]
    check = [write_sigupd(params.rd, test_data, "int")]
    return (setup, test, check)


def format_i_type(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format I-type instruction (addi, slti, xori, ori, andi, addiw)."""
    assert params.rs1 is not None and params.rs1val is not None
    assert params.rd is not None
    assert params.immval is not None
    scaled_imm = modify_imm(params.immval, 12)
    setup = [
        load_int_reg("rs1", params.rs1, params.rs1val, test_data),
    ]
    test = [
        f"{instr_name} x{params.rd}, x{params.rs1}, {scaled_imm} # perform operation",
    ]
    check = [write_sigupd(params.rd, test_data, "int")]
    return (setup, test, check)


def format_u_type(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format U-type instruction (lui, auipc)."""
    assert params.rd is not None and params.immval is not None
    scaled_imm = modify_imm(params.immval, 20, signed=False)
    setup = []
    test = [
        f"{instr_name} x{params.rd}, {scaled_imm} # perform operation",
    ]
    check = [write_sigupd(params.rd, test_data, "int")]
    return (setup, test, check)


def format_b_type(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format B-type instruction (beq, bne, blt, bge, bltu, bgeu)."""
    assert params.rs1 is not None and params.rs1val is not None
    assert params.rs2 is not None and params.rs2val is not None
    assert params.rd is not None
    setup = [
        load_int_reg("rs1", params.rs1, params.rs1val, test_data),
        load_int_reg("rs2", params.rs2, params.rs2val, test_data),
        f"LI(x{params.rd}, 1) # initialize rd to 1 (branch not taken value)",
    ]
    test = [
        f"{instr_name} x{params.rs1}, x{params.rs2}, 1f # perform operation",
    ]
    check = [
        f"LI(x{params.rd}, 0) # branch not taken, set rd to 0",
        "1:",
        write_sigupd(params.rd, test_data, "int"),
    ]
    return (setup, test, check)


def format_j_type(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format J-type instruction (jal)."""
    assert params.rd is not None and params.rs2 is not None
    setup = [
        f"LI(x{params.rs2}, 1) # initialize indicator to 1 (jump taken)",
    ]
    test = [
        f"{instr_name} x{params.rd}, 1f # perform jump",
    ]
    check = [
        f"LI(x{params.rs2}, 0) # should not execute (jump not taken)",
        "1:",
        write_sigupd(params.rd, test_data, "int"),
        write_sigupd(params.rs2, test_data, "int"),
    ]
    return (setup, test, check)


def format_jr_type(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format JR-type instruction (jalr)."""
    assert params.rs1 is not None and params.rs2 is not None and params.rd is not None
    assert params.immval is not None
    scaled_imm = modify_imm(params.immval, 12, restrict_offset=True)
    neg_scaled_imm = modify_imm(-params.immval, 12, restrict_offset=True)
    setup = [
        f"LA(x{params.rs1}, 1f) # load jump target address",
        f"addi x{params.rs1}, x{params.rs1}, {neg_scaled_imm} # subtract offset to compensate",
        f"LI(x{params.rs2}, 1) # initialize indicator to 1 (jump taken)",
    ]
    test = [
        f"{instr_name} x{params.rd}, x{params.rs1}, {scaled_imm} # perform jump with offset",
    ]
    check = [
        f"LI(x{params.rs2}, 0) # should not execute (jump not taken)",
        "1:",
        write_sigupd(params.rd, test_data, "int"),
        write_sigupd(params.rs2, test_data, "int"),
    ]
    return (setup, test, check)


def format_is_type(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format IS-type instruction (slli, srli, srai, slliw, srliw, sraiw)."""
    assert params.rs1 is not None and params.rs1val is not None
    assert params.rd is not None
    assert params.immval is not None
    # Shift amount is modulo xlen
    shift_amt = modify_imm(params.immval, test_data.xlen, modulo=True)
    setup = [
        load_int_reg("rs1", params.rs1, params.rs1val, test_data),
    ]
    test = [
        f"{instr_name} x{params.rd}, x{params.rs1}, {shift_amt} # perform operation",
    ]
    check = [
        write_sigupd(params.rd, test_data, "int"),
    ]
    return (setup, test, check)


def format_isw_type(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format ISW-type instruction (word-width shifts on RV64)."""
    assert params.rs1 is not None and params.rs1val is not None
    assert params.rd is not None
    assert params.immval is not None
    # Shift amount is modulo 32 for word operations
    shift_amt = modify_imm(params.immval, 32, modulo=True)
    setup = [
        load_int_reg("rs1", params.rs1, params.rs1val, test_data),
    ]
    test = [
        f"{instr_name} x{params.rd}, x{params.rs1}, {shift_amt} # perform operation",
    ]
    check = [
        write_sigupd(params.rd, test_data, "int"),
    ]
    return (setup, test, check)


def format_l_type(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format L-type instruction (lb, lh, lw, ld, lbu, lhu, lwu)."""
    assert params.rs1 is not None
    assert params.rs2 is not None and params.rs2val is not None
    assert params.rd is not None
    assert params.immval is not None
    scaled_imm = modify_imm(params.immval, 12)
    setup = [
        load_int_reg("rs2", params.rs2, params.rs2val, test_data),
        f"LA(x{params.rs1}, scratch) # load base address",
    ]

    # Handle special case where offset is -2048 (can't represent +2048 in 12 bits)
    if params.immval == -2048:
        setup.extend(
            [
                f"addi x{params.rs1}, x{params.rs1}, 2047 # increment by 2047",
                f"addi x{params.rs1}, x{params.rs1}, 1 # increment by 1 more for total +2048",
            ]
        )
    else:
        neg_scaled_imm = modify_imm(-params.immval, 12)
        setup.append(f"addi x{params.rs1}, x{params.rs1}, {neg_scaled_imm} # adjust base address for offset")

    setup.append(f"SREG x{params.rs2}, {scaled_imm}(x{params.rs1}) # store test value to memory")
    test = [
        f"{instr_name} x{params.rd}, {scaled_imm}(x{params.rs1}) # perform load",
    ]
    check = [write_sigupd(params.rd, test_data, "int")]
    return (setup, test, check)


def format_s_type(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format S-type instruction (sb, sh, sw, sd)."""
    assert params.rs1 is not None
    assert params.rs2 is not None and params.rs2val is not None
    assert params.rd is not None
    assert params.immval is not None
    scaled_imm = modify_imm(params.immval, 12)
    setup = [
        load_int_reg("rs2", params.rs2, params.rs2val, test_data),
        f"LA(x{params.rs1}, scratch) # load base address",
    ]

    # Handle special case where offset is -2048
    if params.immval == -2048:
        setup.extend(
            [
                f"addi x{params.rs1}, x{params.rs1}, 2047 # increment by 2047",
                f"addi x{params.rs1}, x{params.rs1}, 1 # increment by 1 more for total +2048",
            ]
        )
    else:
        neg_scaled_imm = modify_imm(-params.immval, 12)
        setup.append(f"addi x{params.rs1}, x{params.rs1}, {neg_scaled_imm} # adjust base address for offset")

    test = [f"{instr_name} x{params.rs2}, {scaled_imm}(x{params.rs1}) # perform store"]
    check = [
        f"LREG x{params.rd}, {scaled_imm}(x{params.rs1}) # load back to verify",
        write_sigupd(params.rd, test_data, "int"),
    ]
    return (setup, test, check)


def format_i1_type(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format I1-type instruction (single-operand like mv, not, neg, etc.)."""
    assert params.rs1 is not None and params.rs1val is not None and params.rd is not None
    setup = [
        load_int_reg("rs1", params.rs1, params.rs1val, test_data),
    ]
    test = [
        f"{instr_name} x{params.rd}, x{params.rs1} # perform operation",
    ]
    check = [write_sigupd(params.rd, test_data, "int")]
    return (setup, test, check)


INSTRUCTION_FORMAT_HANDLERS: dict[
    str, Callable[[str, TestData, InstructionParams], tuple[list[str], list[str], list[str]]]
] = {
    "R": format_r_type,
    "I": format_i_type,
    "U": format_u_type,
    "B": format_b_type,
    "J": format_j_type,
    "JR": format_jr_type,
    "IS": format_is_type,
    "ISW": format_isw_type,
    "L": format_l_type,
    "S": format_s_type,
    "I1": format_i1_type,
}
