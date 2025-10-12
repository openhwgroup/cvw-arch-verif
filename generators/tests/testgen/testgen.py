#!/usr/bin/env python3

##################################
# testgen.py
#
# jcarlin@hmc.edu 5 Oct 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Generate directed tests for functional coverage
##################################

##################################
# libraries
##################################
import argparse
from pathlib import Path

# Import common utilities
from testgen.common import get_sig_space

# Import template utilities
from testgen.load_templates import insert_setup_template

# Import register management
from testgen.test_data import TestData

# Import testplan reading utilities
from testgen.testplans import get_extensions, read_testplan

# Import test writing utilities
from testgen.write_tests import write_tests_for_instruction


def generate_tests(testplan_dir: Path, output_test_dir: Path) -> None:
    extensions = get_extensions(testplan_dir)
    # Generate tests for each extension, xlen, and E_ext combination
    for xlen in [32, 64]:
        for E_ext in [False]:  # TODO: Enable E tests
            for extension in sorted(extensions):
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
    parser = argparse.ArgumentParser(description="Generate cvw-arch-verif tests")
    parser.add_argument("testplan_dir", type=Path, help="Directory containing testplan CSV files")
    parser.add_argument(
        "-o", "--output-test-dir", type=Path, default=Path("tests"), help="Directory to output generated tests"
    )
    args = parser.parse_args()

    if not args.testplan_dir.is_dir():
        print(f"Error: {args.testplan_dir} does not exist or is not a directory")
        exit(1)

    generate_tests(args.testplan_dir, args.output_test_dir)


if __name__ == "__main__":
    main()
