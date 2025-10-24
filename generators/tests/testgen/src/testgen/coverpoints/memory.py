# testgen/coverpoints/memory.py
"""Memory-related coverpoint generators (cp_memval, cp_offset, cr_rs1_rs2_edges_offset)."""

from testgen.coverpoints.coverpoints import add_coverpoint_generator
from testgen.data.instruction_params import generate_random_params
from testgen.data.test_data import TestData
from testgen.instruction_formatters import format_single_test
from testgen.utils.common import write_sigupd
from testgen.utils.edges import MEMORY_EDGES


@add_coverpoint_generator("cp_memval")
def make_memval(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    """Generate tests for memory value edge cases."""
    if coverpoint == "cp_memval_byte":
        memvals = MEMORY_EDGES.byte
    elif coverpoint == "cp_memval_hword":
        memvals = MEMORY_EDGES.hword
    elif coverpoint == "cp_memval_word":
        memvals = MEMORY_EDGES.word
    elif coverpoint == "cp_memval_double":
        memvals = MEMORY_EDGES.double
    else:
        raise ValueError(f"Unknown cp_memval coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []
    for val in memvals:
        test_lines.append("")
        params = generate_random_params(test_data, instr_type, allow_x0=False, rs2val=val)
        desc = f"{coverpoint} (memory value = {val:#x})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


@add_coverpoint_generator("cp_align")
def make_align(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    """Generate tests for alignment coverpoints."""
    if coverpoint == "cp_align_byte":
        alignments = [0, 1, 2, 3, 4, 5, 6, 7]
    elif coverpoint == "cp_align_hword":
        alignments = [0, 2, 4, 6]
    elif coverpoint == "cp_align_word":
        alignments = [0, 4]
    else:
        raise ValueError(f"Unknown cp_align coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []
    for alignment in alignments:
        test_lines.append("")
        params = generate_random_params(test_data, instr_type, immval=alignment)
        desc = f"{coverpoint}: imm[2:0]={alignment:03b}"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


@add_coverpoint_generator("cp_offset")
def make_offset(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    """Generate tests for backward branch negative offsets."""
    params = generate_random_params(test_data, instr_type)
    assert params.rs1 is not None and params.rs2 is not None and params.rd is not None
    check_reg = test_data.int_regs.get_register()

    # Generate instruction-specific test line
    if instr_type == "B":
        # B-type: beq, bne, blt, bge, bltu, bgeu - always branches when comparing x0 with x0
        branch_instr = f"{instr_name} x0, x0, 1b # backward branch"
    elif instr_type == "JR":
        # JR-type: jalr
        branch_instr = f"{instr_name} x{params.rd}, x{params.rs2}, 0 # backward jalr"
    elif instr_type == "J":
        # J-type: jal
        branch_instr = f"{instr_name} x{params.rd}, 1b # backward jump"
    elif instr_type in ["CJR", "CJALR"]:
        # Compressed register jumps
        if instr_name == "c.jalr":
            test_data.int_regs.return_register(params.rd)
            test_data.int_regs.consume_registers([1])  # c.jalr always uses x1
            params.rd = 1
        branch_instr = f"{instr_name} x{params.rs2} # backward jump"
    elif instr_type == "CJ":
        # Compressed unconditional jump
        branch_instr = f"{instr_name} 1b # backward jump"
    elif instr_type == "CB":
        branch_instr = f"{instr_name} x{params.rs1}, 1b # backward branch"
    else:
        raise ValueError(f"cp_offset coverpoint not supported for instruction {instr_name} with type {instr_type}")

    test_lines = [
        "\n# Testcase cp_offset negative bin",
        "j 2f # jump past backward branch target",
        "1: j 3f # backward branch target: jump past backward branch",
        "2:",
    ]
    if instr_type in ["JR", "CJR", "CJALR"]:
        test_lines.append(f"LA(x{params.rs2}, 1b) # load backward branch target")
    elif instr_type == "CB":
        branch_val = 0 if instr_name == "c.beqz" else 1  # set value to ensure branch is taken
        test_lines.append(f"LI(x{params.rs1}, {branch_val}) # initialize {params.rs1} to {branch_val} for taken branch")
    test_lines.extend(
        [
            f"LI(x{check_reg}, 1) # branch is taken",
            branch_instr,
            f"LI(x{check_reg}, 0) # branch is not taken",
            "3: # done with sequence",
            write_sigupd(check_reg, test_data),
        ]
    )
    # For jalr, check return address too
    if instr_type in ["JR", "CJR", "CJALR"]:
        temp_reg = test_data.int_regs.get_register(exclude_reg=[0])
        test_lines.extend(
            [
                f"auipc x{temp_reg}, 0 # get current PC",
                f"sub x{params.rd}, x{params.rd}, x{temp_reg} # subtract PC to make position-independent",
                write_sigupd(params.rd, test_data),
            ]
        )
        test_data.int_regs.return_register(temp_reg)

    test_data.int_regs.return_register(check_reg)
    test_data.int_regs.return_registers(params.used_int_regs)
    return test_lines
