#!/usr/bin/env python3
##################################
# config.py
#
# jcarlin@hmc.edu 8 Sept 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Parse test framework configuration files
##################################

from pathlib import Path
from typing import Annotated

from pydantic import BaseModel, StringConstraints
from ruamel.yaml import YAML

# Type alias for non-empty strings with whitespace trimming
NonEmptyStr = Annotated[str, StringConstraints(min_length=1, strip_whitespace=True)]


class Config(BaseModel):
    """Configuration for the RISC-V architecture verification framework."""

    udb_config: Path
    linker_script: Path
    dut_include_dir: Path
    compiler: NonEmptyStr
    sail_riscv_sim: NonEmptyStr

    model_config = {"frozen": True}

    def __str__(self) -> str:
        """Pretty print configuration."""
        lines = ["Configuration:"]
        for field_name, field_value in self.model_dump().items():
            lines.append(f"  {field_name}: {field_value}")
        return "\n".join(lines)


def load_config(config_file: Path) -> Config:
    """Load riscv-arch-test framework configuration from a YAML file."""
    if not config_file.exists():
        raise FileNotFoundError(f"Configuration file not found: {config_file}")

    yaml = YAML(typ="safe", pure=True)
    with config_file.open() as f:
        yaml_data = yaml.load(f)

    if yaml_data is None:
        raise ValueError(f"Configuration file is empty: {config_file}")

    return Config.model_validate(yaml_data)


def main():
    import sys

    if len(sys.argv) != 2:
        print("Usage: python config.py <config_file>", file=sys.stderr)
        sys.exit(1)

    try:
        config_path = Path(sys.argv[1])
        config = load_config(config_path)
        print(config)
    except Exception as e:
        print(f"Error: {e}", file=sys.stderr)
        sys.exit(1)

if __name__ == "__main__":
    main()
