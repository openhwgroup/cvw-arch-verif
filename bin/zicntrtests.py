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
def clinttimewalk(pathname):
    outfile = open(pathname, 'w')
    sys.stdout = outfile
    print("#ifdef __riscv_xlen")
    print("\t #if __riscv_xlen == 64")
    print("\t\t// Writing walking zeros and ones to CLINT.MTIME address")
    print("\t\t li t0, 0x02000000\t # load CLINT base address into t0")
    print("\t\t li t1, 1\t # 1 into lsb")
    print("\t\t li t2, -1\t # keep 1 register with all 1s")
    print("\t\t 1: sd t1, 0xBFF8(t0)\t # store value into CLINT.MTIME address")
    print("\t\t xor t3, t2, t1\t # create the walked 0 at same position as 1")
    print("\t\t sd t3, 0xBFF8(t0)\t # store walking 0 into CLINT.MTIME")
    print("\t\t slli t1, t1, 1\t # walk the 1")
    print("\t\t bnez t1, 1b\t # repeat until all bits are walked")
    print("\t #elifif __riscv_xlen == 32")
    print("\t\t// Writing walking zeros and ones to CLINT.MTIME address")
    print("\t\t li t0, 0x02000000\t # load CLINT base address into t0")
    print("\t\t li t1, 1\t # 1 into lsb")
    print("\t\t li t2, -1\t # keep 1 register with all 1s")
    print("\t\t sw t3, 0xBFF8(t0)\t # store walking 0 into CLINT.MTIME")
    print("\t\t sw t3, 0xBFF8(t0)\t # store walking 0 into CLINT.MTIME")
    print("\t\t slli t1, t1, 1\t # walk the 1")
    print("\t\t bnez t1, 1b\t # repeat until all bits are walked")
    print("\t#endif")
    print("#endif")
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
mhpmcountersh = []
for i in range(3,32):
    mhpmcountersh.append("mhpmcounterh"+ str(i))
mhpmeventsh = []
for i in range(3,32):
    mhpmeventsh.append("mhpmeventh"+ str(i))

mregs = ["mcycle", "minstret", "mcountinhibit", "mtime", "mcounteren", "mcycleh", "minstreth"] + mhpmcounters + mhpmevents + mhpmcountersh + mhpmeventsh
sregs = ["scounteren"] 
uregs = ["time"]

ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicntrM-Walk.h"
cntrwalk(pathname, mregs);

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicntrM-CLINTTIME.h"
clinttimewalk(pathname);

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicntrS-Walk.h"
cntrwalk(pathname, sregs + uregs+ mregs);

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicntrU-Walk.h"
cntrwalk(pathname, uregs + sregs);

