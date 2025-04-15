///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-lw.S
// David_Harris@hmc.edu

 # testgen_header.S
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "macros.h"

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x1)
li x3, 0xdbc26fde # initialize rs2
la x1, scratch # base address 
addi x1, x1, 737 # sub immediate from rs1 to counter offset
sw x3, -737 (x1) # store value to put something in memory
lw x14, -737(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
li x20, 0x565e2007 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 330 # sub immediate from rs1 to counter offset
sw x20, -330 (x2) # store value to put something in memory
lw x29, -330(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 4)

# Testcase cp_rs1 (Test source rs1 = x3)
li x24, 0x55c26a7c # initialize rs2
la x3, scratch # base address 
addi x3, x3, 2008 # sub immediate from rs1 to counter offset
sw x24, -2008 (x3) # store value to put something in memory
lw x6, -2008(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0x828a50c0 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -370 # sub immediate from rs1 to counter offset
sw x16, 370 (x4) # store value to put something in memory
lw x15, 370(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x15, 12)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0xd29363e5 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1427 # sub immediate from rs1 to counter offset
sw x17, 1427 (x5) # store value to put something in memory
lw x31, 1427(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x31, 16)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0x20043fe3 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -70 # sub immediate from rs1 to counter offset
sw x8, 70 (x6) # store value to put something in memory
lw x29, 70(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x29, 20)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x4ac120bc # initialize rs2
la x7, scratch # base address 
addi x7, x7, 1891 # sub immediate from rs1 to counter offset
sw x13, -1891 (x7) # store value to put something in memory
lw x30, -1891(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 24)

# Testcase cp_rs1 (Test source rs1 = x8)
li x22, 0xe28adb75 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 342 # sub immediate from rs1 to counter offset
sw x22, -342 (x8) # store value to put something in memory
lw x9, -342(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 28)

# Testcase cp_rs1 (Test source rs1 = x9)
li x29, 0x8d9667bb # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1382 # sub immediate from rs1 to counter offset
sw x29, 1382 (x9) # store value to put something in memory
lw x7, 1382(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 32)

# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0xc779c747 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1084 # sub immediate from rs1 to counter offset
sw x14, -1084 (x10) # store value to put something in memory
lw x25, -1084(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 36)

# Testcase cp_rs1 (Test source rs1 = x11)
li x27, 0xe75d9e52 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1991 # sub immediate from rs1 to counter offset
sw x27, -1991 (x11) # store value to put something in memory
lw x1, -1991(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 40)

# Testcase cp_rs1 (Test source rs1 = x12)
li x31, 0x538657fa # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1679 # sub immediate from rs1 to counter offset
sw x31, -1679 (x12) # store value to put something in memory
lw x20, -1679(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 44)

# Testcase cp_rs1 (Test source rs1 = x13)
li x28, 0xa7b262cb # initialize rs2
la x13, scratch # base address 
addi x13, x13, 578 # sub immediate from rs1 to counter offset
sw x28, -578 (x13) # store value to put something in memory
lw x5, -578(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 48)

# Testcase cp_rs1 (Test source rs1 = x14)
li x23, 0xb565da74 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1441 # sub immediate from rs1 to counter offset
sw x23, 1441 (x14) # store value to put something in memory
lw x30, 1441(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 52)

# Testcase cp_rs1 (Test source rs1 = x15)
li x3, 0xc9b95c77 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -883 # sub immediate from rs1 to counter offset
sw x3, 883 (x15) # store value to put something in memory
lw x14, 883(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rs1 (Test source rs1 = x16)
li x20, 0x6cbf966f # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1604 # sub immediate from rs1 to counter offset
sw x20, -1604 (x16) # store value to put something in memory
lw x30, -1604(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 60)

# Testcase cp_rs1 (Test source rs1 = x17)
li x20, 0xfdf21e85 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1406 # sub immediate from rs1 to counter offset
sw x20, -1406 (x17) # store value to put something in memory
lw x23, -1406(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 64)

# Testcase cp_rs1 (Test source rs1 = x18)
li x13, 0x09a2e7be # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1409 # sub immediate from rs1 to counter offset
sw x13, 1409 (x18) # store value to put something in memory
lw x29, 1409(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 68)

# Testcase cp_rs1 (Test source rs1 = x19)
li x10, 0xe3082322 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 477 # sub immediate from rs1 to counter offset
sw x10, -477 (x19) # store value to put something in memory
lw x9, -477(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cp_rs1 (Test source rs1 = x20)
li x29, 0xab830141 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -301 # sub immediate from rs1 to counter offset
sw x29, 301 (x20) # store value to put something in memory
lw x9, 301(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 76)

# Testcase cp_rs1 (Test source rs1 = x21)
li x6, 0x1e9327bb # initialize rs2
la x21, scratch # base address 
addi x21, x21, -527 # sub immediate from rs1 to counter offset
sw x6, 527 (x21) # store value to put something in memory
lw x14, 527(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1 (Test source rs1 = x22)
li x17, 0x300e4f2e # initialize rs2
la x22, scratch # base address 
addi x22, x22, 329 # sub immediate from rs1 to counter offset
sw x17, -329 (x22) # store value to put something in memory
lw x26, -329(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 84)

# Testcase cp_rs1 (Test source rs1 = x23)
li x1, 0x1a7c6ea9 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 269 # sub immediate from rs1 to counter offset
sw x1, -269 (x23) # store value to put something in memory
lw x24, -269(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 88)

# Testcase cp_rs1 (Test source rs1 = x24)
li x16, 0xbe311feb # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1829 # sub immediate from rs1 to counter offset
sw x16, -1829 (x24) # store value to put something in memory
lw x9, -1829(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 92)

# Testcase cp_rs1 (Test source rs1 = x25)
li x16, 0x04b98e8c # initialize rs2
la x25, scratch # base address 
addi x25, x25, 303 # sub immediate from rs1 to counter offset
sw x16, -303 (x25) # store value to put something in memory
lw x3, -303(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cp_rs1 (Test source rs1 = x26)
li x16, 0xdaab216c # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1267 # sub immediate from rs1 to counter offset
sw x16, 1267 (x26) # store value to put something in memory
lw x6, 1267(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 100)

# Testcase cp_rs1 (Test source rs1 = x27)
li x22, 0x91f52137 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 44 # sub immediate from rs1 to counter offset
sw x22, -44 (x27) # store value to put something in memory
lw x25, -44(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 104)

# Testcase cp_rs1 (Test source rs1 = x28)
li x22, 0x3a32e5eb # initialize rs2
la x28, scratch # base address 
addi x28, x28, 859 # sub immediate from rs1 to counter offset
sw x22, -859 (x28) # store value to put something in memory
lw x12, -859(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 108)

# Testcase cp_rs1 (Test source rs1 = x29)
li x17, 0xa4828f34 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 368 # sub immediate from rs1 to counter offset
sw x17, -368 (x29) # store value to put something in memory
lw x25, -368(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cp_rs1 (Test source rs1 = x30)
li x11, 0x49f95d14 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -758 # sub immediate from rs1 to counter offset
sw x11, 758 (x30) # store value to put something in memory
lw x2, 758(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_rs1 (Test source rs1 = x31)
li x13, 0xe80c5c91 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -2003 # sub immediate from rs1 to counter offset
sw x13, 2003 (x31) # store value to put something in memory
lw x17, 2003(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cp_rd (Test destination rd = x0)
li x15, 0x79976897 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1785 # sub immediate from rs1 to counter offset
sw x15, -1785 (x1) # store value to put something in memory
lw x0, -1785(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 124)

# Testcase cp_rd (Test destination rd = x1)
li x10, 0xa945d9cb # initialize rs2
la x3, scratch # base address 
addi x3, x3, -264 # sub immediate from rs1 to counter offset
sw x10, 264 (x3) # store value to put something in memory
lw x1, 264(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0xc29abbba # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1164 # sub immediate from rs1 to counter offset
sw x19, 1164 (x27) # store value to put something in memory
lw x2, 1164(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 132)

# Testcase cp_rd (Test destination rd = x3)
li x6, 0x04643f5a # initialize rs2
la x26, scratch # base address 
addi x26, x26, -962 # sub immediate from rs1 to counter offset
sw x6, 962 (x26) # store value to put something in memory
lw x3, 962(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 136)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0xda51303a # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1902 # sub immediate from rs1 to counter offset
sw x20, 1902 (x13) # store value to put something in memory
lw x4, 1902(x13) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 140)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x0adf5b85 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -105 # sub immediate from rs1 to counter offset
sw x18, 105 (x9) # store value to put something in memory
lw x5, 105(x9) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 144)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0xc2282022 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -163 # sub immediate from rs1 to counter offset
sw x8, 163 (x4) # store value to put something in memory
lw x6, 163(x4) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 148)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x8b702071 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1733 # sub immediate from rs1 to counter offset
sw x3, -1733 (x12) # store value to put something in memory
lw x7, -1733(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 152)

# Testcase cp_rd (Test destination rd = x8)
li x2, 0x60fc1be6 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 798 # sub immediate from rs1 to counter offset
sw x2, -798 (x21) # store value to put something in memory
lw x8, -798(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 156)

# Testcase cp_rd (Test destination rd = x9)
li x31, 0x5242c0bb # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1516 # sub immediate from rs1 to counter offset
sw x31, -1516 (x28) # store value to put something in memory
lw x9, -1516(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rd (Test destination rd = x10)
li x29, 0x385b73a7 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1808 # sub immediate from rs1 to counter offset
sw x29, -1808 (x8) # store value to put something in memory
lw x10, -1808(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 164)

# Testcase cp_rd (Test destination rd = x11)
li x28, 0x3a0bbdfd # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1530 # sub immediate from rs1 to counter offset
sw x28, -1530 (x23) # store value to put something in memory
lw x11, -1530(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_rd (Test destination rd = x12)
li x23, 0xd4844208 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -79 # sub immediate from rs1 to counter offset
sw x23, 79 (x18) # store value to put something in memory
lw x12, 79(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 172)

# Testcase cp_rd (Test destination rd = x13)
li x12, 0x1ae30e51 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1520 # sub immediate from rs1 to counter offset
sw x12, -1520 (x28) # store value to put something in memory
lw x13, -1520(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_rd (Test destination rd = x14)
li x1, 0xa4e514a7 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -2018 # sub immediate from rs1 to counter offset
sw x1, 2018 (x20) # store value to put something in memory
lw x14, 2018(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 180)

# Testcase cp_rd (Test destination rd = x15)
li x19, 0xe130457f # initialize rs2
la x12, scratch # base address 
addi x12, x12, 1772 # sub immediate from rs1 to counter offset
sw x19, -1772 (x12) # store value to put something in memory
lw x15, -1772(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_rd (Test destination rd = x16)
li x2, 0x71d3dc03 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1542 # sub immediate from rs1 to counter offset
sw x2, 1542 (x3) # store value to put something in memory
lw x16, 1542(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 188)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0x5d88a967 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -989 # sub immediate from rs1 to counter offset
sw x2, 989 (x21) # store value to put something in memory
lw x17, 989(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rd (Test destination rd = x18)
li x31, 0xac068eb8 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1446 # sub immediate from rs1 to counter offset
sw x31, -1446 (x9) # store value to put something in memory
lw x18, -1446(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 196)

# Testcase cp_rd (Test destination rd = x19)
li x22, 0xa11197e1 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1043 # sub immediate from rs1 to counter offset
sw x22, 1043 (x18) # store value to put something in memory
lw x19, 1043(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 200)

# Testcase cp_rd (Test destination rd = x20)
li x25, 0x2f5140a2 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -306 # sub immediate from rs1 to counter offset
sw x25, 306 (x15) # store value to put something in memory
lw x20, 306(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 204)

# Testcase cp_rd (Test destination rd = x21)
li x15, 0xdcba6a40 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1525 # sub immediate from rs1 to counter offset
sw x15, -1525 (x6) # store value to put something in memory
lw x21, -1525(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 208)

# Testcase cp_rd (Test destination rd = x22)
li x30, 0x5218065c # initialize rs2
la x9, scratch # base address 
addi x9, x9, 24 # sub immediate from rs1 to counter offset
sw x30, -24 (x9) # store value to put something in memory
lw x22, -24(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 212)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0x7e1afbea # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1929 # sub immediate from rs1 to counter offset
sw x28, -1929 (x6) # store value to put something in memory
lw x23, -1929(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cp_rd (Test destination rd = x24)
li x16, 0x402adf32 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 665 # sub immediate from rs1 to counter offset
sw x16, -665 (x3) # store value to put something in memory
lw x24, -665(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 220)

# Testcase cp_rd (Test destination rd = x25)
li x13, 0x0cbbe31b # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1128 # sub immediate from rs1 to counter offset
sw x13, 1128 (x21) # store value to put something in memory
lw x25, 1128(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 224)

# Testcase cp_rd (Test destination rd = x26)
li x22, 0xe561ca9d # initialize rs2
la x19, scratch # base address 
addi x19, x19, 761 # sub immediate from rs1 to counter offset
sw x22, -761 (x19) # store value to put something in memory
lw x26, -761(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 228)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0xebb1d48d # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1299 # sub immediate from rs1 to counter offset
sw x11, -1299 (x10) # store value to put something in memory
lw x27, -1299(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rd (Test destination rd = x28)
li x27, 0x10423aa5 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -162 # sub immediate from rs1 to counter offset
sw x27, 162 (x11) # store value to put something in memory
lw x28, 162(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 236)

# Testcase cp_rd (Test destination rd = x29)
li x18, 0x15735ae0 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1633 # sub immediate from rs1 to counter offset
sw x18, -1633 (x11) # store value to put something in memory
lw x29, -1633(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 240)

# Testcase cp_rd (Test destination rd = x30)
li x26, 0x0d2b41c9 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -151 # sub immediate from rs1 to counter offset
sw x26, 151 (x17) # store value to put something in memory
lw x30, 151(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 244)

# Testcase cp_rd (Test destination rd = x31)
li x28, 0x0a927658 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -614 # sub immediate from rs1 to counter offset
sw x28, 614 (x14) # store value to put something in memory
lw x31, 614(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x26, 0xe445537b # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1260 # sub immediate from rs1 to counter offset
sw x26, -1260 (x1) # store value to put something in memory
lw x1, -1260(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x1, 0x9f1d59e7 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -1332 # sub immediate from rs1 to counter offset
sw x1, 1332 (x2) # store value to put something in memory
lw x2, 1332(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x31, 0xfcc02309 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 667 # sub immediate from rs1 to counter offset
sw x31, -667 (x3) # store value to put something in memory
lw x3, -667(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0x9dd29aa0 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -327 # sub immediate from rs1 to counter offset
sw x22, 327 (x4) # store value to put something in memory
lw x4, 327(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x22, 0xbd0a103d # initialize rs2
la x5, scratch # base address 
addi x5, x5, -924 # sub immediate from rs1 to counter offset
sw x22, 924 (x5) # store value to put something in memory
lw x5, 924(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0xe2a06c3e # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1147 # sub immediate from rs1 to counter offset
sw x13, 1147 (x6) # store value to put something in memory
lw x6, 1147(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0x6e7d38f3 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1929 # sub immediate from rs1 to counter offset
sw x4, 1929 (x7) # store value to put something in memory
lw x7, 1929(x7) # perform operation
RVTEST_SIGUPD(x5, x0, x7, 276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x4, 0xa2dd466c # initialize rs2
la x8, scratch # base address 
addi x8, x8, -656 # sub immediate from rs1 to counter offset
sw x4, 656 (x8) # store value to put something in memory
lw x8, 656(x8) # perform operation
RVTEST_SIGUPD(x5, x0, x8, 280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x15, 0xe81dfca9 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -814 # sub immediate from rs1 to counter offset
sw x15, 814 (x9) # store value to put something in memory
lw x9, 814(x9) # perform operation
RVTEST_SIGUPD(x5, x0, x9, 284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x28, 0x80e25653 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1810 # sub immediate from rs1 to counter offset
sw x28, 1810 (x10) # store value to put something in memory
lw x10, 1810(x10) # perform operation
RVTEST_SIGUPD(x5, x0, x10, 288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x31, 0x47108b2f # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1997 # sub immediate from rs1 to counter offset
sw x31, 1997 (x11) # store value to put something in memory
lw x11, 1997(x11) # perform operation
RVTEST_SIGUPD(x5, x0, x11, 292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x8, 0x9c724a18 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 678 # sub immediate from rs1 to counter offset
sw x8, -678 (x12) # store value to put something in memory
lw x12, -678(x12) # perform operation
RVTEST_SIGUPD(x5, x0, x12, 296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x20, 0xe4965f57 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 1077 # sub immediate from rs1 to counter offset
sw x20, -1077 (x13) # store value to put something in memory
lw x13, -1077(x13) # perform operation
RVTEST_SIGUPD(x5, x0, x13, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x16, 0x2ca998eb # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1420 # sub immediate from rs1 to counter offset
sw x16, 1420 (x14) # store value to put something in memory
lw x14, 1420(x14) # perform operation
RVTEST_SIGUPD(x5, x0, x14, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x8, 0x800bddb7 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -321 # sub immediate from rs1 to counter offset
sw x8, 321 (x15) # store value to put something in memory
lw x15, 321(x15) # perform operation
RVTEST_SIGUPD(x5, x0, x15, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x10, 0x20004edd # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1976 # sub immediate from rs1 to counter offset
sw x10, -1976 (x16) # store value to put something in memory
lw x16, -1976(x16) # perform operation
RVTEST_SIGUPD(x5, x0, x16, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x4, 0x36e6a364 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1034 # sub immediate from rs1 to counter offset
sw x4, -1034 (x17) # store value to put something in memory
lw x17, -1034(x17) # perform operation
RVTEST_SIGUPD(x5, x0, x17, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x27, 0xc2ed9f33 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -2039 # sub immediate from rs1 to counter offset
sw x27, 2039 (x18) # store value to put something in memory
lw x18, 2039(x18) # perform operation
RVTEST_SIGUPD(x5, x0, x18, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x24, 0x9e3911b6 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 375 # sub immediate from rs1 to counter offset
sw x24, -375 (x19) # store value to put something in memory
lw x19, -375(x19) # perform operation
RVTEST_SIGUPD(x5, x0, x19, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x28, 0x8d01ba52 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -293 # sub immediate from rs1 to counter offset
sw x28, 293 (x20) # store value to put something in memory
lw x20, 293(x20) # perform operation
RVTEST_SIGUPD(x5, x0, x20, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x3, 0xaaf6f498 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 457 # sub immediate from rs1 to counter offset
sw x3, -457 (x21) # store value to put something in memory
lw x21, -457(x21) # perform operation
RVTEST_SIGUPD(x5, x0, x21, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x7, 0x1378083f # initialize rs2
la x22, scratch # base address 
addi x22, x22, -352 # sub immediate from rs1 to counter offset
sw x7, 352 (x22) # store value to put something in memory
lw x22, 352(x22) # perform operation
RVTEST_SIGUPD(x5, x0, x22, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x8, 0x9cf69374 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1001 # sub immediate from rs1 to counter offset
sw x8, -1001 (x23) # store value to put something in memory
lw x23, -1001(x23) # perform operation
RVTEST_SIGUPD(x5, x0, x23, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x8, 0xe0e6b6f0 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -903 # sub immediate from rs1 to counter offset
sw x8, 903 (x24) # store value to put something in memory
lw x24, 903(x24) # perform operation
RVTEST_SIGUPD(x5, x0, x24, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x12, 0xe8f840f6 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 127 # sub immediate from rs1 to counter offset
sw x12, -127 (x25) # store value to put something in memory
lw x25, -127(x25) # perform operation
RVTEST_SIGUPD(x5, x0, x25, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x21, 0xc9d17e84 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 476 # sub immediate from rs1 to counter offset
sw x21, -476 (x26) # store value to put something in memory
lw x26, -476(x26) # perform operation
RVTEST_SIGUPD(x5, x0, x26, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x12, 0x0cf0740a # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1183 # sub immediate from rs1 to counter offset
sw x12, 1183 (x27) # store value to put something in memory
lw x27, 1183(x27) # perform operation
RVTEST_SIGUPD(x5, x0, x27, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x6, 0x05057358 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 895 # sub immediate from rs1 to counter offset
sw x6, -895 (x28) # store value to put something in memory
lw x28, -895(x28) # perform operation
RVTEST_SIGUPD(x5, x0, x28, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x24, 0x078f3379 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -175 # sub immediate from rs1 to counter offset
sw x24, 175 (x29) # store value to put something in memory
lw x29, 175(x29) # perform operation
RVTEST_SIGUPD(x5, x0, x29, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x23, 0xce21bae7 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -611 # sub immediate from rs1 to counter offset
sw x23, 611 (x30) # store value to put something in memory
lw x30, 611(x30) # perform operation
RVTEST_SIGUPD(x5, x0, x30, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x27, 0x22f841c8 # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1535 # sub immediate from rs1 to counter offset
sw x27, 1535 (x31) # store value to put something in memory
lw x31, 1535(x31) # perform operation
RVTEST_SIGUPD(x5, x0, x31, 372)

# Testcase cp_imm_corners
li x28, 0xef25c7b1 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 0 # sub immediate from rs1 to counter offset
sw x28, 0 (x31) # store value to put something in memory
lw x19, 0(x31) # perform operation
RVTEST_SIGUPD(x5, x0, x19, 376)

# Testcase cp_imm_corners
li x28, 0xd81c74d4 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1 # sub immediate from rs1 to counter offset
sw x28, 1 (x16) # store value to put something in memory
lw x15, 1(x16) # perform operation
RVTEST_SIGUPD(x5, x0, x15, 380)

# Testcase cp_imm_corners
li x27, 0x6473144e # initialize rs2
la x26, scratch # base address 
addi x26, x26, -2 # sub immediate from rs1 to counter offset
sw x27, 2 (x26) # store value to put something in memory
lw x16, 2(x26) # perform operation
RVTEST_SIGUPD(x5, x0, x16, 384)

# Testcase cp_imm_corners
li x27, 0x61cff3b5 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -3 # sub immediate from rs1 to counter offset
sw x27, 3 (x19) # store value to put something in memory
lw x26, 3(x19) # perform operation
RVTEST_SIGUPD(x5, x0, x26, 388)

# Testcase cp_imm_corners
li x27, 0x96dc8883 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -4 # sub immediate from rs1 to counter offset
sw x27, 4 (x13) # store value to put something in memory
lw x3, 4(x13) # perform operation
RVTEST_SIGUPD(x5, x0, x3, 392)

# Testcase cp_imm_corners
li x19, 0xf3d8d416 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -8 # sub immediate from rs1 to counter offset
sw x19, 8 (x6) # store value to put something in memory
lw x13, 8(x6) # perform operation
RVTEST_SIGUPD(x5, x0, x13, 396)

# Testcase cp_imm_corners
li x25, 0x8c101e44 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -16 # sub immediate from rs1 to counter offset
sw x25, 16 (x14) # store value to put something in memory
lw x21, 16(x14) # perform operation
RVTEST_SIGUPD(x5, x0, x21, 400)

# Testcase cp_imm_corners
li x30, 0x6e8449ff # initialize rs2
la x23, scratch # base address 
addi x23, x23, -32 # sub immediate from rs1 to counter offset
sw x30, 32 (x23) # store value to put something in memory
lw x17, 32(x23) # perform operation
RVTEST_SIGUPD(x5, x0, x17, 404)

# Testcase cp_imm_corners
li x22, 0xd428550b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -64 # sub immediate from rs1 to counter offset
sw x22, 64 (x13) # store value to put something in memory
lw x11, 64(x13) # perform operation
RVTEST_SIGUPD(x5, x0, x11, 408)

# Testcase cp_imm_corners
li x24, 0x21b34b73 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -128 # sub immediate from rs1 to counter offset
sw x24, 128 (x30) # store value to put something in memory
lw x9, 128(x30) # perform operation
RVTEST_SIGUPD(x5, x0, x9, 412)

# Testcase cp_imm_corners
li x3, 0x06f00486 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -256 # sub immediate from rs1 to counter offset
sw x3, 256 (x20) # store value to put something in memory
lw x22, 256(x20) # perform operation
RVTEST_SIGUPD(x5, x0, x22, 416)

# Testcase cp_imm_corners
li x6, 0x62706e8f # initialize rs2
la x10, scratch # base address 
addi x10, x10, -512 # sub immediate from rs1 to counter offset
sw x6, 512 (x10) # store value to put something in memory
lw x4, 512(x10) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 420)

# Testcase cp_imm_corners
li x9, 0xaf97290b # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1023 # sub immediate from rs1 to counter offset
sw x9, 1023 (x23) # store value to put something in memory
lw x6, 1023(x23) # perform operation
RVTEST_SIGUPD(x5, x0, x6, 424)

# Testcase cp_imm_corners
li x8, 0x7b1c2d1d # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1024 # sub immediate from rs1 to counter offset
sw x8, 1024 (x23) # store value to put something in memory
lw x10, 1024(x23) # perform operation
RVTEST_SIGUPD(x5, x0, x10, 428)

# Testcase cp_imm_corners
li x11, 0x3a911027 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1795 # sub immediate from rs1 to counter offset
sw x11, 1795 (x26) # store value to put something in memory
lw x30, 1795(x26) # perform operation
RVTEST_SIGUPD(x5, x0, x30, 432)

# Testcase cp_imm_corners
li x9, 0x20692ac8 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -2047 # sub immediate from rs1 to counter offset
sw x9, 2047 (x29) # store value to put something in memory
lw x17, 2047(x29) # perform operation
RVTEST_SIGUPD(x5, x0, x17, 436)

# Testcase cp_imm_corners
li x29, 0xa05db335 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 2047 # increment rs1 by 2047 
addi x4, x4, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sw x29, -2048 (x4) # store value to put something in memory
lw x6, -2048(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x6, 440)

# Testcase cp_imm_corners
li x27, 0x7d6be4b6 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 2047 # sub immediate from rs1 to counter offset
sw x27, -2047 (x10) # store value to put something in memory
lw x24, -2047(x10) # perform operation
RVTEST_SIGUPD(x5, x0, x24, 444)

# Testcase cp_imm_corners
li x18, 0xfd512714 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 2 # sub immediate from rs1 to counter offset
sw x18, -2 (x30) # store value to put something in memory
lw x27, -2(x30) # perform operation
RVTEST_SIGUPD(x5, x0, x27, 448)

# Testcase cp_imm_corners
li x12, 0x8aa15840 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1 # sub immediate from rs1 to counter offset
sw x12, -1 (x29) # store value to put something in memory
lw x1, -1(x29) # perform operation
RVTEST_SIGUPD(x5, x0, x1, 452)

# Testcase cp_gpr/fpr_hazard nohaz test
la x3, scratch
addi x3, x3, -1426
add x29, x1, x11 # perform first operation
lw x8, 1426(x3) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x19, scratch
addi x19, x19, -729
add x8, x29, x15 # perform first operation
lw x16, 729(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x20, scratch
addi x20, x20, 742
add x8, x9, x31 # perform first operation
lw x28, -742(x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x31, scratch
addi x31, x31, -1163
add x31, x31, x0 # perform first operation
lw x26, 1163(x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x15, scratch
addi x15, x15, -192
add x15, x15, x0 # perform first operation
lw x4, 192(x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x29, scratch
addi x29, x29, -1480
add x29, x29, x0 # perform first operation
lw x28, 1480(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x26, scratch
addi x26, x26, -292
add x25, x3, x1 # perform first operation
lw x25, 292(x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x11, scratch
addi x11, x11, 916
add x2, x16, x22 # perform first operation
lw x2, -916(x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x22, scratch
addi x22, x22, -954
add x8, x1, x17 # perform first operation
lw x8, 954(x22) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x16, scratch
addi x16, x16, 818
add x22, x19, x18 # perform first operation
lw x19, -818(x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x18, scratch
addi x18, x18, 1162
add x12, x16, x11 # perform first operation
lw x11, -1162(x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x19, scratch
addi x19, x19, 457
add x21, x29, x17 # perform first operation
lw x10, -457(x19) # perform second (triggering) operation

.EQU SIGSIZE,456


 # testgen_footer.S


write_tohost:
    la t1, tohost
    li t0, 1
    sw t0, 0(t1)
    sw zero, 4(t1)

self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 136

.data 

.section .tohost 
tohost: # write to HTIF
    .dword 0
fromhost:
    .dword 0

.align 4
begin_signature:
    .fill SIGSIZE*8/__riscv_xlen,__riscv_xlen/8,0xdeadbeef
end_signature:

.end
