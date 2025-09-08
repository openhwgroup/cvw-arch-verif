#!/usr/bin/env python3
##################################
# select_tests.py
#
# jcarlin@hmc.edu 6 Sept 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Select tests to run based on UDB config and test list
##################################

from typing import Any

from framework.parse_udb_config import get_implemented_extensions


def select_tests(test_dict: dict[str, dict[str, Any]], udb_config: dict[str, Any]) -> dict[str, dict[str, Any]]:
    implemented_extensions = get_implemented_extensions(udb_config)
    selected_tests = {}
    for test_name, test_metadata in test_dict.items():
        required_exts = set(test_metadata.get("implemented_extensions", []))
        # Check if all required extensions are implemented
        required_exts = set(test_metadata["implemented_extensions"])
        if required_exts.issubset(implemented_extensions):
            # Check if all parameters match
            param_match = True
            test_params = test_metadata["params"]
            config_params = udb_config["params"]
            for param, value in test_params.items():
                if param not in config_params or config_params[param] != value:
                    param_match = False
            if param_match:
                selected_tests[test_name] = test_metadata
    return selected_tests


def main():
    import sys
    from pathlib import Path
    from pprint import pprint

    from framework.parse_test_constraints import generate_test_dict
    from framework.parse_udb_config import parse_udb_config

    tests_dir = Path(sys.argv[1])
    udb_config_path = Path(sys.argv[2])

    # Parse UDB config and get implemented extensions
    udb_config = parse_udb_config(udb_config_path)

    # Generate test list with metadata
    test_dict = generate_test_dict(tests_dir)

    # Select tests based on UDB config
    selected_tests = select_tests(test_dict, udb_config)

    pprint(list(selected_tests.keys()))


if __name__ == "__main__":
    main()
