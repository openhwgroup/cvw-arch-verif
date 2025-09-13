#!/usr/bin/env python3
##################################
# parse_test_constraints.py
#
# jcarlin@hmc.edu 6 Sept 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Parse YAML comment header from test files
##################################

import sys
from pathlib import Path
from typing import Any

from ruamel.yaml import YAML


def extract_yaml_config(file: Path) -> dict[str, Any]:
    """Extract YAML configuration from a test file between START_TEST_CONFIG and END_TEST_CONFIG markers."""
    content = file.read_text()

    # Find boundaries using simple string operations
    start_marker = "START_TEST_CONFIG"
    end_marker = "END_TEST_CONFIG"

    start_pos = content.find(start_marker)
    end_pos = content.find(end_marker)

    if start_pos == -1 or end_pos == -1:
        error_msg = f"Could not find YAML config section in {file}"
        raise ValueError(error_msg)

    # Extract content between markers
    start_pos = content.find("\n", start_pos) + 1  # Skip to next line after start marker
    end_pos = content.rfind("\n", 0, end_pos)  # Go to line before end marker

    yaml_section = content[start_pos:end_pos]

    # Process lines to remove comment prefixes
    yaml_lines = []
    for line in yaml_section.split("\n"):
        line = line.lstrip("#")
        yaml_lines.append(line)

    yaml = YAML(typ="safe", pure=True)
    return yaml.load("\n".join(yaml_lines))


def generate_test_dict(tests_dir: Path) -> dict[str, dict[str, Any]]:
    """Generate a dictionary of tests with their corresponding metadata from the specified directory."""
    test_list = {}
    for test_file in tests_dir.rglob("*.S"):
        config = extract_yaml_config(test_file)
        test_file_unique_name = str(test_file.relative_to(tests_dir))
        test_list[test_file_unique_name] = config
    return test_list


def main():
    import json

    if len(sys.argv) != 2:
        print("Usage: parse-test-constraints <file_path>", file=sys.stderr)
        sys.exit(1)

    test_configs = generate_test_dict(Path(sys.argv[1]))
    print(json.dumps(dict(sorted(test_configs.items())), indent=2))


if __name__ == "__main__":
    main()
