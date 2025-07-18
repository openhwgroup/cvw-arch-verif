#!/usr/bin/env python3
##################################
# trace-covertreport.py
#
# jcarlin@hmc.edu 9 May 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Find and merge UCDBs on a per-configuration basis
##################################

import os
import re
import subprocess
import sys
from pathlib import Path


def remove_duplicates_after_second_header(file_path):
    unique_lines_before_header = set()  # Set to store unique lines before the second header
    header_count = 0
    header_line = "Covergroup                                             Metric       Goal       Bins    Status"

    # Read the file and process lines
    with open(file_path) as infile:
        lines = infile.readlines()

    with open(file_path, 'w') as outfile:
        for line in lines:
            stripped_line = line.strip()  # Remove leading/trailing whitespace

            # Check for the header line
            if stripped_line == header_line:
                header_count += 1
                # If it's the second header, skip writing it and continue
                if header_count == 2:
                    continue

            # If the second header has been found, filter out duplicates
            if header_count == 2:
                if stripped_line not in unique_lines_before_header:
                    outfile.write(line)  # Write unique lines after the second header
            else:
                # Collect lines before the second header without filtering
                outfile.write(line)  # Write the original line
                unique_lines_before_header.add(stripped_line)  # Add line to the set

def run_large_command(cmd):
    # Define the file path
    file_path = f"{reportdir}/cmd.sh"

    # Write to the file
    with open(file_path, "w") as f:
        f.write("#!/bin/bash\n")
        f.write(f"{cmd}\n")

    # Make it executable
    os.chmod(file_path, 0o755)

    # Run the file using Bash
    subprocess.run(["bash", file_path])

    # Delete the file
    os.remove(file_path)

ARCH_VERIF = Path(sys.argv[0]).resolve().parent.parent
testdir = Path(sys.argv[1]).absolute()
configName = testdir.name
reportdir = ARCH_VERIF / "work"
os.makedirs(reportdir, exist_ok=True)
ucdbs = testdir.rglob("*.ucdb")
mergedUCDB = reportdir / f"merge_{configName}.ucdb"

# Merge UCDBs
ucdbjoin = ' '.join(str(ucdb) for ucdb in ucdbs)
if  ucdbjoin == "":
    print(f"ERROR: No UCDB files found in {testdir}. Exiting.")
    sys.exit(0)
cmd = f"vcover merge {mergedUCDB} {ucdbjoin}"
run_large_command(cmd)

# Generate reports
cmd = f"vcover report -details {mergedUCDB} -output {reportdir}/report_{configName}.txt"
os.system(cmd)

cmd = f"vcover report -details {mergedUCDB} -below 100 -output {reportdir}/uncovered_{configName}.txt"
os.system(cmd)

# Use grep to get the lines that match the criteria
cmd = "grep -E '(Covergroup|TYPE|^ +([0-9]{1,2}|100)\\.[0-9]{2}%.*(ZERO|Covered|Uncovered)[[:space:]]*$)' " + str(reportdir) + "/report_" + configName + ".txt | grep -v 'Covergroup instance' > " + str(reportdir) + "/temp_summary_" + configName + ".txt"
os.system(cmd)

# Process each line and replace the specified path pattern
with (reportdir / f"temp_summary_{configName}.txt").open() as infile, (reportdir  / f"summary_{configName}.txt").open("w") as outfile:
    metric_start_pos = None
    previous_line = None  # To keep track of the previous line

    for line in infile:
        if "Metric" in line and metric_start_pos is None:
            # Find the index of the start of "Metric" in this line
            metric_match = re.search(r'\bMetric\b', line)
            if metric_match:
                metric_start_pos = metric_match.start()  # Store the starting position of "Metric"

        if "TYPE" in line:
            # Replace the pattern with spaces after '_cg'
            line = re.sub(r'/RISCV_coverage_pkg/RISCV_coverage__1/', '', line)
            if '_cg' in line:
                # Find the start of "_cg"
                cg_index = line.index('_cg') + len('_cg')

                # Calculate the starting position of the percentage
                match = re.search(r'\b((100|[0-9]{1,2})\.[0-9]{2})%', line)
                if match:
                    percentage_value = match.group(0)  # Get the matched percentage
                    percentage_num = float(percentage_value.strip('%'))  # Convert to float

                    # Adjust percentage_start_pos based on the value of percentage_num
                    if percentage_num < 10.00:
                        percentage_start_pos = metric_start_pos + 2
                    elif percentage_num < 100.00:
                        percentage_start_pos = metric_start_pos + 1
                    else:
                        percentage_start_pos = metric_start_pos

                    # Calculate necessary padding based on current position of the percentage
                    percentage_index = match.start()

                    if percentage_index < percentage_start_pos:
                        line = line[:cg_index] + ' ' * (percentage_start_pos - cg_index) + line[cg_index:].lstrip()
                    elif percentage_index > percentage_start_pos:
                        line = line[:cg_index] + line[cg_index:].lstrip()

        # Check if the current line starts with multiple spaces followed by a percentage
        match = re.match(r'^ +\b((100|[0-9]{1,2})\.[0-9]{2})%', line)
        if match and previous_line:
            previous_line = previous_line.rstrip()
            percentage_value = match.group(0)  # Get the matched percentage
            percentage_num = float(percentage_value.strip('%'))  # Convert to float

            # Adjust percentage_start_pos based on the value of percentage_num
            if percentage_num < 10.00:
                percentage_start_pos = metric_start_pos + 2
            elif percentage_num < 100.00:
                percentage_start_pos = metric_start_pos + 1
            else:
                percentage_start_pos = metric_start_pos

            if len(previous_line) < percentage_start_pos:
                # Pad with spaces if previous line is shorter than the percentage start position
                previous_line = previous_line + " " * (percentage_start_pos - len(previous_line))

            # Find the position of the percentage in the current line
            match_percentage = re.search(r'\b((100|[0-9]{1,2})\.[0-9]{2})%', line)
            if match_percentage:
                percentage_index = match_percentage.start()

                # Merge the previous line and current line starting from the percentage index
                merged_line = previous_line + line[percentage_index:].strip()

            outfile.write(merged_line + "\n")

            previous_line = None  # Reset previous_line after merging
        else:
            if previous_line:
                # Write the previous line to the output file (if it's not merged)
                outfile.write(previous_line)
            # Update previous_line to the current one (so it's available for the next merge if needed)
            previous_line = line

# Step 3: Remove the temporary file
(reportdir / f"temp_summary_{configName}.txt").unlink()

# Remove duplicates in generated reports
remove_duplicates_after_second_header(f"{reportdir}/report_{configName}.txt")
remove_duplicates_after_second_header(f"{reportdir}/uncovered_{configName}.txt")
remove_duplicates_after_second_header(f"{reportdir}/summary_{configName}.txt")

# skip HTML report because it is a mess doing one for each different config
# vcover report -details -html merge.ucdb && \
