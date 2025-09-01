#!/usr/bin/env python3
##################################
# parse_test_constraints.py
#
# jcarlin@hmc.edu 31 Aug 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Parse YAML comment header from test files
##################################

import sys
from pathlib import Path
from typing import Any

import yaml


def extract_yaml_config(file: Path) -> dict[str, Any]:
    """Extract YAML configuration from a test file between START_TEST_CONFIG and END_TEST_CONFIG markers."""
    content = file.read_text()

    # Find boundaries using simple string operations
    start_marker = "START_TEST_CONFIG"
    end_marker = "END_TEST_CONFIG"

    start_pos = content.find(start_marker)
    end_pos = content.find(end_marker)

    if start_pos == -1 or end_pos == -1:
        raise ValueError(f"Could not find YAML config section in {file}")

    # Extract content between markers
    start_pos = content.find("\n", start_pos) + 1  # Skip to next line after start marker
    end_pos = content.rfind("\n", 0, end_pos)  # Go to line before end marker

    yaml_section = content[start_pos:end_pos]

    # Process lines to remove comment prefixes
    yaml_lines = []
    for line in yaml_section.split("\n"):
        line = line.lstrip("#").strip()
        yaml_lines.append(line)

    try:
        return yaml.safe_load("\n".join(yaml_lines))
    except yaml.YAMLError as e:
        raise ValueError(f"Invalid YAML in config section: {e}")

if __name__ == "__main__":
    config = extract_yaml_config(Path(sys.argv[1]))
    print(config)
