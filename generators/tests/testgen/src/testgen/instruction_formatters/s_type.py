# testgen/instruction_formatters/s_type.py

from testgen.data.instruction_params import InstructionParams
from testgen.data.test_data import TestData
from testgen.instruction_formatters.instruction_formatters import add_instruction_formatter
from testgen.utils.common import load_int_reg
from testgen.utils.immediates import modify_imm


@add_instruction_formatter("S")
def format_s_type(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format S-type instruction."""
    assert params.rs1 is not None
    assert params.rs2 is not None and params.rs2val is not None
    assert params.rd is not None
    assert params.immval is not None
    scaled_imm = modify_imm(params.immval, 12)

    # Ensure rs1 is not x0 (base address)
    if params.rs1 == 0:
        test_data.int_regs.return_register(params.rs1)
        params.rs1 = test_data.int_regs.get_register(exclude_reg=[0])

    # Save rs1 for use in assembly generation, but clear it from params so it's not returned
    # (since it's now the signature register)
    setup = [
        load_int_reg("rs2", params.rs2, params.rs2val, test_data),
        test_data.int_regs.move_sig_reg(params.rs1),
    ]
    sig_reg = test_data.int_regs.sig_reg
    params.rs1 = None
    check: list[str] = []

    # Handle special case where offset is -2048
    if scaled_imm == -2048:
        setup.extend(
            [
                f"addi x{sig_reg}, x{sig_reg}, 2047 # increment by 2047",
                f"addi x{sig_reg}, x{sig_reg}, 1 # increment by 1 more for total +2048",
            ]
        )
        check.append(f"addi x{sig_reg}, x{sig_reg}, -2048 # restore base address")
    else:
        neg_scaled_imm = -scaled_imm
        setup.append(f"addi x{sig_reg}, x{sig_reg}, {neg_scaled_imm} # adjust base address for offset")
        check.append(f"addi x{sig_reg}, x{sig_reg}, {-neg_scaled_imm} # restore base address")

    test = [f"{instr_name} x{params.rs2}, {scaled_imm}(x{sig_reg}) # perform store"]
    check.append(f"addi x{sig_reg}, x{sig_reg}, REGWIDTH # increment signature pointer")
    test_data.sigupd_count += 1
    return (setup, test, check)
