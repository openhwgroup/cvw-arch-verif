##################################
# registers.py
#
# jcarlin@hmc.edu 5 October 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
##################################

"""
Register management for cvw-arch-verif test generation.
"""

import random


def select_registers(num_regs: int, reg_list: list[int]) -> list[int]:
    """Select a specified number of unique registers from a list of available registers."""
    if num_regs > len(reg_list):
        raise ValueError("Not enough registers available to select from.")

    selected_regs = random.sample(reg_list, num_regs)
    return selected_regs


class RegisterFile:
    """Class to represent a register file and provide methods to select registers."""

    def __init__(self, reg_count: int):
        self._reg_count = reg_count
        self.reg_list = list(range(reg_count))

    def __repr__(self):
        return f"Register File with the following registers available: {self.reg_list}"

    @property
    def reg_count(self):
        return self._reg_count

    def get_registers(
        self, num_regs: int, *, exclude_reg: list[int] | None = None, reg_range: list[int] | None = None
    ) -> list[int]:
        """Get a specified number of unique registers from the register file."""
        # Handle exclusions and range limitations
        if exclude_reg is None:
            exclude_reg = []
        if reg_range is not None:
            exclude_reg += [reg for reg in self.reg_list if reg not in reg_range]
        available_regs = [reg for reg in self.reg_list if reg not in exclude_reg]
        # Select random registers and remove them from the available list
        selected_regs = select_registers(num_regs, available_regs)
        for reg in selected_regs:
            self.reg_list.remove(reg)
        return selected_regs

    def get_register(self, *, exclude_reg: list[int] | None = None, reg_range: list[int] | None = None) -> int:
        """Get a single register from the register file."""
        return self.get_registers(1, exclude_reg=exclude_reg, reg_range=reg_range)[0]

    def return_registers(self, regs: list[int]) -> None:
        """Mark registers as available again."""
        self.reg_list.extend(regs)
        self.reg_list = list(set(self.reg_list))  # Ensure uniqueness
        self.reg_list.sort()

    def consume_registers(self, regs: list[int]) -> str | None:
        """Mark registers as used/unavailable."""
        for reg in regs:
            if reg in self.reg_list:
                self.reg_list.remove(reg)
            else:
                raise ValueError(f"Register {reg} is already in use or is not available.")
        return None


class IntegerRegisterFile(RegisterFile):
    """Class to represent an integer register file."""

    # Limit legal link registers to simplify failure handler
    link_regs: tuple[int] = (4, 7, 14)

    def __init__(self, e_register_file: bool = False):
        # Use default RegisterFile functions but set register count based on E
        reg_count = 16 if e_register_file else 32
        super().__init__(reg_count)
        # Default special registers
        self._sig_reg = 3
        self._link_reg = 4
        super().consume_registers([self._sig_reg, self._link_reg])

    # Access to special registers
    @property
    def sig_reg(self):
        return self._sig_reg

    @property
    def link_reg(self):
        return self._link_reg

    def consume_registers(self, regs: list[int]) -> str:
        """Mark registers as used/unavailable, handling special register conflicts.

        If any of the requested registers conflict with special registers (sig_reg, link_reg),
        this method will automatically relocate the special registers and return the necessary
        assembly code to perform the move.
        """
        asm_code = ""

        # Check for conflicts with special registers
        sig_conflict = self._sig_reg in regs
        link_conflict = self._link_reg in regs

        # Return special registers to pool if they conflict
        if sig_conflict:
            old_sig_reg = self._sig_reg
            self.return_registers([self._sig_reg])

        if link_conflict:
            old_link_reg = self._link_reg
            self.return_registers([self._link_reg])

        # Consume requested registers
        super().consume_registers(regs)

        # Reallocate special registers to new locations
        if sig_conflict:
            self._sig_reg = self.get_register()
            asm_code += f"\nmv x{self._sig_reg}, x{old_sig_reg} # switch signature pointer register to avoid conflict with test\n"

        if link_conflict:
            # Restrict link register to specific set
            self._link_reg = self.get_registers(1, reg_range=list(self.link_regs))
            asm_code += (
                f"\nmv x{self._link_reg}, x{old_link_reg} # switch link pointer register to avoid conflict with test\n"
            )

        return asm_code


class FloatRegisterFile(RegisterFile):
    """Class to represent a floating point register file."""

    def __init__(self):
        # There are always 32 floating point registers
        super().__init__(32)
