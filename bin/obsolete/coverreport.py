#!/usr/bin/env python3
##################################
# covertreport.py
#
# David_Harris@hmc.edu 15 Septmeber 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Find and merge UCDBs on a per-configuration basis
##################################

import os
import re
import sys


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

WALLY = os.environ.get('WALLY')
ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))
if not WALLY:
    print("ERROR: WALLY environment variable not set")
    exit(1)
ucdbdir = f"{WALLY}/sim/questa/fcov_ucdb"
reportdir = f"{ARCH_VERIF}/work"

# Find all the configurations in the fcov_ucdb directory
configs = {}
ucdbs = os.listdir(ucdbdir)
for ucdb in ucdbs:
        if (ucdb.endswith(".ucdb")):
            m = re.match(r'^([^_]*)_', ucdb)
            if m:
                config = m.group(1)
                configs[config] = 1

# Merge UCDBs for each configuration and generate reports
for config in configs:
        cmd = "vcover merge "+reportdir+"/merge_"+config+".ucdb "+ucdbdir+"/"+config+"*.ucdb"
        #print(cmd)
        os.system(cmd)

        cmd = "vcover report -details "+reportdir+"/merge_"+config+".ucdb -output "+reportdir+"/report_"+config+".txt"
        os.system(cmd)

        cmd = "vcover report -details "+reportdir+"/merge_"+config+".ucdb -below 100 -output "+reportdir+"/uncovered_"+config+".txt"
        os.system(cmd)

        # Use grep to get the lines that match the criteria
        cmd = "grep -E '(Covergroup|TYPE|^ +([0-9]{1,2}|100)\\.[0-9]{2}%.*(ZERO|Covered|Uncovered)[[:space:]]*$)' " + reportdir + "/report_" + config + ".txt | grep -v 'Covergroup instance' > " + reportdir + "/temp_summary_" + config + ".txt"
        os.system(cmd)

        # Process each line and replace the specified path pattern
        with open(reportdir + "/temp_summary_" + config + ".txt") as infile, open(reportdir + "/summary_" + config + ".txt", "w") as outfile:
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
        os.remove(reportdir + "/temp_summary_" + config + ".txt")

        # Remove duplicates in generated reports
        remove_duplicates_after_second_header(f"{reportdir}/report_{config}.txt")
        remove_duplicates_after_second_header(f"{reportdir}/uncovered_{config}.txt")
        remove_duplicates_after_second_header(f"{reportdir}/summary_{config}.txt")

        # skip HTML report because it is a mess doing one for each different config
        # vcover report -details -html merge.ucdb && \
