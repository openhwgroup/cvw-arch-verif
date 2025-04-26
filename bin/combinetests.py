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
import sys
import filecmp

MAXFILESIZE = 5000000

def insertTemplate(out, template):
	with open(templatedir+"/testgen/"+template) as f:
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
            elif re.search(r'.EQU SIGSIZE,(.*)', line):
                m = re.search(r'.EQU SIGSIZE,(.*)', line)
                sigsize = m.group(1)
                out.write(f"#{line}")
                body = 0
            elif body == 1:
                out.write(line)
    return int(sigsize)

def finishFile(out, fname, tempfname, sigsize):
    out.write(f".EQU SIGSIZE,{sigsize} #combined\n")
    insertTemplate(out, "testgen_footer.S")
    out.close()
    # if new file is different from old file, replace old file with new file
    if os.path.exists(fname):
        if filecmp.cmp(fname, tempfname): # files are the same
            os.system(f"rm {tempfname}") # remove temp file
        else:
            os.system(f"mv {tempfname} {fname}")
            print("Combining "+fname)
    else:
        os.system(f"mv {tempfname} {fname}")

def combineDir(testdir):
    files = os.listdir(testdir)
    batch = 1
    fileopen = False
    sigsize = 0
    for file in files:
        if (file.endswith(".S") and not file.startswith("WALLY-COV-ALL")): # .S" and file != "WALLY-COV-ALL_temp.S"):
            if (not fileopen):
                fname = f"{testdir}/WALLY-COV-ALL-{batch}.S"
                tempfname = f"{testdir}/WALLY-COV-ALL-{batch}_temp.S"
                out = open(tempfname, "w") or die(f"Cannot write file {tempfname}")
                insertTemplate(out, "testgen_header.S")
                fileopen = True
                #print(f" opened {tempfname}")
            sigsize = sigsize + insertTests(out, file)
            if (os.path.getsize(tempfname) > MAXFILESIZE):
                finishFile(out, fname, tempfname, sigsize)
                fileopen = False
                batch = batch + 1
                sigsize = 0
    if fileopen:
        finishFile(out, fname, tempfname, sigsize)

ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))

testbasedir = f"{ARCH_VERIF}/tests"
templatedir = f"{ARCH_VERIF}/templates"

# Find all the configurations in the fcov_ucdb directory
for arch in ["rv32", "rv64"]:
    for ext in next(os.walk(testbasedir+"/"+arch))[1]:
        testdir = f"{testbasedir}/{arch}/{ext}"
        # Only combine tests if the directory exists and has tests
        if (len(os.listdir(testdir)) > 0):
            combineDir(testdir)
