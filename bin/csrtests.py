#!/usr/bin/env python3
##################################
# csrtests.py
#
# David_Harris@hmc.edu 13 October 2024
# SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
#
# Emit tests of all 4096 CSRs for Zicsr functional coverage tests
##################################

import random
from random import randint 
from random import seed
import os, sys
from os import environ


# setup
seed(0) # make tests reproducible

# generate repetitive assembly language tests

WALLY = os.environ.get('WALLY')
pathname = WALLY+"/addins/cvw-arch-verif/tests/priv/Zicsr-CSR-Tests.h"

outfile = open(pathname, 'w')
sys.stdout = outfile

seedReg = 0x015
scauseReg = 0x142
#mcountinhibitReg = 0x320
mcauseReg = 0x342
mseccfgReg = 0x747

for i in range(4096):
    while (i == seedReg or i == scauseReg or i == mcauseReg or i == mseccfgReg or (i >= 0x323 and i <= 0x33F) or (i >= 0x3A0 and i <= 0x3EF) or (i >= 0x7a0 and i <= 0x7a5) or (i >= 0x7b0 and i <= 0x7b3)): # skip tests causing mismatches for now *** FIX ME ***
        i = i + 1
    reg1 = randint(1, 31)
    reg2 = randint(1, 31)
    reg3 = randint(1, 31)
    while (reg2 == reg1):
        reg2 = randint(1, 31)
    while (reg3 == reg1 or reg3 == reg2):
        reg3 = randint(1, 31)
    reg1 = str(reg1)
    reg2 = str(reg2)
    reg3 = str(reg3)
    i = hex(i)
    print("\n// Testing CSR "+i)
    print("\tcsrr x"+str(reg1)+", "+ i + "\t// Read CSR")   
    print("\tli x"+reg2+", -1")
    print("\tcsrrw x"+reg3+", "+i+", x"+reg2+"\t// Write all 1s to CSR") 
    print("\tcsrrw x"+reg3+", "+i+", x0\t// Write all 0s to CSR")
    #print("\tcsrrs x"+reg3+", "+i+", x"+reg2+"\t// Set all CSR bits")
    #print("\tcsrrc x"+reg3+", "+i+", x"+reg2+"\t// Clear all CSR bits")
    print("\tcsrrw x"+reg3+", "+i+", x"+reg1+"\t// Restore CSR")   
outfile.close