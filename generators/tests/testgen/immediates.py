##################################
# immediates.py
#
# jcarlin@hmc.edu 5 Oct 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
##################################

"""
Immediate value formatting for cvw-arch-verif test generation.
"""


def format_imm(
    value: int,
    bits: int,
    *,  # require keyword arguments after this point
    signed: bool = True,
    hex_format: bool = False,
    no_zero: bool = False,
    restrict_offset: bool = False,
    modulo: bool = False,
) -> str:
    """
    Format an immediate value for RISC-V assembly instructions.

    Args:
        value: Raw immediate value (can be any integer)
        bits: Number of bits in the immediate field
        signed: If True, interpret as signed two's complement
        hex_format: If True, output as hex string with 0x prefix, otherwise output decimal string
        no_zero: If True, replace zero with a non-zero default (16)
        restrict_offset: If True, restrict to [-2047, 2047] for memory/control flow offsets
        modulo: If True, apply modulo operation instead of bit mask
                (used for shift amounts constrained by register width)
    """
    # Scale immediate
    if modulo:
        value = value % bits
    else:  # Reduce to bit width
        value = value % (2**bits)

    # Convert to signed if requested
    if signed:
        sign_bit = 2 ** (bits - 1)
        if value & sign_bit:
            value = value - (2**bits)

    # Handle offset restriction (avoid -2048 for address calculations)
    if restrict_offset and value == -2048:
        value = -2047

    # Handle illegal zero (for certain compressed immediates)
    if no_zero and value == 0:
        value = 16  # Default non-zero value

    # Format output
    if hex_format:
        # if value < 0:
        #     value = value + (2**bits)
        return hex(value)
    else:
        return str(value)
