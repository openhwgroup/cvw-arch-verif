#!/usr/bin/env python3
##################################
# config.py
#
# jcarlin@hmc.edu 8 Sept 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Parse test framework configuration files
##################################

import logging
import os
from pathlib import Path
from shutil import which
from typing import Annotated

from pydantic import BaseModel, Field, field_validator, model_validator
from ruamel.yaml import YAML


class Config(BaseModel):
    """Configuration for the RISC-V architecture verification framework."""

    udb_config: Annotated[Path, Field(description="Path to UDB configuration file")]
    linker_script: Annotated[Path, Field(description="Path to linker script")]
    dut_include_dir: Annotated[Path, Field(description="Path to DUT include directory")]
    compiler: Annotated[str, Field(min_length=1, description="RISC-V compiler name or path")]
    sail_riscv_sim: Annotated[str, Field(min_length=1, description="SAIL executable name or path")]

    model_config = {"frozen": True}

    @field_validator("udb_config", "linker_script", "dut_include_dir", mode="before")
    @classmethod
    def convert_to_path(cls, v):
        """Convert string paths to Path objects and make relative paths absolute."""
        path = Path(v)
        if not path.is_absolute():
            path = Path.cwd() / path
        return path

    @model_validator(mode="after")
    def validate_paths_exist(self):
        """Validate that required files and directories exist."""
        if not self.udb_config.exists():
            raise ValueError(f"UDB config file not found: {self.udb_config}")

        if not self.linker_script.exists():
            raise ValueError(f"Linker script not found: {self.linker_script}")

        if not self.dut_include_dir.exists():
            raise ValueError(f"DUT include directory not found: {self.dut_include_dir}")

        return self

    @field_validator("compiler", "sail_riscv_sim", mode="before")
    @classmethod
    def expand_environment_variables(cls, v: str) -> str:
        """Expand environment variables in executable paths."""
        return os.path.expandvars(v)

    @field_validator("compiler", "sail_riscv_sim")
    @classmethod
    def validate_executable(cls, v: str) -> str:
        """Validate that executable exists and is accessible."""
        # Check if it's an absolute path that exists
        if Path(v).is_absolute() and Path(v).exists():
            if not Path(v).is_file():
                raise ValueError(f"Executable is not a file: {v}")
            return v

        # Check if it's in PATH
        if which(v) is None:
            raise ValueError(f"Executable not found in PATH or absolute path: {v}")

        return v

    def get_compiler_command(self, *args: str) -> list[str]:
        """Get compiler command with arguments as a list suitable for subprocess."""
        return [self.compiler] + list(args)

    def get_sail_command(self, *args: str) -> list[str]:
        """Get SAIL command with arguments as a list suitable for subprocess."""
        return [self.sail_riscv_sim] + list(args)

    def resolve_path(self, relative_path: str | Path) -> Path:
        """Resolve a path relative to the DUT include directory."""
        return self.dut_include_dir / relative_path

    def to_dict(self) -> dict:
        """Export configuration as a dictionary with string paths."""
        return {
            "udb_config": str(self.udb_config),
            "linker_script": str(self.linker_script),
            "dut_include_dir": str(self.dut_include_dir),
            "compiler": self.compiler,
            "sail_riscv_sim": self.sail_riscv_sim,
        }

    def __str__(self) -> str:
        """Pretty print configuration."""
        lines = ["Configuration:"]
        lines.append(f"  UDB Config: {self.udb_config}")
        lines.append(f"  Linker Script: {self.linker_script}")
        lines.append(f"  DUT Include Dir: {self.dut_include_dir}")
        lines.append(f"  Compiler: {self.compiler}")
        lines.append(f"  SAIL Executable: {self.sail_riscv_sim}")
        return "\n".join(lines)


def load_config(config_file: Path) -> Config:
    """Load riscv-arch-test framework configuration from a YAML file."""
    logger = logging.getLogger(__name__)

    if not config_file.exists():
        raise FileNotFoundError(f"Configuration file not found: {config_file}")

    logger.info(f"Loading configuration from {config_file}")

    try:
        yaml = YAML(typ="safe", pure=True)
        with config_file.open() as f:
            yaml_data = yaml.load(f)

        if yaml_data is None:
            raise ValueError(f"Configuration file is empty: {config_file}")

        # Pydantic handles validation and type conversion automatically
        config = Config.model_validate(yaml_data)
        logger.info("Configuration loaded and validated successfully")
        return config
    except Exception as e:
        logger.error(f"Failed to load configuration: {e}")
        raise RuntimeError(f"Failed to load configuration from {config_file}: {e}") from e


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
