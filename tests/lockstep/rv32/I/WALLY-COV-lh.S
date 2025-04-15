///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-lh.S
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
li x27, 0xb8581295 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 606 # sub immediate from rs1 to counter offset
sw x27, -606 (x1) # store value to put something in memory
lh x26, -606(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
li x24, 0xa8def561 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -1297 # sub immediate from rs1 to counter offset
sw x24, 1297 (x2) # store value to put something in memory
lh x16, 1297(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 4)

# Testcase cp_rs1 (Test source rs1 = x3)
li x21, 0xa425b02e # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1514 # sub immediate from rs1 to counter offset
sw x21, 1514 (x3) # store value to put something in memory
lh x25, 1514(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0x8d0c2a44 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 804 # sub immediate from rs1 to counter offset
sw x15, -804 (x4) # store value to put something in memory
lh x19, -804(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x19, 12)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0xd0b48425 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 507 # sub immediate from rs1 to counter offset
sw x30, -507 (x5) # store value to put something in memory
lh x3, -507(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x3, 16)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0x0ab5f12c # initialize rs2
la x6, scratch # base address 
addi x6, x6, 365 # sub immediate from rs1 to counter offset
sw x5, -365 (x6) # store value to put something in memory
lh x13, -365(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x13, 20)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x559838d3 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -906 # sub immediate from rs1 to counter offset
sw x11, 906 (x7) # store value to put something in memory
lh x4, 906(x7) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 24)

# Testcase cp_rs1 (Test source rs1 = x8)
li x19, 0x38f97da9 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 196 # sub immediate from rs1 to counter offset
sw x19, -196 (x8) # store value to put something in memory
lh x15, -196(x8) # perform operation
RVTEST_SIGUPD(x5, x0, x15, 28)

# Testcase cp_rs1 (Test source rs1 = x9)
li x20, 0xdafc2218 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 915 # sub immediate from rs1 to counter offset
sw x20, -915 (x9) # store value to put something in memory
lh x14, -915(x9) # perform operation
RVTEST_SIGUPD(x5, x0, x14, 32)

# Testcase cp_rs1 (Test source rs1 = x10)
li x15, 0xd8f3a430 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1994 # sub immediate from rs1 to counter offset
sw x15, 1994 (x10) # store value to put something in memory
lh x22, 1994(x10) # perform operation
RVTEST_SIGUPD(x5, x0, x22, 36)

# Testcase cp_rs1 (Test source rs1 = x11)
li x18, 0x216f1fe3 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 63 # sub immediate from rs1 to counter offset
sw x18, -63 (x11) # store value to put something in memory
lh x2, -63(x11) # perform operation
RVTEST_SIGUPD(x5, x0, x2, 40)

# Testcase cp_rs1 (Test source rs1 = x12)
li x29, 0x258ee0d2 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 576 # sub immediate from rs1 to counter offset
sw x29, -576 (x12) # store value to put something in memory
lh x7, -576(x12) # perform operation
RVTEST_SIGUPD(x5, x0, x7, 44)

# Testcase cp_rs1 (Test source rs1 = x13)
li x15, 0xe6fc77c2 # initialize rs2
la x13, scratch # base address 
addi x13, x13, 694 # sub immediate from rs1 to counter offset
sw x15, -694 (x13) # store value to put something in memory
lh x22, -694(x13) # perform operation
RVTEST_SIGUPD(x5, x0, x22, 48)

# Testcase cp_rs1 (Test source rs1 = x14)
li x1, 0x0f7e3769 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -52 # sub immediate from rs1 to counter offset
sw x1, 52 (x14) # store value to put something in memory
lh x25, 52(x14) # perform operation
RVTEST_SIGUPD(x5, x0, x25, 52)

# Testcase cp_rs1 (Test source rs1 = x15)
li x22, 0x118e3fa4 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -923 # sub immediate from rs1 to counter offset
sw x22, 923 (x15) # store value to put something in memory
lh x13, 923(x15) # perform operation
RVTEST_SIGUPD(x5, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x16)
li x31, 0x6e582cbd # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1292 # sub immediate from rs1 to counter offset
sw x31, 1292 (x16) # store value to put something in memory
lh x26, 1292(x16) # perform operation
RVTEST_SIGUPD(x5, x0, x26, 60)

# Testcase cp_rs1 (Test source rs1 = x17)
li x9, 0xdd2e61b0 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1129 # sub immediate from rs1 to counter offset
sw x9, -1129 (x17) # store value to put something in memory
lh x31, -1129(x17) # perform operation
RVTEST_SIGUPD(x5, x0, x31, 64)

# Testcase cp_rs1 (Test source rs1 = x18)
li x15, 0xfcee463f # initialize rs2
la x18, scratch # base address 
addi x18, x18, -103 # sub immediate from rs1 to counter offset
sw x15, 103 (x18) # store value to put something in memory
lh x28, 103(x18) # perform operation
RVTEST_SIGUPD(x5, x0, x28, 68)

# Testcase cp_rs1 (Test source rs1 = x19)
li x1, 0x38613834 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -532 # sub immediate from rs1 to counter offset
sw x1, 532 (x19) # store value to put something in memory
lh x20, 532(x19) # perform operation
RVTEST_SIGUPD(x5, x0, x20, 72)

# Testcase cp_rs1 (Test source rs1 = x20)
li x3, 0xa712d3c8 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 185 # sub immediate from rs1 to counter offset
sw x3, -185 (x20) # store value to put something in memory
lh x26, -185(x20) # perform operation
RVTEST_SIGUPD(x5, x0, x26, 76)

# Testcase cp_rs1 (Test source rs1 = x21)
li x12, 0x941cc5ae # initialize rs2
la x21, scratch # base address 
addi x21, x21, 479 # sub immediate from rs1 to counter offset
sw x12, -479 (x21) # store value to put something in memory
lh x30, -479(x21) # perform operation
RVTEST_SIGUPD(x5, x0, x30, 80)

# Testcase cp_rs1 (Test source rs1 = x22)
li x3, 0x989af6d6 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1065 # sub immediate from rs1 to counter offset
sw x3, -1065 (x22) # store value to put something in memory
lh x6, -1065(x22) # perform operation
RVTEST_SIGUPD(x5, x0, x6, 84)

# Testcase cp_rs1 (Test source rs1 = x23)
li x7, 0xd8dffa87 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1162 # sub immediate from rs1 to counter offset
sw x7, 1162 (x23) # store value to put something in memory
lh x21, 1162(x23) # perform operation
RVTEST_SIGUPD(x5, x0, x21, 88)

# Testcase cp_rs1 (Test source rs1 = x24)
li x21, 0x420e6a04 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -993 # sub immediate from rs1 to counter offset
sw x21, 993 (x24) # store value to put something in memory
lh x29, 993(x24) # perform operation
RVTEST_SIGUPD(x5, x0, x29, 92)

# Testcase cp_rs1 (Test source rs1 = x25)
li x23, 0x06c2f954 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1462 # sub immediate from rs1 to counter offset
sw x23, -1462 (x25) # store value to put something in memory
lh x29, -1462(x25) # perform operation
RVTEST_SIGUPD(x5, x0, x29, 96)

# Testcase cp_rs1 (Test source rs1 = x26)
li x29, 0xee3ea8f5 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 53 # sub immediate from rs1 to counter offset
sw x29, -53 (x26) # store value to put something in memory
lh x9, -53(x26) # perform operation
RVTEST_SIGUPD(x5, x0, x9, 100)

# Testcase cp_rs1 (Test source rs1 = x27)
li x9, 0xe9c1eac0 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1600 # sub immediate from rs1 to counter offset
sw x9, 1600 (x27) # store value to put something in memory
lh x22, 1600(x27) # perform operation
RVTEST_SIGUPD(x5, x0, x22, 104)

# Testcase cp_rs1 (Test source rs1 = x28)
li x8, 0xa0c0917f # initialize rs2
la x28, scratch # base address 
addi x28, x28, 168 # sub immediate from rs1 to counter offset
sw x8, -168 (x28) # store value to put something in memory
lh x18, -168(x28) # perform operation
RVTEST_SIGUPD(x5, x0, x18, 108)

# Testcase cp_rs1 (Test source rs1 = x29)
li x31, 0x8f65fe59 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -946 # sub immediate from rs1 to counter offset
sw x31, 946 (x29) # store value to put something in memory
lh x22, 946(x29) # perform operation
RVTEST_SIGUPD(x5, x0, x22, 112)

# Testcase cp_rs1 (Test source rs1 = x30)
li x2, 0x462284dd # initialize rs2
la x30, scratch # base address 
addi x30, x30, 1647 # sub immediate from rs1 to counter offset
sw x2, -1647 (x30) # store value to put something in memory
lh x9, -1647(x30) # perform operation
RVTEST_SIGUPD(x5, x0, x9, 116)

# Testcase cp_rs1 (Test source rs1 = x31)
li x16, 0x1c584eae # initialize rs2
la x31, scratch # base address 
addi x31, x31, 709 # sub immediate from rs1 to counter offset
sw x16, -709 (x31) # store value to put something in memory
lh x19, -709(x31) # perform operation
RVTEST_SIGUPD(x5, x0, x19, 120)

# Testcase cp_rd (Test destination rd = x0)
li x21, 0xfafe99ea # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1383 # sub immediate from rs1 to counter offset
sw x21, 1383 (x16) # store value to put something in memory
lh x0, 1383(x16) # perform operation
RVTEST_SIGUPD(x5, x0, x0, 124)

# Testcase cp_rd (Test destination rd = x1)
li x4, 0x7fa8175c # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1644 # sub immediate from rs1 to counter offset
sw x4, 1644 (x22) # store value to put something in memory
lh x1, 1644(x22) # perform operation
RVTEST_SIGUPD(x5, x0, x1, 128)

# Testcase cp_rd (Test destination rd = x2)
li x6, 0x426ad962 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2013 # sub immediate from rs1 to counter offset
sw x6, 2013 (x9) # store value to put something in memory
lh x2, 2013(x9) # perform operation
RVTEST_SIGUPD(x5, x0, x2, 132)

# Testcase cp_rd (Test destination rd = x3)
li x13, 0x6a7df7f1 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1601 # sub immediate from rs1 to counter offset
sw x13, 1601 (x6) # store value to put something in memory
lh x3, 1601(x6) # perform operation
RVTEST_SIGUPD(x5, x0, x3, 136)

# Testcase cp_rd (Test destination rd = x4)
li x21, 0x2bd3ecde # initialize rs2
la x17, scratch # base address 
addi x17, x17, 1422 # sub immediate from rs1 to counter offset
sw x21, -1422 (x17) # store value to put something in memory
lh x4, -1422(x17) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 140)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x823830b1 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1650 # sub immediate from rs1 to counter offset
sw x1, -1650 (x23) # store value to put something in memory
lh x5, -1650(x23) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 144)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x7738f7af # initialize rs2
la x7, scratch # base address 
addi x7, x7, -677 # sub immediate from rs1 to counter offset
sw x29, 677 (x7) # store value to put something in memory
lh x6, 677(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 148)

# Testcase cp_rd (Test destination rd = x7)
li x2, 0x02b4bec3 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 433 # sub immediate from rs1 to counter offset
sw x2, -433 (x5) # store value to put something in memory
lh x7, -433(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 152)

# Testcase cp_rd (Test destination rd = x8)
li x6, 0x4f6a7e87 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1238 # sub immediate from rs1 to counter offset
sw x6, 1238 (x15) # store value to put something in memory
lh x8, 1238(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 156)

# Testcase cp_rd (Test destination rd = x9)
li x22, 0xd4c36cd8 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -910 # sub immediate from rs1 to counter offset
sw x22, 910 (x24) # store value to put something in memory
lh x9, 910(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rd (Test destination rd = x10)
li x5, 0x5fa200e8 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -383 # sub immediate from rs1 to counter offset
sw x5, 383 (x17) # store value to put something in memory
lh x10, 383(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 164)

# Testcase cp_rd (Test destination rd = x11)
li x15, 0x968542c4 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1325 # sub immediate from rs1 to counter offset
sw x15, 1325 (x20) # store value to put something in memory
lh x11, 1325(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_rd (Test destination rd = x12)
li x28, 0x9043a243 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -302 # sub immediate from rs1 to counter offset
sw x28, 302 (x11) # store value to put something in memory
lh x12, 302(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 172)

# Testcase cp_rd (Test destination rd = x13)
li x5, 0xb2965e51 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1514 # sub immediate from rs1 to counter offset
sw x5, -1514 (x20) # store value to put something in memory
lh x13, -1514(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_rd (Test destination rd = x14)
li x31, 0x8e094738 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1379 # sub immediate from rs1 to counter offset
sw x31, 1379 (x18) # store value to put something in memory
lh x14, 1379(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 180)

# Testcase cp_rd (Test destination rd = x15)
li x23, 0xf63d0e53 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -553 # sub immediate from rs1 to counter offset
sw x23, 553 (x9) # store value to put something in memory
lh x15, 553(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_rd (Test destination rd = x16)
li x30, 0x3235f290 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 929 # sub immediate from rs1 to counter offset
sw x30, -929 (x23) # store value to put something in memory
lh x16, -929(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 188)

# Testcase cp_rd (Test destination rd = x17)
li x22, 0x56274532 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 939 # sub immediate from rs1 to counter offset
sw x22, -939 (x9) # store value to put something in memory
lh x17, -939(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rd (Test destination rd = x18)
li x7, 0xbefa88e7 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 123 # sub immediate from rs1 to counter offset
sw x7, -123 (x14) # store value to put something in memory
lh x18, -123(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 196)

# Testcase cp_rd (Test destination rd = x19)
li x17, 0x0651e680 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 955 # sub immediate from rs1 to counter offset
sw x17, -955 (x24) # store value to put something in memory
lh x19, -955(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 200)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0x62520abf # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1778 # sub immediate from rs1 to counter offset
sw x2, 1778 (x30) # store value to put something in memory
lh x20, 1778(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 204)

# Testcase cp_rd (Test destination rd = x21)
li x27, 0xc6872bbc # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1607 # sub immediate from rs1 to counter offset
sw x27, 1607 (x20) # store value to put something in memory
lh x21, 1607(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 208)

# Testcase cp_rd (Test destination rd = x22)
li x15, 0x7fcffa78 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1520 # sub immediate from rs1 to counter offset
sw x15, 1520 (x20) # store value to put something in memory
lh x22, 1520(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 212)

# Testcase cp_rd (Test destination rd = x23)
li x12, 0xaaaa4ace # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1991 # sub immediate from rs1 to counter offset
sw x12, -1991 (x10) # store value to put something in memory
lh x23, -1991(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cp_rd (Test destination rd = x24)
li x29, 0xacc8f1ab # initialize rs2
la x5, scratch # base address 
addi x5, x5, -372 # sub immediate from rs1 to counter offset
sw x29, 372 (x5) # store value to put something in memory
lh x24, 372(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 220)

# Testcase cp_rd (Test destination rd = x25)
li x21, 0x60826de4 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1130 # sub immediate from rs1 to counter offset
sw x21, -1130 (x8) # store value to put something in memory
lh x25, -1130(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 224)

# Testcase cp_rd (Test destination rd = x26)
li x2, 0x371382a3 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1194 # sub immediate from rs1 to counter offset
sw x2, -1194 (x3) # store value to put something in memory
lh x26, -1194(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 228)

# Testcase cp_rd (Test destination rd = x27)
li x21, 0x90d7154b # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1849 # sub immediate from rs1 to counter offset
sw x21, 1849 (x10) # store value to put something in memory
lh x27, 1849(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rd (Test destination rd = x28)
li x25, 0xd57d6f8c # initialize rs2
la x21, scratch # base address 
addi x21, x21, 975 # sub immediate from rs1 to counter offset
sw x25, -975 (x21) # store value to put something in memory
lh x28, -975(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 236)

# Testcase cp_rd (Test destination rd = x29)
li x11, 0x2602353a # initialize rs2
la x25, scratch # base address 
addi x25, x25, 2046 # sub immediate from rs1 to counter offset
sw x11, -2046 (x25) # store value to put something in memory
lh x29, -2046(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 240)

# Testcase cp_rd (Test destination rd = x30)
li x20, 0x6430efba # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1512 # sub immediate from rs1 to counter offset
sw x20, -1512 (x5) # store value to put something in memory
lh x30, -1512(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 244)

# Testcase cp_rd (Test destination rd = x31)
li x19, 0xa948c5c2 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 464 # sub immediate from rs1 to counter offset
sw x19, -464 (x10) # store value to put something in memory
lh x31, -464(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x27, 0x93fdfc60 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1930 # sub immediate from rs1 to counter offset
sw x27, -1930 (x1) # store value to put something in memory
lh x1, -1930(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x23, 0xc7991ced # initialize rs2
la x2, scratch # base address 
addi x2, x2, -905 # sub immediate from rs1 to counter offset
sw x23, 905 (x2) # store value to put something in memory
lh x2, 905(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x14, 0x3b0b88ff # initialize rs2
la x3, scratch # base address 
addi x3, x3, 538 # sub immediate from rs1 to counter offset
sw x14, -538 (x3) # store value to put something in memory
lh x3, -538(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0xf807183a # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1240 # sub immediate from rs1 to counter offset
sw x6, 1240 (x4) # store value to put something in memory
lh x4, 1240(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x22, 0xc4f98458 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -1275 # sub immediate from rs1 to counter offset
sw x22, 1275 (x5) # store value to put something in memory
lh x5, 1275(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0xacde902f # initialize rs2
la x6, scratch # base address 
addi x6, x6, 856 # sub immediate from rs1 to counter offset
sw x10, -856 (x6) # store value to put something in memory
lh x6, -856(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0xafff64dd # initialize rs2
la x7, scratch # base address 
addi x7, x7, -833 # sub immediate from rs1 to counter offset
sw x22, 833 (x7) # store value to put something in memory
lh x7, 833(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x26, 0xfa04e1f4 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 937 # sub immediate from rs1 to counter offset
sw x26, -937 (x8) # store value to put something in memory
lh x8, -937(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x29, 0xcbe960a6 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -933 # sub immediate from rs1 to counter offset
sw x29, 933 (x9) # store value to put something in memory
lh x9, 933(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x30, 0x0f886351 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -135 # sub immediate from rs1 to counter offset
sw x30, 135 (x10) # store value to put something in memory
lh x10, 135(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x18, 0x3239992d # initialize rs2
la x11, scratch # base address 
addi x11, x11, 940 # sub immediate from rs1 to counter offset
sw x18, -940 (x11) # store value to put something in memory
lh x11, -940(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x27, 0x28b03de5 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1254 # sub immediate from rs1 to counter offset
sw x27, 1254 (x12) # store value to put something in memory
lh x12, 1254(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x18, 0x9cf94f30 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -881 # sub immediate from rs1 to counter offset
sw x18, 881 (x13) # store value to put something in memory
lh x13, 881(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x18, 0x5ec5233e # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1177 # sub immediate from rs1 to counter offset
sw x18, -1177 (x14) # store value to put something in memory
lh x14, -1177(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x23, 0x287d0e74 # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1615 # sub immediate from rs1 to counter offset
sw x23, 1615 (x15) # store value to put something in memory
lh x15, 1615(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x7c5b509a # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1915 # sub immediate from rs1 to counter offset
sw x16, -1915 (x16) # store value to put something in memory
lh x16, -1915(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x27, 0x2dcfeaf8 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1077 # sub immediate from rs1 to counter offset
sw x27, 1077 (x17) # store value to put something in memory
lh x17, 1077(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x12, 0xa690b00b # initialize rs2
la x18, scratch # base address 
addi x18, x18, 304 # sub immediate from rs1 to counter offset
sw x12, -304 (x18) # store value to put something in memory
lh x18, -304(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x5, 0x54bb0a1e # initialize rs2
la x19, scratch # base address 
addi x19, x19, -734 # sub immediate from rs1 to counter offset
sw x5, 734 (x19) # store value to put something in memory
lh x19, 734(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x26, 0x6c365a15 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 2003 # sub immediate from rs1 to counter offset
sw x26, -2003 (x20) # store value to put something in memory
lh x20, -2003(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x11, 0x5f7434f9 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 989 # sub immediate from rs1 to counter offset
sw x11, -989 (x21) # store value to put something in memory
lh x21, -989(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x31, 0x8524adc0 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -394 # sub immediate from rs1 to counter offset
sw x31, 394 (x22) # store value to put something in memory
lh x22, 394(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x7, 0x47d5682b # initialize rs2
la x23, scratch # base address 
addi x23, x23, 2013 # sub immediate from rs1 to counter offset
sw x7, -2013 (x23) # store value to put something in memory
lh x23, -2013(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x9, 0xb98b4dee # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1513 # sub immediate from rs1 to counter offset
sw x9, 1513 (x24) # store value to put something in memory
lh x24, 1513(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x18, 0x9a0948c9 # initialize rs2
la x25, scratch # base address 
addi x25, x25, -1262 # sub immediate from rs1 to counter offset
sw x18, 1262 (x25) # store value to put something in memory
lh x25, 1262(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x28, 0x272296f1 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1119 # sub immediate from rs1 to counter offset
sw x28, 1119 (x26) # store value to put something in memory
lh x26, 1119(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x31, 0x32f28e23 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1429 # sub immediate from rs1 to counter offset
sw x31, 1429 (x27) # store value to put something in memory
lh x27, 1429(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x23, 0xc602e3a8 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -812 # sub immediate from rs1 to counter offset
sw x23, 812 (x28) # store value to put something in memory
lh x28, 812(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x21, 0x5234a26a # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1785 # sub immediate from rs1 to counter offset
sw x21, 1785 (x29) # store value to put something in memory
lh x29, 1785(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x16, 0x849564a0 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 51 # sub immediate from rs1 to counter offset
sw x16, -51 (x30) # store value to put something in memory
lh x30, -51(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x22, 0xbed86cfa # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1972 # sub immediate from rs1 to counter offset
sw x22, 1972 (x31) # store value to put something in memory
lh x31, 1972(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 372)

# Testcase cp_imm_corners
li x16, 0x3d3a643f # initialize rs2
la x9, scratch # base address 
addi x9, x9, 0 # sub immediate from rs1 to counter offset
sw x16, 0 (x9) # store value to put something in memory
lh x28, 0(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 376)

# Testcase cp_imm_corners
li x14, 0x67caf516 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1 # sub immediate from rs1 to counter offset
sw x14, 1 (x30) # store value to put something in memory
lh x5, 1(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 380)

# Testcase cp_imm_corners
li x9, 0x28f72ccc # initialize rs2
la x29, scratch # base address 
addi x29, x29, -2 # sub immediate from rs1 to counter offset
sw x9, 2 (x29) # store value to put something in memory
lh x28, 2(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 384)

# Testcase cp_imm_corners
li x27, 0x6307a102 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -3 # sub immediate from rs1 to counter offset
sw x27, 3 (x24) # store value to put something in memory
lh x26, 3(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 388)

# Testcase cp_imm_corners
li x6, 0x4d8270b7 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -4 # sub immediate from rs1 to counter offset
sw x6, 4 (x19) # store value to put something in memory
lh x22, 4(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cp_imm_corners
li x21, 0x1613ed7e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -8 # sub immediate from rs1 to counter offset
sw x21, 8 (x9) # store value to put something in memory
lh x30, 8(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 396)

# Testcase cp_imm_corners
li x23, 0x17d12e0b # initialize rs2
la x29, scratch # base address 
addi x29, x29, -16 # sub immediate from rs1 to counter offset
sw x23, 16 (x29) # store value to put something in memory
lh x16, 16(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 400)

# Testcase cp_imm_corners
li x14, 0x399ae1af # initialize rs2
la x10, scratch # base address 
addi x10, x10, -32 # sub immediate from rs1 to counter offset
sw x14, 32 (x10) # store value to put something in memory
lh x21, 32(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 404)

# Testcase cp_imm_corners
li x31, 0x0acaea14 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -64 # sub immediate from rs1 to counter offset
sw x31, 64 (x7) # store value to put something in memory
lh x8, 64(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_imm_corners
li x14, 0x7f62a8b7 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -128 # sub immediate from rs1 to counter offset
sw x14, 128 (x30) # store value to put something in memory
lh x7, 128(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 412)

# Testcase cp_imm_corners
li x9, 0xa61c60af # initialize rs2
la x26, scratch # base address 
addi x26, x26, -256 # sub immediate from rs1 to counter offset
sw x9, 256 (x26) # store value to put something in memory
lh x14, 256(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 416)

# Testcase cp_imm_corners
li x14, 0xc73c4349 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -512 # sub immediate from rs1 to counter offset
sw x14, 512 (x5) # store value to put something in memory
lh x18, 512(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 420)

# Testcase cp_imm_corners
li x22, 0xc6c0f107 # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1023 # sub immediate from rs1 to counter offset
sw x22, 1023 (x16) # store value to put something in memory
lh x12, 1023(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 424)

# Testcase cp_imm_corners
li x13, 0x0910939d # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1024 # sub immediate from rs1 to counter offset
sw x13, 1024 (x19) # store value to put something in memory
lh x5, 1024(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 428)

# Testcase cp_imm_corners
li x27, 0x4e986601 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1795 # sub immediate from rs1 to counter offset
sw x27, 1795 (x14) # store value to put something in memory
lh x8, 1795(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 432)

# Testcase cp_imm_corners
li x6, 0x5c54b1f0 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -2047 # sub immediate from rs1 to counter offset
sw x6, 2047 (x7) # store value to put something in memory
lh x2, 2047(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 436)

# Testcase cp_imm_corners
li x16, 0xb16af3f3 # initialize rs2
la x7, scratch # base address 
addi x7, x7, 2047 # increment rs1 by 2047 
addi x7, x7, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sw x16, -2048 (x7) # store value to put something in memory
lh x8, -2048(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_imm_corners
li x30, 0x19f778da # initialize rs2
la x13, scratch # base address 
addi x13, x13, 2047 # sub immediate from rs1 to counter offset
sw x30, -2047 (x13) # store value to put something in memory
lh x5, -2047(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 444)

# Testcase cp_imm_corners
li x29, 0xb407d2b7 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 2 # sub immediate from rs1 to counter offset
sw x29, -2 (x16) # store value to put something in memory
lh x23, -2(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 448)

# Testcase cp_imm_corners
li x15, 0x367b08fe # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1 # sub immediate from rs1 to counter offset
sw x15, -1 (x1) # store value to put something in memory
lh x19, -1(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 452)

# Testcase cp_gpr/fpr_hazard nohaz test
la x2, scratch
addi x2, x2, 1712
add x3, x14, x5 # perform first operation
lh x27, -1712(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x27, scratch
addi x27, x27, 615
add x8, x16, x10 # perform first operation
lh x28, -615(x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x13, scratch
addi x13, x13, -1264
add x12, x2, x3 # perform first operation
lh x29, 1264(x13) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x30, scratch
addi x30, x30, -633
add x30, x30, x0 # perform first operation
lh x15, 633(x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x28, scratch
addi x28, x28, -1503
add x28, x28, x0 # perform first operation
lh x26, 1503(x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x7, scratch
addi x7, x7, -1623
add x7, x7, x0 # perform first operation
lh x13, 1623(x7) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x10, scratch
addi x10, x10, 1056
add x30, x18, x7 # perform first operation
lh x30, -1056(x10) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x26, scratch
addi x26, x26, 1990
add x7, x15, x10 # perform first operation
lh x7, -1990(x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x20, scratch
addi x20, x20, -302
add x9, x24, x2 # perform first operation
lh x9, 302(x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x2, scratch
addi x2, x2, -1713
add x6, x30, x12 # perform first operation
lh x30, 1713(x2) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x31, scratch
addi x31, x31, -2015
add x20, x28, x23 # perform first operation
lh x23, 2015(x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x15, scratch
addi x15, x15, -848
add x2, x19, x13 # perform first operation
lh x25, 848(x15) # perform second (triggering) operation

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
