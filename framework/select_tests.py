##################################
# select_tests.py
#
# jcarlin@hmc.edu 6 Sept 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Select tests to run based on UDB config and test list
##################################

from typing import Any

from framework.parse_test_constraints import TestMetadata
from framework.parse_udb_config import get_implemented_extensions


def select_tests(
    test_dict: dict[str, TestMetadata], udb_config: dict[str, Any]
) -> tuple[dict[str, TestMetadata], dict[str, TestMetadata]]:
    implemented_extensions = get_implemented_extensions(udb_config)
    selected_tests = {}
    common_tests = {}
    for test_name, test_metadata in test_dict.items():
        # Check if the test is config dependent and matches the architecture
        if not test_metadata.config_dependent and test_metadata.mxlen == udb_config["params"]["MXLEN"]:
            common_tests[test_name] = test_metadata

        # Check if all required extensions are implemented
        required_exts = set(test_metadata.implemented_extensions)
        if required_exts.issubset(implemented_extensions):
            # Check if all parameters match
            param_match = True
            test_params = test_metadata.params
            config_params = udb_config.get("params", {})
            for param, value in test_params.items():
                if param not in config_params or config_params[param] != value:
                    param_match = False
            if param_match:
                selected_tests[test_name] = test_metadata
    return selected_tests, common_tests


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
    selected_tests, common_tests = select_tests(test_dict, udb_config)

    pprint(list(selected_tests.keys()))
    pprint(list(common_tests.keys()))


if __name__ == "__main__":
    main()
