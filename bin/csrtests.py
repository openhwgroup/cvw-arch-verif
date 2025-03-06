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
            continue
        print("\n// Testing walking zeros and ones for CSR "+reg)
        print("\tcsrr s0, "+reg+"\t# save CSR")
        print("\tli t1, -1           # all 1s")
        print("\tli t0, 1            # 1 in lsb")
        print("\t1: csrrc t6, " + reg + ", t1    # clear all bits")
        print("\tcsrrs t6, " + reg + ", t0    # set walking 1")
        print("\tslli t0, t0, 1      # walk the 1")
        print("\tbnez t0, 1b         # repeat until all bits are walked")
        print("\tli t0, 1            # 1 in lsb")
        print("1:  csrrs t6, " + reg + ", t1    # set all bits")
        print("\tcsrrc t6, " + reg + ", t0    # clear walking 1")
        print("\tslli t0, t0, 1      # walk the 1")
        print("\tbnez t0, 1b         # repeat until all bits are walked")
        print("\tcsrrw t6, "+reg+", s0    # restore CSR")
    outfile.close
def csrtests(pathname, skipCsrs):
    outfile = open(pathname, 'w')
    sys.stdout = outfile
    for i in range(4096):
        if (i in skipCsrs): 
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

def mcounterenwalku(pathname, regs):
    outfile = open(pathname, 'w')
    sys.stdout = outfile
    
    # Write walking 1s and 0s to mcounteren
    print("\n// Testing walking zeros and ones for CSR mcounteren")
    print("\tcsrr s0, mcounteren\t# save mcounteren")
    print("\tli t1, -1           # all 1s")
    print("\tli t0, 1            # 1 in lsb")
    print("\t1: csrrc t6, mcounteren, t1    # clear all bits")
    print("\tcsrrs t6, mcounteren, t0    # set walking 1")
    print("\tslli t0, t0, 1      # walk the 1")
    print("\tbnez t0, 1b         # repeat until all bits are walked")
    print("\tli t0, 1            # 1 in lsb")
    print("1:  csrrs t6, mcounteren, t1    # set all bits")
    print("\tcsrrc t6, mcounteren, t0    # clear walking 1")
    print("\tslli t0, t0, 1      # walk the 1")
    print("\tbnez t0, 1b         # repeat until all bits are walked")
    print("\tcsrrw t6, mcounteren, s0    # restore mcounteren")
    
    # Switch to U-mode for testing
    print("\n// Switching to U-mode for counter accessibility test")
    print("\tli a0, 0")
    print("\tecall    # Ensure U-mode is set")
    
    # Test accessibility of counters based on mcounteren in U-mode
    for reg in regs:
        if reg == "satp":  # Special case to avoid accidentally turning on vmem
            continue
        print(f"\n// Testing accessibility of {reg} based on mcounteren in U-mode")
        print(f"\tcsrr s1, {reg}\t# save {reg}")
        print("\tli t1, -1           # all 1s")
        print("\tli t0, 1            # 1 in lsb")
        print("\t1: csrrc t6, mcounteren, t1    # clear all bits in mcounteren")
        print(f"\tcsrrs t6, {reg}, t0    # attempt to set walking 1 in {reg}")
        print("\tslli t0, t0, 1      # walk the 1")
        print("\tbnez t0, 1b         # repeat until all bits are walked")
        print("\tli t0, 1            # 1 in lsb")
        print("1:  csrrs t6, mcounteren, t1    # set all bits in mcounteren")
        print(f"\tcsrrc t6, {reg}, t0    # attempt to clear walking 1 in {reg}")
        print("\tslli t0, t0, 1      # walk the 1")
        print("\tbnez t0, 1b         # repeat until all bits are walked")
        print(f"\tcsrrw t6, {reg}, s1    # restore {reg}")
        print("\n// Restoring M-mode")
        print("\tli a0, 3")
        print("\tecall")

    outfile.close()

def mcounterenwalk(pathname, regs):
    outfile = open(pathname, 'w')
    sys.stdout = outfile
    
    # Write walking 1s and 0s to mcounteren
    print("\n// Testing walking zeros and ones for CSR mcounteren")
    print("\tcsrr s0, mcounteren\t# save mcounteren")
    print("\tli t1, -1           # all 1s")
    print("\tli t0, 1            # 1 in lsb")
    print("\t1: csrrc t6, mcounteren, t1    # clear all bits")
    print("\tcsrrs t6, mcounteren, t0    # set walking 1")
    print("\tslli t0, t0, 1      # walk the 1")
    print("\tbnez t0, 1b         # repeat until all bits are walked")
    print("\tli t0, 1            # 1 in lsb")
    print("1:  csrrs t6, mcounteren, t1    # set all bits")
    print("\tcsrrc t6, mcounteren, t0    # clear walking 1")
    print("\tslli t0, t0, 1      # walk the 1")
    print("\tbnez t0, 1b         # repeat until all bits are walked")
    print("\tcsrrw t6, mcounteren, s0    # restore mcounteren")

    for reg in regs:
        if reg == "satp":  # Special case to avoid accidentally turning on vmem
            continue
        print(f"\n// Testing accessibility of {reg} based on mcounteren in M-mode")
        print(f"\tcsrr s1, {reg}\t# save {reg}")
        print("\tli t1, -1           # all 1s")
        print("\tli t0, 1            # 1 in lsb")
        print("\t1: csrrc t6, mcounteren, t1    # clear all bits in mcounteren")
        print(f"\tcsrrs t6, {reg}, t0    # attempt to set walking 1 in {reg}")
        print("\tslli t0, t0, 1      # walk the 1")
        print("\tbnez t0, 1b         # repeat until all bits are walked")
        print("\tli t0, 1            # 1 in lsb")
        print("1:  csrrs t6, mcounteren, t1    # set all bits in mcounteren")
        print(f"\tcsrrc t6, {reg}, t0    # attempt to clear walking 1 in {reg}")
        print("\tslli t0, t0, 1      # walk the 1")
        print("\tbnez t0, 1b         # repeat until all bits are walked")
        print(f"\tcsrrw t6, {reg}, s1    # restore {reg}")

    outfile.close()

mregs = ["mstatus", "mcause", "misa", "medeleg", "mideleg", "mie", "mtvec", "mcounteren", "mscratch", "mepc", "mtval", "mip", "menvcfg", "mstatush", "mseccfg", "mseccfgh", "menvcfgh", "0x312"] # 0x312 is medelegeh; RV64 compiler isn't accepting the name
sregs = ["sstatus", "scause", "sie", "stvec", "scounteren", "senvcfg", "sscratch", "sepc", "stval", "sip", "0x120"] # 0x120 is scountinhibit, currently unsupported
uregs = ["fflags", "frm", "fcsr"]
mcntrs = ["mcycle", "mcountinhibit", # "minstret" commented out because of https://github.com/openhwgroup/cvw/issues/1304
          "mhpmcounter3", "mhpmcounter4", "mhpmcounter5", "mhpmcounter6", "mhpmcounter7", "mhpmcounter8", "mhpmcounter9", "mhpmcounter10", "mhpmcounter11", "mhpmcounter12", "mhpmcounter13", "mhpmcounter14", "mhpmcounter15",
          "mhpmcounter16", "mhpmcounter17", "mhpmcounter18", "mhpmcounter19", "mhpmcounter20", "mhpmcounter21", "mhpmcounter22", "mhpmcounter23", "mhpmcounter24", "mhpmcounter25", "mhpmcounter26", "mhpmcounter27", "mhpmcounter28", "mhpmcounter29", "mhpmcounter30", "mhpmcounter31",
          "mhpmevent3", "mhpmevent4", "mhpmevent5", "mhpmevent6", "mhpmevent7", "mhpmevent8", "mhpmevent9", "mhpmevent10", "mhpmevent11", "mhpmevent12", "mhpmevent13", "mhpmevent14", "mhpmevent15",
          "mhpmevent16", "mhpmevent17", "mhpmevent18", "mhpmevent19", "mhpmevent20", "mhpmevent21", "mhpmevent22", "mhpmevent23", "mhpmevent24", "mhpmevent25", "mhpmevent26", "mhpmevent27", "mhpmevent28", "mhpmevent29", "mhpmevent30", "mhpmevent31"
          ] 
mcntrsh = ["mcycleh", "minstreth",
          "mhpmcounter3h", "mhpmcounter4h", "mhpmcounter5h", "mhpmcounter6h", "mhpmcounter7h", "mhpmcounter8h", "mhpmcounter9h", "mhpmcounter10h", "mhpmcounter11h", "mhpmcounter12h", "mhpmcounter13h", "mhpmcounter14h", "mhpmcounter15h",
          "mhpmcounter16h", "mhpmcounter17h", "mhpmcounter18h", "mhpmcounter19h", "mhpmcounter20h", "mhpmcounter21h", "mhpmcounter22h", "mhpmcounter23h", "mhpmcounter24h", "mhpmcounter25h", "mhpmcounter26h", "mhpmcounter27h", "mhpmcounter28h", "mhpmcounter29h", "mhpmcounter30h", "mhpmcounter31h",
          "mhpmevent3h", "mhpmevent4h", "mhpmevent5h", "mhpmevent6h", "mhpmevent7h", "mhpmevent8h", "mhpmevent9h", "mhpmevent10h", "mhpmevent11h", "mhpmevent12h", "mhpmevent13h", "mhpmevent14h", "mhpmevent15h",
          "mhpmevent16h", "mhpmevent17h", "mhpmevent18h", "mhpmevent19h", "mhpmevent20h", "mhpmevent21h", "mhpmevent22h", "mhpmevent23h", "mhpmevent24h", "mhpmevent25h", "mhpmevent26h", "mhpmevent27h", "mhpmevent28h", "mhpmevent29h", "mhpmevent30h", "mhpmevent31h"
          ] 
scntrs = ["cycle", "time", "instret", 
          "hpmcounter3", "hpmcounter4", "hpmcounter5", "hpmcounter6", "hpmcounter7", "hpmcounter8", "hpmcounter9", "hpmcounter10", "hpmcounter11", "hpmcounter12", "hpmcounter13", "hpmcounter14", "hpmcounter15",
          "hpmcounter16", "hpmcounter17", "hpmcounter18", "hpmcounter19", "hpmcounter20", "hpmcounter21", "hpmcounter22", "hpmcounter23", "hpmcounter24", "hpmcounter25", "hpmcounter26", "hpmcounter27", "hpmcounter28", "hpmcounter29", "hpmcounter30", "hpmcounter31",
          ] 
scntrsh = ["cycleh", "timeh", "instreth",
          "hpmcounter3h", "hpmcounter4h", "hpmcounter5h", "hpmcounter6h", "hpmcounter7h", "hpmcounter8h", "hpmcounter9h", "hpmcounter10h", "hpmcounter11h", "hpmcounter12h", "hpmcounter13h", "hpmcounter14h", "hpmcounter15h",
          "hpmcounter16h", "hpmcounter17h", "hpmcounter18h", "hpmcounter19h", "hpmcounter20h", "hpmcounter21h", "hpmcounter22h", "hpmcounter23h", "hpmcounter24h", "hpmcounter25h", "hpmcounter26h", "hpmcounter27h", "hpmcounter28h", "hpmcounter29h", "hpmcounter30h", "hpmcounter31h",
          ] 

uCsrSkip = list(range(0x800, 0x900)) + list(range(0xCC0, 0xD00))
sCsrSkip = list(range(0x5C0, 0x600)) + list(range(0x6C0, 0x700)) + \
           list(range(0x9C0, 0xA00)) + list(range(0xAC0, 0xB00)) + \
           list(range(0xDC0, 0xE00)) + list(range(0xEC0, 0xF00))
mCsrSkip = list(range(0x7A0, 0x7B0)) + list(range(0x7C0, 0x800)) + \
           list(range(0xBC0, 0xC00)) + list(range(0xFC0, 0x1000))
ARCH_VERIF = os.path.abspath(os.path.join(os.path.dirname(sys.argv[0]), ".."))
pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicsrM-CSR-Tests.h"
csrtests(pathname, mCsrSkip + sCsrSkip + uCsrSkip)
pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicsrS-CSR-Tests.h"
csrtests(pathname, sCsrSkip + uCsrSkip + [0x180]) # 0x180 is satp, turns on virtual memory
pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicsrU-CSR-Tests.h"
csrtests(pathname, uCsrSkip)
pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicsrM-Walk.h"
csrwalk(pathname, mregs + sregs + uregs + ["satp"])

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicsrS-Walk.h"
csrwalk(pathname, sregs + uregs);

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicntrM-Walk.h"
csrwalk(pathname, mcntrs)

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/ZicntrhM-Walk.h"
csrwalk(pathname, mcntrsh)

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/Zicntr-MWalkU.h"
mcounterenwalku(pathname, scntrs)

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/Zicntrh-MWalkU.h"
mcounterenwalku(pathname, scntrsh)

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/Zicntr-MWalk.h"
mcounterenwalk(pathname, scntrs)

pathname = f"{ARCH_VERIF}/tests/lockstep/priv/headers/Zicntrh-MWalkU.h"
mcounterenwalku(pathname, scntrsh)