#!/usr/bin/env python3
##################################
# zicntrtests.py
# asantillana@hmc.edu 2/2/25
# Zicntr functional coverage tests
##################################

import random
from random import randint
from random import seed
import os, sys
from os import environ

def cntrwalk(pathname, regs):
    outfile = open(pathname, 'w')
    sys.stdout = outfile
    for reg in regs:
        print("\n// Testing walking zeros and ones for csr "+reg)
        print("\tcsrr s0, "+reg+"\t# save csr")
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
        print("\tcsrrw t6, "+reg+", s0    # restore csr")
    outfile.close

# setup
seed(0) # make tests reproducible

# generate repetitive assembly language tests

# writable registers to test with walking 1s and 0s
mhpmcounters = []
for i in range(3,32):
    mhpmcounters.append("mhpmcounter"+ str(i))
mhpmevents = []
for i in range(3,32):
    mhpmevents.append("mhpmevent"+ str(i))
mregs = ["mcycle", "minstret", "mcountinhibit", "mtime", "mcounteren"] + mhpmcounters + mhpmevents
sregs = ["scounteren"] 
uregs = ["time"]

ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicntrM-Walk.h"
cntrwalk(pathname, mregs);

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicntrS-Walk.h"
cntrwalk(pathname, sregs + uregs+ mregs);

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicntrU-Walk.h"
cntrwalk(pathname, uregs + sregs);

