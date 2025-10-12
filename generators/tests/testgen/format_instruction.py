# ============================================================================
# INSTRUCTION FORMATTER CLASS
# ============================================================================


from testgen.common import load_int_reg, write_sigupd
from testgen.immediates import modify_imm
from testgen.instruction_params import InstructionParams
from testgen.test_data import TestData


class InstructionGenerator:
    """
    Formats assembly test cases for a specific instruction.

    This class handles the type-specific formatting of instructions into
    assembly code. It takes InstructionParams and generates the appropriate
    assembly instructions with setup and verification code.
    """

    # Supported instruction types
    INSTRUCTION_TYPES = (
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
        assert p.rs1 is not None and p.rs1val is not None
        assert p.rs2 is not None and p.rs2val is not None
        assert p.rd is not None
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
        assert p.rs1 is not None and p.rs1val is not None
        assert p.rd is not None
        assert p.immval is not None
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
        assert p.rd is not None and p.immval is not None
        scaled_imm = modify_imm(p.immval, 20, signed=False)
        setup = []
        test = [
            f"{self.instr_name} x{p.rd}, {scaled_imm} # perform operation",
        ]
        check = [write_sigupd(p.rd, self.test_data, "int")]
        return (setup, test, check)

    def _format_b_type(self, p: InstructionParams) -> tuple[list[str], list[str], list[str]]:
        """Format B-type instruction (beq, bne, blt, bge, bltu, bgeu)."""
        assert p.rs1 is not None and p.rs1val is not None
        assert p.rs2 is not None and p.rs2val is not None
        assert p.rd is not None
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
        assert p.rd is not None and p.rs2 is not None
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
        assert p.rs1 is not None and p.rs2 is not None and p.rd is not None
        assert p.immval is not None
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
        assert p.rs1 is not None and p.rs1val is not None
        assert p.rd is not None
        assert p.immval is not None
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
        assert p.rs1 is not None and p.rs1val is not None
        assert p.rd is not None
        assert p.immval is not None
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
        assert p.rs1 is not None
        assert p.rs2 is not None and p.rs2val is not None
        assert p.rd is not None
        assert p.immval is not None
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
        assert p.rs1 is not None
        assert p.rs2 is not None and p.rs2val is not None
        assert p.rd is not None
        assert p.immval is not None
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
        assert p.rs1 is not None and p.rs1val is not None and p.rd is not None
        setup = [
            load_int_reg("rs1", p.rs1, p.rs1val, self.test_data),
        ]
        test = [
            f"{self.instr_name} x{p.rd}, x{p.rs1} # perform operation",
        ]
        check = [write_sigupd(p.rd, self.test_data, "int")]
        return (setup, test, check)
