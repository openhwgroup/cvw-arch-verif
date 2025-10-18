# testgen/instruction_formatters/__init__.py
"""Instruction formatters with automatic discovery."""

# Re-export the public API from instruction_formatters module
from testgen.instruction_formatters._instruction_formatters import (
    add_instruction_formatter,
    format_instruction,
    format_single_test,
)

__all__ = [
    "add_instruction_formatter",
    "format_instruction",
    "format_single_test",
]
