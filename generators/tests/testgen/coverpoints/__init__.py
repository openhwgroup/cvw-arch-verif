# testgen/coverpoints/__init__.py
"""Coverpoint test generation with automatic generator discovery."""

# Re-export the public API from coverpoints module
from testgen.coverpoints.coverpoints import (
    add_coverpoint_generator,
    generate_tests_for_coverpoint,
)

__all__ = [
    "add_coverpoint_generator",
    "generate_tests_for_coverpoint",
]
