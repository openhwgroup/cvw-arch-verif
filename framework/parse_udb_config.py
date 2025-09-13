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

from ruamel.yaml import YAML


def parse_udb_config(udb_config_file: Path) -> dict[str, Any]:
    """Parse the UDB configuration YAML file and return its contents as a dictionary."""
    try:
        yaml = YAML(typ="safe", pure=True)
        config = yaml.load(udb_config_file.read_text())
        return config
    except FileNotFoundError:
        raise FileNotFoundError(f"UDB configuration file not found: {udb_config_file}")


def get_implemented_extensions(udb_config: dict[str, Any]) -> set[str]:
    """Extract the list of implemented extensions from the UDB configuration."""
    extensions = udb_config["implemented_extensions"]
    return {ext["name"] for ext in extensions}


def main():
    udb_config_path = Path(sys.argv[1])
    config = parse_udb_config(udb_config_path)
    yaml = YAML()
    yaml.dump(config, sys.stdout)
    print(get_implemented_extensions(config))


if __name__ == "__main__":
    main()
