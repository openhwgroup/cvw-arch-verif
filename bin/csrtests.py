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

def csrwalk(pathname, regs):
    outfile = open(pathname, 'w')
    sys.stdout = outfile
    for reg in regs:
        print("\n// Testing walking zeros and ones for CSR "+reg)
        print("\tcsrr s0, "+reg+"\t# save CSR")
        print("\tli t1, -1           # all 1s")
        print("\tli t0, 1            # 1 in lsb")
        print("\t1: csrrc t6, "+reg+", t1    # clear all bits")
        print("\tcsrrs t6, "+reg+", t0    # set walking 1")
        print("\tslli t0, t0, 1      # walk the 1")
        print("\tbnez t0, 1b         # repeat until all bits are walked")
        print("\tli t0, 1            # 1 in lsb")
        print("1:  csrrs t6, "+reg+", t1    # set all bits")
        print("\tcsrrc t6, "+reg+", t0    # clear walking 1")
        print("\tslli t0, t0, 1      # walk the 1")
        print("\tbnez t0, 1b         # repeat until all bits are walked")
        # Exercise multi-bit fields
        if (reg == "mstatus"):
            print("\tli t0, 0x1800")
            print("\tcsrrs t6, "+reg+", t0    # mstatus.MPP=3")
            print("\tslli t0, t0, 21 # shift to mstatus.UXL for RV64; drops off end and is ignored for RV32")
            print("\tcsrrs t6, "+reg+", t0    # mstatus.UXL=3")
            print("\tslli t0, t0, 2 # shift to mstatus.SXL for RV64")
            print("\tcsrrs t6, "+reg+", t0    # mstatus.SXL=3")
        if (reg == "menvcfg" or reg == "senvcfg"):
            print("\tli t0, 0x30")
            print("\tcsrrs t6, "+reg+", t0 # xenvcfg.CBIE=3")
        if (reg == "mtvec" or reg == "stvec"):
            print("\tli t0, 0x03")
            print("\tcsrrs t6, "+reg+", t0 # xtvec.MODE=3")
        print("\tcsrrw t6, "+reg+", s0    # restore CSR")
    outfile.close

# setup
seed(0) # make tests reproducible

# generate repetitive assembly language tests

# writable registers to test with walking 1s and 0s
mregs = ["mstatus", "misa", "medeleg", "mideleg", "mie", "mtvec", "mcounteren", "mscratch", "mepc", "mtval", "mip", "menvcfg", "mcycle", "mcountinhibit", "mstatush", "mcycleh", "minstreth"] # ***removed "mcause", "mseccfg" until Issue 1007 resolved "minstret", 
sregs = ["sstatus", "sie", "stvec", "scounteren", "senvcfg", "sscratch", "sepc", "stval", "sip", "satp", "0x120", "stimecmp", "stimecmph"] # ***removed "scause" until Issue 1007 resolved
uregs = ["fflags", "frm", "fcsr"]

seedReg = 0x015
scauseReg = 0x142
mcauseReg = 0x342
mseccfgReg = 0x747

WALLY = os.environ.get('WALLY')
pathname = WALLY+"/addins/cvw-arch-verif/tests/priv/Zicsr-CSR-Tests.h"
outfile = open(pathname, 'w')
sys.stdout = outfile

for i in range(4096):
    while (i == seedReg or i == scauseReg or i == mcauseReg or i == mseccfgReg or (i >= 0x323 and i <= 0x33F) or (i >= 0x3A0 and i <= 0x3EF) or (i >= 0x7a0 and i <= 0x7a5) or (i >= 0x7b0 and i <= 0x7b3)): # *** skip tests causing mismatches for now *** FIX ME *** Issue 1007
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
    print("\tcsrrs x"+reg3+", "+i+", x"+reg2+"\t// Set all CSR bits")
    print("\tcsrrc x"+reg3+", "+i+", x"+reg2+"\t// Clear all CSR bits")
    print("\tcsrrw x"+reg3+", "+i+", x"+reg1+"\t// Restore CSR")   
outfile.close

pathname = WALLY+"/addins/cvw-arch-verif/tests/priv/ZicsrM-Walk.h"
csrwalk(pathname, mregs + sregs + uregs);

pathname = WALLY+"/addins/cvw-arch-verif/tests/priv/ZicsrS-Walk.h"
csrwalk(pathname, sregs + uregs);

pathname = WALLY+"/addins/cvw-arch-verif/tests/priv/ZicsrU-Walk.h"
csrwalk(pathname, uregs);

