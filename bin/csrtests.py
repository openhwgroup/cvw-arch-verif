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
        print("\tcsrrw t6, "+reg+", s0    # restore CSR")
    outfile.close

def csrtests(pathname):
    outfile = open(pathname, 'w')
    sys.stdout = outfile
    for i in range(4096):
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
        ih = hex(i)
        print("\n// Testing CSR "+ih)
        print("\tcsrr x"+str(reg1)+", "+ ih + "\t// Read CSR")
        print("\tli x"+reg2+", -1")
        print("\tcsrrw x"+reg3+", "+ih+", x"+reg2+"\t// Write all 1s to CSR")
        print("\tcsrrw x"+reg3+", "+ih+", x0\t// Write all 0s to CSR")
        print("\tcsrrs x"+reg3+", "+ih+", x"+reg2+"\t// Set all CSR bits")
        print("\tcsrrc x"+reg3+", "+ih+", x"+reg2+"\t// Clear all CSR bits")
        print("\tcsrrw x"+reg3+", "+ih+", x"+reg1+"\t// Restore CSR")
    outfile.close

# setup
seed(0) # make tests reproducible

# generate repetitive assembly language tests

# writable registers to test with walking 1s and 0s
mregs = ["mstatus", "mcause", "misa", "medeleg", "mideleg", "mie", "mtvec", "mcounteren", "mscratch", "mepc", "mtval", "mip", "menvcfg", "mcycle", "mcountinhibit", "mstatush", "mcycleh", "minstreth", "mseccfg", "mseccfgh"]
sregs = ["sstatus", "scause", "sie", "stvec", "scounteren", "senvcfg", "sscratch", "sepc", "stval", "sip", "satp", "0x120"] # 0x120 is scountinhibit
uregs = ["fflags", "frm", "fcsr"]

ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/Zicsr-CSR-Tests.h"
csrtests(pathname)

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/ZicsrM-Walk.h"
csrwalk(pathname, mregs + sregs + uregs);

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/ZicsrS-Walk.h"
csrwalk(pathname, sregs + uregs);

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/ZicsrU-Walk.h"
csrwalk(pathname, uregs);

