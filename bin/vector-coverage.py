#!/usr/bin/env python3
##################################
# vector-coverage.py
#   James Kaden Cassidy <jacassidy@hmc.edu>
#   Georgia Tai          <gtai@hmc.edu>
#   SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
##################################
"""
Drive two Makefiles through the full build / run / clean / coverage cycle,
processing CSV data in batches (default 30 rows at a time).

Resume options:

  • --from-line  N     → start with data-row N (1 = first row after header)
  • --from-instr TEXT  → start with first row whose text contains TEXT
                         (case-sensitive substring search)

Exactly one of the two may be supplied.
"""

import argparse
import os
import shutil
import subprocess
import sys
import time
from contextlib import ExitStack, contextmanager
from pathlib import Path

###############################################################################
# Configuration
###############################################################################
SCRIPT_DIR = Path(__file__).resolve().parent
BATCH_SIZE = 30  # number of rows processed per batch

WALLY = os.environ.get("WALLY")
ARCH_VERIF = SCRIPT_DIR.parent
if not WALLY:
    sys.exit("ERROR: WALLY environment variable not set")

BUILD_MAKEFILE = ARCH_VERIF / "Makefile"
RUN_MAKEFILE   = Path(WALLY) / "tests/riscof/Makefile"

# ---------------------------------------------------------------------------
# Targets and their CSVs
# ---------------------------------------------------------------------------
TARGETS = ["Vx", "Vls", "Vf"]

CSV_DIR = ARCH_VERIF / "testplans"
VX_CSV  = CSV_DIR / "Vx.csv"
VLS_CSV = CSV_DIR / "Vls.csv"
VF_CSV  = CSV_DIR / "Vf.csv"

CSV_FOR_TARGET = {
    "Vx":  VX_CSV,
    "Vls": VLS_CSV,
    "Vf":  VF_CSV,
}

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
    Yields (header, data_rows) and restores the original file on exit.
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
    Keeps the inactive CSV valid with a single real row.
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
def main(selected: list[str],
         jobs_flag: str | None,
         start_line: int | None,
         start_instr: str | None) -> None:

    targets = selected or TARGETS
    unknown = [t for t in targets if t not in CSV_FOR_TARGET]
    if unknown:
        sys.exit(f"Unknown target(s): {', '.join(unknown)}")

    # Stopwatch
    t0 = time.perf_counter()

    # Global clean
    run_make(BUILD_MAKEFILE, "clean", jobs_flag)
    run_make(RUN_MAKEFILE, "clean-cvw-arch", jobs_flag)
    run_make(RUN_MAKEFILE, "clean-riscof-else-ucdb32", jobs_flag)
    run_make(RUN_MAKEFILE, "clean-riscof-else-ucdb64", jobs_flag)

    for t in targets:
        active_csv = CSV_FOR_TARGET[t]
        if not active_csv.is_file():
            sys.exit(f"CSV for target {t} not found: {active_csv}")

        inactive_targets = [ot for ot in TARGETS if ot != t]

        # Put all inactive CSVs into dummy-row mode
        with ExitStack() as stack:
            for ot in inactive_targets:
                stack.enter_context(one_dummy_row(CSV_FOR_TARGET[ot]))

            with one_row_at_a_time(active_csv) as (header, rows):
                # Determine start index
                if start_line is not None:
                    if not (1 <= start_line <= len(rows)):
                        print(f"⚠️  Row {start_line} out of range for {t}; skipping target.")
                        continue
                    start_idx = start_line - 1
                elif start_instr is not None:
                    try:
                        start_idx = next(i for i, r in enumerate(rows) if start_instr in r)
                    except StopIteration:
                        print(f"⚠️  Instruction '{start_instr}' not found in {t}; skipping target.")
                        continue
                else:
                    start_idx = 0

                total = len(rows)
                # Batch processing
                for batch_start in range(start_idx, total, BATCH_SIZE):
                    batch_rows = rows[batch_start : batch_start + BATCH_SIZE]
                    first_idx  = batch_start + 1
                    last_idx   = batch_start + len(batch_rows)

                    active_csv.write_text(header + "\n" + "\n".join(batch_rows) + "\n")

                    banner = f"Row {first_idx}" if first_idx == last_idx else f"Rows {first_idx}-{last_idx}"
                    print(f"\n📋 [{t}] {banner}/{total}")

                    try:
                        build_run_cycle(t, jobs_flag)
                    except Exception as e:
                        print(f"❌ Build failed while processing {banner}: {e}")
                        raise

                    # Elapsed-time display
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

    parser.add_argument("targets", nargs="*", help="Subset of targets (default Vx Vls Vf)")

    # make -j / --jobs passthrough
    parser.add_argument("-j", "--jobs", nargs="?", const="", metavar="N",
                        help="Pass -j/-jN/--jobs/--jobs=N to make")

    # resume controls
    resume = parser.add_mutually_exclusive_group()
    resume.add_argument("--from-line", type=int, metavar="N",
                        help="Start with data-row N (1-based, header ignored)")
    resume.add_argument("--from-instr", metavar="TEXT",
                        help="Start with first row whose text contains TEXT")

    args = parser.parse_args()

    # Normalize jobs flag
    jobs_flag = None
    if args.jobs is not None:
        jobs_flag = "-j" if args.jobs == "" else (
            args.jobs if args.jobs.startswith(("-j", "--jobs")) else f"-j{args.jobs}"
        )

    try:
        main(args.targets, jobs_flag, args.from_line, args.from_instr)
    except KeyboardInterrupt:
        print("\nInterrupted by user - CSVs restored.")
        sys.exit(130)
