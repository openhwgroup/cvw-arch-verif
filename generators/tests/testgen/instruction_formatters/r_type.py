# testgen/instruction_formatters/r_type.py

from testgen.common import load_int_reg, write_sigupd
from testgen.instruction_formatters.instruction_formatters import add_instruction_formatter
from testgen.instruction_params import InstructionParams
from testgen.test_data import TestData


@add_instruction_formatter("R")
def format_r_type(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format R-type instruction."""
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
