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


def write_test_compilation_rules(
    test_name: str,
    test_metadata: dict[str, Any],
    base_dir: Path,
    xlen: int,
    mabi: str,
) -> str:
    make_str = ""

    # Extract metadata
    march = test_metadata["MARCH"]
    flen = "64" if "D" in test_metadata["implemented_extensions"] else "32" # TODO: Use implemented_extensions in header file so this doesn't have to be defined

    # Generate signature based ELF
    sig_elf = base_dir / test_name.replace(".S", "-sig.elf")
    test_path = Path("tests") / test_name
    make_str += f"{sig_elf}: {test_path} | {sig_elf.parent}\n"
    make_str += f"\t@echo Compiling {test_name} to {sig_elf}\n"
    make_str += f"\t$(CC) $(CFLAGS) -o {sig_elf} -march={march} -mabi={mabi} -DSIGNATURE -DXLEN={xlen} -DFLEN={flen} {test_path}\n\n"

    # Generate signature file
    sig_file = base_dir / test_name.replace(".S", ".sig")
    sig_log_file = base_dir / test_name.replace(".S", "-sig.log")
    make_str += f"{sig_file}: {sig_elf}\n"
    make_str += f"\t@echo Generating signature for {sig_elf} to {sig_file}\n"
    make_str += f"\tsail_riscv_sim --test-signature={sig_file} --signature-granularity {int(xlen / 8)} {sig_elf} > {sig_log_file}\n\n"

    # Final ELF target
    final_elf = base_dir / test_name.replace(".S", ".elf")
    make_str += f"{final_elf}: {sig_elf} {sig_file}\n"
    make_str += f"\t@echo Generating final ELF {final_elf}\n"
    make_str += f"\t$(CC) $(CFLAGS) -o {final_elf} -march={march} -mabi={mabi} -DSELFCHECK -DXLEN={xlen} -DFLEN={flen} -DSIGNATURE_FILE='{sig_file}' {test_path}\n\n"

    return make_str


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
    common_test_dir = wkdir / "common"
    config_test_dir = wkdir / config_name

    with makefile_path.open("w") as makefile:
        # General variables
        makefile.write(
            "CC := riscv64-unknown-elf-gcc\n"
            f"INCLUDE_PATHS := {include_paths}\n"
            f"CFLAGS := -O0 -g -mcmodel=medany -nostartfiles -T {linker_script} ${{INCLUDE_PATHS}}\n"
            f"XLEN := {xlen}\n"
            ".DEFAULT_GOAL := all\n\n"
        )

        # Common test compilation targets
        directory_set = {str(wkdir), str(config_test_dir), str(common_test_dir)}
        for test_name, test_metadata in common_test_list.items():
            directory_set.add(str((common_test_dir / test_name).parent))
            makefile.write(write_test_compilation_rules(test_name, test_metadata, common_test_dir, xlen, mabi))
        # Individual test compilation targets
        compile_all_target = "TESTS = \\\n"
        for test_name, test_metadata in config_test_list.items():
            final_elf = config_test_dir / test_name.replace(".S", ".elf")
            compile_all_target += f"    {final_elf} \\\n"
            directory_set.add(str(final_elf.parent))

            # Symlink to common ELF if test is in common list, otherwise compile the test
            if test_name in common_test_list:
                common_elf = common_test_dir / test_name.replace(".S", ".elf")
                makefile.write(f"{final_elf}: {common_elf} | {final_elf.parent}\n")
                makefile.write(f"\t@echo Using common ELF for {final_elf}\n")
                makefile.write(f"\tln -sf {common_elf} {final_elf}\n\n")
            else:
                makefile.write(write_test_compilation_rules(test_name, test_metadata, config_test_dir, xlen, mabi))

            # Run test on Sail to generate log
            sail_log = config_test_dir / test_name.replace(".S", ".log")
            makefile.write(f"{sail_log}: {final_elf}\n")
            makefile.write(f"\t@echo Running {final_elf} on Sail to generate log {sail_log}\n")
            makefile.write(f"\tsail_riscv_sim --trace-all {final_elf} --trace-output {sail_log}\n\n")

            # Generate RVVI trace
            rvvi_trace = config_test_dir / test_name.replace(".S", ".rvvi")
            makefile.write(f"{rvvi_trace}: {sail_log}\n")
            makefile.write(f"\t@echo Generating RVVI trace {rvvi_trace} from log {sail_log}\n")
            makefile.write(f"\tuv run bin/sail-parse.py {sail_log} {rvvi_trace}\n\n")

        # Top-level target to compile all tests
        compile_all_target += "\nall: $(TESTS)\n\n"
        makefile.write(compile_all_target)

        # Directory creation rules
        makefile.write(f"{" ".join(directory_set)}:\n")
        makefile.write("\tmkdir -p $@\n\n")

        # Clean target
        makefile.write("clean:\n")
        makefile.write(f"\trm -rf {wkdir}/*\n")


def main() -> None:
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
