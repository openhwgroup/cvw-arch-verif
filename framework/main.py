##################################
# main.py
#
# jcarlin@hmc.edu 14 Sept 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Main entry point for RISC-V architecture verification framework
##################################

import argparse

# from framework.select_tests import select_tests
from pathlib import Path

from framework.config import load_config
from framework.makefile_gen import generate_makefile
from framework.parse_test_constraints import generate_test_dict
from framework.parse_udb_config import parse_udb_config
from framework.select_tests import select_tests


def main():
    parser = argparse.ArgumentParser(description="RISC-V Architecture Verification Framework")
    parser.add_argument("-c", "--config", type=Path, help="Path to the configuration file", required=True)
    parser.add_argument("--tests-dir", type=Path, help="Path to the tests directory", default=Path("tests"))
    parser.add_argument("--workdir", type=Path, help="Path to the working directory", default=Path.cwd() / "workdir")
    args = parser.parse_args()

    # Load configuration
    config = load_config(args.config)

    # TODO: Validate UDB config
    udb_config = parse_udb_config(config.udb_config)

    # TODO: Generate DUT specific header file from UDB

    # Generate test list
    full_test_dict = generate_test_dict(args.tests_dir)
    selected_tests, common_tests = select_tests(full_test_dict, udb_config)

    # Generate Makefile
    generate_makefile(common_tests, selected_tests, args.workdir, args.config.stem)
    print(f"Makefile generated in {args.workdir}")
    print(f"Run make -f {args.workdir / 'generated_makefile.mk'} to build and run tests.")


if __name__ == "__main__":
    main()
