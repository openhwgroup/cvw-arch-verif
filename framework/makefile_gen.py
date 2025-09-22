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
    base_dir: Path,
    xlen: int,
    mabi: str,
    config: Config,
) -> str:
    make_lines = []

    # Extract metadata using properties
    march = test_metadata.march
    flen = test_metadata.flen
    test_path = test_metadata.test_path

    base_name = test_name.replace(".S", "")
    sig_elf = base_dir / "build" / f"{base_name}-sig.elf"
    sig_file = base_dir / "build" / f"{base_name}.sig"
    sig_log_file = base_dir / "build" / f"{base_name}-sig.log"
    final_elf = base_dir / "elfs" / f"{base_name}.elf"

    # Generate signature based ELF
    make_lines.extend(
        [
            f"{sig_elf}: {test_path} | {sig_elf.parent}",
            f"\t{config.compiler_string} $(CFLAGS) \\\n\t-o {sig_elf} \\\n\t-march={march} -mabi={mabi} -DSIGNATURE -DXLEN={xlen} -DFLEN={flen} \\\n\t{test_path}",
            "",
        ]
    )

    # Generate signature file
    ref_model_sig_flags = config.ref_model_type.signature_flags.format(sig_file=sig_file, granularity=int(xlen / 8))
    make_lines.extend(
        [
            f"{sig_file}: {sig_elf}",
            f"\t{config.ref_model_exe} --config {config.dut_include_dir}/sail.json {ref_model_sig_flags} \\\n\t{sig_elf} > {sig_log_file}",  # TODO: don't hardcode sail config file
            "",
        ]
    )

    # Final ELF target
    make_lines.extend(
        [
            f"{final_elf}: {sig_elf} {sig_file} | {final_elf.parent}",
            f"\t{config.compiler_string} $(CFLAGS) \\\n\t-o {final_elf} \\\n\t-march={march} -mabi={mabi} -DSELFCHECK -DXLEN={xlen} -DFLEN={flen} -DSIGNATURE_FILE='{sig_file}' \\\n\t{test_path}",
            f"\t{config.objdump_exe} -S -M no-aliases {final_elf} > {final_elf}.objdump"
            if config.objdump_exe is not None
            else "# skipping objdump generation",
            "",
        ]
    )

    return "\n".join(make_lines)


def gen_rvvi_targets(test_name: str, base_dir: Path, config: Config) -> str:
    make_lines = []

    base_name = test_name.replace(".S", "")
    elf = base_dir / "elfs" / f"{base_name}.elf"
    sail_log = base_dir / "build" / f"{base_name}.log"
    rvvi_trace = base_dir / "build" / f"{base_name}.rvvi"

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
            f"\tuv run tools/sail-parse.py {sail_log} {rvvi_trace}",
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
    common_wkdir = wkdir / "common"
    common_elf_dir = common_wkdir / "elfs"
    makefile_lines = [
        "# This Makefile is auto-generated. Do not edit directly.",
        f"CFLAGS += -O0 -g -mcmodel=medany -nostartfiles -I{tests_dir}/env -I{tests_dir}/priv/headers",
        f"XLEN := {xlen}",
        "",
    ]
    directory_set = {str(common_elf_dir)}
    test_targets = []

    for test_name, test_metadata in common_test_list.items():
        elf_name = test_name.replace(".S", ".elf")
        final_elf = common_elf_dir / elf_name
        test_targets.append(f"    {final_elf} \\")
        directory_set.add(str((common_elf_dir / test_name).parent))
        directory_set.add(str((common_wkdir / "build" / test_name).parent))
        makefile_lines.append(gen_compile_targets(test_name, test_metadata, common_wkdir, xlen, mabi, config))

    # Add TESTS variable and targets
    makefile_lines.append("TESTS = \\")
    makefile_lines.extend(test_targets)
    makefile_lines.extend(
        [
            "",
            ".DEFAULT_GOAL := compile",
            ".PHONY: compile",
            "compile: $(TESTS)",
            "",
        ]
    )

    # Directory creation rules
    makefile_lines.extend([f"{' '.join(directory_set)}:", "\tmkdir -p $@", ""])

    # Write out Makefile
    makefile_path = common_wkdir / f"rv{xlen}" / "Makefile"
    makefile_path.parent.mkdir(parents=True, exist_ok=True)
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
    config_wkdir = wkdir / config_name
    config_elf_dir = config_wkdir / "elfs"
    common_wkdir = wkdir / "common"
    common_elf_dir = common_wkdir / "elfs"
    makefile_lines = [
        "# This Makefile is auto-generated. Do not edit directly.",
        f"CFLAGS += -O0 -g -mcmodel=medany -nostartfiles -I{tests_dir}/env -I{tests_dir}/priv/headers",
        f"XLEN := {xlen}",
    ]
    directory_set = {str(config_elf_dir)}
    test_targets = []

    for test_name, test_metadata in config_test_list.items():
        elf_name = test_name.replace(".S", ".elf")
        final_elf = config_elf_dir / elf_name
        test_targets.append(f"    {final_elf} \\")
        directory_set.add(str((config_elf_dir / test_name).parent))
        directory_set.add(str((config_wkdir / "build" / test_name).parent))
        if test_name in common_test_list:
            common_elf = common_elf_dir / elf_name
            makefile_lines.extend(
                [
                    f"{final_elf}: {common_elf} | {final_elf.parent}",
                    f"\tln -sf {common_elf} {final_elf}",
                    f"\tln -sf {common_elf}.objdump {final_elf}.objdump"
                    if config.objdump_exe is not None
                    else "# skipping objdump",
                    "",
                ]
            )
        else:
            makefile_lines.append(gen_compile_targets(test_name, test_metadata, config_wkdir, xlen, mabi, config))

    # Add TESTS variable and compile target
    makefile_lines.append("TESTS = \\")
    makefile_lines.extend(test_targets)
    makefile_lines.extend(
        [
            "",
            ".DEFAULT_GOAL := compile",
            ".PHONY: compile",
            "compile: $(TESTS)",
            "",
        ]
    )

    # Directory creation rules
    makefile_lines.extend([f"{' '.join(directory_set)}:", "\tmkdir -p $@", ""])

    # Write out Makefile
    config_wkdir.mkdir(parents=True, exist_ok=True)
    makefile_path = config_wkdir / "Makefile"
    makefile_path.write_text("\n".join(makefile_lines))


def generate_top_makefile(configs: list[dict], workdir: Path) -> None:
    """Generate a top-level Makefile that runs all config-specific Makefiles and the common Makefile."""

    config_targets = []
    makefile_lines = []

    # Add targets for each config
    for config_data in configs:
        config_name = config_data["udb_config"]["name"]
        config_targets.append(f"{config_name}-compile")
        xlen = config_data["udb_config"]["params"]["MXLEN"]

        makefile_lines.extend(
            [
                f"{config_name}-compile: common-rv{xlen}-compile",
                f"\t$(MAKE) -C {config_name} compile",
                "",
            ]
        )

    # Add common build targets
    makefile_lines.extend(
        [
            "common-rv32-compile:",
            "\t$(MAKE) -C common/rv32 compile",
            "",
            "common-rv64-compile:",
            "\t$(MAKE) -C common/rv64 compile",
            "",
        ]
    )

    # Main target runs all configs
    makefile_content = [
        "# Top-level Makefile for multiple configurations",
        "# Auto-generated by cvw-arch-verif framework",
        "",
        ".PHONY: compile",
        ".DEFAULT_GOAL := compile",
        f"compile: {' '.join(config_targets)}",
        "",
    ]
    makefile_content.extend(makefile_lines)

    # Write the Makefile
    top_makefile = workdir / "Makefile"
    top_makefile.write_text("\n".join(makefile_content))

    print(f"Generated top-level Makefile: {top_makefile}")


def generate_makefiles(
    configs: list[dict],
    rv32_common_tests: dict[str, TestMetadata],
    rv64_common_tests: dict[str, TestMetadata],
    tests_dir: Path,
    workdir: Path,
) -> None:
    """Generate Makefiles for multiple configurations with shared common directories."""
    rv32_config_generated = False
    rv64_config_generated = False

    for config_data in configs:
        udb_config = config_data["udb_config"]
        config_name = udb_config["name"]
        xlen = udb_config["params"]["MXLEN"]
        mabi = f"{'i' if xlen == 32 else ''}lp{xlen}"

        # Generate config-specific Makefile
        generate_config_makefile(
            config_data["selected_tests"],
            config_data["common_tests"],
            tests_dir,
            workdir,
            config_name,
            config_data["config"],
            xlen,
            mabi,
        )

        # Generate architecture-specific common Makefiles using first config of each XLEN
        if xlen == 32 and not rv32_config_generated:
            generate_common_makefile(rv32_common_tests, tests_dir, workdir, config_data["config"], xlen, mabi)
        elif xlen == 64 and not rv64_config_generated:
            generate_common_makefile(rv64_common_tests, tests_dir, workdir, config_data["config"], xlen, mabi)

    # Generate top-level Makefile
    generate_top_makefile(configs, workdir)
