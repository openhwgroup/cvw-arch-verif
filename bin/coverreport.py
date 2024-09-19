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

	# skip HTML report because it is a mess doing one for each different config
	#	vcover report -details -html merge.ucdb && \
