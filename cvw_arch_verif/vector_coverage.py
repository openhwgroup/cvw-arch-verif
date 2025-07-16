#!/usr/bin/env python3
##################################
# vector-coverage.py
#
# James Kaden Cassidy jacassidy@hmc.edu July 10 2025
# Georgia Tai gtai@hmc.edu
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Generate functional covergroups for RISC-V instructions
##################################
"""
build_and_run.py
----------------
Drive two separate Makefiles (“build” and “run”) through the full
build / run / clean / coverage cycle, with optional parallel-jobs flag.
"""
from pathlib import Path
import subprocess
import sys
import os
from typing import Annotated, Optional
import typer

###############################################################################
# Configuration
###############################################################################
WALLY = os.environ.get("WALLY")
ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))
if not WALLY:
    sys.exit("ERROR: WALLY environment variable not set")

BUILD_MAKEFILE = Path(f"{ARCH_VERIF}/Makefile")
RUN_MAKEFILE   = Path(f"{WALLY}/tests/riscof/Makefile")

TARGETS = ["Vx8",  "Vx16",  "Vx32",  "Vx64",
           "Vls8", "Vls16", "Vls32", "Vls64"]

###############################################################################
# Helper utilities
###############################################################################
def run_make(makefile: Path, target: str, jobs_flag: str | None) -> None:
    """Invoke `make -f <makefile> [jobs_flag] <target>` and stream output."""
    if not makefile.is_file():
        raise FileNotFoundError(f"Makefile not found: {makefile}")

    cmd = ["make", "-f", str(makefile)]
    if jobs_flag:
        cmd.append(jobs_flag)      # e.g. "-j", "-j8", "--jobs=16"
    cmd.append(target)

    print(f"\n$ {' '.join(cmd)}")
    result = subprocess.run(
        cmd,
        cwd=makefile.parent,
        text=True,
        check=False,
    )
    if result.returncode != 0:
        sys.exit(f"\n❌ make target '{target}' failed (exit {result.returncode})")


###############################################################################
# CLI entry point
###############################################################################

app = typer.Typer(
    name="vector-coverage",
    help="Build + run + coverage driver for two Makefiles.",
)

@app.command()
def main(
    jobs: Annotated[
        Optional[int],
        typer.Option(
            "-j", "--jobs",
            help="Build parallelism. 0 means unlimited jobs."
        ),
    ] = None,
    targets: Annotated[
        Optional[list[str]],
        typer.Argument(help="Optional subset of targets to process (default uses hard-coded TARGETS list)"),
    ] = None,
):
    jobs_flag = None
    if jobs is not None:
        if jobs == 0:
            jobs_flag = "-j"
        else:
            jobs_flag = f"-j{jobs}"

    if targets is None:
        targets = TARGETS

    if len(targets) == 0:
        sys.exit("No targets specified.")

    # global clean before loop
    run_make(BUILD_MAKEFILE,    "clean", jobs_flag)
    run_make(RUN_MAKEFILE,      "clean-cvw-arch", jobs_flag)
    run_make(RUN_MAKEFILE,      "clean-riscof-else-ucdb32", jobs_flag)
    run_make(RUN_MAKEFILE,      "clean-riscof-else-ucdb64", jobs_flag)

    for t in targets:
        # 1. BUILD
        run_make(BUILD_MAKEFILE, "clean", jobs_flag)
        run_make(BUILD_MAKEFILE, f"riscv-arch-{t}", jobs_flag)

        # 2. RUN 32-bit → clean
        run_make(RUN_MAKEFILE, "cvw-arch-no-report32", jobs_flag)
        run_make(RUN_MAKEFILE, "clean-riscof-else-ucdb32", jobs_flag)

        # 3. RUN 64-bit → clean
        run_make(RUN_MAKEFILE, "cvw-arch-no-report64", jobs_flag)
        run_make(RUN_MAKEFILE, "clean-riscof-else-ucdb64", jobs_flag)

    # 4. COVERAGE
    run_make(RUN_MAKEFILE, "coverreport32", jobs_flag)
    run_make(RUN_MAKEFILE, "coverreport64", jobs_flag)
    print("\n✅ All targets finished successfully.")
