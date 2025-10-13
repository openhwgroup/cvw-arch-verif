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


from collections.abc import Callable
from random import seed

from testgen.common import myhash
from testgen.edges import (
    IMMEDIATE_EDGES,
    get_general_edges,
    get_orcb_edges,
)
from testgen.format_instruction import format_instruction, format_single_test
from testgen.instruction_params import generate_random_params
from testgen.test_data import TestData


def select_coverpoint_generator(coverpoint: str) -> Callable[[str, str, str, TestData], list[str]]:
    """Select the appropriate coverpoint generator function based on coverpoint name. Matches using prefix matching."""
    for pattern, handler in COVERPOINT_HANDLERS.items():
        if coverpoint.startswith(pattern):
            return handler
    raise ValueError(f"No coverpoint generator found for coverpoint: {coverpoint}")


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
    elif coverpoint.endswith("nx0"):
        rd_regs = list(range(1, test_data.int_regs.reg_count))  # Exclude x0
    elif coverpoint.endswith("nx2"):
        rd_regs = list(range(1, test_data.int_regs.reg_count))  # Exclude x0
        rd_regs.remove(2)  # Exclude x2
    elif coverpoint.endswith("p"):
        rd_regs = list(range(8, 16))  # x8-x15 for compressed instructions
    else:
        raise ValueError(f"Unknown cp_rd coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []

    # Generate tests
    for rd in rd_regs:
        test_lines.append(test_data.int_regs.consume_registers([rd]))
        params = generate_random_params(test_data, instr_type, rd=rd)
        desc = f"cp_rd (Test destination rd = x{rd})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_rs1(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    # Determine which rs1 registers to test based on coverpoint variant
    if coverpoint == "cp_rs1":
        rs1_regs = range(test_data.int_regs.reg_count)
    elif coverpoint.endswith("nx0"):
        rs1_regs = range(1, test_data.int_regs.reg_count)  # Exclude x0
    elif coverpoint.endswith("p"):
        rs1_regs = range(8, 16)  # x8-x15 for compressed instructions
    else:
        raise ValueError(f"Unknown cp_rs1 coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []

    # Generate tests
    for rs1 in rs1_regs:
        test_lines.append(test_data.int_regs.consume_registers([rs1]))
        params = generate_random_params(test_data, instr_type, rs1=rs1)
        desc = f"cp_rs1 (Test source rs1 = x{rs1})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_rs2(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    # Determine which rs2 registers to test based on coverpoint variant
    if coverpoint == "cp_rs2":
        rs2_regs = range(test_data.int_regs.reg_count)
    elif coverpoint.endswith("nx0"):
        rs2_regs = range(1, test_data.int_regs.reg_count)  # Exclude x0
    elif coverpoint.endswith("p"):
        rs2_regs = range(8, 16)  # x8-x15 for compressed instructions
    else:
        raise ValueError(f"Unknown cp_rs2 coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []

    # Generate tests
    for rs2 in rs2_regs:
        test_lines.append(test_data.int_regs.consume_registers([rs2]))
        params = generate_random_params(test_data, instr_type, rs2=rs2)
        desc = f"cp_rs2 (Test source rs2 = x{rs2})"
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
        desc = f"cmp_rd_rs1 (Test rd = rs1 = x{reg})"
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
        desc = f"cmp_rd_rs2 (Test rd = rs2 = x{reg})"
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
        desc = f"cmp_rs1_rs2 (Test rs1 = rs2 = x{reg})"
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
        desc = f"cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x{reg})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_rs1_edges(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    if coverpoint == "cp_rs1_edges":
        edges = get_general_edges(test_data.xlen)
    elif coverpoint == "cp_rs1_edges_orcb":
        edges = get_orcb_edges(test_data.xlen)
    else:
        raise ValueError(f"Unknown cp_rs1_edges coverpoint variant: {coverpoint} for {instr_name}")

    test_lines: list[str] = []

    for edge_val in edges:
        test_lines.append("")
        params = generate_random_params(test_data, instr_type, rs1val=edge_val)
        desc = f"cp_rs1_edges (Test source rs1 value = {test_data.xlen_format_str.format(edge_val)})"
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
        desc = f"cp_rs2_edges (Test source rs2 value = {test_data.xlen_format_str.format(edge_val)})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_cr_rs1_rs2_edges(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    if coverpoint == "cr_rs1_rs2_edges":
        edges1 = get_general_edges(test_data.xlen)
        edges2 = get_general_edges(test_data.xlen)
    else:
        # raise ValueError(f"Unknown cr_rs1_rs2_edges coverpoint variant: {coverpoint} for {instr_name}")
        print(f"Warning: Unknown cr_rs1_rs2_edges coverpoint variant: {coverpoint} for {instr_name}")
        return []

    test_lines: list[str] = []

    for edge_val1 in edges1:
        for edge_val2 in edges2:
            test_lines.append("")
            params = generate_random_params(test_data, instr_type, rs1val=edge_val1, rs2val=edge_val2)
            desc = f"cr_rs1_rs2_edges (Test source rs1 = {test_data.xlen_format_str.format(edge_val1)} rs2 = {test_data.xlen_format_str.format(edge_val2)})"
            test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
            test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_cp_imm_edges(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    if coverpoint == "cp_imm_edges":
        edges_imm = IMMEDIATE_EDGES.imm_12bit
    elif coverpoint.endswith("20bit"):
        edges_imm = IMMEDIATE_EDGES.imm_20bit
    elif coverpoint.endswith("6bit"):
        edges_imm = IMMEDIATE_EDGES.imm_6bit
    else:
        # raise ValueError(f"Unknown cp_imm_edges coverpoint variant: {coverpoint} for {instr_name}")
        print(f"Warning: Unknown cp_imm_edges coverpoint variant: {coverpoint} for {instr_name}")
        return []

    test_lines: list[str] = []

    for edge_val in edges_imm:
        test_lines.append("")
        params = generate_random_params(test_data, instr_type, immval=edge_val)
        desc = f"cp_imm_edges (imm = {edge_val})"
        test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_cr_rs1_imm_edges(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    edges_reg = get_general_edges(test_data.xlen)
    if coverpoint == "cr_rs1_imm_edges":
        edges_imm = IMMEDIATE_EDGES.imm_12bit
    elif coverpoint.endswith("6bit"):
        edges_imm = IMMEDIATE_EDGES.imm_6bit
    elif coverpoint.endswith("6bit_n0"):
        edges_imm = IMMEDIATE_EDGES.imm_6bit[1:]  # exclude imm=0
    elif coverpoint.endswith("c"):
        edges_imm = IMMEDIATE_EDGES.imm_64_c if test_data.xlen == 64 else IMMEDIATE_EDGES.imm_32_c
    elif coverpoint.endswith("uimmw"):
        edges_imm = IMMEDIATE_EDGES.imm_uimmw
    elif coverpoint.endswith("uimm"):
        edges_imm = IMMEDIATE_EDGES.imm_uimm if test_data.xlen == 64 else IMMEDIATE_EDGES.imm_uimmw
    else:
        # raise ValueError(f"Unknown cr_rs1_imm_edges coverpoint variant: {coverpoint} for {instr_name}")
        print(f"Warning: Unknown cr_rs1_imm_edges coverpoint variant: {coverpoint} for {instr_name}")
        return []

    test_lines: list[str] = []

    for reg_edge_val in edges_reg:
        for imm_edge_val in edges_imm:
            test_lines.append("")
            params = generate_random_params(test_data, instr_type, rs1val=reg_edge_val, immval=imm_edge_val)
            desc = f"cr_rs1_imm_edges (rs1 = {test_data.xlen_format_str.format(reg_edge_val)}, imm = {imm_edge_val})"
            test_lines.append(format_single_test(instr_name, instr_type, test_data, params, desc))
            test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_imm_edges_jalr(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    test_lines: list[str] = []

    # Use 12-bit immediate edges for JALR
    for edge_val in IMMEDIATE_EDGES.imm_12bit:
        test_lines.append("")
        params = generate_random_params(test_data, instr_type, immval=edge_val)
        desc = f"cp_imm_edges (jalr offset = {edge_val})"
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
    # Cross-product coverpoints
    "cr_rs1_rs2_edges": make_cr_rs1_rs2_edges,
    "cr_rs1_imm_edges": make_cr_rs1_imm_edges,
    # Register coverpoints
    "cp_rd": make_rd,
    "cp_rs1": make_rs1,
    "cp_rs2": make_rs2,
    # Hazard coverpoints
    "cp_gpr_hazard": make_cp_gpr_hazard,
    "cp_fpr_hazard": make_cp_gpr_hazard,  # Same handler for now
    "cp_mem_hazard": make_mem_hazard,
    "cp_f_mem_hazard": make_f_mem_hazard,
}
