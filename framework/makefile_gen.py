#!/usr/bin/env python3
##################################
# makefile_gen.py
#
# jcarlin@hmc.edu 6 Sept 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Generate Makefile for tests
##################################

from pathlib import Path
from typing import Any


def generate_makefile(test_list: dict[str, dict[str, Any]], makefile_path: Path, wkdir: Path) -> None:
    """Generate a Makefile to run the selected tests."""
    with makefile_path.open("w") as makefile:
        # General variables
        makefile.write("CC := riscv64-unknown-elf-gcc\n")
        makefile.write(
            "CFLAGS := -O0 -g -mcmodel=medany -nostartfiles -T tests/link.ld -Itests -Itests/env -Itests/priv/headers\n"
        )
        # Top-level target to compile all tests
        makefile.write("TESTS = \\\n")
        for test_name in test_list.keys():
            makefile.write(f"    {test_name.replace('.S', '.elf')} \\\n")
        makefile.write("\nall: $(TESTS)\n\n")
        # Individual test compilation targets
        for test_name, test_metadata in test_list.items():
            elf = wkdir / test_name.replace(".S", ".elf")
            makefile.write(f"{elf}: tests/{test_name} | {elf.parent}\n")
            makefile.write(f"\t@echo Compiling {test_name} to {elf}\n")
            makefile.write(
                f"\t$(CC) $(CFLAGS) -o {elf} -march={test_metadata.get('MARCH')} -mabi=lp64 -DLOCKSTEP -DXLEN=64 tests/{test_name}\n\n"
            )
        # Directory creation rules
        makefile.write(f"{wkdir}/%:\n")
        makefile.write("\tmkdir -p $@\n\n")


def main():
    import sys
    from pathlib import Path

    from parse_test_constraints import generate_test_dict
    from parse_udb_config import parse_udb_config
    from select_tests import select_tests

    tests_dir = Path(sys.argv[1])
    udb_config_path = Path(sys.argv[2])
    makefile_path = Path("generated_makefile.mk")
    wkdir = Path.cwd() / "workdir"

    # Parse UDB config and get implemented extensions
    udb_config = parse_udb_config(udb_config_path)

    # Generate test list with metadata
    test_dict = generate_test_dict(tests_dir)

    # Select tests based on UDB config
    selected_tests = select_tests(test_dict, udb_config)

    # Generate Makefile
    generate_makefile(selected_tests, makefile_path, wkdir)
    print(f"Makefile generated at {makefile_path}")


if __name__ == "__main__":
    main()
