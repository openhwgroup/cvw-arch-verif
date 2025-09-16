##################################
# makefile_gen.py
#
# jcarlin@hmc.edu 6 Sept 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Generate Makefile for tests
##################################

from pathlib import Path

from framework.config import Config
from framework.parse_test_constraints import TestMetadata


def gen_compile_targets(
    test_name: str,
    test_metadata: TestMetadata,
    tests_dir: Path,
    base_dir: Path,
    xlen: int,
    mabi: str,
    config: Config,
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
    test_path = tests_dir / test_name

    # Generate signature based ELF
    make_lines.extend(
        [
            f"{sig_elf}: {test_path} | {sig_elf.parent}",
            f"\t{config.compiler_string} $(CFLAGS) \\\n\t-o {sig_elf} \\\n\t-march={march} -mabi={mabi} -DSIGNATURE -DXLEN={xlen} -DFLEN={flen} \\\n\t{test_path}",
            "",
        ]
    )

    # Generate signature file
    ref_model_flags = config.ref_model_type.flags.format(sig_file=sig_file, granularity=int(xlen / 8))
    make_lines.extend(
        [
            f"{sig_file}: {sig_elf}",
            f"\t{config.ref_model_exe} {ref_model_flags} \\\n\t{sig_elf} > {sig_log_file}",
            "",
        ]
    )

    # Final ELF target
    make_lines.extend(
        [
            f"{final_elf}: {sig_elf} {sig_file}",
            f"\t{config.compiler_string} $(CFLAGS) \\\n\t-o {final_elf} \\\n\t-march={march} -mabi={mabi} -DSELFCHECK -DXLEN={xlen} -DFLEN={flen} -DSIGNATURE_FILE='{sig_file}' \\\n\t{test_path}",
            f"\t{config.objdump_exe} -S -M no-aliases {final_elf} > {final_elf}.objdump" if config.objdump_exe is not None else "# skipping objdump generation",
            "",
        ]
    )

    return "\n".join(make_lines)


def gen_rvvi_targets(test_name: str, base_dir: Path, config: Config) -> str:
    make_lines = []

    base_name = test_name.replace(".S", "")
    elf = base_dir / f"{base_name}.elf"
    sail_log = base_dir / f"{base_name}.log"
    rvvi_trace = base_dir / f"{base_name}.rvvi"

    # Run test on Sail to generate log
    make_lines.extend(
        [
            f"{sail_log}: {elf}",
            f"\t{config.ref_model_exe} --trace-all {elf} --trace-output {sail_log}",
            "",
        ]
    )

    # Generate RVVI trace
    make_lines.extend(
        [
            f"{rvvi_trace}: {sail_log}",
            f"\tuv run bin/sail-parse.py {sail_log} {rvvi_trace}",
            "",
        ]
    )

    return "\n".join(make_lines)


def generate_common_makefile(
    common_test_list: dict[str, TestMetadata],
    tests_dir: Path,
    wkdir: Path,
    config: Config,
    xlen: int,
    mabi: str,
) -> None:
    """Generate a Makefile to compile the common tests."""
    common_test_dir = wkdir / "common"
    makefile_lines = [
        "# This Makefile is auto-generated. Do not edit directly.",
        ".PHONY: fail",
        "fail:",
        '\t@echo "This Makefile is not intended to be run directly. Use the config-specific Makefile instead." && exit 1',
        "",
    ]
    directory_set = {str(common_test_dir)}
    for test_name, test_metadata in common_test_list.items():
        directory_set.add(str((common_test_dir / test_name).parent))
        makefile_lines.append(
            gen_compile_targets(test_name, test_metadata, tests_dir, common_test_dir, xlen, mabi, config)
        )

    # Directory creation rules
    makefile_lines.extend([f"{' '.join(directory_set)}:", "\tmkdir -p $@", ""])

    # Write out Makefile
    common_test_dir.mkdir(parents=True, exist_ok=True)
    makefile_path = common_test_dir / "Makefile"
    makefile_path.write_text("\n".join(makefile_lines))


def generate_config_makefile(
    config_test_list: dict[str, TestMetadata],
    common_test_list: dict[str, TestMetadata],
    tests_dir: Path,
    wkdir: Path,
    config_name: str,
    config: Config,
    xlen: int,
    mabi: str,
) -> None:
    """Generate a Makefile to compile the config-specific tests."""
    config_test_dir = wkdir / config_name
    common_test_dir = wkdir / "common"
    makefile_lines = [
        "# This Makefile is auto-generated. Do not edit directly.",
    ]
    directory_set = {str(config_test_dir)}
    test_targets = []

    for test_name, test_metadata in config_test_list.items():
        elf_name = test_name.replace(".S", ".elf")
        final_elf = config_test_dir / elf_name
        test_targets.append(f"    {final_elf} \\")
        directory_set.add(str((config_test_dir / test_name).parent))
        if test_name in common_test_list:
            common_elf = common_test_dir / elf_name
            makefile_lines.extend(
                [
                    f"{final_elf}: {common_elf} | {final_elf.parent}",
                    f"\tln -sf {common_elf} {final_elf}",
                    f"\tln -sf {common_elf}.objdump {final_elf}.objdump" if config.objdump_exe is not None else "# skipping objdump",
                    "",
                ]
            )
        else:
            makefile_lines.append(
                gen_compile_targets(test_name, test_metadata, tests_dir, config_test_dir, xlen, mabi, config)
            )

    # Add TESTS variable and compile target
    makefile_lines.append("TESTS = \\")
    makefile_lines.extend(test_targets)
    makefile_lines.append("\ncompile: $(TESTS)\n")

    # Directory creation rules
    makefile_lines.extend([f"{' '.join(directory_set)}:", "\tmkdir -p $@", ""])

    # Write out Makefile
    config_test_dir.mkdir(parents=True, exist_ok=True)
    makefile_path = config_test_dir / "Makefile"
    makefile_path.write_text("\n".join(makefile_lines))


def generate_makefiles(
    common_test_list: dict[str, TestMetadata],
    config_test_list: dict[str, TestMetadata],
    tests_dir: Path,
    wkdir: Path,
    config_name: str,
    config: Config,
    udb_config: dict[str, any],
) -> None:
    """Generate a Makefile to run the selected tests."""
    xlen = udb_config.get("params", {}).get("MXLEN", 64)
    mabi = f"{'i' if xlen == 32 else ''}lp{xlen}"

    makefile_lines = []

    # General variables
    makefile_lines.extend(
        [
            "# This Makefile is auto-generated. Do not edit directly.",
            f"CFLAGS := -O0 -g -mcmodel=medany -nostartfiles -I{tests_dir} -I{tests_dir}/env -I{tests_dir}/priv/headers",
            f"XLEN := {xlen}",
            "",
            ".DEFAULT_GOAL := compile",
            ".PHONY: compile coverage clean",
            "",
        ]
    )

    # Generate common Makefile
    generate_common_makefile(common_test_list, tests_dir, wkdir, config, xlen, mabi)

    # Generate config-specific Makefile
    generate_config_makefile(config_test_list, common_test_list, tests_dir, wkdir, config_name, config, xlen, mabi)

    # Include common Makefile
    makefile_lines.extend(
        [f"include {wkdir / 'common' / 'Makefile'}\n", f"include {wkdir / config_name / 'Makefile'}\n"]
    )

    # Clean target
    makefile_lines.extend(["clean:", f"\trm -rf {wkdir}/*"])

    # Write to Makefile
    makefile_path = wkdir / "Makefile"
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
    generate_makefiles(common_tests, selected_tests, wkdir, udb_config_path.stem)


if __name__ == "__main__":
    main()
