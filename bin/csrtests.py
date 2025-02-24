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
        if reg == "satp": # satp requires a special case to avoid accidentally turning on vmem
            print("// Testing walking zeros and ones for CSR satp\n")
            print("\tcsrr t6, satp\t# save CSR\n")
            print("\tli t0, 1\t# 1 in lsb\n")
            print("\tli t1, -1\t# all 1s\n")
            print("\t#ifdef __riscv_xlen\n")
            print("\t\t#if __riscv_xlen == 64\n")
            print("\t\t\tli t2, 0b1111\t\n")
            print("\t\t\tslli t2, t2, 60\t# mask with top 4 bits set for 64-bit\n")
            print("\t\t\tnot t2, t2\t# mask with top 4 bits cleared for 64-bit\n")
            print("\t\t\tand t1, t1, t2 # all 1s except top 4 bits\n")
            print("\t\t\tli t3, 0b1\t\n")
            print("\t\t\tslli t3, t3, 59\t# endpoint for 64-bit\n")
            print("\t\t#elif __riscv_xlen == 32\n")
            print("\t\t\tli t2, 0b1\t\n")
            print("\t\t\tslli t2, t2, 31\t# mask with top bit set for 32-bit\n")
            print("\t\t\tnot t2, t2\t# mask with top bit cleared for 32-bit\n")
            print("\t\t\tand t1, t1, t2 # all 1s except top bit\n")
            print("\t\t\tli t3, 0b1\t\n")
            print("\t\t\tslli t3, t3, 30\t# endpoint for 32-bit\n")
            print("\t\t#endif\n")
            print("\t#else\n")
            print("\t\tERROR: __riscv_xlen not defined\n")
            print("\t#endif\n")
            print("\tli t2, -1\n")
            print("\t2: csrrc x0, satp, t2\t# clear all bits\n")
            print("\tcsrrs t4, satp, t0\t# set walking 1\n")
            print("\tslli t0, t0, 1\t# walk the 1\n")
            print("\tbne t0, t3, 2b\t# repeat until all bits are walked\n")
            print("\tli t0, 1\t# 1 in lsb\n")
            print("\t2: csrrs t4, satp, t1\t# set bottom bits (don't enable vmem)\n")
            print("\tcsrrc t4, satp, t0\t# clear walking 1\n")
            print("\tslli t0, t0, 1\t# walk the 1\n")
            print("\tbne t0, t3, 2b\t# repeat until all bits are walked\n")
            print("\tcsrrw t4, satp, t6\t# restore CSR\n")
            continue
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
        if (i in list(range (0x800, 0x900)) + list(range(0x5C0, 0x600)) + list(range(0x6C0, 0x700)) + list(range(0x7B0-0x7C0)) + list(range(0x9C0, 0xA00)) + 
            list(range(0xBC0, 0xC00)) + list(range(0xCC0, 0xD00)) + list(range(0xDC0, 0xE00)) + list(range(0xEC0, 0xF00)) + list(range(0xFC0, 0x1000))): 
            continue # skip custom CSRs
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
        if (i == 0x180):
            continue
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
mregs = ["mstatus", "mcause", "misa", "medeleg", "mideleg", "mie", "mtvec", "mcounteren", "mscratch", "mepc", "mtval", "mip", "menvcfg", "mstatush", "mseccfg", "mseccfgh"]
sregs = ["sstatus", "scause", "sie", "stvec", "scounteren", "senvcfg", "sscratch", "sepc", "stval", "sip", "satp"] # 0x120 is scountinhibit, currently unsupported
uregs = ["fflags", "frm", "fcsr"]

ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/Zicsr-CSR-Tests.h"
csrtests(pathname)

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicsrM-Walk.h"
csrwalk(pathname, mregs + sregs + uregs);

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicsrS-Walk.h"
csrwalk(pathname, sregs + uregs);

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicsrU-Walk.h"
csrwalk(pathname, uregs);
