#!/usr/bin/env python3
##################################
# combinetests.py
#
# David_Harris@hmc.edu 19 September 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Combine all of the tests for an extension into an ALL file to run without starting Questa so many times
##################################

import os
import re

def insertTemplate(out, template):
	with open(templatedir+"/"+template) as f:
		out.write(f.read())

def insertTests(out, file):
	out.write("\n\n// ******************\n")
	out.write("// Tests from: "+file+"\n")
	out.write("// ******************\n\n")
	with open(testdir+"/"+file) as f:
		body = 0
		for line in f:
			if re.search(r'rvtest_entry_point:', line):
				body = 1
			elif re.search(r'self_loop:', line):
				body = 0
			elif body == 1:
				out.write(line)

def combiineDir(testdir):
	print("Combining "+testdir)
	files = os.listdir(testdir)
	with open(testdir+"/WALLY-COV-ALL.S", "w") as out:
		insertTemplate(out, "testgen_header.S")
		for file in files:
			if (file.endswith(".S") and file != "WALLY-COV-ALL.S"):
				insertTests(out, file)
		insertTemplate(out, "testgen_footer.S")

WALLY = os.environ.get('WALLY')
if not WALLY:
	print("ERROR: WALLY environment variable not set")
	exit(1)
testdir = f"{WALLY}/addins/cvw-arch-verif/tests/rv32/I"
testbasedir = f"{WALLY}/addins/cvw-arch-verif/tests"

templatedir = 	f"{WALLY}/addins/cvw-arch-verif/templates"

# Find all the configurations in the fcov_ucdb directory
for arch in ["rv32", "rv64"]:
	#for testdir in [x[0] for x in os.walk(testbasedir+"/"+arch)]:
	for ext in next(os.walk(testbasedir+"/"+arch))[1]:
		testdir = f"{testbasedir}/{arch}/{ext}"
		combiineDir(testdir)

