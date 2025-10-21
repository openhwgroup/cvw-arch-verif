##################################
# act.py
#
# jcarlin@hmc.edu 14 Sept 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Main entry point for RISC-V architecture verification framework
##################################

import argparse
from pathlib import Path

from act.config import load_config
from act.makefile_gen import generate_makefiles
from act.parse_test_constraints import generate_test_dict
from act.parse_udb_config import generate_udb_files, get_config_params, get_implemented_extensions
from act.select_tests import get_common_tests, select_tests


def main() -> None:
    parser = argparse.ArgumentParser(description="RISC-V Architecture Verification Framework")
    parser.add_argument("-c", "--config", type=Path, nargs="+", help="Path to configuration file(s)", required=True)
    parser.add_argument("--test-dir", type=Path, help="Path to tests directory", default=Path("tests"))
    parser.add_argument("--coverpoint-dir", type=Path, help="Path to coverpoint directory", default=Path("coverpoints"))
    parser.add_argument("--workdir", type=Path, help="Path to working directory", default=Path.cwd() / "work")
    args = parser.parse_args()

    # Generate test list
    full_test_dict = generate_test_dict(args.test_dir)
    rv32_common_tests = get_common_tests(full_test_dict, 32)
    rv64_common_tests = get_common_tests(full_test_dict, 64)

    configs = []
    for config_file in args.config:
        # Load configuration
        config = load_config(config_file)
        udb_config_file = config.udb_config
        config_dir = args.workdir / config.udb_config.stem
        config_dir.mkdir(parents=True, exist_ok=True)

        # UDB integration
        generate_udb_files(udb_config_file, config_dir)
        implemented_extensions = get_implemented_extensions(config_dir / "extensions.txt")
        config_params = get_config_params(udb_config_file)

        # Select tests for config
        selected_tests = select_tests(full_test_dict, implemented_extensions, config_params)
        configs.append({"config": config, "xlen": config_params["MXLEN"], "selected_tests": selected_tests})

    # TODO: Add a check that all configs use the same header files/compiler/etc. Otherwise error out or don't use common tests

    # Generate Makefiles
    generate_makefiles(
        configs,
        rv32_common_tests,
        rv64_common_tests,
        args.test_dir.absolute(),
        args.coverpoint_dir.absolute(),
        args.workdir.absolute(),
    )
    print(f"Makefiles generated in {args.workdir}")
    print(f"Run make -C {args.workdir} compile to build all tests.")


if __name__ == "__main__":
    main()
