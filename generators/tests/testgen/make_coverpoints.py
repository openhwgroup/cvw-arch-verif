# ============================================================================
# COVERPOINT HANDLERS
# ============================================================================
# Each handler generates multiple test cases for a specific coverpoint
# All handlers have similar structure:
# 1. Create InstructionGenerator for the instruction
# 2. Loop over test values (registers, edge cases, etc.)
# 3. Generate params with fixed + random values
# 4. Call generator to format the test
# 5. Manage register allocation


from testgen.edges import (
    IMMEDIATE_EDGES,
    get_general_edges,
    get_orcb_edges,
)
from testgen.format_instruction import InstructionGenerator
from testgen.test_data import TestData


def make_rd(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    # Determine which rd registers to test based on coverpoint variant
    if coverpoint == "cp_rd":
        rd_regs = range(test_data.int_regs.reg_count)
    elif coverpoint.endswith("nx0"):
        rd_regs = range(1, test_data.int_regs.reg_count)  # Exclude x0
    elif coverpoint.endswith("nx2"):
        rd_regs = range(1, test_data.int_regs.reg_count)  # Exclude x0
        rd_regs.remove(2)  # Exclude x2
    elif coverpoint.endswith("p"):
        rd_regs = range(8, 16)  # x8-x15 for compressed instructions
    else:
        raise ValueError(f"Unknown cp_rd coverpoint variant: {coverpoint} for {instr_name}")

    generator = InstructionGenerator(instr_name, instr_type, test_data)
    test_lines = []

    # Generate tests
    for rd in rd_regs:
        test_lines.append(test_data.int_regs.consume_registers([rd]))
        params = generator.generate_random_params(rd=rd)
        desc = f"cp_rd (Test destination rd = x{rd})"
        test_lines.append(generator.format_single_test(desc, params))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_rs1(instr_name: str, instr_type: str, coverpoint:str, test_data: TestData) -> list[str]:
    # Determine which rs1 registers to test based on coverpoint variant
    if coverpoint == "cp_rs1":
        rs1_regs = range(test_data.int_regs.reg_count)
    elif coverpoint.endswith("nx0"):
        rs1_regs = range(1, test_data.int_regs.reg_count)  # Exclude x0
    elif coverpoint.endswith("p"):
        rs1_regs = range(8, 16)  # x8-x15 for compressed instructions
    else:
        raise ValueError(f"Unknown cp_rs1 coverpoint variant: {coverpoint} for {instr_name}")

    generator = InstructionGenerator(instr_name, instr_type, test_data)
    test_lines = []

    # Generate tests
    for rs1 in rs1_regs:
        test_lines.append(test_data.int_regs.consume_registers([rs1]))
        params = generator.generate_random_params(rs1=rs1)
        desc = f"cp_rs1 (Test source rs1 = x{rs1})"
        test_lines.append(generator.format_single_test(desc, params))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_rs2(instr_name: str, instr_type: str, coverpoint:str, test_data: TestData) -> list[str]:
    # Determine which rs2 registers to test based on coverpoint variant
    if coverpoint == "cp_rs2":
        rs2_regs = range(test_data.int_regs.reg_count)
    elif coverpoint.endswith("nx0"):
        rs2_regs = range(1, test_data.int_regs.reg_count)  # Exclude x0
    elif coverpoint.endswith("p"):
        rs2_regs = range(8, 16)  # x8-x15 for compressed instructions
    else:
        raise ValueError(f"Unknown cp_rs2 coverpoint variant: {coverpoint} for {instr_name}")

    generator = InstructionGenerator(instr_name, instr_type, test_data)
    test_lines = []

    # Generate tests
    for rs2 in rs2_regs:
        test_lines.append(test_data.int_regs.consume_registers([rs2]))
        params = generator.generate_random_params(rs2=rs2)
        desc = f"cp_rs2 (Test source rs2 = x{rs2})"
        test_lines.append(generator.format_single_test(desc, params))
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

    generator = InstructionGenerator(instr_name, instr_type, test_data)
    test_lines = []

    # Generate tests
    for reg in regs:
        test_lines.append(test_data.int_regs.consume_registers([reg]))
        params = generator.generate_random_params(rd=reg, rs1=reg)
        desc = f"cmp_rd_rs1 (Test destination rd = rs1 = x{reg})"
        test_lines.append(generator.format_single_test(desc, params))
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

    generator = InstructionGenerator(instr_name, instr_type, test_data)
    test_lines = []

    # Generate tests
    for reg in regs:
        test_lines.append(test_data.int_regs.consume_registers([reg]))
        params = generator.generate_random_params(rd=reg, rs2=reg)
        desc = f"cmp_rd_rs2 (Test destination rd = rs2 = x{reg})"
        test_lines.append(generator.format_single_test(desc, params))
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

    generator = InstructionGenerator(instr_name, instr_type, test_data)
    test_lines = []

    # Generate tests
    for reg in regs:
        test_lines.append(test_data.int_regs.consume_registers([reg]))
        params = generator.generate_random_params(rs1=reg, rs2=reg)
        desc = f"cmp_rs1_rs2 (Test destination rs1 = rs2 = x{reg})"
        test_lines.append(generator.format_single_test(desc, params))
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

    generator = InstructionGenerator(instr_name, instr_type, test_data)
    test_lines = []

    # Generate tests
    for reg in regs:
        test_lines.append(test_data.int_regs.consume_registers([reg]))
        params = generator.generate_random_params(rd=reg, rs1=reg, rs2=reg)
        desc = f"cmp_rd_rs1_rs2 (Test destination rd = rs1 = rs2 = x{reg})"
        test_lines.append(generator.format_single_test(desc, params))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines

def make_rs1_edges(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    if coverpoint == "cp_rs1_edges":
        edges = get_general_edges(test_data.xlen)
    elif coverpoint == "cp_rs1_edges_orcb":
        edges = get_orcb_edges(test_data.xlen)
    else:
        raise ValueError(f"Unknown cp_rs1_edges coverpoint variant: {coverpoint} for {instr_name}")

    generator = InstructionGenerator(instr_name, instr_type, test_data)
    test_lines = []

    for edge_val in edges:
        params = generator.generate_random_params(rs1val=edge_val)
        desc = f"cp_rs1_edges (rs1 = {test_data.xlen_format_str.format(edge_val)})"
        test_lines.append(generator.format_single_test(desc, params))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_rs2_edges(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    if coverpoint == "cp_rs2_edges":
        edges = get_general_edges(test_data.xlen)
    else:
        raise ValueError(f"Unknown cp_rs2_edges coverpoint variant: {coverpoint} for {instr_name}")

    generator = InstructionGenerator(instr_name, instr_type, test_data)
    test_lines = []

    for edge_val in edges:
        params = generator.generate_random_params(rs2val=edge_val)
        desc = f"cp_rs2_edges (rs2 = {test_data.xlen_format_str.format(edge_val)})"
        test_lines.append(generator.format_single_test(desc, params))
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

    generator = InstructionGenerator(instr_name, instr_type, test_data)
    test_lines = []

    for edge_val1 in edges1:
        for edge_val2 in edges2:
            params = generator.generate_random_params(rs1val=edge_val1, rs2val=edge_val2)
            desc = f"cr_rs1_rs2_edges (rs1 = {test_data.xlen_format_str.format(edge_val1)}, rs2 = {test_data.xlen_format_str.format(edge_val2)})"
            test_lines.append(generator.format_single_test(desc, params))
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

    generator = InstructionGenerator(instr_name, instr_type, test_data)
    test_lines = []

    for edge_val in edges_imm:
        params = generator.generate_random_params(immval=edge_val)
        desc = f"cp_imm_edges (imm = {edge_val})"
        test_lines.append(generator.format_single_test(desc, params))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_imm_edges_jalr(instr_name: str, instr_type: str, test_data: TestData) -> list[str]:
    """
    Generate tests for cp_imm_edges specific to jalr instruction.

    JALR has special handling for offsets to ensure jump target is valid.

    Args:
        instr_name: Should be 'jalr'
        instr_type: Should be 'JR'
        test_data: Test data context

    Returns:
        List of test code lines
    """
    generator = InstructionGenerator(instr_name, instr_type, test_data)
    test_lines = []

    # Use 12-bit immediate edges for JALR
    for edge_val in IMMEDIATE_EDGES.imm_12bit:
        params = generator.generate_random_params(immval=edge_val)
        desc = f"cp_imm_edges (jalr offset = {edge_val})"
        test_lines.append(generator.format_single_test(desc, params))
        test_data.int_regs.return_registers(params.used_int_regs)

    return test_lines


def make_cp_gpr_hazard(instr_name: str, instr_type: str, coverpoint: str, test_data: TestData) -> list[str]:
    # Extract hazard class from suffix (e.g., cp_gpr_hazard_r -> 'r')
    parts = coverpoint.split("_")
    haz_class = parts[-1] if len(parts) > 3 and parts[-1] in ["r", "w", "rw"] else "rw"

    generator = InstructionGenerator(instr_name, instr_type, test_data)
    test_lines = []

    # Determine which hazard types to test
    hazard_types = []
    if "r" in haz_class:
        hazard_types.extend(["raw", "war"])
    if "w" in haz_class:
        hazard_types.append("waw")

    # Generate multiple test cases for each hazard type
    for haz_type in hazard_types:
        for i in range(3):  # 3 test cases per hazard type
            # Generate first instruction (A) with random registers
            params_a = generator.generate_random_params()

            # Generate second instruction (B) with hazard relationship to A
            if haz_type == "raw":
                # Read-After-Write: B reads what A wrote (B.rs1 = A.rd)
                params_b = generator.generate_random_params(rs1=params_a.rd)
            elif haz_type == "waw":
                # Write-After-Write: B writes same register as A (B.rd = A.rd)
                params_b = generator.generate_random_params(rd=params_a.rd)
            elif haz_type == "war":
                # Write-After-Read: B writes what A read (B.rd = A.rs1)
                params_b = generator.generate_random_params(rd=params_a.rs1)
            else:
                raise ValueError(f"Unknown hazard type: {haz_type}")

            # Generate the hazard sequence
            test_lines.append(f"\n# Testcase cp_gpr_hazard {haz_type} test")

            # Generate both instructions
            setup1, test1, check1 = generator.format_instruction(params_a)
            setup2, test2, check2 = generator.format_instruction(params_b)

            # Run both tests and then both checks
            test_lines.extend([setup1, setup2])
            test_lines.extend([test1, test2])
            test_lines.extend([check1, check2])

            # Return used registers
            test_data.int_regs.return_registers(params_a.used_int_regs)
            test_data.int_regs.return_registers(params_b.used_int_regs)

    return test_lines


def make_mem_hazard(instr_name: str, instr_type: str, test_data: TestData) -> list[str]:
    """
    Generate tests for cp_mem_hazard coverpoint.

    Tests memory hazards (load-use, store-load dependencies).

    Args:
        instr_name: Instruction mnemonic
        instr_type: Instruction type
        test_data: Test data context

    Returns:
        List of test code lines
    """
    # TODO: Implement memory hazard testing
    return ["# TODO: Implement cp_mem_hazard"]


def make_f_mem_hazard(instr_name: str, instr_type: str, test_data: TestData) -> list[str]:
    """
    Generate tests for cp_f_mem_hazard coverpoint.

    Tests floating-point memory hazards.

    Args:
        instr_name: Instruction mnemonic
        instr_type: Instruction type
        test_data: Test data context

    Returns:
        List of test code lines
    """
    # TODO: Implement floating-point memory hazard testing
    return ["# TODO: Implement cp_f_mem_hazard"]
