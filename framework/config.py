#!/usr/bin/env python3
##################################
# config_parser.py
#
# jcarlin@hmc.edu 8 Sept 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Parse test framework configuration files
##################################

from dataclasses import dataclass
from pathlib import Path

from ruamel.yaml import YAML


@dataclass(frozen=True)
class Config:
    udb_config: Path
    linker_script: Path
    dut_include_dir: Path
    compiler: str
    sail_executable: str

def load_config(config_file: Path) -> Config:
    """Load riscv-arch-test framework configuration from a YAML file."""
    yaml = YAML(typ="safe", pure=True)
    yaml_data = yaml.load(config_file)
    return Config(**yaml_data)


def main():
    import sys
    config_path : Path = Path(sys.argv[1])
    config: Config = load_config(config_path)
    print(config)

if __name__ == "__main__":
    main()
