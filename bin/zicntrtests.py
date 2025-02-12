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
    print("\t#if __riscv_xlen == 64")
    print("\t\t// Writing walking zeros and ones to CLINT.MTIME address")
    print("\t\tli t0, 0x02000000\t# load CLINT base address into t0")
    print("\t\tli t1, 1\t\t# 1 into lsb")
    print("\t\tli t2, -1\t\t# keep 1 register with all 1s")
    print("\t\tli t4, 0xBFF8\t\t# load the offset into t4")
    print("\t\tadd t4, t4, t0\t\t# calculate the final address (CLINT.MTIME)")
    print("\t1: sd t1, 0(t4)\t\t# store value into CLINT.MTIME address")
    print("\t\txor t3, t2, t1\t\t# create the walked 0 at same position as 1")
    print("\t\tsd t3, 0(t4)\t\t# store walking 0 into CLINT.MTIME")
    print("\t\tslli t1, t1, 1\t\t# walk the 1")
    print("\t\tbnez t1, 1b\t\t# repeat until all bits are walked")
    print("\t#elif __riscv_xlen == 32")
    print("\t\t// Writing walking zeros and ones to CLINT.MTIME address")
    print("\t\tli t0, 0x02000000\t# load CLINT base address into t0")
    print("\t\tli t1, 1\t\t# 1 into lsb")
    print("\t\tli t2, -1\t\t# keep 1 register with all 1s")
    print("\t1: sw t1, 0(t0)\t\t# Store walking 1 into CLINT.MTIME")
    print("\t\txor t3, t2, t1\t\t# Create the walked 0 at the same position")
    print("\t\tsw t3, 0(t0)\t\t# Store walking 0 into CLINT.MTIME")
    print("\t\tslli t1, t1, 1\t\t# Walk the 1")
    print("\t\tbnez t1, 1b\t\t# Repeat until all bits are walked")
    print("\t#endif")
    print("#endif")
    outfile.close()
# setup
seed(0) # make tests reproducible

ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/Zicntr-CNTR-Tests.h"
clinttimewalk(pathname);

