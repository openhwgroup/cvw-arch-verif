# ============================================================================
# INSTRUCTION GENERATOR CLASS
# ============================================================================


from dataclasses import dataclass

from testgen.common import load_int_reg, write_sigupd
from testgen.immediates import gen_random_imm, modify_imm
from testgen.test_data import TestData

# ============================================================================
# DATA STRUCTURES
# ============================================================================


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
        regs = []
        for reg in [self.rs1, self.rs2, self.rs3, self.rd]:
            if reg is not None:
                regs.append(reg)
        return regs

    @property
    def used_float_regs(self) -> list[int]:
        """Return list of all float registers used in this test."""
        regs = []
        for reg in [self.fs1, self.fs2, self.fs3, self.fd]:
            if reg is not None:
                regs.append(reg)
        return regs


class InstructionGenerator:
    """
    Generates assembly test cases for a specific instruction.

    This class handles the type-specific formatting of instructions,
    generating random parameters, and creating complete test cases.
    All instruction type formatters have the same signature for uniformity.
    """

    # Supported instruction types
    INSTRUCTION_TYPES: tuple[str] = (
        # Integer types (implemented)
        "R",
        "I",
        "I1",
        "IS",
        "ISW",
        "S",
        "B",
        "J",
        "JR",
        "U",
        "L",
        # Float types (to be implemented)
        "FR",
        "FR4",
        "FI",
        "FL",
        "FS",
        "F2X",
        "X2F",
        "PX2F",
        "FCOMP",
        "FLI",
        # CSR types (to be implemented)
        "CSR",
        "CSRI",
        # Compressed types (to be implemented)
        "CR",
        "CI",
        "CIW",
        "CL",
        "CS",
        "CSS",
        "CB",
        "CJ",
        "CShiftI",
        # Special types (to be implemented)
        "RB",
        "IR",
        "LR",
        "SC",
        "AMO",
    )

    def __init__(self, instr_name: str, instr_type: str, test_data: TestData):
        """
        Initialize the instruction generator.

        Args:
            instr_name: The instruction mnemonic (e.g., 'add', 'lw')
            instr_type: The instruction type (e.g., 'R', 'I', 'L')
            test_data: Test data context (xlen, registers, etc.)
        """
        self.instr_name = instr_name
        self.instr_type = instr_type
        self.test_data = test_data

        if instr_type not in self.INSTRUCTION_TYPES:
            raise ValueError(f"Unknown instruction type: {instr_type}")

    def generate_random_params(self, **fixed_params) -> InstructionParams:
        """
        Generate random parameters for instruction, with some fixed values.

        This fills in any missing parameters based on the instruction type.
        Fixed parameters are passed as keyword arguments.

        Args:
            **fixed_params: Fixed parameter values (e.g., rd=5, rs1val=0x100)

        Returns:
            InstructionParams with all necessary fields filled in
        """
        params = InstructionParams(**fixed_params)

        # Fill in missing integer register parameters based on instruction type
        if params.rd is None:
            params.rd = self.test_data.int_regs.get_registers(1)

        if params.rs1 is None:
            params.rs1 = self.test_data.int_regs.get_registers(1)
        if params.rs1val is None:
            params.rs1val = gen_random_imm(self.test_data.xlen)

        if params.rs2 is None:
            params.rs2 = self.test_data.int_regs.get_registers(1)
        if params.rs2val is None:
            params.rs2val = gen_random_imm(self.test_data.xlen)

        if params.immval is None:
            params.immval = gen_random_imm(self.test_data.xlen)

        return params

    def format_single_test(self, desc: str, params: InstructionParams) -> str:
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
        setup, test, check = self.format_instruction(params)
        test_lines.extend([setup, test, check])

        return "\n".join(test_lines)

    def format_instruction(self, params: InstructionParams) -> tuple[str, str, str]:
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
        formatter_name = f"_format_{self.instr_type.lower()}_type"
        formatter = getattr(self, formatter_name, None)

        if not formatter:
            raise NotImplementedError(f"Formatter not implemented: {self.instr_type}")

        # Call the formatter to get test lines and signature update lines
        setup, test, check = formatter(params)

        return "\n".join(setup), "\n".join(test), "\n".join(check)

    # ========================================================================
    # INSTRUCTION TYPE FORMATTERS
    # ========================================================================

    def _format_r_type(self, p: InstructionParams) -> tuple[list[str], list[str], list[str]]:
        """Format R-type instruction (add, sub, and, or, xor, etc.)."""
        setup = [
            load_int_reg("rs1", p.rs1, p.rs1val, self.test_data),
            load_int_reg("rs2", p.rs2, p.rs2val, self.test_data),
        ]
        test = [
            f"{self.instr_name} x{p.rd}, x{p.rs1}, x{p.rs2} # perform operation",
        ]
        check = [write_sigupd(p.rd, self.test_data, "int")]
        return (setup, test, check)

    def _format_i_type(self, p: InstructionParams) -> tuple[list[str], list[str], list[str]]:
        """Format I-type instruction (addi, slti, xori, ori, andi, addiw)."""
        scaled_imm = modify_imm(p.immval, 12)
        setup = [
            load_int_reg("rs1", p.rs1, p.rs1val, self.test_data),
        ]
        test = [
            f"{self.instr_name} x{p.rd}, x{p.rs1}, {scaled_imm} # perform operation",
        ]
        check = [write_sigupd(p.rd, self.test_data, "int")]
        return (setup, test, check)

    def _format_u_type(self, p: InstructionParams) -> tuple[list[str], list[str], list[str]]:
        """Format U-type instruction (lui, auipc)."""
        scaled_imm = modify_imm(p.immval, 20, signed=False)
        setup = []
        test = [
            f"{self.instr_name} x{p.rd}, {scaled_imm} # perform operation",
        ]
        check = [write_sigupd(p.rd, self.test_data, "int")]
        return (setup, test, check)

    def _format_b_type(self, p: InstructionParams) -> tuple[list[str], list[str], list[str]]:
        """Format B-type instruction (beq, bne, blt, bge, bltu, bgeu)."""
        setup = [
            load_int_reg("rs1", p.rs1, p.rs1val, self.test_data),
            load_int_reg("rs2", p.rs2, p.rs2val, self.test_data),
            f"LI(x{p.rd}, 1) # initialize rd to 1 (branch not taken value)",
        ]
        test = [
            f"{self.instr_name} x{p.rs1}, x{p.rs2}, 1f # perform operation",
            f"LI(x{p.rd}, 0) # branch not taken, set rd to 0",
        ]
        check = [
            "1:",
            write_sigupd(p.rd, self.test_data, "int"),
        ]
        return (setup, test, check)

    def _format_j_type(self, p: InstructionParams) -> tuple[list[str], list[str], list[str]]:
        """Format J-type instruction (jal)."""
        setup = [
            f"LI(x{p.rs2}, 1) # initialize indicator to 1 (jump taken)",
        ]
        test = [
            f"{self.instr_name} x{p.rd}, 1f # perform jump",
            f"LI(x{p.rs2}, 0) # should not execute (jump not taken)",
        ]
        check = [
            "1:",
            write_sigupd(p.rd, self.test_data, "int"),
            write_sigupd(p.rs2, self.test_data, "int"),
        ]
        return (setup, test, check)

    def _format_jr_type(self, p: InstructionParams) -> tuple[list[str], list[str], list[str]]:
        """Format JR-type instruction (jalr)."""
        scaled_imm = modify_imm(p.immval, 12, restrict_offset=True)
        neg_scaled_imm = modify_imm(-p.immval, 12, restrict_offset=True)
        setup = [
            f"LA(x{p.rs1}, 1f) # load jump target address",
            f"addi x{p.rs1}, x{p.rs1}, {neg_scaled_imm} # subtract offset to compensate",
            f"LI(x{p.rs2}, 1) # initialize indicator to 1 (jump taken)",
        ]
        test = [
            f"{self.instr_name} x{p.rd}, x{p.rs1}, {scaled_imm} # perform jump with offset",
            f"LI(x{p.rs2}, 0) # should not execute (jump not taken)",
        ]
        check = [
            "1:",
            write_sigupd(p.rd, self.test_data, "int"),
            write_sigupd(p.rs2, self.test_data, "int"),
        ]
        return (setup, test, check)

    def _format_is_type(self, p: InstructionParams) -> tuple[list[str], list[str], list[str]]:
        """Format IS-type instruction (slli, srli, srai, slliw, srliw, sraiw)."""
        # Shift amount is modulo xlen
        shift_amt = modify_imm(p.immval, self.test_data.xlen, modulo=True)
        setup = [
            load_int_reg("rs1", p.rs1, p.rs1val, self.test_data),
        ]
        test = [
            f"{self.instr_name} x{p.rd}, x{p.rs1}, {shift_amt} # perform operation",
        ]
        check = [
            write_sigupd(p.rd, self.test_data, "int"),
        ]
        return (setup, test, check)

    def _format_isw_type(self, p: InstructionParams) -> tuple[list[str], list[str], list[str]]:
        """Format ISW-type instruction (word-width shifts on RV64)."""
        # Shift amount is modulo 32 for word operations
        shift_amt = modify_imm(p.immval, 32, modulo=True)
        setup = [
            load_int_reg("rs1", p.rs1, p.rs1val, self.test_data),
        ]
        test = [
            f"{self.instr_name} x{p.rd}, x{p.rs1}, {shift_amt} # perform operation",
        ]
        check = [
            write_sigupd(p.rd, self.test_data, "int"),
        ]
        return (setup, test, check)

    def _format_l_type(self, p: InstructionParams) -> tuple[list[str], list[str], list[str]]:
        """Format L-type instruction (lb, lh, lw, ld, lbu, lhu, lwu)."""
        scaled_imm = modify_imm(p.immval, 12)
        setup = [
            load_int_reg("rs2", p.rs2, p.rs2val, self.test_data),
            f"LA(x{p.rs1}, scratch) # load base address",
        ]

        # Handle special case where offset is -2048 (can't represent +2048 in 12 bits)
        if p.immval == -2048:
            setup.extend(
                [
                    f"addi x{p.rs1}, x{p.rs1}, 2047 # increment by 2047",
                    f"addi x{p.rs1}, x{p.rs1}, 1 # increment by 1 more for total +2048",
                ]
            )
        else:
            neg_scaled_imm = modify_imm(-p.immval, 12)
            setup.append(f"addi x{p.rs1}, x{p.rs1}, {neg_scaled_imm} # adjust base address for offset")

        setup.append(f"SREG x{p.rs2}, {scaled_imm}(x{p.rs1}) # store test value to memory")
        test = [
            f"{self.instr_name} x{p.rd}, {scaled_imm}(x{p.rs1}) # perform load",
        ]
        check = [write_sigupd(p.rd, self.test_data, "int")]
        return (setup, test, check)

    def _format_s_type(self, p: InstructionParams) -> tuple[list[str], list[str], list[str]]:
        """Format S-type instruction (sb, sh, sw, sd)."""
        scaled_imm = modify_imm(p.immval, 12)
        setup = [
            load_int_reg("rs2", p.rs2, p.rs2val, self.test_data),
            f"LA(x{p.rs1}, scratch) # load base address",
        ]

        # Handle special case where offset is -2048
        if p.immval == -2048:
            setup.extend(
                [
                    f"addi x{p.rs1}, x{p.rs1}, 2047 # increment by 2047",
                    f"addi x{p.rs1}, x{p.rs1}, 1 # increment by 1 more for total +2048",
                ]
            )
        else:
            neg_scaled_imm = modify_imm(-p.immval, 12)
            setup.append(f"addi x{p.rs1}, x{p.rs1}, {neg_scaled_imm} # adjust base address for offset")

        test = [f"{self.instr_name} x{p.rs2}, {scaled_imm}(x{p.rs1}) # perform store"]
        check = [
            f"LREG x{p.rd}, {scaled_imm}(x{p.rs1}) # load back to verify",
            write_sigupd(p.rd, self.test_data, "int"),
        ]
        return (setup, test, check)

    def _format_i1_type(self, p: InstructionParams) -> tuple[list[str], list[str], list[str]]:
        """Format I1-type instruction (single-operand like mv, not, neg, etc.)."""
        setup = [
            load_int_reg("rs1", p.rs1, p.rs1val, self.test_data),
        ]
        test = [
            f"{self.instr_name} x{p.rd}, x{p.rs1} # perform operation",
        ]
        check = [write_sigupd(p.rd, self.test_data, "int")]
        return (setup, test, check)
