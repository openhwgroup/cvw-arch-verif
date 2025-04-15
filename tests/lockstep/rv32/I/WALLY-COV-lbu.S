///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-lbu.S
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
li x6, 0xfc94a007 # initialize rs2
la x1, scratch # base address 
addi x1, x1, -1995 # sub immediate from rs1 to counter offset
sw x6, 1995 (x1) # store value to put something in memory
lbu x23, 1995(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cp_rs1 (Test source rs1 = x2)
li x29, 0x12e328b9 # initialize rs2
la x2, scratch # base address 
addi x2, x2, -722 # sub immediate from rs1 to counter offset
sw x29, 722 (x2) # store value to put something in memory
lbu x27, 722(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 4)

# Testcase cp_rs1 (Test source rs1 = x3)
li x20, 0xda6e1d8f # initialize rs2
la x3, scratch # base address 
addi x3, x3, -1913 # sub immediate from rs1 to counter offset
sw x20, 1913 (x3) # store value to put something in memory
lbu x11, 1913(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0x8167d958 # initialize rs2
la x4, scratch # base address 
addi x4, x4, -799 # sub immediate from rs1 to counter offset
sw x9, 799 (x4) # store value to put something in memory
lbu x26, 799(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x26, 12)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0x787b5363 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -619 # sub immediate from rs1 to counter offset
sw x14, 619 (x5) # store value to put something in memory
lbu x8, 619(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x8, 16)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x2f94eec8 # initialize rs2
la x6, scratch # base address 
addi x6, x6, 1981 # sub immediate from rs1 to counter offset
sw x4, -1981 (x6) # store value to put something in memory
lbu x2, -1981(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x2, 20)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0x9795970f # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1672 # sub immediate from rs1 to counter offset
sw x12, 1672 (x7) # store value to put something in memory
lbu x5, 1672(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x5, 24)

# Testcase cp_rs1 (Test source rs1 = x8)
li x6, 0xab98e73c # initialize rs2
la x8, scratch # base address 
addi x8, x8, -1531 # sub immediate from rs1 to counter offset
sw x6, 1531 (x8) # store value to put something in memory
lbu x27, 1531(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 28)

# Testcase cp_rs1 (Test source rs1 = x9)
li x29, 0x5ed85afe # initialize rs2
la x9, scratch # base address 
addi x9, x9, -1054 # sub immediate from rs1 to counter offset
sw x29, 1054 (x9) # store value to put something in memory
lbu x25, 1054(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 32)

# Testcase cp_rs1 (Test source rs1 = x10)
li x21, 0x09d7f347 # initialize rs2
la x10, scratch # base address 
addi x10, x10, 133 # sub immediate from rs1 to counter offset
sw x21, -133 (x10) # store value to put something in memory
lbu x23, -133(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 36)

# Testcase cp_rs1 (Test source rs1 = x11)
li x21, 0x448f8262 # initialize rs2
la x11, scratch # base address 
addi x11, x11, -1058 # sub immediate from rs1 to counter offset
sw x21, 1058 (x11) # store value to put something in memory
lbu x20, 1058(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 40)

# Testcase cp_rs1 (Test source rs1 = x12)
li x13, 0x2b6a2d27 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -341 # sub immediate from rs1 to counter offset
sw x13, 341 (x12) # store value to put something in memory
lbu x29, 341(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 44)

# Testcase cp_rs1 (Test source rs1 = x13)
li x12, 0xa9f4d42e # initialize rs2
la x13, scratch # base address 
addi x13, x13, -181 # sub immediate from rs1 to counter offset
sw x12, 181 (x13) # store value to put something in memory
lbu x29, 181(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase cp_rs1 (Test source rs1 = x14)
li x5, 0x4993c7f6 # initialize rs2
la x14, scratch # base address 
addi x14, x14, -97 # sub immediate from rs1 to counter offset
sw x5, 97 (x14) # store value to put something in memory
lbu x19, 97(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 52)

# Testcase cp_rs1 (Test source rs1 = x15)
li x18, 0x5bd815bc # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1010 # sub immediate from rs1 to counter offset
sw x18, -1010 (x15) # store value to put something in memory
lbu x13, -1010(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x16)
li x6, 0xae2e01cc # initialize rs2
la x16, scratch # base address 
addi x16, x16, -1961 # sub immediate from rs1 to counter offset
sw x6, 1961 (x16) # store value to put something in memory
lbu x15, 1961(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rs1 (Test source rs1 = x17)
li x24, 0xa9863c57 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1222 # sub immediate from rs1 to counter offset
sw x24, 1222 (x17) # store value to put something in memory
lbu x3, 1222(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 64)

# Testcase cp_rs1 (Test source rs1 = x18)
li x10, 0xdf2301ef # initialize rs2
la x18, scratch # base address 
addi x18, x18, 143 # sub immediate from rs1 to counter offset
sw x10, -143 (x18) # store value to put something in memory
lbu x21, -143(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 68)

# Testcase cp_rs1 (Test source rs1 = x19)
li x3, 0xdbf1effa # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1029 # sub immediate from rs1 to counter offset
sw x3, -1029 (x19) # store value to put something in memory
lbu x17, -1029(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 72)

# Testcase cp_rs1 (Test source rs1 = x20)
li x15, 0x4ad3000c # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1260 # sub immediate from rs1 to counter offset
sw x15, 1260 (x20) # store value to put something in memory
lbu x3, 1260(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 76)

# Testcase cp_rs1 (Test source rs1 = x21)
li x16, 0x82decf02 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 1772 # sub immediate from rs1 to counter offset
sw x16, -1772 (x21) # store value to put something in memory
lbu x11, -1772(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rs1 (Test source rs1 = x22)
li x9, 0xc5abb0d5 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1406 # sub immediate from rs1 to counter offset
sw x9, 1406 (x22) # store value to put something in memory
lbu x20, 1406(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 84)

# Testcase cp_rs1 (Test source rs1 = x23)
li x9, 0xb1fe28f9 # initialize rs2
la x23, scratch # base address 
addi x23, x23, 708 # sub immediate from rs1 to counter offset
sw x9, -708 (x23) # store value to put something in memory
lbu x19, -708(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x24)
li x23, 0xb469c6c4 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 270 # sub immediate from rs1 to counter offset
sw x23, -270 (x24) # store value to put something in memory
lbu x1, -270(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 92)

# Testcase cp_rs1 (Test source rs1 = x25)
li x12, 0x9fe6e4bd # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1583 # sub immediate from rs1 to counter offset
sw x12, -1583 (x25) # store value to put something in memory
lbu x19, -1583(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase cp_rs1 (Test source rs1 = x26)
li x18, 0xcc5cdc97 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 149 # sub immediate from rs1 to counter offset
sw x18, -149 (x26) # store value to put something in memory
lbu x10, -149(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 100)

# Testcase cp_rs1 (Test source rs1 = x27)
li x15, 0x3fa00c9d # initialize rs2
la x27, scratch # base address 
addi x27, x27, -2005 # sub immediate from rs1 to counter offset
sw x15, 2005 (x27) # store value to put something in memory
lbu x23, 2005(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 104)

# Testcase cp_rs1 (Test source rs1 = x28)
li x18, 0xb23855fe # initialize rs2
la x28, scratch # base address 
addi x28, x28, -94 # sub immediate from rs1 to counter offset
sw x18, 94 (x28) # store value to put something in memory
lbu x9, 94(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 108)

# Testcase cp_rs1 (Test source rs1 = x29)
li x12, 0xaa6964c0 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1037 # sub immediate from rs1 to counter offset
sw x12, 1037 (x29) # store value to put something in memory
lbu x27, 1037(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cp_rs1 (Test source rs1 = x30)
li x5, 0x0b841266 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 640 # sub immediate from rs1 to counter offset
sw x5, -640 (x30) # store value to put something in memory
lbu x7, -640(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 116)

# Testcase cp_rs1 (Test source rs1 = x31)
li x11, 0xeb5e136c # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1341 # sub immediate from rs1 to counter offset
sw x11, -1341 (x31) # store value to put something in memory
lbu x10, -1341(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rd (Test destination rd = x0)
li x27, 0x77508df5 # initialize rs2
la x26, scratch # base address 
addi x26, x26, 1805 # sub immediate from rs1 to counter offset
sw x27, -1805 (x26) # store value to put something in memory
lbu x0, -1805(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x0, 124)

# Testcase cp_rd (Test destination rd = x1)
li x3, 0xe6cbebf8 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -493 # sub immediate from rs1 to counter offset
sw x3, 493 (x20) # store value to put something in memory
lbu x1, 493(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rd (Test destination rd = x2)
li x25, 0x6a3d1a90 # initialize rs2
la x28, scratch # base address 
addi x28, x28, 1507 # sub immediate from rs1 to counter offset
sw x25, -1507 (x28) # store value to put something in memory
lbu x2, -1507(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 132)

# Testcase cp_rd (Test destination rd = x3)
li x11, 0x7404c720 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1053 # sub immediate from rs1 to counter offset
sw x11, 1053 (x12) # store value to put something in memory
lbu x3, 1053(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 136)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0xd8e346b6 # initialize rs2
la x8, scratch # base address 
addi x8, x8, 1274 # sub immediate from rs1 to counter offset
sw x9, -1274 (x8) # store value to put something in memory
lbu x4, -1274(x8) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 140)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0x3c459858 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -1201 # sub immediate from rs1 to counter offset
sw x8, 1201 (x7) # store value to put something in memory
lbu x5, 1201(x7) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 144)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0xf7ffbfb5 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 648 # sub immediate from rs1 to counter offset
sw x17, -648 (x25) # store value to put something in memory
lbu x6, -648(x25) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 148)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0x974408de # initialize rs2
la x14, scratch # base address 
addi x14, x14, -343 # sub immediate from rs1 to counter offset
sw x23, 343 (x14) # store value to put something in memory
lbu x7, 343(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 152)

# Testcase cp_rd (Test destination rd = x8)
li x7, 0xf1d196f7 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 762 # sub immediate from rs1 to counter offset
sw x7, -762 (x12) # store value to put something in memory
lbu x8, -762(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 156)

# Testcase cp_rd (Test destination rd = x9)
li x17, 0xe59cd5f6 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 1586 # sub immediate from rs1 to counter offset
sw x17, -1586 (x14) # store value to put something in memory
lbu x9, -1586(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rd (Test destination rd = x10)
li x30, 0x615f088b # initialize rs2
la x25, scratch # base address 
addi x25, x25, -445 # sub immediate from rs1 to counter offset
sw x30, 445 (x25) # store value to put something in memory
lbu x10, 445(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 164)

# Testcase cp_rd (Test destination rd = x11)
li x23, 0xf58f4843 # initialize rs2
la x5, scratch # base address 
addi x5, x5, 413 # sub immediate from rs1 to counter offset
sw x23, -413 (x5) # store value to put something in memory
lbu x11, -413(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cp_rd (Test destination rd = x12)
li x19, 0x73b428df # initialize rs2
la x30, scratch # base address 
addi x30, x30, 195 # sub immediate from rs1 to counter offset
sw x19, -195 (x30) # store value to put something in memory
lbu x12, -195(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 172)

# Testcase cp_rd (Test destination rd = x13)
li x23, 0xae4c5d0f # initialize rs2
la x14, scratch # base address 
addi x14, x14, -645 # sub immediate from rs1 to counter offset
sw x23, 645 (x14) # store value to put something in memory
lbu x13, 645(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_rd (Test destination rd = x14)
li x22, 0x4de85e86 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1677 # sub immediate from rs1 to counter offset
sw x22, 1677 (x13) # store value to put something in memory
lbu x14, 1677(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 180)

# Testcase cp_rd (Test destination rd = x15)
li x31, 0x6b92af59 # initialize rs2
la x21, scratch # base address 
addi x21, x21, -1557 # sub immediate from rs1 to counter offset
sw x31, 1557 (x21) # store value to put something in memory
lbu x15, 1557(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_rd (Test destination rd = x16)
li x10, 0xa0c13ec8 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1019 # sub immediate from rs1 to counter offset
sw x10, -1019 (x20) # store value to put something in memory
lbu x16, -1019(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 188)

# Testcase cp_rd (Test destination rd = x17)
li x3, 0xa870952c # initialize rs2
la x30, scratch # base address 
addi x30, x30, 838 # sub immediate from rs1 to counter offset
sw x3, -838 (x30) # store value to put something in memory
lbu x17, -838(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rd (Test destination rd = x18)
li x7, 0xa00505f5 # initialize rs2
la x19, scratch # base address 
addi x19, x19, 1336 # sub immediate from rs1 to counter offset
sw x7, -1336 (x19) # store value to put something in memory
lbu x18, -1336(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 196)

# Testcase cp_rd (Test destination rd = x19)
li x25, 0xa6ecd48b # initialize rs2
la x30, scratch # base address 
addi x30, x30, -1595 # sub immediate from rs1 to counter offset
sw x25, 1595 (x30) # store value to put something in memory
lbu x19, 1595(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 200)

# Testcase cp_rd (Test destination rd = x20)
li x16, 0x172ab03d # initialize rs2
la x21, scratch # base address 
addi x21, x21, -2001 # sub immediate from rs1 to counter offset
sw x16, 2001 (x21) # store value to put something in memory
lbu x20, 2001(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 204)

# Testcase cp_rd (Test destination rd = x21)
li x19, 0x7b69b5a3 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -724 # sub immediate from rs1 to counter offset
sw x19, 724 (x27) # store value to put something in memory
lbu x21, 724(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 208)

# Testcase cp_rd (Test destination rd = x22)
li x18, 0x5d9cf28c # initialize rs2
la x31, scratch # base address 
addi x31, x31, 435 # sub immediate from rs1 to counter offset
sw x18, -435 (x31) # store value to put something in memory
lbu x22, -435(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 212)

# Testcase cp_rd (Test destination rd = x23)
li x31, 0x2f294108 # initialize rs2
la x15, scratch # base address 
addi x15, x15, 1542 # sub immediate from rs1 to counter offset
sw x31, -1542 (x15) # store value to put something in memory
lbu x23, -1542(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0x62b42b18 # initialize rs2
la x20, scratch # base address 
addi x20, x20, 1884 # sub immediate from rs1 to counter offset
sw x14, -1884 (x20) # store value to put something in memory
lbu x24, -1884(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 220)

# Testcase cp_rd (Test destination rd = x25)
li x8, 0x167f9b11 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -619 # sub immediate from rs1 to counter offset
sw x8, 619 (x29) # store value to put something in memory
lbu x25, 619(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 224)

# Testcase cp_rd (Test destination rd = x26)
li x10, 0x88cddf98 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1652 # sub immediate from rs1 to counter offset
sw x10, -1652 (x3) # store value to put something in memory
lbu x26, -1652(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 228)

# Testcase cp_rd (Test destination rd = x27)
li x16, 0x66e964cb # initialize rs2
la x23, scratch # base address 
addi x23, x23, 456 # sub immediate from rs1 to counter offset
sw x16, -456 (x23) # store value to put something in memory
lbu x27, -456(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rd (Test destination rd = x28)
li x10, 0xef6b5209 # initialize rs2
la x20, scratch # base address 
addi x20, x20, -1933 # sub immediate from rs1 to counter offset
sw x10, 1933 (x20) # store value to put something in memory
lbu x28, 1933(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 236)

# Testcase cp_rd (Test destination rd = x29)
li x17, 0x4e436aa7 # initialize rs2
la x9, scratch # base address 
addi x9, x9, 931 # sub immediate from rs1 to counter offset
sw x17, -931 (x9) # store value to put something in memory
lbu x29, -931(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 240)

# Testcase cp_rd (Test destination rd = x30)
li x3, 0x33d446c0 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -866 # sub immediate from rs1 to counter offset
sw x3, 866 (x23) # store value to put something in memory
lbu x30, 866(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 244)

# Testcase cp_rd (Test destination rd = x31)
li x1, 0x44b598ff # initialize rs2
la x17, scratch # base address 
addi x17, x17, 883 # sub immediate from rs1 to counter offset
sw x1, -883 (x17) # store value to put something in memory
lbu x31, -883(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x24, 0xe4cfafe8 # initialize rs2
la x1, scratch # base address 
addi x1, x1, 1425 # sub immediate from rs1 to counter offset
sw x24, -1425 (x1) # store value to put something in memory
lbu x1, -1425(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x1, 252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x20, 0x25dedeb4 # initialize rs2
la x2, scratch # base address 
addi x2, x2, 14 # sub immediate from rs1 to counter offset
sw x20, -14 (x2) # store value to put something in memory
lbu x2, -14(x2) # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x21, 0x3a99c3a0 # initialize rs2
la x3, scratch # base address 
addi x3, x3, 1138 # sub immediate from rs1 to counter offset
sw x21, -1138 (x3) # store value to put something in memory
lbu x3, -1138(x3) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0xe1b4466f # initialize rs2
la x4, scratch # base address 
addi x4, x4, -1593 # sub immediate from rs1 to counter offset
sw x1, 1593 (x4) # store value to put something in memory
lbu x4, 1593(x4) # perform operation
RVTEST_SIGUPD(x5, x0, x4, 264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0xc384fbec # initialize rs2
la x5, scratch # base address 
addi x5, x5, 764 # sub immediate from rs1 to counter offset
sw x30, -764 (x5) # store value to put something in memory
lbu x5, -764(x5) # perform operation
RVTEST_SIGUPD(x6, x0, x5, 268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x0dbf2353 # initialize rs2
la x6, scratch # base address 
addi x6, x6, -1403 # sub immediate from rs1 to counter offset
sw x18, 1403 (x6) # store value to put something in memory
lbu x6, 1403(x6) # perform operation
RVTEST_SIGUPD(x7, x0, x6, 272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x31, 0x30122a5a # initialize rs2
la x7, scratch # base address 
addi x7, x7, -33 # sub immediate from rs1 to counter offset
sw x31, 33 (x7) # store value to put something in memory
lbu x7, 33(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x26, 0x44de03a3 # initialize rs2
la x8, scratch # base address 
addi x8, x8, -321 # sub immediate from rs1 to counter offset
sw x26, 321 (x8) # store value to put something in memory
lbu x8, 321(x8) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x11, 0x82acb14b # initialize rs2
la x9, scratch # base address 
addi x9, x9, 1658 # sub immediate from rs1 to counter offset
sw x11, -1658 (x9) # store value to put something in memory
lbu x9, -1658(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x9, 284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x17, 0xaca1d695 # initialize rs2
la x10, scratch # base address 
addi x10, x10, -1280 # sub immediate from rs1 to counter offset
sw x17, 1280 (x10) # store value to put something in memory
lbu x10, 1280(x10) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x1, 0x61b2ec55 # initialize rs2
la x11, scratch # base address 
addi x11, x11, 303 # sub immediate from rs1 to counter offset
sw x1, -303 (x11) # store value to put something in memory
lbu x11, -303(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x11, 292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x13, 0x0b524789 # initialize rs2
la x12, scratch # base address 
addi x12, x12, 625 # sub immediate from rs1 to counter offset
sw x13, -625 (x12) # store value to put something in memory
lbu x12, -625(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x24, 0xb7a2772b # initialize rs2
la x13, scratch # base address 
addi x13, x13, -1744 # sub immediate from rs1 to counter offset
sw x24, 1744 (x13) # store value to put something in memory
lbu x13, 1744(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x13, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x5, 0x48b09f2a # initialize rs2
la x14, scratch # base address 
addi x14, x14, 560 # sub immediate from rs1 to counter offset
sw x5, -560 (x14) # store value to put something in memory
lbu x14, -560(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x16, 0x3893a66e # initialize rs2
la x15, scratch # base address 
addi x15, x15, -1877 # sub immediate from rs1 to counter offset
sw x16, 1877 (x15) # store value to put something in memory
lbu x15, 1877(x15) # perform operation
RVTEST_SIGUPD(x4, x0, x15, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x20, 0xaff86b79 # initialize rs2
la x16, scratch # base address 
addi x16, x16, 699 # sub immediate from rs1 to counter offset
sw x20, -699 (x16) # store value to put something in memory
lbu x16, -699(x16) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x30, 0x75c1db40 # initialize rs2
la x17, scratch # base address 
addi x17, x17, -1713 # sub immediate from rs1 to counter offset
sw x30, 1713 (x17) # store value to put something in memory
lbu x17, 1713(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x11, 0x2497f154 # initialize rs2
la x18, scratch # base address 
addi x18, x18, 39 # sub immediate from rs1 to counter offset
sw x11, -39 (x18) # store value to put something in memory
lbu x18, -39(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x23, 0xdf1517c9 # initialize rs2
la x19, scratch # base address 
addi x19, x19, -409 # sub immediate from rs1 to counter offset
sw x23, 409 (x19) # store value to put something in memory
lbu x19, 409(x19) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x3, 0x6a87dc3a # initialize rs2
la x20, scratch # base address 
addi x20, x20, -175 # sub immediate from rs1 to counter offset
sw x3, 175 (x20) # store value to put something in memory
lbu x20, 175(x20) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x30, 0x26d13c56 # initialize rs2
la x21, scratch # base address 
addi x21, x21, 427 # sub immediate from rs1 to counter offset
sw x30, -427 (x21) # store value to put something in memory
lbu x21, -427(x21) # perform operation
RVTEST_SIGUPD(x4, x0, x21, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x21, 0x9ba6cc54 # initialize rs2
la x22, scratch # base address 
addi x22, x22, -977 # sub immediate from rs1 to counter offset
sw x21, 977 (x22) # store value to put something in memory
lbu x22, 977(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x15, 0x5ecc0ea1 # initialize rs2
la x23, scratch # base address 
addi x23, x23, -1184 # sub immediate from rs1 to counter offset
sw x15, 1184 (x23) # store value to put something in memory
lbu x23, 1184(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x11, 0x5bc51e89 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 966 # sub immediate from rs1 to counter offset
sw x11, -966 (x24) # store value to put something in memory
lbu x24, -966(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x24, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x2, 0x68c45891 # initialize rs2
la x25, scratch # base address 
addi x25, x25, 1754 # sub immediate from rs1 to counter offset
sw x2, -1754 (x25) # store value to put something in memory
lbu x25, -1754(x25) # perform operation
RVTEST_SIGUPD(x4, x0, x25, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x2, 0xe1526309 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -207 # sub immediate from rs1 to counter offset
sw x2, 207 (x26) # store value to put something in memory
lbu x26, 207(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x28, 0x6f3e4771 # initialize rs2
la x27, scratch # base address 
addi x27, x27, -986 # sub immediate from rs1 to counter offset
sw x28, 986 (x27) # store value to put something in memory
lbu x27, 986(x27) # perform operation
RVTEST_SIGUPD(x4, x0, x27, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x24, 0x09010ace # initialize rs2
la x28, scratch # base address 
addi x28, x28, -260 # sub immediate from rs1 to counter offset
sw x24, 260 (x28) # store value to put something in memory
lbu x28, 260(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x57418496 # initialize rs2
la x29, scratch # base address 
addi x29, x29, 1033 # sub immediate from rs1 to counter offset
sw x29, -1033 (x29) # store value to put something in memory
lbu x29, -1033(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x29, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x17, 0x2b6eab15 # initialize rs2
la x30, scratch # base address 
addi x30, x30, 114 # sub immediate from rs1 to counter offset
sw x17, -114 (x30) # store value to put something in memory
lbu x30, -114(x30) # perform operation
RVTEST_SIGUPD(x4, x0, x30, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x665f4664 # initialize rs2
la x31, scratch # base address 
addi x31, x31, 1228 # sub immediate from rs1 to counter offset
sw x31, -1228 (x31) # store value to put something in memory
lbu x31, -1228(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x31, 372)

# Testcase cp_imm_corners
li x7, 0x2af16c84 # initialize rs2
la x24, scratch # base address 
addi x24, x24, 0 # sub immediate from rs1 to counter offset
sw x7, 0 (x24) # store value to put something in memory
lbu x16, 0(x24) # perform operation
RVTEST_SIGUPD(x4, x0, x16, 376)

# Testcase cp_imm_corners
li x31, 0x9da63866 # initialize rs2
la x29, scratch # base address 
addi x29, x29, -1 # sub immediate from rs1 to counter offset
sw x31, 1 (x29) # store value to put something in memory
lbu x28, 1(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x28, 380)

# Testcase cp_imm_corners
li x30, 0x59cce3c3 # initialize rs2
la x18, scratch # base address 
addi x18, x18, -2 # sub immediate from rs1 to counter offset
sw x30, 2 (x18) # store value to put something in memory
lbu x3, 2(x18) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 384)

# Testcase cp_imm_corners
li x12, 0xdd27918c # initialize rs2
la x31, scratch # base address 
addi x31, x31, -3 # sub immediate from rs1 to counter offset
sw x12, 3 (x31) # store value to put something in memory
lbu x22, 3(x31) # perform operation
RVTEST_SIGUPD(x4, x0, x22, 388)

# Testcase cp_imm_corners
li x21, 0xe0851b03 # initialize rs2
la x5, scratch # base address 
addi x5, x5, -4 # sub immediate from rs1 to counter offset
sw x21, 4 (x5) # store value to put something in memory
lbu x23, 4(x5) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 392)

# Testcase cp_imm_corners
li x17, 0xaebd446e # initialize rs2
la x29, scratch # base address 
addi x29, x29, -8 # sub immediate from rs1 to counter offset
sw x17, 8 (x29) # store value to put something in memory
lbu x7, 8(x29) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 396)

# Testcase cp_imm_corners
li x30, 0x69db00cd # initialize rs2
la x11, scratch # base address 
addi x11, x11, -16 # sub immediate from rs1 to counter offset
sw x30, 16 (x11) # store value to put something in memory
lbu x7, 16(x11) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 400)

# Testcase cp_imm_corners
li x6, 0xae394cfa # initialize rs2
la x17, scratch # base address 
addi x17, x17, -32 # sub immediate from rs1 to counter offset
sw x6, 32 (x17) # store value to put something in memory
lbu x12, 32(x17) # perform operation
RVTEST_SIGUPD(x4, x0, x12, 404)

# Testcase cp_imm_corners
li x3, 0x9aa44a6f # initialize rs2
la x1, scratch # base address 
addi x1, x1, -64 # sub immediate from rs1 to counter offset
sw x3, 64 (x1) # store value to put something in memory
lbu x6, 64(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cp_imm_corners
li x1, 0x35c728b6 # initialize rs2
la x13, scratch # base address 
addi x13, x13, -128 # sub immediate from rs1 to counter offset
sw x1, 128 (x13) # store value to put something in memory
lbu x14, 128(x13) # perform operation
RVTEST_SIGUPD(x4, x0, x14, 412)

# Testcase cp_imm_corners
li x6, 0xf4659494 # initialize rs2
la x28, scratch # base address 
addi x28, x28, -256 # sub immediate from rs1 to counter offset
sw x6, 256 (x28) # store value to put something in memory
lbu x8, 256(x28) # perform operation
RVTEST_SIGUPD(x4, x0, x8, 416)

# Testcase cp_imm_corners
li x23, 0xff9b46b1 # initialize rs2
la x7, scratch # base address 
addi x7, x7, -512 # sub immediate from rs1 to counter offset
sw x23, 512 (x7) # store value to put something in memory
lbu x3, 512(x7) # perform operation
RVTEST_SIGUPD(x4, x0, x3, 420)

# Testcase cp_imm_corners
li x12, 0xc547efa4 # initialize rs2
la x26, scratch # base address 
addi x26, x26, -1023 # sub immediate from rs1 to counter offset
sw x12, 1023 (x26) # store value to put something in memory
lbu x10, 1023(x26) # perform operation
RVTEST_SIGUPD(x4, x0, x10, 424)

# Testcase cp_imm_corners
li x6, 0x42955bec # initialize rs2
la x22, scratch # base address 
addi x22, x22, -1024 # sub immediate from rs1 to counter offset
sw x6, 1024 (x22) # store value to put something in memory
lbu x7, 1024(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 428)

# Testcase cp_imm_corners
li x3, 0x7b357fe6 # initialize rs2
la x12, scratch # base address 
addi x12, x12, -1795 # sub immediate from rs1 to counter offset
sw x3, 1795 (x12) # store value to put something in memory
lbu x17, 1795(x12) # perform operation
RVTEST_SIGUPD(x4, x0, x17, 432)

# Testcase cp_imm_corners
li x2, 0x6846b88e # initialize rs2
la x9, scratch # base address 
addi x9, x9, -2047 # sub immediate from rs1 to counter offset
sw x2, 2047 (x9) # store value to put something in memory
lbu x18, 2047(x9) # perform operation
RVTEST_SIGUPD(x4, x0, x18, 436)

# Testcase cp_imm_corners
li x13, 0x558525fa # initialize rs2
la x1, scratch # base address 
addi x1, x1, 2047 # increment rs1 by 2047 
addi x1, x1, 1 # increment rs1 to bump it by a total of 2048 to compensate for -2048
sw x13, -2048 (x1) # store value to put something in memory
lbu x23, -2048(x1) # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_imm_corners
li x25, 0x9c5cb6c2 # initialize rs2
la x14, scratch # base address 
addi x14, x14, 2047 # sub immediate from rs1 to counter offset
sw x25, -2047 (x14) # store value to put something in memory
lbu x19, -2047(x14) # perform operation
RVTEST_SIGUPD(x4, x0, x19, 444)

# Testcase cp_imm_corners
li x16, 0x8327316b # initialize rs2
la x22, scratch # base address 
addi x22, x22, 2 # sub immediate from rs1 to counter offset
sw x16, -2 (x22) # store value to put something in memory
lbu x7, -2(x22) # perform operation
RVTEST_SIGUPD(x4, x0, x7, 448)

# Testcase cp_imm_corners
li x7, 0xcb14552b # initialize rs2
la x23, scratch # base address 
addi x23, x23, 1 # sub immediate from rs1 to counter offset
sw x7, -1 (x23) # store value to put something in memory
lbu x20, -1(x23) # perform operation
RVTEST_SIGUPD(x4, x0, x20, 452)

# Testcase cp_gpr/fpr_hazard nohaz test
la x16, scratch
addi x16, x16, -572
add x27, x11, x26 # perform first operation
lbu x3, 572(x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x15, scratch
addi x15, x15, 1029
add x12, x21, x25 # perform first operation
lbu x5, -1029(x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
la x31, scratch
addi x31, x31, 1841
add x28, x19, x22 # perform first operation
lbu x18, -1841(x31) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x16, scratch
addi x16, x16, 2036
add x16, x16, x0 # perform first operation
lbu x10, -2036(x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x16, scratch
addi x16, x16, 1106
add x16, x16, x0 # perform first operation
lbu x27, -1106(x16) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
la x20, scratch
addi x20, x20, -95
add x20, x20, x0 # perform first operation
lbu x21, 95(x20) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x15, scratch
addi x15, x15, 510
add x20, x2, x7 # perform first operation
lbu x20, -510(x15) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x28, scratch
addi x28, x28, 1356
add x1, x8, x15 # perform first operation
lbu x1, -1356(x28) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
la x21, scratch
addi x21, x21, -191
add x13, x28, x8 # perform first operation
lbu x13, 191(x21) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x3, scratch
addi x3, x3, 1889
add x9, x6, x1 # perform first operation
lbu x6, -1889(x3) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x30, scratch
addi x30, x30, -1284
add x22, x28, x26 # perform first operation
lbu x26, 1284(x30) # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
la x5, scratch
addi x5, x5, -685
add x22, x27, x28 # perform first operation
lbu x12, 685(x5) # perform second (triggering) operation

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
