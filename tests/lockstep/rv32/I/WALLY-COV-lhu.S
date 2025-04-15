///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-lhu.S
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
li x2, 0xb355c276 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1191 # sub immediate from rs1 to counter offset
sw x2, -1191 (x1) # store value to put something in memory
lhu x7, -1191(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
li x29, 0x174fd9de # initialize rs2
la x2, scratch # base address 
addi x2, x2, -589 # sub immediate from rs1 to counter offset
sw x29, 589 (x2) # store value to put something in memory
lhu x6, 589(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 4)

# Testcase cp_rs1 (Test source rs1 = x3)
li x15, 0x252df801 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -2018 # sub immediate from rs1 to counter offset
sw x15, 2018 (x3) # store value to put something in memory
lhu x12, 2018(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 8)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0x0ca39ddd # initialize rs2
la x4, scratch # base address 
addi x4, x4, 967 # sub immediate from rs1 to counter offset
sw x19, -967 (x4) # store value to put something in memory
lhu x28, -967(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x28, 12)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0x819b4062 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1952 # sub immediate from rs1 to counter offset
sw x15, -1952 (x5) # store value to put something in memory
lhu x23, -1952(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x23, 16)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0xfcacd057 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1703 # sub immediate from rs1 to counter offset
sw x29, 1703 (x6) # store value to put something in memory
lhu x13, 1703(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x13, 20)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0xf0c3eeb1 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1872 # sub immediate from rs1 to counter offset
sw x18, 1872 (x7) # store value to put something in memory
lhu x8, 1872(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1 (Test source rs1 = x8)
li x9, 0x09e80e04 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -677 # sub immediate from rs1 to counter offset
sw x9, 677 (x8) # store value to put something in memory
lhu x5, 677(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 28)

# Testcase cp_rs1 (Test source rs1 = x9)
li x23, 0x226ca941 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1470 # sub immediate from rs1 to counter offset
sw x23, 1470 (x9) # store value to put something in memory
lhu x7, 1470(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 32)

# Testcase cp_rs1 (Test source rs1 = x10)
li x27, 0xcddee9bb # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1382 # sub immediate from rs1 to counter offset
sw x27, -1382 (x10) # store value to put something in memory
lhu x26, -1382(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 36)

# Testcase cp_rs1 (Test source rs1 = x11)
li x16, 0x02002b4d # initialize rs2
la x11, scratch # base address 
addi x11, x11, 645 # sub immediate from rs1 to counter offset
sw x16, -645 (x11) # store value to put something in memory
lhu x24, -645(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 40)

# Testcase cp_rs1 (Test source rs1 = x12)
li x18, 0x064a6118 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -354 # sub immediate from rs1 to counter offset
sw x18, 354 (x12) # store value to put something in memory
lhu x15, 354(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 44)

# Testcase cp_rs1 (Test source rs1 = x13)
li x19, 0x5646a8a8 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -118 # sub immediate from rs1 to counter offset
sw x19, 118 (x13) # store value to put something in memory
lhu x3, 118(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 48)

# Testcase cp_rs1 (Test source rs1 = x14)
li x28, 0xddda7315 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -779 # sub immediate from rs1 to counter offset
sw x28, 779 (x14) # store value to put something in memory
lhu x20, 779(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 52)

# Testcase cp_rs1 (Test source rs1 = x15)
li x21, 0x33489a8c # initialize rs2
la x15, scratch # base address 
addi x15, x15, -657 # sub immediate from rs1 to counter offset
sw x21, 657 (x15) # store value to put something in memory
lhu x25, 657(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 56)

# Testcase cp_rs1 (Test source rs1 = x16)
li x5, 0x441bd75c # initialize rs2
la x16, scratch # base address 
addi x16, x16, 1990 # sub immediate from rs1 to counter offset
sw x5, -1990 (x16) # store value to put something in memory
lhu x17, -1990(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 60)

# Testcase cp_rs1 (Test source rs1 = x17)
li x2, 0x8ff9474f # initialize rs2
la x17, scratch # base address 
addi x17, x17, -2018 # sub immediate from rs1 to counter offset
sw x2, 2018 (x17) # store value to put something in memory
lhu x6, 2018(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cp_rs1 (Test source rs1 = x18)
li x26, 0xae116aea # initialize rs2
la x18, scratch # base address 
addi x18, x18, 895 # sub immediate from rs1 to counter offset
sw x26, -895 (x18) # store value to put something in memory
lhu x5, -895(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 68)

# Testcase cp_rs1 (Test source rs1 = x19)
li x1, 0x1c62a636 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1926 # sub immediate from rs1 to counter offset
sw x1, 1926 (x19) # store value to put something in memory
lhu x18, 1926(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rs1 (Test source rs1 = x20)
li x3, 0x9ad9838d # initialize rs2
la x20, scratch # base address 
addi x20, x20, 64 # sub immediate from rs1 to counter offset
sw x3, -64 (x20) # store value to put something in memory
lhu x5, -64(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 76)

# Testcase cp_rs1 (Test source rs1 = x21)
li x11, 0x5f81521a # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1031 # sub immediate from rs1 to counter offset
sw x11, -1031 (x21) # store value to put something in memory
lhu x10, -1031(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 80)

# Testcase cp_rs1 (Test source rs1 = x22)
li x3, 0xb0384bf5 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -13 # sub immediate from rs1 to counter offset
sw x3, 13 (x22) # store value to put something in memory
lhu x14, 13(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 84)

# Testcase cp_rs1 (Test source rs1 = x23)
li x2, 0x2b903f0f # initialize rs2
la x23, scratch # base address 
addi x23, x23, -460 # sub immediate from rs1 to counter offset
sw x2, 460 (x23) # store value to put something in memory
lhu x30, 460(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 88)

# Testcase cp_rs1 (Test source rs1 = x24)
li x15, 0x97db140e # initialize rs2
la x24, scratch # base address 
addi x24, x24, -1139 # sub immediate from rs1 to counter offset
sw x15, 1139 (x24) # store value to put something in memory
lhu x21, 1139(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 92)

# Testcase cp_rs1 (Test source rs1 = x25)
li x27, 0x4fdbfa08 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1430 # sub immediate from rs1 to counter offset
sw x27, -1430 (x25) # store value to put something in memory
lhu x3, -1430(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cp_rs1 (Test source rs1 = x26)
li x21, 0xed016ab7 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -2013 # sub immediate from rs1 to counter offset
sw x21, 2013 (x26) # store value to put something in memory
lhu x3, 2013(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 100)

# Testcase cp_rs1 (Test source rs1 = x27)
li x8, 0xab709996 # initialize rs2
la x27, scratch # base address 
addi x27, x27, 607 # sub immediate from rs1 to counter offset
sw x8, -607 (x27) # store value to put something in memory
lhu x23, -607(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 104)

# Testcase cp_rs1 (Test source rs1 = x28)
li x25, 0xfd0f67d6 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -1 # sub immediate from rs1 to counter offset
sw x25, 1 (x28) # store value to put something in memory
lhu x14, 1(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 108)

# Testcase cp_rs1 (Test source rs1 = x29)
li x31, 0x0c3542f7 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 128 # sub immediate from rs1 to counter offset
sw x31, -128 (x29) # store value to put something in memory
lhu x2, -128(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x30)
li x18, 0x14f3907c # initialize rs2
la x30, scratch # base address 
addi x30, x30, -2019 # sub immediate from rs1 to counter offset
sw x18, 2019 (x30) # store value to put something in memory
lhu x15, 2019(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 116)

# Testcase cp_rs1 (Test source rs1 = x31)
li x16, 0x07ea952b # initialize rs2
la x31, scratch # base address 
addi x31, x31, -1879 # sub immediate from rs1 to counter offset
sw x16, 1879 (x31) # store value to put something in memory
lhu x17, 1879(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0x8415baab # initialize rs2
la x12, scratch # base address 
addi x12, x12, -880 # sub immediate from rs1 to counter offset
sw x10, 880 (x12) # store value to put something in memory
lhu x0, 880(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 124)

# Testcase cp_rd (Test destination rd = x1)
li x2, 0x3934316f # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1720 # sub immediate from rs1 to counter offset
sw x2, -1720 (x31) # store value to put something in memory
lhu x1, -1720(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rd (Test destination rd = x2)
li x29, 0x2aba1e46 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1332 # sub immediate from rs1 to counter offset
sw x29, 1332 (x22) # store value to put something in memory
lhu x2, 1332(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 132)

# Testcase cp_rd (Test destination rd = x3)
li x8, 0xd8fd5f25 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 549 # sub immediate from rs1 to counter offset
sw x8, -549 (x18) # store value to put something in memory
lhu x3, -549(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 136)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x26, 0x367a76fa # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1749 # sub immediate from rs1 to counter offset
sw x26, 1749 (x19) # store value to put something in memory
lhu x4, 1749(x19) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 140)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0x190a3bab # initialize rs2
la x18, scratch # base address 
addi x18, x18, 581 # sub immediate from rs1 to counter offset
sw x24, -581 (x18) # store value to put something in memory
lhu x5, -581(x18) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 144)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0xfaedea00 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1927 # sub immediate from rs1 to counter offset
sw x13, -1927 (x4) # store value to put something in memory
lhu x6, -1927(x4) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 148)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x364d65d7 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1468 # sub immediate from rs1 to counter offset
sw x11, -1468 (x9) # store value to put something in memory
lhu x7, -1468(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 152)

# Testcase cp_rd (Test destination rd = x8)
li x22, 0xccee7ff2 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 20 # sub immediate from rs1 to counter offset
sw x22, -20 (x24) # store value to put something in memory
lhu x8, -20(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 156)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xdac3afc6 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1678 # sub immediate from rs1 to counter offset
sw x9, -1678 (x19) # store value to put something in memory
lhu x9, -1678(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rd (Test destination rd = x10)
li x31, 0xb368ddf5 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 265 # sub immediate from rs1 to counter offset
sw x31, -265 (x25) # store value to put something in memory
lhu x10, -265(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 164)

# Testcase cp_rd (Test destination rd = x11)
li x31, 0xf309f43a # initialize rs2
la x1, scratch # base address 
addi x1, x1, 121 # sub immediate from rs1 to counter offset
sw x31, -121 (x1) # store value to put something in memory
lhu x11, -121(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_rd (Test destination rd = x12)
li x24, 0x1cff7fad # initialize rs2
la x5, scratch # base address 
addi x5, x5, -64 # sub immediate from rs1 to counter offset
sw x24, 64 (x5) # store value to put something in memory
lhu x12, 64(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 172)

# Testcase cp_rd (Test destination rd = x13)
li x31, 0xada058f5 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 446 # sub immediate from rs1 to counter offset
sw x31, -446 (x5) # store value to put something in memory
lhu x13, -446(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_rd (Test destination rd = x14)
li x3, 0x7568e298 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1924 # sub immediate from rs1 to counter offset
sw x3, 1924 (x14) # store value to put something in memory
lhu x14, 1924(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 180)

# Testcase cp_rd (Test destination rd = x15)
li x2, 0x27b747a0 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1180 # sub immediate from rs1 to counter offset
sw x2, 1180 (x7) # store value to put something in memory
lhu x15, 1180(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_rd (Test destination rd = x16)
li x23, 0x4236ff63 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1566 # sub immediate from rs1 to counter offset
sw x23, -1566 (x3) # store value to put something in memory
lhu x16, -1566(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 188)

# Testcase cp_rd (Test destination rd = x17)
li x3, 0xd4605b92 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -447 # sub immediate from rs1 to counter offset
sw x3, 447 (x22) # store value to put something in memory
lhu x17, 447(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rd (Test destination rd = x18)
li x28, 0x014497d6 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 208 # sub immediate from rs1 to counter offset
sw x28, -208 (x26) # store value to put something in memory
lhu x18, -208(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 196)

# Testcase cp_rd (Test destination rd = x19)
li x8, 0x91f3fd8d # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1027 # sub immediate from rs1 to counter offset
sw x8, 1027 (x9) # store value to put something in memory
lhu x19, 1027(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 200)

# Testcase cp_rd (Test destination rd = x20)
li x13, 0xc39d4d58 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -788 # sub immediate from rs1 to counter offset
sw x13, 788 (x19) # store value to put something in memory
lhu x20, 788(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 204)

# Testcase cp_rd (Test destination rd = x21)
li x28, 0x34c24519 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -638 # sub immediate from rs1 to counter offset
sw x28, 638 (x5) # store value to put something in memory
lhu x21, 638(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 208)

# Testcase cp_rd (Test destination rd = x22)
li x31, 0x93512706 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -306 # sub immediate from rs1 to counter offset
sw x31, 306 (x6) # store value to put something in memory
lhu x22, 306(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 212)

# Testcase cp_rd (Test destination rd = x23)
li x1, 0x4086b7d2 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1931 # sub immediate from rs1 to counter offset
sw x1, 1931 (x23) # store value to put something in memory
lhu x23, 1931(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cp_rd (Test destination rd = x24)
li x25, 0xa8edb1d0 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 1593 # sub immediate from rs1 to counter offset
sw x25, -1593 (x11) # store value to put something in memory
lhu x24, -1593(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 220)

# Testcase cp_rd (Test destination rd = x25)
li x10, 0x31ab51cd # initialize rs2
la x15, scratch # base address 
addi x15, x15, -682 # sub immediate from rs1 to counter offset
sw x10, 682 (x15) # store value to put something in memory
lhu x25, 682(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 224)

# Testcase cp_rd (Test destination rd = x26)
li x9, 0x8b3f0c53 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -519 # sub immediate from rs1 to counter offset
sw x9, 519 (x18) # store value to put something in memory
lhu x26, 519(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 228)

# Testcase cp_rd (Test destination rd = x27)
li x3, 0xccf84186 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -997 # sub immediate from rs1 to counter offset
sw x3, 997 (x18) # store value to put something in memory
lhu x27, 997(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rd (Test destination rd = x28)
li x5, 0xf5a11118 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 334 # sub immediate from rs1 to counter offset
sw x5, -334 (x21) # store value to put something in memory
lhu x28, -334(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 236)

# Testcase cp_rd (Test destination rd = x29)
li x3, 0x2d568fcc # initialize rs2
la x21, scratch # base address 
addi x21, x21, 669 # sub immediate from rs1 to counter offset
sw x3, -669 (x21) # store value to put something in memory
lhu x29, -669(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 240)

# Testcase cp_rd (Test destination rd = x30)
li x1, 0x73344e25 # initialize rs2
la x17, scratch # base address 
addi x17, x17, 910 # sub immediate from rs1 to counter offset
sw x1, -910 (x17) # store value to put something in memory
lhu x30, -910(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 244)

# Testcase cp_rd (Test destination rd = x31)
li x2, 0xf26b6a4c # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1836 # sub immediate from rs1 to counter offset
sw x2, -1836 (x3) # store value to put something in memory
lhu x31, -1836(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x13, 0x514a7003 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1155 # sub immediate from rs1 to counter offset
sw x13, -1155 (x1) # store value to put something in memory
lhu x1, -1155(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x29, 0x3bb569b9 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -392 # sub immediate from rs1 to counter offset
sw x29, 392 (x2) # store value to put something in memory
lhu x2, 392(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x16, 0xf503db35 # initialize rs2
la x3, scratch # base address 
addi x3, x3, -228 # sub immediate from rs1 to counter offset
sw x16, 228 (x3) # store value to put something in memory
lhu x3, 228(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0xd7c933d1 # initialize rs2
la x4, scratch # base address 
addi x4, x4, 1231 # sub immediate from rs1 to counter offset
sw x10, -1231 (x4) # store value to put something in memory
lhu x4, -1231(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0xadd6a038 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 1220 # sub immediate from rs1 to counter offset
sw x27, -1220 (x5) # store value to put something in memory
lhu x5, -1220(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x75e67447 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1788 # sub immediate from rs1 to counter offset
sw x29, -1788 (x6) # store value to put something in memory
lhu x6, -1788(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0xa670efba # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1780 # sub immediate from rs1 to counter offset
sw x27, 1780 (x7) # store value to put something in memory
lhu x7, 1780(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x22, 0x4c6511bb # initialize rs2
la x8, scratch # base address 
addi x8, x8, 953 # sub immediate from rs1 to counter offset
sw x22, -953 (x8) # store value to put something in memory
lhu x8, -953(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x16, 0x09b41cfc # initialize rs2
la x9, scratch # base address 
addi x9, x9, 317 # sub immediate from rs1 to counter offset
sw x16, -317 (x9) # store value to put something in memory
lhu x9, -317(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x11, 0x98b5dcb4 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -5 # sub immediate from rs1 to counter offset
sw x11, 5 (x10) # store value to put something in memory
lhu x10, 5(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x22, 0xf1585e7d # initialize rs2
la x11, scratch # base address 
addi x11, x11, -102 # sub immediate from rs1 to counter offset
sw x22, 102 (x11) # store value to put something in memory
lhu x11, 102(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x30, 0x9b86f3f8 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -631 # sub immediate from rs1 to counter offset
sw x30, 631 (x12) # store value to put something in memory
lhu x12, 631(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x2, 0x5aee5993 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1353 # sub immediate from rs1 to counter offset
sw x2, 1353 (x13) # store value to put something in memory
lhu x13, 1353(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x8, 0x996ed4c7 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -1417 # sub immediate from rs1 to counter offset
sw x8, 1417 (x14) # store value to put something in memory
lhu x14, 1417(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x11, 0xda53382e # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1857 # sub immediate from rs1 to counter offset
sw x11, -1857 (x15) # store value to put something in memory
lhu x15, -1857(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x12, 0x39102bc1 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 868 # sub immediate from rs1 to counter offset
sw x12, -868 (x16) # store value to put something in memory
lhu x16, -868(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x10, 0x8ebad455 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -2014 # sub immediate from rs1 to counter offset
sw x10, 2014 (x17) # store value to put something in memory
lhu x17, 2014(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x23, 0x3b8c501a # initialize rs2
la x18, scratch # base address 
addi x18, x18, -1065 # sub immediate from rs1 to counter offset
sw x23, 1065 (x18) # store value to put something in memory
lhu x18, 1065(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x15, 0x11c4d9fc # initialize rs2
la x19, scratch # base address 
addi x19, x19, -747 # sub immediate from rs1 to counter offset
sw x15, 747 (x19) # store value to put something in memory
lhu x19, 747(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x10, 0xd2b1cf5b # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1706 # sub immediate from rs1 to counter offset
sw x10, -1706 (x20) # store value to put something in memory
lhu x20, -1706(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x11, 0x46ee4658 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1733 # sub immediate from rs1 to counter offset
sw x11, 1733 (x21) # store value to put something in memory
lhu x21, 1733(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x28, 0x68652821 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 1869 # sub immediate from rs1 to counter offset
sw x28, -1869 (x22) # store value to put something in memory
lhu x22, -1869(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x21, 0x5c55ce3a # initialize rs2
la x23, scratch # base address 
addi x23, x23, -363 # sub immediate from rs1 to counter offset
sw x21, 363 (x23) # store value to put something in memory
lhu x23, 363(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x9, 0xde7c3463 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 1438 # sub immediate from rs1 to counter offset
sw x9, -1438 (x24) # store value to put something in memory
lhu x24, -1438(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x15, 0x4be7a1bc # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1637 # sub immediate from rs1 to counter offset
sw x15, -1637 (x25) # store value to put something in memory
lhu x25, -1637(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x29, 0x3124cb56 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -242 # sub immediate from rs1 to counter offset
sw x29, 242 (x26) # store value to put something in memory
lhu x26, 242(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x13, 0xaf158672 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -1251 # sub immediate from rs1 to counter offset
sw x13, 1251 (x27) # store value to put something in memory
lhu x27, 1251(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x31, 0xbcb7226f # initialize rs2
la x28, scratch # base address 
addi x28, x28, 704 # sub immediate from rs1 to counter offset
sw x31, -704 (x28) # store value to put something in memory
lhu x28, -704(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x16, 0x7b89fa51 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1381 # sub immediate from rs1 to counter offset
sw x16, -1381 (x29) # store value to put something in memory
lhu x29, -1381(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x12, 0x6d0a7f51 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1625 # sub immediate from rs1 to counter offset
sw x12, 1625 (x30) # store value to put something in memory
lhu x30, 1625(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x27, 0xfc77de6a # initialize rs2
la x31, scratch # base address 
addi x31, x31, 935 # sub immediate from rs1 to counter offset
sw x27, -935 (x31) # store value to put something in memory
lhu x31, -935(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 372)

# Testcase cp_imm_corners
li x14, 0x03cd4e00 # initialize rs2
la x22, scratch # base address 
addi x22, x22, 0 # sub immediate from rs1 to counter offset
sw x14, 0 (x22) # store value to put something in memory
lhu x3, 0(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 376)

# Testcase cp_imm_corners
li x16, 0xa7baf23a # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1 # sub immediate from rs1 to counter offset
sw x16, 1 (x26) # store value to put something in memory
lhu x30, 1(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 380)

# Testcase cp_imm_corners
li x8, 0xef8a0015 # initialize rs2
la x30, scratch # base address 
addi x30, x30, -2 # sub immediate from rs1 to counter offset
sw x8, 2 (x30) # store value to put something in memory
lhu x29, 2(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 384)

# Testcase cp_imm_corners
li x18, 0x34ab7caa # initialize rs2
la x6, scratch # base address 
addi x6, x6, -3 # sub immediate from rs1 to counter offset
sw x18, 3 (x6) # store value to put something in memory
lhu x25, 3(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 388)

# Testcase cp_imm_corners
li x10, 0xec410bb0 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -4 # sub immediate from rs1 to counter offset
sw x10, 4 (x2) # store value to put something in memory
lhu x30, 4(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 392)

# Testcase cp_imm_corners
li x12, 0xacf082e5 # initialize rs2
la x24, scratch # base address 
addi x24, x24, -8 # sub immediate from rs1 to counter offset
sw x12, 8 (x24) # store value to put something in memory
lhu x20, 8(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 396)

# Testcase cp_imm_corners
li x22, 0x1c0b22fe # initialize rs2
la x10, scratch # base address 
addi x10, x10, -16 # sub immediate from rs1 to counter offset
sw x22, 16 (x10) # store value to put something in memory
lhu x25, 16(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 400)

# Testcase cp_imm_corners
li x29, 0x514fe82d # initialize rs2
la x7, scratch # base address 
addi x7, x7, -32 # sub immediate from rs1 to counter offset
sw x29, 32 (x7) # store value to put something in memory
lhu x10, 32(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 404)

# Testcase cp_imm_corners
li x15, 0x96ff5e9f # initialize rs2
la x17, scratch # base address 
addi x17, x17, -64 # sub immediate from rs1 to counter offset
sw x15, 64 (x17) # store value to put something in memory
lhu x8, 64(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_imm_corners
li x26, 0x4ac7178b # initialize rs2
la x25, scratch # base address 
addi x25, x25, -128 # sub immediate from rs1 to counter offset
sw x26, 128 (x25) # store value to put something in memory
lhu x5, 128(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 412)

# Testcase cp_imm_corners
li x21, 0xea665cf9 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -256 # sub immediate from rs1 to counter offset
sw x21, 256 (x5) # store value to put something in memory
lhu x7, 256(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cp_imm_corners
li x29, 0xee6d3415 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -512 # sub immediate from rs1 to counter offset
sw x29, 512 (x6) # store value to put something in memory
lhu x12, 512(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 420)

# Testcase cp_imm_corners
li x5, 0x8e24cac1 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -1023 # sub immediate from rs1 to counter offset
sw x5, 1023 (x19) # store value to put something in memory
lhu x12, 1023(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 424)

# Testcase cp_imm_corners
li x11, 0x95fb40e8 # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1024 # sub immediate from rs1 to counter offset
sw x11, 1024 (x9) # store value to put something in memory
lhu x22, 1024(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 428)

# Testcase cp_imm_corners
li x12, 0x0b289b10 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1795 # sub immediate from rs1 to counter offset
sw x12, 1795 (x7) # store value to put something in memory
lhu x29, 1795(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 432)

# Testcase cp_imm_corners
li x11, 0xa42e34cd # initialize rs2
la x24, scratch # base address 
addi x24, x24, -2047 # sub immediate from rs1 to counter offset
sw x11, 2047 (x24) # store value to put something in memory
lhu x17, 2047(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 436)

# Testcase cp_imm_corners
li x10, 0x5aa6d11e # initialize rs2
la x13, scratch # base address 
addi x13, x13, 2047 # increment rs1 by 2047 
addi x13, x13, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sw x10, -2048 (x13) # store value to put something in memory
lhu x19, -2048(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 440)

# Testcase cp_imm_corners
li x26, 0xbf95eb65 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 2047 # sub immediate from rs1 to counter offset
sw x26, -2047 (x6) # store value to put something in memory
lhu x29, -2047(x6) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 444)

# Testcase cp_imm_corners
li x16, 0x63ef78de # initialize rs2
la x3, scratch # base address 
addi x3, x3, 2 # sub immediate from rs1 to counter offset
sw x16, -2 (x3) # store value to put something in memory
lhu x11, -2(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cp_imm_corners
li x23, 0x12bf4489 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 1 # sub immediate from rs1 to counter offset
sw x23, -1 (x10) # store value to put something in memory
lhu x30, -1(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 452)

# Testcase cp_gpr/fpr_hazard nohaz test
la x29, scratch
addi x29, x29, 731
add x20, x1, x28 # perform first operation
lhu x9, -731(x29) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x26, scratch
addi x26, x26, 931
add x31, x15, x25 # perform first operation
lhu x21, -931(x26) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x24, scratch
addi x24, x24, -1900
add x28, x1, x3 # perform first operation
lhu x27, 1900(x24) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x18, scratch
addi x18, x18, 1600
add x18, x18, x0 # perform first operation
lhu x18, -1600(x18) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x27, scratch
addi x27, x27, 832
add x27, x27, x0 # perform first operation
lhu x25, -832(x27) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x30, scratch
addi x30, x30, 516
add x30, x30, x0 # perform first operation
lhu x29, -516(x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x8, scratch
addi x8, x8, -1135
add x17, x10, x22 # perform first operation
lhu x17, 1135(x8) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x25, scratch
addi x25, x25, -1922
add x12, x7, x26 # perform first operation
lhu x12, 1922(x25) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x12, scratch
addi x12, x12, -1988
add x9, x2, x27 # perform first operation
lhu x9, 1988(x12) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x11, scratch
addi x11, x11, -700
add x6, x26, x10 # perform first operation
lhu x26, 700(x11) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x19, scratch
addi x19, x19, 600
add x23, x29, x21 # perform first operation
lhu x21, -600(x19) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x14, scratch
addi x14, x14, 1064
add x11, x31, x12 # perform first operation
lhu x28, -1064(x14) # perform second (triggering) operation

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
