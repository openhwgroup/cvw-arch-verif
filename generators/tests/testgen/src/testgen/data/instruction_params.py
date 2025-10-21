##################################
# instruction_params.py
#
# jcarlin@hmc.edu 11 October 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
##################################

from dataclasses import dataclass
from typing import Any

from testgen.data.test_data import TestData
from testgen.utils.immediates import gen_random_imm


@dataclass
class InstructionParams:
    """
    Parameters for generating a single instruction test case.

    This dataclass holds all the information needed to generate a single
    instruction test, including register numbers, values, and flags.
    """

    # Integer registers
    rs1: int | None = None
    rs2: int | None = None
    rs3: int | None = None
    rd: int | None = None

    # Float registers
    fs1: int | None = None
    fs2: int | None = None
    fs3: int | None = None
    fd: int | None = None

    # Register values
    rs1val: int | None = None
    rs2val: int | None = None
    rs3val: int | None = None
    rdval: int | None = None

    # Immediate value
    immval: int | None = None

    # Flags
    frm: bool = False  # Floating-point rounding mode tests
    aqrl: str = ""  # Acquire/Release for atomic operations

    @property
    def used_int_regs(self) -> list[int]:
        """Return list of all integer registers used in this test."""
        regs: list[int] = []
        for reg in [self.rs1, self.rs2, self.rs3, self.rd]:
            if reg is not None:
                regs.append(reg)
        return regs

    @property
    def used_float_regs(self) -> list[int]:
        """Return list of all float registers used in this test."""
        regs: list[int] = []
        for reg in [self.fs1, self.fs2, self.fs3, self.fd]:
            if reg is not None:
                regs.append(reg)
        return regs


def generate_random_params(
    test_data: TestData,
    instr_type: str,
    allow_x0: bool = True,
    **fixed_params: Any,  # noqa: ANN401 (allow Any type for flexible fixed_params)
) -> InstructionParams:
    """
    Generate random parameters for an instruction.

    This function randomly fills in any missing parameters needed for the instruction type.
    Explicitly provided parameters are preserved.

    Args:
        test_data: Test data context (xlen, register allocators, etc.)
        instr_type: Instruction type (e.g., 'R', 'I', 'L') to determine needed parameters
        allow_x0: Whether to allow x0 as one of the selected registers. Defaults to True.
        **fixed_params: Fixed parameter values (e.g., rd=5, rs1val=0x100)

    Returns:
        InstructionParams with all necessary fields filled in

    Example:
        >>> params = generate_random_params(test_data, 'R', rd=5, rs1val=0x100)
        >>> # rd=5 and rs1val=0x100 are fixed, others are random
    """
    params = InstructionParams(**fixed_params)
    exclude_regs = [0] if not allow_x0 else []

    # Fill in missing integer register parameters
    if params.rd is None:
        params.rd = test_data.int_regs.get_register(exclude_reg=exclude_regs)

    if params.rs1 is None:
        params.rs1 = test_data.int_regs.get_register(exclude_reg=exclude_regs)
    if params.rs1val is None:
        params.rs1val = gen_random_imm(test_data.xlen)

    if params.rs2 is None:
        params.rs2 = test_data.int_regs.get_register(exclude_reg=exclude_regs)
    if params.rs2val is None:
        params.rs2val = gen_random_imm(test_data.xlen)

    if params.immval is None:
        params.immval = gen_random_imm(test_data.xlen)

    return params
