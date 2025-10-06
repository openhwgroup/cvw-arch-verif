##################################
# common.py
#
# jcarlin@hmc.edu 5 Oct 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
##################################

"""
Common utilities for cvw-arch-verif test generation.
"""

from typing import Literal

from testgen.test_data import TestData


def write_sigupd(rd: int, test_data: TestData, sig_type: Literal["int", "float"] = "int") -> str:
    """
    Generate assembly for SIGUPD and increment sigupd_count.
    """
    sig_reg = test_data.int_regs.sig_reg
    if sig_type == "int":
        test_data.sigupd_count += 1
        return f"RVTEST_SIGUPD(x{sig_reg}, x{rd})"
    elif sig_type == "float":
        test_data.sigupd_count_float += 2
        temp_reg = test_data.int_regs.get_registers(1)
        sigupd_str = f"csrr x{temp_reg}, fcsr\n" # Get fcsr into a temp register
        sigupd_str += f"RVTEST_SIGUPD_F(x{sig_reg}, f{rd}, x{temp_reg})"
        test_data.int_regs.return_registers([temp_reg])
        return sigupd_str
    else:
        raise ValueError("Invalid sig_type specified.")

def get_sig_space(test_data: TestData) -> int:
    """Get the space needed for signature region taking xlen and flen into account."""
    xlen = test_data.xlen
    flen = test_data.flen
    # Integer sigup space
    sig_words = test_data.sigupd_count
    # Floating point sigup space
    if test_data.sigupd_count_float > 0:
        if flen > xlen:
            float_scale_factor = flen // xlen
            sig_words += test_data.sigupd_count_float * float_scale_factor
        else:
            sig_words += test_data.sigupd_count_float
    # Account for offset overflow adjustment
    sig_words += (4//(xlen//32))*(((sig_words*(xlen//32))*4)//2016)
    return sig_words

def myhash(s: str) -> int:
    """Return a simple hash of a string for use as a random seed.

    Python randomizes hashes by default, but we need a repeatable hash for repeatable test cases.
    """
    h = 0
    for c in s:
        h = (h * 31 + ord(c)) & 0xFFFFFFFF
    return h
