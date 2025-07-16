#!/usr/bin/env python3
##################################
# vector-coverage.py
#   James Kaden Cassidy <jacassidy@hmc.edu>
#   Georgia Tai          <gtai@hmc.edu>
#   SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
##################################
"""
Drive two Makefiles through build / run / clean / coverage while
processing one CSV row at a time. While one target is active, the
*other* CSV is reduced to its header and one dummy row (real row),
which avoids errors and speeds up processing.
"""

from pathlib import Path
import shutil
import subprocess
import sys
import argparse
import os
import time
from contextlib import contextmanager, nullcontext

###############################################################################
# Configuration
###############################################################################
SCRIPT_DIR = Path(__file__).resolve().parent

WALLY = os.environ.get("WALLY")
ARCH_VERIF = SCRIPT_DIR.parent
if not WALLY:
    sys.exit("ERROR: WALLY environment variable not set")

BUILD_MAKEFILE = ARCH_VERIF / "Makefile"
RUN_MAKEFILE   = Path(WALLY) / "tests/riscof/Makefile"

TARGETS = ["Vx", "Vls"]

###############################################################################
# FILE LOCATIONS
###############################################################################
CSV_DIR    = ARCH_VERIF / "testplans"
VX_CSV     = CSV_DIR / "Vx.csv"
VLS_CSV    = CSV_DIR / "Vls.csv"

###############################################################################
# Helper utilities
###############################################################################
def run_make(makefile: Path, target: str, jobs_flag: str | None) -> None:
    """Invoke `make -f <makefile> [jobs_flag] <target>` and stream output."""
    if not makefile.is_file():
        raise FileNotFoundError(f"Makefile not found: {makefile}")

    cmd = ["make", "-f", str(makefile)]
    if jobs_flag:
        cmd.append(jobs_flag)
    cmd.append(target)

    print(f"\n$ {' '.join(cmd)}")
    result = subprocess.run(cmd, cwd=makefile.parent, text=True)
    if result.returncode != 0:
        raise RuntimeError(f"make target '{target}' failed (exit {result.returncode})")

def build_run_cycle(t: str, jobs_flag: str | None) -> None:
    """One complete BUILD → RUN32 → RUN64 → CLEAN cycle for a single target."""
    run_make(BUILD_MAKEFILE, "clean", jobs_flag)
    run_make(BUILD_MAKEFILE, t, jobs_flag)

    run_make(RUN_MAKEFILE, "cvw-arch-no-report32", jobs_flag)
    run_make(RUN_MAKEFILE, "clean-riscof-else-ucdb32", jobs_flag)

    run_make(RUN_MAKEFILE, "cvw-arch-no-report64", jobs_flag)
    run_make(RUN_MAKEFILE, "clean-riscof-else-ucdb64", jobs_flag)

@contextmanager
def one_row_at_a_time(csv_path: Path):
    """
    Yields header and data rows one-by-one, restoring original file on exit.
    """
    backup = csv_path.with_suffix(csv_path.suffix + ".bak")
    shutil.copy2(csv_path, backup)
    try:
        rows = csv_path.read_text().splitlines()
        if not rows:
            raise RuntimeError(f"{csv_path} is empty")
        header, *data = rows
        yield header, data
    finally:
        shutil.move(backup, csv_path)  # restore original file

@contextmanager
def one_dummy_row(csv_path: Path):
    """
    Temporarily shrink *csv_path* to its header + first row only, restoring on exit.
    Used to keep the inactive CSV valid with a single real row.
    """
    backup = csv_path.with_suffix(csv_path.suffix + ".full")
    shutil.copy2(csv_path, backup)
    try:
        rows = csv_path.read_text().splitlines()
        if len(rows) < 2:
            raise RuntimeError(f"{csv_path} must have at least one data row")
        header, first_data_row = rows[0], rows[1]
        csv_path.write_text(header + "\n" + first_data_row + "\n")
        yield
    finally:
        shutil.move(backup, csv_path)

###############################################################################
# Main driver
###############################################################################
def main(selected: list[str], jobs_flag: str | None) -> None:
    csv_for_target = {"Vx": VX_CSV, "Vls": VLS_CSV}
    targets = selected or TARGETS

    # Stopwatch
    t0 = time.perf_counter()

    # global clean before loop
    run_make(BUILD_MAKEFILE, "clean", jobs_flag)
    run_make(RUN_MAKEFILE, "clean-cvw-arch", jobs_flag)
    run_make(RUN_MAKEFILE, "clean-riscof-else-ucdb32", jobs_flag)
    run_make(RUN_MAKEFILE, "clean-riscof-else-ucdb64", jobs_flag)

    for t in targets:
        active_csv = csv_for_target[t]
        if not active_csv.is_file():
            sys.exit(f"CSV for target {t} not found: {active_csv}")

        # Determine the “other” CSV
        other_targets = [ot for ot in TARGETS if ot != t]
        other_ctx = (
            one_dummy_row(csv_for_target[other_targets[0]])
            if other_targets else
            nullcontext()
        )

        with other_ctx:
            with one_row_at_a_time(active_csv) as (header, rows):
                total = len(rows)
                for idx, row in enumerate(rows, 1):
                    active_csv.write_text(header + "\n" + row + "\n")
                    print(f"\n📋 [{t}] Row {idx}/{total}: {row.strip()}")
                    try:
                        build_run_cycle(t, jobs_flag)
                    except Exception as e:
                        print(f"❌ Build failed on row {idx}/{total}: {e}")
                        raise

                    # Elapsed time stamp
                    elapsed = time.perf_counter() - t0
                    hh, mm = divmod(int(elapsed // 60), 60)
                    ss = int(elapsed % 60)
                    print(f"⏱️  Elapsed: {hh:02d}:{mm:02d}:{ss:02d}")

    # Final coverage
    run_make(RUN_MAKEFILE, "coverreport32", jobs_flag)
    run_make(RUN_MAKEFILE, "coverreport64", jobs_flag)

    total_elapsed = time.perf_counter() - t0
    hh, mm = divmod(int(total_elapsed // 60), 60)
    ss = int(total_elapsed % 60)
    print(f"\n✅ Finished. Total time: {hh:02d}:{mm:02d}:{ss:02d}")

###############################################################################
# CLI entry point
###############################################################################
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Vector build/run driver")
    parser.add_argument("targets", nargs="*", help="Subset of targets (default Vx Vls)")
    parser.add_argument("-j", "--jobs", nargs="?", const="", metavar="N",
                        help="Pass ‑j/‑jN/--jobs/--jobs=N to make")
    args = parser.parse_args()

    # Normalize jobs flag
    jobs_flag = None
    if args.jobs is not None:
        jobs_flag = "-j" if args.jobs == "" else (
            args.jobs if args.jobs.startswith(("-j", "--jobs")) else f"-j{args.jobs}"
        )

    try:
        main(args.targets, jobs_flag)
    except KeyboardInterrupt:
        print("\nInterrupted by user – CSVs restored.")
        sys.exit(130)
