#!/usr/bin/env python3
##################################
# makeselfchecking.py
#
# David_Harris@hmc.edu 12 Jan 2025
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Modify signature-based tests to be self-checking by inserting expected results
##################################

import os
import re
import sys
import filecmp

def insertTemplate(out, template):
    with open(templatedir+"/"+template) as f:
        out.write(f.read())

def nonconflictingReg(reg):
    tempreg = int(reg) + 1
    if (tempreg > 15): tempreg = 8
    return tempreg

# If this is a signature line, replace it with a self-checking line
def makeSelfcheckingLine(outfile, line, rv64):
    if (line.endswith("INT SIGNATURE\n")):
        # extract fields of interest
        #m = re.match(r"^(\S*)", line)
        m = re.match(r"s(\S*) (.)(\S*), (\S*)", line)
        accesstype = m.group(1)
        #print(f"Found {accesstype} in {line}")
        resulttype = m.group(2)
        resultreg = m.group(3)
        address = m.group(4)
        # create new lines
        tempreg = nonconflictingReg(resultreg)
        outfile.write(f"# {line}")
        outfile.write(f"l{accesstype} x{tempreg}, {address}\n")
        outfile.write(f"beq {resulttype}{resultreg}, x{tempreg}, 1f\n")
        # special failed test if necessary to avoid conflict with result register
        if (resultreg in [30, 31]):
            outfile.write("jal x29, failedtest2\n1:\n")
        else:
            outfile.write("jal x31, failedtest\n1:\n")

def makeSelfchecking(sig, source, dest, rv64):
    print (f"Making self-checking test {sig} {source} {dest}")
    tempfname = dest+"_temp"
    with open(tempfname, "w") as outfile:
        with open(sig) as sigfile:
            with open(source) as sourcefile:
                for line in sourcefile:
                    # Modifications to the original source:
                    if (".fill SIGSIZE" in line): # remove .fill because we are inserting the actual signature
                        pass
                    elif ("begin_signature:" in line): # change signature to expected value
                        outfile.write("# .rodata\n")
                        outfile.write("begin_expected:\n")
                    elif ("end_signature:" in line):
                        outfile.write("end_expected:\n")
                    elif ("la begin_signature" in line):
                        outfile.write("la begin_expected\n")
                    elif (line.endswith("SIGNATURE\n")): # replace signature generation with self-checking
                        makeSelfcheckingLine(outfile, line, rv64)
                    else:
                        outfile.write(line)
                    if ("j self_loop" in line): # insert failedtest
                        insertTemplate(outfile, "testgen_failedtest.S")
                    if (line.startswith("begin_signature:")):  # write the signature
                        print("Found begin_signature")
                        secondhalf = False
                        for line in sigfile:
                            if (rv64): # print 64-bit signatures by combining two 32-bits signature liens
                                if (secondhalf):
                                    secondhalf = False
                                    outfile.write(f"\t.dword 0x{line.strip()}{firstsig}\n")
                                else:
                                    firstsig = line.strip()
                                    secondhalf = True
                            else: # rv32
                                outfile.write(f"\t.word 0x{line.strip()}\n")
    # if new file is different from old file, replace old file with new file
    if os.path.exists(dest):
        if filecmp.cmp(dest, tempfname): # files are the same
            os.system(f"rm {tempfname}") # remove temp file
        else:
            os.system(f"mv {tempfname} {dest}")
            print(f"wrote {dest}")
    else:
        os.system(f"mv {tempfname} {dest}")


ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))
testbasedir = f"{ARCH_VERIF}/tests/lockstep" # *** eventually change to signature
selfcheckbasedir = f"{ARCH_VERIF}/tests/selfchecking"
templatedir = f"{ARCH_VERIF}/templates"

# Find all the configurations in the fcov_ucdb directory
for arch in ["rv32", "rv64"]:
    for ext in next(os.walk(testbasedir+"/"+arch))[1]:
        testdir = f"{testbasedir}/{arch}/{ext}"
        os.system(f"mkdir -p {selfcheckbasedir}/{arch}/{ext}")
        for file in os.listdir(testdir):
            # Only combine tests if the directory exists and has tests
            if (file.endswith(".signature")):
                source = file.rsplit("elf.signature")[0]+"S" # name of source file matching signature
                makeSelfchecking(f"{testdir}/{file}", f"{testdir}/{source}", f"{selfcheckbasedir}/{arch}/{ext}/{source}", arch.startswith("rv64"))
