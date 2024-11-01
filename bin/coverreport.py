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

def remove_duplicates_after_second_header(file_path):
    unique_lines_before_header = set()  # Set to store unique lines before the second header
    header_count = 0
    header_line = "Covergroup                                             Metric       Goal       Bins    Status"
    
    # Read the file and process lines
    with open(file_path, 'r') as infile:
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
if not WALLY:
	print("ERROR: WALLY environment variable not set")
	exit(1)
ucdbdir = f"{WALLY}/sim/questa/fcov_ucdb"
reportdir = f"{WALLY}/addins/cvw-arch-verif/work"

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
    
    cmd = "grep Covergroup "+reportdir+"/report_"+config+".txt > "+reportdir+"/summary_"+config+".txt"
    os.system(cmd)

    # Remove duplicates in generated reports
    remove_duplicates_after_second_header(f"{reportdir}/report_{config}.txt")
    remove_duplicates_after_second_header(f"{reportdir}/uncovered_{config}.txt")
    remove_duplicates_after_second_header(f"{reportdir}/summary_{config}.txt")

    # skip HTML report because it is a mess doing one for each different config
    # vcover report -details -html merge.ucdb && \
