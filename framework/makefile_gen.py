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


def generate_makefile(
    common_test_list: dict[str, dict[str, Any]],
    config_test_list: dict[str, dict[str, Any]],
    makefile_path: Path,
    wkdir: Path,
    config_name: str,
) -> None:
    """Generate a Makefile to run the selected tests."""
    xlen = 64  # TODO: Get from config
    mabi = f"{'i' if xlen == 32 else ''}lp{xlen}"
    include_paths = "-Itests -Itests/env -Itests/priv/headers"
    linker_script = "tests/link.ld"
    config_test_dir = wkdir / config_name
    with makefile_path.open("w") as makefile:
        # General variables
        makefile.write(
            f"XLEN := {xlen}\n"
            "CC := riscv64-unknown-elf-gcc\n"
            f"INCLUDE_PATHS := {include_paths}\n"
            f"CFLAGS := -O0 -g -mcmodel=medany -nostartfiles -T {linker_script} ${{INCLUDE_PATHS}}\n"
        )
        # Top-level target to compile all tests
        makefile.write("TESTS = \\\n")
        for test_name in config_test_list.keys():
            makefile.write(f"    {config_test_dir}/{test_name.replace('.S', '.elf')} \\\n")
        makefile.write("\nall: $(TESTS)\n\n")
        # Common test compilation targets
        for test_name, test_metadata in common_test_list.items():
            march = test_metadata["MARCH"]
            flen = "64" if "D" in test_metadata["implemented_extensions"] else "32"
            # Generate signature based ELF
            sig_elf = wkdir / "common" / test_name.replace(".S", "-sig.elf")
            makefile.write(f"{sig_elf}: tests/{test_name} | {sig_elf.parent}\n")
            makefile.write(f"\t@echo Compiling {test_name} to {sig_elf}\n")
            makefile.write(
                f"\t$(CC) $(CFLAGS) -o {sig_elf} -march={march} -mabi={mabi} -DSIGNATURE -DXLEN={xlen} -DFLEN={flen} tests/{test_name}\n\n"
            )

            # Generate signature file
            sig_file = wkdir / "common" / test_name.replace(".S", ".sig")
            sig_log_file = wkdir / "common" / test_name.replace(".S", "-sig.log")
            makefile.write(f"{sig_file}: {sig_elf}\n")
            makefile.write(f"\t@echo Generating signature for {sig_elf} to {sig_file}\n")
            makefile.write(
                f"\tsail_riscv_sim --test-signature={sig_file} --signature-granularity {int(xlen / 8)} {sig_elf} > {sig_log_file}\n\n"
            )

            # Final ELF target
            final_elf = wkdir / "common" / test_name.replace(".S", ".elf")
            makefile.write(f"{final_elf}: {sig_elf} {sig_file}\n")
            makefile.write(f"\t@echo Generating final ELF {final_elf}\n")
            makefile.write(
                f"\t$(CC) $(CFLAGS) -o {final_elf} -march={march} -mabi={mabi} -DSELFCHECK -DXLEN={xlen} -DFLEN={flen} -DSIGNATURE_FILE='{sig_file}' tests/{test_name}\n\n"
            )
        # Individual test compilation targets
        for test_name, test_metadata in config_test_list.items():
            if test_name in common_test_list:
                final_elf = config_test_dir / test_name.replace(".S", ".elf")
                common_elf = wkdir / "common" / test_name.replace(".S", ".elf")
                makefile.write(f"{final_elf}: {common_elf} | {final_elf.parent}\n")
                makefile.write(f"\t@echo Using common ELF for {final_elf}\n")
                makefile.write(f"\tln -sf {common_elf} {final_elf}\n\n")
            else:
                march = test_metadata["MARCH"]
                flen = "64" if "D" in test_metadata["implemented_extensions"] else "32"
                # Generate signature based ELF
                sig_elf = config_test_dir / test_name.replace(".S", "-sig.elf")
                makefile.write(f"{sig_elf}: tests/{test_name} | {sig_elf.parent}\n")
                makefile.write(f"\t@echo Compiling {test_name} to {sig_elf}\n")
                makefile.write(
                    f"\t$(CC) $(CFLAGS) -o {sig_elf} -march={march} -mabi={mabi} -DSIGNATURE -DXLEN={xlen} -DFLEN={flen} tests/{test_name}\n\n"
                )

                # Generate signature file
                sig_file = config_test_dir / test_name.replace(".S", ".sig")
                sig_log_file = config_test_dir / test_name.replace(".S", "-sig.log")
                makefile.write(f"{sig_file}: {sig_elf}\n")
                makefile.write(f"\t@echo Generating signature for {sig_elf} to {sig_file}\n")
                makefile.write(
                    f"\tsail_riscv_sim --test-signature={sig_file} --signature-granularity {int(xlen / 8)} {sig_elf} > {sig_log_file}\n\n"
                )

                # Final ELF target
                final_elf = config_test_dir / test_name.replace(".S", ".elf")
                makefile.write(f"{final_elf}: {sig_elf} {sig_file}\n")
                makefile.write(f"\t@echo Generating final ELF {final_elf}\n")
                makefile.write(
                    f"\t$(CC) $(CFLAGS) -o {final_elf} -march={march} -mabi={mabi} -DSELFCHECK -DXLEN={xlen} -DFLEN={flen} -DSIGNATURE_FILE='{sig_file}' tests/{test_name}\n\n"
                )

        # Directory creation rules
        makefile.write(f"{wkdir}/%:\n")
        makefile.write("\tmkdir -p $@\n\n")

        # Clean target
        makefile.write("clean:\n")
        makefile.write(f"\trm -rf {wkdir}/*\n")


def main():
    import sys
    from pathlib import Path

    from framework.parse_test_constraints import generate_test_dict
    from framework.parse_udb_config import parse_udb_config
    from framework.select_tests import select_tests

    tests_dir = Path(sys.argv[1])
    udb_config_path = Path(sys.argv[2])
    makefile_path = Path("generated_makefile.mk")
    wkdir = Path.cwd() / "workdir"

    # Parse UDB config and get implemented extensions
    udb_config = parse_udb_config(udb_config_path)

    # Generate test list with metadata
    test_dict = generate_test_dict(tests_dir)

    # Select tests based on UDB config
    selected_tests, common_tests = select_tests(test_dict, udb_config)

    # Generate Makefile
    generate_makefile(common_tests, selected_tests, makefile_path, wkdir, udb_config_path.stem)
    print(f"Makefile generated at {makefile_path}")


if __name__ == "__main__":
    main()
