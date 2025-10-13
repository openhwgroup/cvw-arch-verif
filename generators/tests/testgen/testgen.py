#!/usr/bin/env python3

##################################
# testgen.py
#
# jcarlin@hmc.edu 5 Oct 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Generate directed tests for functional coverage
##################################

from pathlib import Path
from typing import Annotated

import typer

from testgen.common import get_sig_space
from testgen.load_templates import insert_setup_template
from testgen.test_data import TestData
from testgen.testplans import get_extensions, read_testplan
from testgen.write_tests import write_tests_for_instruction

testgen_app = typer.Typer(context_settings={"help_option_names": ["-h", "--help"]})


@testgen_app.command()
def generate_tests(
    testplan_dir: Annotated[
        Path, typer.Argument(exists=True, file_okay=False, help="Directory containing testplan CSV files")
    ],
    output_test_dir: Annotated[
        Path, typer.Option("--output_test_dir", "-o", help="Directory to output generated tests")
    ] = Path("tests"),
    extensions: Annotated[
        str,
        typer.Option(
            "--extensions", "-e", help="Comma-separated list of extensions to generate tests for (default: all)"
        ),
    ] = "all",
) -> None:
    """
    Generate riscv-arch-test tests from testplan CSV files.
    """
    # Get list of extensions
    extensions_from_testplans = get_extensions(testplan_dir)
    extension_list: list[str] = []
    if extensions == "all":
        extension_list = extensions_from_testplans
    else:
        for ext in extensions.split(","):
            if ext not in extensions_from_testplans:
                raise ValueError(f"Extension {ext} not found in testplans at {testplan_dir}")
            extension_list.append(ext)
    # Generate tests for each extension, xlen, and E_ext combination
    for xlen in [32, 64]:
        for E_ext in [False]:  # TODO: Enable E tests
            for extension in sorted(extension_list):
                # Set extension-specific variables
                output_dir = output_test_dir / f"rv{xlen}{'e' if E_ext else ''}/{extension}"
                output_dir.mkdir(parents=True, exist_ok=True)
                flen = (
                    128
                    if extension in ["Q", "ZfaQ", "ZfhQ"]
                    else 64
                    if extension in ["D", "ZfaD", "ZfhD", "Zcd", "ZfaZfhD", "ZfhminD"]
                    else 32
                )
                print(f"Generating tests for {output_dir}")
                # Iterate through each instruction in extension
                instructions = read_testplan(testplan_dir / f"{extension}.csv")
                for instr_name, instr_data in sorted(instructions.items()):
                    # Skip instructions not valid for this xlen
                    if (xlen == 32 and not instr_data.rv32) or (xlen == 64 and not instr_data.rv64):
                        continue
                    test_data = TestData(xlen, flen, E_ext)
                    test_file = output_dir / f"{extension}-{instr_name}.S"
                    test_file_relative = str(test_file.relative_to(output_test_dir))

                    # Test header
                    test_lines = [insert_setup_template("testgen_header.S", xlen, extension, test_file_relative)]
                    # Enable floating point if needed
                    if "F" in extension or "D" in extension or "Q" in extension or "Zf" in extension:
                        test_lines.append("# set mstatus.FS to 01 to enable fp\nLI(t0,0x4000)\ncsrs mstatus, t0\n")

                    # Generate tests for this instruction
                    test_lines.append(
                        write_tests_for_instruction(
                            instr_name, instr_data.instr_type, instr_data.coverpoints, test_data, extension
                        )
                    )

                    # Test footer
                    sig_words = get_sig_space(test_data)
                    test_lines.append(
                        insert_setup_template("testgen_footer.S", xlen, extension, test_file_relative, sig_words)
                    )

                    # Write test file if different from existing file
                    test_string = "\n".join(test_lines) + "\n"
                    if not (test_file.exists()) or test_file.read_text() != test_string:
                        test_file.write_text(test_string)
                        print(f"Updated {test_file}")


def main() -> None:
    testgen_app()  # runs generate_tests() using Typer to fill in args


if __name__ == "__main__":
    main()
