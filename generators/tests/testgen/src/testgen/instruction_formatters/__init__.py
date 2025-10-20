# testgen/instruction_formatters/__init__.py
"""Instruction formatters with automatic discovery."""

# Re-export the public API from instruction_formatters module
from testgen.instruction_formatters.instruction_formatters import (
    format_instruction,
    format_single_test,
)

__all__ = [
    "format_instruction",
    "format_single_test",
]
