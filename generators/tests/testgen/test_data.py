##################################
# test_data.py
#
# jcarlin@hmc.edu 5 Oct 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
##################################

"""
Data structure for cvw-arch-verif test generation.
"""

from testgen.registers import FloatRegisterFile, IntegerRegisterFile


class TestData:
    def __init__(self, xlen: int, flen: int, e_register_file: bool = False) -> None:
        self._int_regs = IntegerRegisterFile(e_register_file)
        self._float_regs = FloatRegisterFile()
        self._sigupd_count = 10  # Start with a margin of 10 spaces in signature
        self._sigupd_count_float = 0
        self.__xlen = xlen
        self.__flen = flen

    # Regiester file accessors
    @property
    def int_regs(self):
        return self._int_regs

    @property
    def float_regs(self):
        return self._float_regs

    # Make sigupd_count variables available as properties so they can be accessed and modified directly
    @property
    def sigupd_count(self) -> int:
        return self._sigupd_count

    @sigupd_count.setter
    def sigupd_count(self, value: int) -> None:
        self._sigupd_count = value

    @property
    def sigupd_count_float(self) -> int:
        return self._sigupd_count_float

    @sigupd_count_float.setter
    def sigupd_count_float(self, value: int) -> None:
        self._sigupd_count_float = value

    # Read only properties
    @property
    def xlen(self) -> int:
        return self.__xlen

    @property
    def flen(self) -> int:
        return self.__flen

    @property
    def xlen_format_str(self) -> str:
        return f"0x{{:0{int(self.__xlen / 4)}x}}"

    @property
    def flen_format_str(self) -> str:
        return f"0x{{:0{int(self.__flen / 4)}x}}"
