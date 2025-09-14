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

from framework.parse_test_constraints import TestMetadata


def gen_compile_targets(
    test_name: str,
    test_metadata: TestMetadata,
    base_dir: Path,
    xlen: int,
    mabi: str,
) -> str:
    make_lines = []

    # Extract metadata using properties
    march = test_metadata.march
    flen = test_metadata.flen

    base_name = test_name.replace(".S", "")
    sig_elf = base_dir / f"{base_name}-sig.elf"
    sig_file = base_dir / f"{base_name}.sig"
    sig_log_file = base_dir / f"{base_name}-sig.log"
    final_elf = base_dir / f"{base_name}.elf"
    test_path = Path("tests") / test_name

    # Generate signature based ELF
    make_lines.extend(
        [
            f"{sig_elf}: {test_path} | {sig_elf.parent}",
            f"\t@echo Compiling {test_name} to {sig_elf}",
            f"\t$(CC) $(CFLAGS) -o {sig_elf} -march={march} -mabi={mabi} -DSIGNATURE -DXLEN={xlen} -DFLEN={flen} {test_path}",
            "",
        ]
    )

    # Generate signature file
    make_lines.extend(
        [
            f"{sig_file}: {sig_elf}",
            f"\t@echo Generating signature for {sig_elf} to {sig_file}",
            f"\tsail_riscv_sim --test-signature={sig_file} --signature-granularity {int(xlen / 8)} {sig_elf} > {sig_log_file}",
            "",
        ]
    )

    # Final ELF target
    make_lines.extend(
        [
            f"{final_elf}: {sig_elf} {sig_file}",
            f"\t@echo Generating final ELF {final_elf}",
            f"\t$(CC) $(CFLAGS) -o {final_elf} -march={march} -mabi={mabi} -DSELFCHECK -DXLEN={xlen} -DFLEN={flen} -DSIGNATURE_FILE='{sig_file}' {test_path}",
            "",
        ]
    )

    return "\n".join(make_lines)


def gen_rvvi_targets(test_name: str, base_dir: Path) -> str:
    make_lines = []

    base_name = test_name.replace(".S", "")
    elf = base_dir / f"{base_name}.elf"
    sail_log = base_dir / f"{base_name}.log"
    rvvi_trace = base_dir / f"{base_name}.rvvi"

    # Run test on Sail to generate log
    make_lines.extend(
        [
            f"{sail_log}: {elf}",
            f"\t@echo Running {elf} on Sail to generate log {sail_log}",
            f"\tsail_riscv_sim --trace-all {elf} --trace-output {sail_log}",
            "",
        ]
    )

    # Generate RVVI trace
    make_lines.extend(
        [
            f"{rvvi_trace}: {sail_log}",
            f"\t@echo Generating RVVI trace {rvvi_trace} from log {sail_log}",
            f"\tuv run bin/sail-parse.py {sail_log} {rvvi_trace}",
            "",
        ]
    )

    return "\n".join(make_lines)


def generate_makefile(
    common_test_list: dict[str, TestMetadata],
    config_test_list: dict[str, TestMetadata],
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

    makefile_lines = []

    # General variables
    makefile_lines.extend(
        [
            "CC := riscv64-unknown-elf-gcc",
            f"INCLUDE_PATHS := {include_paths}",
            f"CFLAGS := -O0 -g -mcmodel=medany -nostartfiles -T {linker_script} ${{INCLUDE_PATHS}}",
            f"XLEN := {xlen}",
            "",
            ".DEFAULT_GOAL := compile",
            ".PHONY: compile coverage clean",
            "",
        ]
    )

    directory_set = {str(wkdir), str(config_test_dir), str(common_test_dir)}

    # Common test compilation targets
    for test_name, test_metadata in common_test_list.items():
        directory_set.add(str((common_test_dir / test_name).parent))
        makefile_lines.append(gen_compile_targets(test_name, test_metadata, common_test_dir, xlen, mabi))

    # Individual test compilation targets and TESTS variable
    test_targets = []
    individual_test_rules = []

    for test_name, test_metadata in config_test_list.items():
        base_name = test_name.replace(".S", "")
        final_elf = config_test_dir / f"{base_name}.elf"
        test_targets.append(f"    {final_elf} \\")
        directory_set.add(str(final_elf.parent))

        # Symlink to common ELF if test is in common list, otherwise compile the test
        if test_name in common_test_list:
            common_elf = common_test_dir / f"{base_name}.elf"
            individual_test_rules.extend(
                [
                    f"{final_elf}: {common_elf} | {final_elf.parent}",
                    f"\t@echo Using common ELF for {final_elf}",
                    f"\tln -sf {common_elf} {final_elf}",
                    "",
                ]
            )
        else:
            individual_test_rules.append(gen_compile_targets(test_name, test_metadata, config_test_dir, xlen, mabi))

        # Produce RVVI trace
        individual_test_rules.append(gen_rvvi_targets(test_name, config_test_dir))

    # Add TESTS variable and compile target
    makefile_lines.append("TESTS = \\")
    makefile_lines.extend(test_targets)
    makefile_lines.extend(["", "compile: $(TESTS)", ""])

    # Add individual test rules
    makefile_lines.extend(individual_test_rules)

    # Directory creation rules
    makefile_lines.extend([f"{' '.join(sorted(directory_set))}:", "\tmkdir -p $@", ""])

    # Clean target
    makefile_lines.extend(["clean:", f"\trm -rf {wkdir}/*"])

    # Write to Makefile
    makefile_path = Path("generated_makefile.mk")  # TODO: Put this in config specific workdir
    makefile_path.write_text("\n".join(makefile_lines))


def main() -> None:
    import sys
    from pathlib import Path

    from framework.parse_test_constraints import generate_test_dict
    from framework.parse_udb_config import parse_udb_config
    from framework.select_tests import select_tests

    tests_dir = Path(sys.argv[1])
    udb_config_path = Path(sys.argv[2])
    wkdir = Path.cwd() / "workdir"

    # Parse UDB config and get implemented extensions
    udb_config = parse_udb_config(udb_config_path)

    # Generate test list with metadata
    test_dict = generate_test_dict(tests_dir)

    # Select tests based on UDB config
    selected_tests, common_tests = select_tests(test_dict, udb_config)

    # Generate Makefile
    generate_makefile(common_tests, selected_tests, wkdir, udb_config_path.stem)


if __name__ == "__main__":
    main()
