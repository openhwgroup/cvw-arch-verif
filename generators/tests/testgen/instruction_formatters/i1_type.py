# testgen/instruction_formatters/i1_type.py

from testgen.common import load_int_reg, write_sigupd
from testgen.instruction_formatters import add_instruction_formatter
from testgen.instruction_params import InstructionParams
from testgen.test_data import TestData


@add_instruction_formatter("I1")
def format_i1_type(
    instr_name: str, test_data: TestData, params: InstructionParams
) -> tuple[list[str], list[str], list[str]]:
    """Format I1-type instruction."""
    assert params.rs1 is not None and params.rs1val is not None and params.rd is not None
    setup = [
        load_int_reg("rs1", params.rs1, params.rs1val, test_data),
    ]
    test = [
        f"{instr_name} x{params.rd}, x{params.rs1} # perform operation",
    ]
    check = [write_sigupd(params.rd, test_data, "int")]
    return (setup, test, check)
