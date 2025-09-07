#!/usr/bin/env python3
##################################
# parse_udb_config.py
#
# jcarlin@hmc.edu 6 Sept 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Parse UDB configuration file
##################################

import sys
from pathlib import Path
from typing import Any

import yaml


def parse_udb_config(udb_config_file: Path) -> dict[Any, Any]:
    """Parse the UDB configuration YAML file and return its contents as a dictionary."""
    try:
        config = yaml.safe_load(udb_config_file.read_text())
        return config
    except FileNotFoundError:
        raise FileNotFoundError(f"UDB configuration file not found: {udb_config_file}")
    except yaml.YAMLError as e:
        raise ValueError(f"Error parsing UDB configuration file: {e}")

def get_implemented_extensions(udb_config: dict[Any, Any]) -> list[str]:
    """Extract the list of implemented extensions from the UDB configuration."""
    extensions = udb_config.get("implemented_extensions", [])
    return [ext["name"] for ext in extensions]


def main():
    udb_config_path = Path(sys.argv[1])
    config = parse_udb_config(udb_config_path)
    print(yaml.dump(config))
    print(get_implemented_extensions(config))

if __name__ == "__main__":
    main()
