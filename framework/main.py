##################################
# main.py
#
# jcarlin@hmc.edu 14 Sept 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Main entry point for RISC-V architecture verification framework
##################################

import argparse
from pathlib import Path

# import filecmp
# import shutil
# import subprocess
from framework.config import load_config
from framework.makefile_gen import generate_makefiles
from framework.parse_test_constraints import generate_test_dict
from framework.parse_udb_config import parse_udb_config
from framework.select_tests import select_tests


def main():
    parser = argparse.ArgumentParser(description="RISC-V Architecture Verification Framework")
    parser.add_argument("-c", "--config", type=Path, nargs="+", help="Path to configuration file(s)", required=True)
    parser.add_argument("--tests-dir", type=Path, help="Path to the tests directory", default=Path("tests"))
    parser.add_argument("--workdir", type=Path, help="Path to the working directory", default=Path.cwd() / "workdir")
    args = parser.parse_args()

    # Generate test list
    full_test_dict = generate_test_dict(args.tests_dir)

    configs = []
    for config_file in args.config:
        # Load configuration
        config = load_config(config_file)

        # TODO: Figure out a more robust way to handle UDB validation
        # Currently only works if using docker as container runtime and requires copying UDB config into riscv-unified-db directory
        # copied_udb_config = Path(f"./external/riscv-unified-db/cfgs/{config.udb_config.name}")
        # if not copied_udb_config.exists() or not filecmp.cmp(config.udb_config, copied_udb_config):
        #     shutil.copy(config.udb_config, copied_udb_config)
        #     validate_udb_config_cmd = [
        #         "./external/riscv-unified-db/bin/udb",
        #         "validate",
        #         "cfg",
        #         f"cfgs/{config.udb_config.name}",
        #     ]
        #     subprocess.run(validate_udb_config_cmd, check=True)

        udb_config = parse_udb_config(config.udb_config)

        # TODO: Generate DUT specific header file from UDB

        # TODO: Generate Sail config file from UDB

        # Select tests for config
        selected_tests, common_tests = select_tests(full_test_dict, udb_config)
        configs.append(
            {"config": config, "udb_config": udb_config, "selected_tests": selected_tests, "common_tests": common_tests}
        )

    # TODO: Add a check that all configs use the same header files/compiler/etc. Otherwise error out or don't use common tests

    # Generate Makefiles
    generate_makefiles(configs, args.tests_dir.absolute(), args.workdir.absolute())
    print(f"Makefiles generated in {args.workdir}")
    print(f"Run make -C {args.workdir} compile to build all tests.")


if __name__ == "__main__":
    main()
