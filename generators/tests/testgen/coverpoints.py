# ============================================================================
# COVERPOINT HANDLERS
# ============================================================================
# Each handler generates multiple test cases for a specific coverpoint
# Handler is selected based on coverpoint name using COVERPOINT_HANDLERS dict
# at the end of this file
#
# All handlers have similar structure:
# 1. Loop over test values (registers, edge cases, etc.)
# 2. Generate params with fixed + random values
# 3. Call formatter to generate type specific test code
# 4. Manage register allocation
# 5. Return list of test lines
# ============================================================================

# Most coverpoint handlers should be generic and reusable across instructions and instruction types.
# They should not contain instruction-specific logic and should instead rely on the instruction formatters.
# See make_rd for an example.
# Some coverpoints are inherently type or instruction specific and need custom logic. These can directly
# generate the test code instead of using the formatter. They should still be as general as possible.
# See make_cp_imm_edges_branch for an example.

from collections.abc import Callable
from random import seed

from testgen.common import load_int_reg, myhash, write_sigupd
from testgen.edges import (
    IMMEDIATE_EDGES,
    MEMORY_EDGES,
    get_general_edges,
    get_orcb_edges,
)
from testgen.format_instruction import format_instruction, format_single_test
from testgen.instruction_params import generate_random_params
from testgen.load_templates import insert_test_template
from testgen.test_data import TestData

SKIP_COVERPOINTS = frozenset(
    {
        "cp_imm_edges_6bit_n0",  # Used only for cross products
        "cp_rd_sign",            # Already covered by rd_edges
        "cmp_rd_rs1_eqval",      # Already covered by cr_rs1_rs2_edges
        "cmp_rd_rs2_eqval",      # Already covered by cr_rs1_rs2_edges
    }
)


def select_coverpoint_generator(coverpoint: str) -> Callable[[str, str, str, TestData], list[str]]:
    """Select the appropriate coverpoint generator function based on coverpoint name. Matches using prefix matching."""
    for pattern, handler in COVERPOINT_HANDLERS.items():
        if coverpoint.startswith(pattern):
            return handler
    raise ValueError(f"No coverpoint generator found for coverpoint: {coverpoint}")


# Coverpoints that don't need dedicated test generation


def generate_tests_for_coverpoint(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> str:
    """
    Generate tests for a specific coverpoint.

    Args:
        instr_name: Instruction mnemonic
        instr_type: Instruction type
        coverpoint: Coverpoint name
        test_data: Test data context

    Returns:
        List of test code lines
    """
    # Skip coverpoints that don't need test generation
    if coverpoint in SKIP_COVERPOINTS:
        return ""

    # Get the coverpoint specific generator
    coverpoint_handler = select_coverpoint_generator(coverpoint)

    # Produce a deterministic seed for repeatable random numbers
    hashval = myhash(instr_name + coverpoint)
    seed(hashval)

    # Call the generator to get test lines
    test_lines = coverpoint_handler(instr_name, instr_type, coverpoint, test_data)
    return "\n".join(test_lines)


# ========================================================================
# COVERPOINT GENERATORS
# ========================================================================


def make_rd(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    # Determine which rd registers to test based on coverpoint variant
    if coverpoint == "cp_rd":
        rd_regs = list(range(test_data.int_regs.reg_count))
    elif coverpoint.endswith("_nx0"):
        rd_regs = list(range(1, test_data.int_regs.reg_count))  # Exclude x0
    elif coverpoint.endswith("_nx2"):
        rd_regs = list(range(1, test_data.int_regs.reg_count))  # Exclude x0
        rd_regs.remove(2)  # Exclude x2
    elif coverpoint.endswith("_p"):
        rd_regs = list(range(8, 16))  # x8-x15 for compressed instructions
    else:
        raise ValueError(f"Unknown cp_rd coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []

    # Generate tests
    for rd in rd_regs:
        test_lines.append(test_data.int_regs.consume_registers([rd]))
        params = generate_random_params(test_data, instr_type, rd=rd)
        desc = f"{coverpoint} (Test destination rd = x{rd})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_rs1(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    # Determine which rs1 registers to test based on coverpoint variant
    if coverpoint == "cp_rs1":
        rs1_regs = range(test_data.int_regs.reg_count)
    elif coverpoint.endswith("_nx0"):
        rs1_regs = range(1, test_data.int_regs.reg_count)  # Exclude x0
    elif coverpoint.endswith("_p"):
        rs1_regs = range(8, 16)  # x8-x15 for compressed instructions
    else:
        raise ValueError(f"Unknown cp_rs1 coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []

    # Generate tests
    for rs1 in rs1_regs:
        test_lines.append(test_data.int_regs.consume_registers([rs1]))
        params = generate_random_params(test_data, instr_type, rs1=rs1)
        desc = f"{coverpoint} (Test source rs1 = x{rs1})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_rs2(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    # Determine which rs2 registers to test based on coverpoint variant
    if coverpoint == "cp_rs2":
        rs2_regs = range(test_data.int_regs.reg_count)
    elif coverpoint.endswith("_nx0"):
        rs2_regs = range(1, test_data.int_regs.reg_count)  # Exclude x0
    elif coverpoint.endswith("_p"):
        rs2_regs = range(8, 16)  # x8-x15 for compressed instructions
    else:
        raise ValueError(f"Unknown cp_rs2 coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []

    # Generate tests
    for rs2 in rs2_regs:
        test_lines.append(test_data.int_regs.consume_registers([rs2]))
        params = generate_random_params(test_data, instr_type, rs2=rs2)
        desc = f"{coverpoint} (Test source rs2 = x{rs2})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_cmp_rd_rs1(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    # Determine which rd registers to test based on coverpoint variant
    if coverpoint == "cmp_rd_rs1":
        regs = range(test_data.int_regs.reg_count)
    elif coverpoint.endswith("_nx0"):
        regs = range(1, test_data.int_regs.reg_count)  # Exclude x0
    elif coverpoint.endswith("_c"):
        regs = range(8, 16)  # x8-x15 for compressed instructions
    else:
        raise ValueError(f"Unknown cmp_rd_rs1 coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []

    # Generate tests
    for reg in regs:
        test_lines.append(test_data.int_regs.consume_registers([reg]))
        params = generate_random_params(test_data, instr_type, rd=reg, rs1=reg)
        desc = f"{coverpoint} (Test rd = rs1 = x{reg})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_cmp_rd_rs2(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    # Determine which rd registers to test based on coverpoint variant
    if coverpoint == "cmp_rd_rs2":
        regs = range(test_data.int_regs.reg_count)
    elif coverpoint.endswith("_nx0"):
        regs = range(1, test_data.int_regs.reg_count)  # Exclude x0
    elif coverpoint.endswith("_c"):
        regs = range(8, 16)  # x8-x15 for compressed instructions
    else:
        raise ValueError(f"Unknown cmp_rd_rs2 coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []

    # Generate tests
    for reg in regs:
        test_lines.append(test_data.int_regs.consume_registers([reg]))
        params = generate_random_params(test_data, instr_type, rd=reg, rs2=reg)
        desc = f"{coverpoint} (Test rd = rs2 = x{reg})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_cmp_rs1_rs2(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    # Determine which rd registers to test based on coverpoint variant
    if coverpoint == "cmp_rs1_rs2":
        regs = range(test_data.int_regs.reg_count)
    elif coverpoint.endswith("_nx0"):
        regs = range(1, test_data.int_regs.reg_count)  # Exclude x0
    elif coverpoint.endswith("_c"):
        regs = range(8, 16)  # x8-x15 for compressed instructions
    else:
        raise ValueError(f"Unknown cmp_rs1_rs2 coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []

    # Generate tests
    for reg in regs:
        test_lines.append(test_data.int_regs.consume_registers([reg]))
        params = generate_random_params(test_data, instr_type, rs1=reg, rs2=reg)
        desc = f"{coverpoint} (Test rs1 = rs2 = x{reg})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_cmp_rd_rs1_rs2(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    # Determine which rd registers to test based on coverpoint variant
    if coverpoint == "cmp_rd_rs1_rs2":
        regs = range(test_data.int_regs.reg_count)
    elif coverpoint.endswith("_nx0"):
        regs = range(1, test_data.int_regs.reg_count)  # Exclude x0
    else:
        raise ValueError(f"Unknown cmp_rd_rs1_rs2 coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []

    # Generate tests
    for reg in regs:
        test_lines.append(test_data.int_regs.consume_registers([reg]))
        params = generate_random_params(test_data, instr_type, rd=reg, rs1=reg, rs2=reg)
        desc = f"{coverpoint} (Test rd = rs1 = rs2 = x{reg})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_rs1_edges(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    if coverpoint == "cp_rs1_edges":
        edges = get_general_edges(test_data.xlen)
    elif coverpoint.endswith("_orcb"):
        edges = get_orcb_edges(test_data.xlen)
    else:
        raise ValueError(f"Unknown cp_rs1_edges coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []

    for edge_val in edges:
        test_lines.append("")
        params = generate_random_params(test_data, instr_type, rs1val=edge_val)
        desc = f"{coverpoint} (Test source rs1 value = {test_data.xlen_format_str.format(edge_val)})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_rs2_edges(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    if coverpoint == "cp_rs2_edges":
        edges = get_general_edges(test_data.xlen)
    else:
        raise ValueError(f"Unknown cp_rs2_edges coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []

    for edge_val in edges:
        test_lines.append("")
        params = generate_random_params(test_data, instr_type, rs2val=edge_val)
        desc = f"{coverpoint} (Test source rs2 value = {test_data.xlen_format_str.format(edge_val)})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_cr_rs1_rs2_edges(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    if coverpoint == "cr_rs1_rs2_edges":
        edges1 = get_general_edges(test_data.xlen)
        edges2 = get_general_edges(test_data.xlen)
    elif coverpoint.endswith("_offset"):
        return make_cr_rs1_rs2_edges_offset(instr_name, instr_type, coverpoint, test_data)
    else:
        raise ValueError(f"Unknown cr_rs1_rs2_edges coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []

    for edge_val1 in edges1:
        for edge_val2 in edges2:
            test_lines.append("")
            params = generate_random_params(test_data, instr_type, rs1val=edge_val1, rs2val=edge_val2)
            desc = f"{coverpoint} (Test source rs1 = {test_data.xlen_format_str.format(edge_val1)} rs2 = {test_data.xlen_format_str.format(edge_val2)})"
            test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
            test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_cp_imm_edges(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    if coverpoint == "cp_imm_edges":
        edges_imm = IMMEDIATE_EDGES.imm_12bit
    elif coverpoint.endswith("_20bit"):
        edges_imm = IMMEDIATE_EDGES.imm_20bit
    elif coverpoint.endswith("_6bit"):
        edges_imm = IMMEDIATE_EDGES.imm_6bit
    elif coverpoint.endswith("_branch"):
        # Branch edges coverpoint is special, use dedicated function
        return make_cp_imm_edges_branch(instr_name, instr_type, coverpoint, test_data)
    elif coverpoint.endswith("_jal"):
        # jal edges coverpoint is special, use dedicated function
        return make_cp_imm_edges_jal(instr_name, instr_type, coverpoint, test_data)
    else:
        raise ValueError(f"Unknown cp_imm_edges coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []

    for edge_val in edges_imm:
        test_lines.append("")
        params = generate_random_params(test_data, instr_type, immval=edge_val)
        desc = f"{coverpoint} (imm = {edge_val})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_cr_rs1_imm_edges(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    edges_reg = get_general_edges(test_data.xlen)
    if coverpoint == "cr_rs1_imm_edges":
        edges_imm = IMMEDIATE_EDGES.imm_12bit
    elif coverpoint.endswith("_6bit"):
        edges_imm = IMMEDIATE_EDGES.imm_6bit
    elif coverpoint.endswith("_6bit_n0"):
        edges_imm = IMMEDIATE_EDGES.imm_6bit[1:]  # exclude imm=0
    elif coverpoint.endswith("_c"):
        edges_imm = IMMEDIATE_EDGES.imm_64_c if test_data.xlen == 64 else IMMEDIATE_EDGES.imm_32_c
    elif coverpoint.endswith("_uimmw"):
        edges_imm = IMMEDIATE_EDGES.imm_uimmw
    elif coverpoint.endswith("_uimm"):
        edges_imm = IMMEDIATE_EDGES.imm_uimm if test_data.xlen == 64 else IMMEDIATE_EDGES.imm_uimmw
    else:
        raise ValueError(f"Unknown cr_rs1_imm_edges coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []

    for reg_edge_val in edges_reg:
        for imm_edge_val in edges_imm:
            test_lines.append("")
            params = generate_random_params(test_data, instr_type, rs1val=reg_edge_val, immval=imm_edge_val)
            desc = f"{coverpoint} (rs1 = {test_data.xlen_format_str.format(reg_edge_val)}, imm = {imm_edge_val})"
            test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
            test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


# def make_imm_edges_jalr(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
#     test_lines: list[str] = []

#     # Use 12-bit immediate edges for JALR
#     for edge_val in IMMEDIATE_EDGES.imm_12bit:
#         test_lines.append("")
#         params = generate_random_params(test_data, instr_type, immval=edge_val)
#         desc = f"{coverpoint} (jalr offset = {edge_val})"
#         test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
#         test_data.int_regs.return_registers(params.used_int_regs)

#     return test_lines


def make_align(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
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


def make_cp_uimm(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    if coverpoint == "cp_uimm":
        uimm_vals = range(0, test_data.xlen)
    elif coverpoint.endswith("_5"):
        uimm_vals = range(0, 32)
    else:
        raise ValueError(f"Unknown cp_uimm coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []
    for uimm in uimm_vals:
        test_lines.append("")
        params = generate_random_params(test_data, instr_type, immval=uimm)
        desc = f"{coverpoint}: imm={uimm}"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_memval(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
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
        params = generate_random_params(test_data, instr_type, rs2val=val)
        desc = f"{coverpoint} (memory value = {val:#x})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_cp_gpr_hazard(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    # Extract hazard class from suffix (e.g., cp_gpr_hazard_r -> 'r')
    parts = coverpoint.split("_")
    haz_class = parts[-1] if len(parts) > 3 and parts[-1] in ["r", "w", "rw"] else "rw"

    test_lines: list[str] = []

    # Determine which hazard types to test
    hazard_types: list[str] = []
    if "r" in haz_class:
        hazard_types.append("raw")
    if "w" in haz_class:
        hazard_types.extend(["waw", "war"])

    # Generate test cases for each hazard type
    for haz_type in hazard_types:
        for i in range(2):  # 2 test cases per hazard type
            # Generate first instruction (add) with random registers
            params_a = generate_random_params(test_data, "R")

            # Generate second instruction with hazard relationship to A
            if haz_type == "raw":
                # Read-After-Write: B reads what A wrote. Test with both rs1 and rs2
                if i % 2 == 0:
                    params_b = generate_random_params(test_data, instr_type, rs1=params_a.rd)
                else:
                    params_b = generate_random_params(test_data, instr_type, rs2=params_a.rd)
            elif haz_type == "waw":
                # Write-After-Write: B writes same register as A
                params_b = generate_random_params(test_data, instr_type, rd=params_a.rd)
            elif haz_type == "war":
                # Write-After-Read: B writes what A read. Test with both rs1 and rs2
                if i % 2 == 0:
                    params_b = generate_random_params(test_data, instr_type, rd=params_a.rs1)
                else:
                    params_b = generate_random_params(test_data, instr_type, rd=params_a.rs2)
            else:
                raise ValueError(f"Unknown hazard type: {haz_type}")

            # Generate both instructions
            test_lines.append(f"\n# Testcase cp_gpr_hazard {haz_type} test")
            setup1, test1, check1 = format_instruction("add", "R", test_data, params_a)
            setup2, test2, check2 = format_instruction(instr_name, instr_type, test_data, params_b)

            # Run both instructions in sequence and check results
            test_lines.extend([setup1, setup2])
            test_lines.extend([test1, test2])
            if haz_type == "waw":
                # For waw, only check the result of the second instruction
                test_lines.append(check2)
            else:
                test_lines.extend([check1, check2])

            # Return used registers
            test_data.int_regs.return_registers(params_a.used_int_regs)
            test_data.int_regs.return_registers(params_b.used_int_regs)

    return test_lines


def make_mem_hazard(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    """
    Generate tests for cp_mem_hazard coverpoint.

    Tests memory hazards (load-use, store-load dependencies).

    Args:
        instr_name: Instruction mnemonic
        instr_type: Instruction type
        coverpoint: Coverpoint name (unused, for compatibility)
        test_data: Test data context

    Returns:
        List of test code lines
    """
    # TODO: Implement memory hazard testing
    return ["# TODO: Implement cp_mem_hazard"]


def make_f_mem_hazard(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    """
    Generate tests for cp_f_mem_hazard coverpoint.

    Tests floating-point memory hazards.

    Args:
        instr_name: Instruction mnemonic
        instr_type: Instruction type
        coverpoint: Coverpoint name (unused, for compatibility)
        test_data: Test data context

    Returns:
        List of test code lines
    """
    # TODO: Implement floating-point memory hazard testing
    return ["# TODO: Implement cp_f_mem_hazard"]


# ============================================================================
# SPECIAL COVERPOINT HANDLERS
# ============================================================================


def make_custom(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    """Generate tests for custom coverpoints using a template file."""
    test_lines, sigupd_count_increment = insert_test_template(
        f"{instr_name}.S", test_data.xlen, test_data.int_regs.sig_reg
    )
    test_data.sigupd_count += sigupd_count_increment
    return [test_lines]


def make_cp_imm_edges_branch(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    test_lines: list[str] = ["\n# Testcase cp_imm_edges_branch"]
    params = generate_random_params(test_data, instr_type)
    assert params.rs1 is not None and params.rs2 is not None
    test_lines.extend(
        [
            f"LI(x{params.rs1}, 1)",
            f"LI(x{params.rs2}, {1 if instr_name in ['beq', 'bge', 'bgeu'] else 2}) # setup for taken branch",
            f"{instr_name} x{params.rs1}, x{params.rs2}, 1f # branch forward by 4",
            f"1: {instr_name} x{params.rs1}, x{params.rs2}, 2f # branch forward by 8",
            "j 19f # shouldn't happen",
            f"2: {instr_name} x{params.rs1}, x{params.rs2}, 3f # branch forward by 16",
            "j 19f # shouldn't happen",
            "nop",
            "nop # shouldn't be executed",
            f"3: LI(x{params.rs1}, 1) # insignificant, just an action before the next align",
            ".align 11 # align to 2048 bytes",
            f"{instr_name} x{params.rs1}, x{params.rs2}, 4f # branch forward by 2048",
            "j 19f # shouldn't happen",
            ".align 11 # align to 2048 bytes",
            f"4: LI(x{params.rs1}, 1) # insignificant, just an action before the next align",
            ".align 12 # align to 4096 bytes",
            "nop # use up 4 bytes",
            f"{instr_name} x{params.rs1}, x{params.rs2}, 5f # branch forward by 4092",
            "j 19f # shouldn't happen",
            ".align 12 # align to 4096 bytes",
            "5: j 7f # jump around to test backward branch",
            "6: j 9f # backward branch succeeded",
            f"7: {instr_name} x{params.rs1}, x{params.rs2}, 6b # backward branch by -4",
            "j 19f # shouldn't happen",
            "8: j 11f # backward branch succeeded",
            "nop",
            f"9: {instr_name} x{params.rs1}, x{params.rs2}, 8b # backward branch by -8",
            "j 19f # shouldn't happen",
            ".align 12 # align to 4096 bytes",
            "10: j 20f # backward branch succeeded",
            ".align 12 # align to 4096 bytes",
            f"11: {instr_name} x{params.rs1}, x{params.rs2}, 10b # backward branch by -4096",
            "j 19f # shouldn't happen",
            f"19: li x{params.rs1}, -1 # write failure code",
            write_sigupd(params.rs1, test_data),  # failure code
            f"20: li x{params.rs1}, 1 # write success code",
            write_sigupd(params.rs1, test_data),  # success code
        ]
    )
    test_data.int_regs.return_registers(params.used_int_regs)
    return test_lines


def make_cp_imm_edges_jal(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    test_lines: list[str] = []
    if instr_name == "c.jal":
        test_data.int_regs.consume_registers([1])
        params = generate_random_params(test_data, instr_type, rd=1)  # c.jal always uses x1
    elif instr_name == "c.j":
        params = generate_random_params(test_data, instr_type, rd=0)  # c.j always uses x0
    else:
        params = generate_random_params(test_data, instr_type)
    assert params.rs1 is not None and params.rs2 is not None and params.rd is not None

    # Adjust min/max range based on instruction type
    if instr_name == "jal":
        minrng = 3
        maxrng = 14  # testing all 20 bits of immediate is too much code
    else:
        test_lines.append(".align 2 # Start at an address multiple of 4. Required for covering 2 byte jump.")
        minrng = 2
        maxrng = 13

    # Test smallest offset as a special case
    test_lines.extend(
        [
            "",
            f"# Testcase cp_imm_edges_jal (imm = {minrng - 1})",
            f".align {maxrng} # Start all tests on a multiple of the largest offset",
            f"{instr_name} {f'x{params.rs1},' if instr_name == 'jal' else ''} 1f # jump to aligned address to stress immediate",
            "1: # alignment too small to test with sigupd",
            f"{instr_name} {f'x{params.rs1},' if instr_name == 'jal' else ''} f{minrng}_{instr_name} # jump to aligned address to stress immediate",
        ]
    )

    # Test all other offsets
    for val in range(minrng, maxrng):
        test_lines.extend(
            [
                "",
                f"# Testcase cp_imm_edges_jal (imm = {val})",
                f".align {val - 1}",
                f"b{val - 1}_{instr_name}:",
            ]
        )
        if instr_name == "jal":
            if val >= 6:
                # Can only fit signature logic if jump is greater than 32 bytes (val + 1 = 6)
                test_lines.extend(
                    [
                        load_int_reg("rs1", params.rs1, val, test_data),
                        write_sigupd(params.rd, test_data),
                        write_sigupd(params.rs1, test_data),
                    ]
                )
            test_lines.append(
                f"{instr_name} x{params.rd}, f{val + 1}_{instr_name} # jump to aligned address to stress immediate"
            )
        else:  # c.jal, c.j
            if val >= 6:
                # Can only fit signature logic if jump is greater than 32 bytes (val + 1 = 6)
                test_lines.extend(
                    [
                        write_sigupd(params.rd, test_data),  # checking if return address is correct for c.jal
                        f"c.li x{params.rs1}, {val}",
                        write_sigupd(params.rs1, test_data),
                    ]
                )
            test_lines.append(f"{instr_name} f{val + 1}_{instr_name} # jump to aligned address to stress immediate")

        if val >= 6:
            test_lines.extend(
                [
                    f"LI(x{params.rs1}, {val})" if instr_name == "jal" else f"c.li x{params.rs1}, {val}",
                    write_sigupd(params.rd, test_data),
                    write_sigupd(params.rs1, test_data),
                ]
            )

        test_lines.extend(
            [
                f".align {val - 1}",
                f"f{val}_{instr_name}:",
            ]
        )

        if val >= 6:
            test_lines.extend(
                [
                    f"LI(x{params.rs1}, {val})" if instr_name == "jal" else f"c.li x{params.rs1}, {val}",
                    write_sigupd(params.rd, test_data),
                    write_sigupd(params.rs1, test_data),
                ]
            )

        if instr_name == "jal":
            test_lines.append(
                f"{instr_name} x{params.rd}, b{val - 1}_{instr_name} # jump to aligned address to stress immediate"
            )
            if val >= 6:
                # Can only fit signature logic if jump is greater than 32 bytes (val + 1 = 6)
                test_lines.extend(
                    [
                        load_int_reg("rs1", params.rs1, val, test_data),
                        write_sigupd(params.rd, test_data),
                        write_sigupd(params.rs1, test_data),
                    ]
                )
        else:  # c.jal, c.j
            if val == 12:  # temporary fix for bug in binutils
                if instr_name == "c.j":
                    test_lines.append(
                        ".half 0xB001 # backward c.j by -2048 to b12; GCC is not generating this compressed branch properly per https://github.com/riscv-collab/riscv-gnu-toolchain/issues/1647"
                    )
                elif instr_name == "c.jal":
                    test_lines.append(
                        ".half 0x3001 # backward jal by -2048 to b12; GCC is not generating this compressed branch properly per https://github.com/riscv-collab/riscv-gnu-toolchain/issues/1647"
                    )
            else:
                test_lines.append(f"{instr_name} b{val - 1}_{instr_name} # jump to aligned address to stress immediate")
            if val >= 6:
                # Can only fit signature logic if jump is greater than 32 bytes (val + 1 = 6)
                test_lines.extend(
                    [
                        f"c.li x{params.rs1}, {val}",
                        write_sigupd(params.rd, test_data),  # checking if return address is correct for c.jal
                        write_sigupd(params.rs1, test_data),
                    ]
                )

    # End of test
    test_lines.extend(
        [
            f".align {maxrng - 1}",
            f"f{maxrng}_{instr_name}:",
        ]
    )

    test_data.int_regs.return_registers(params.used_int_regs)
    return test_lines


def make_offset(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    """
    Generate tests for cp_offset coverpoint (backward branch negative offsets).

    Tests backward branches/jumps to ensure negative offsets work correctly.
    """
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
            write_sigupd(params.rd, test_data) if instr_type in ["JR", "CJR", "CJALR"] else "",
        ]
    )

    test_data.int_regs.return_register(check_reg)
    test_data.int_regs.return_registers(params.used_int_regs)
    return test_lines


def make_cr_rs1_rs2_edges_offset(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    edges1 = get_general_edges(test_data.xlen)
    edges2 = get_general_edges(test_data.xlen)

    test_lines: list[str] = []

    for edge_val1 in edges1:
        for edge_val2 in edges2:
            test_lines.append("")
            params = generate_random_params(test_data, instr_type, rs1val=edge_val1, rs2val=edge_val2)
            assert params.rs1 is not None and params.rs2 is not None
            test_lines.extend(
                [
                    f"# {coverpoint} (Test source rs1 = {test_data.xlen_format_str.format(edge_val1)} rs2 = {test_data.xlen_format_str.format(edge_val2)})",
                    load_int_reg("rs1", params.rs1, edge_val1, test_data),
                    load_int_reg("rs2", params.rs2, edge_val2, test_data),
                    "0: # destination for backwards branch that is never taken",
                    f"{instr_name} x{params.rs1}, x{params.rs2}, 3f # forward branch, if taken",
                    "1: # goes here if not taken",
                    f"{instr_name} x{params.rs1}, x{params.rs2}, 0b # backward branch, never taken",
                    write_sigupd(0, test_data),  # signature 0 for not taken
                    "j 4f # done with test",
                    "2: # goes here during backward branch if taken",
                    f"LI(x{params.rs1}, 1)",
                    write_sigupd(params.rs1, test_data) + " # signature 1 for taken",
                    "j 4f # done with test",
                    "3: # goes here during forward branch if taken",
                    f"{instr_name} x{params.rs1}, x{params.rs2}, 2b # backward branch, definitely taken",
                    "4: # done with test",
                ]
            )
            test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


# ============================================================================
# COVERPOINT HANDLER REGISTRY
# ============================================================================
# This registry maps coverpoint patterns to their handler functions.
# Matching is done using prefix matching. "cp_rd", "cp_rd_nx0", and "cp_rd_p" will all map to make_rd.
# Handlers are searched in order, first match wins.
# This is important for coverpoints with similar names, like "cp_rs1_edges" and "cp_rs1".

COVERPOINT_HANDLERS: dict[str, Callable[[str, str, str, TestData], list[str]]] = {
    # Compare register coverpoints
    "cmp_rd_rs1_rs2": make_cmp_rd_rs1_rs2,
    "cmp_rs1_rs2": make_cmp_rs1_rs2,
    "cmp_rd_rs1": make_cmp_rd_rs1,
    "cmp_rd_rs2": make_cmp_rd_rs2,
    # Register edge value coverpoints
    "cp_rs1_edges": make_rs1_edges,
    "cp_rs2_edges": make_rs2_edges,
    # Immediate edge value coverpoints
    "cp_imm_edges": make_cp_imm_edges,
    "cp_uimm": make_cp_uimm,
    # Cross-product coverpoints
    "cr_rs1_rs2_edges": make_cr_rs1_rs2_edges,
    "cr_rs1_imm_edges": make_cr_rs1_imm_edges,
    # Register coverpoints
    "cp_rd": make_rd,
    "cp_rs1": make_rs1,
    "cp_rs2": make_rs2,
    # Special coverpoints
    "cp_offset": make_offset,
    "cp_align": make_align,
    "cp_memval": make_memval,
    "cp_custom": make_custom,
    # Hazard coverpoints
    "cp_gpr_hazard": make_cp_gpr_hazard,
    "cp_fpr_hazard": make_cp_gpr_hazard,  # Same handler for now
    "cp_mem_hazard": make_mem_hazard,
    "cp_f_mem_hazard": make_f_mem_hazard,
}
