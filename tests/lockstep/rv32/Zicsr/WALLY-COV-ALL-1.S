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

    

// ******************
// Tests from: WALLY-COV-csrrsi.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rd (Test destination rd = x0)
li x14, 0xc5b02dd2 # initialize rs1
csrrsi x0, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
li x19, 0x50bd00e6 # initialize rs1
csrrsi x1, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
li x16, 0x1be4855b # initialize rs1
csrrsi x2, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x7, 0x74b75f22 # initialize rs1
csrrsi x3, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0xb90394cd # initialize rs1
csrrsi x4, mscratch, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0x266e3680 # initialize rs1
csrrsi x5, mscratch, 24 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0xcfb83c38 # initialize rs1
csrrsi x6, mscratch, 25 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0xa8cfe941 # initialize rs1
csrrsi x7, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
li x30, 0x3987d063 # initialize rs1
csrrsi x8, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0x59982c38 # initialize rs1
csrrsi x9, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
li x11, 0xc3122979 # initialize rs1
csrrsi x10, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
li x23, 0xbe2770f1 # initialize rs1
csrrsi x11, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
li x28, 0xc7d097d1 # initialize rs1
csrrsi x12, mscratch, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
li x28, 0x3faad3f5 # initialize rs1
csrrsi x13, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
li x15, 0x8124471e # initialize rs1
csrrsi x14, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0x7a35925e # initialize rs1
csrrsi x15, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x58058355 # initialize rs1
csrrsi x16, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
li x27, 0x0a118588 # initialize rs1
csrrsi x17, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
li x29, 0xf8d71ac6 # initialize rs1
csrrsi x18, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
li x22, 0x23ff0939 # initialize rs1
csrrsi x19, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0x6c95ce7c # initialize rs1
csrrsi x20, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
li x11, 0x994d2b62 # initialize rs1
csrrsi x21, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
li x3, 0xc073bb03 # initialize rs1
csrrsi x22, mscratch, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
li x22, 0x22cdbd49 # initialize rs1
csrrsi x23, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
li x29, 0x48e0bcf2 # initialize rs1
csrrsi x24, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0xa1f9e16e # initialize rs1
csrrsi x25, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
li x2, 0x562a9a1a # initialize rs1
csrrsi x26, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
li x15, 0x4b16c0ef # initialize rs1
csrrsi x27, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
li x5, 0xd0a009b9 # initialize rs1
csrrsi x28, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
li x10, 0x954670f9 # initialize rs1
csrrsi x29, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
li x10, 0x78559f3d # initialize rs1
csrrsi x30, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
li x8, 0x1293ade7 # initialize rs1
csrrsi x31, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_uimm_5 (Test bit = 0)
li x13, 0xc2bd6380 # initialize rs1
csrrsi x8, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_uimm_5 (Test bit = 1)
li x19, 0x15383c31 # initialize rs1
csrrsi x9, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 132)

# Testcase cp_uimm_5 (Test bit = 2)
li x27, 0x2a96290c # initialize rs1
csrrsi x13, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_uimm_5 (Test bit = 3)
li x21, 0x2b1ff3ac # initialize rs1
csrrsi x11, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 140)

# Testcase cp_uimm_5 (Test bit = 4)
li x31, 0x0096cb21 # initialize rs1
csrrsi x18, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 144)

# Testcase cp_uimm_5 (Test bit = 5)
li x29, 0x134365e4 # initialize rs1
csrrsi x2, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 148)

# Testcase cp_uimm_5 (Test bit = 6)
li x10, 0xf2265894 # initialize rs1
csrrsi x18, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 152)

# Testcase cp_uimm_5 (Test bit = 7)
li x24, 0x43e1fbec # initialize rs1
csrrsi x23, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 156)

# Testcase cp_uimm_5 (Test bit = 8)
li x23, 0x694cac1d # initialize rs1
csrrsi x15, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cp_uimm_5 (Test bit = 9)
li x13, 0xa61ecec6 # initialize rs1
csrrsi x1, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 164)

# Testcase cp_uimm_5 (Test bit = 10)
li x13, 0x7d042981 # initialize rs1
csrrsi x8, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_uimm_5 (Test bit = 11)
li x29, 0x1771da1f # initialize rs1
csrrsi x28, mscratch, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 172)

# Testcase cp_uimm_5 (Test bit = 12)
li x17, 0x15734c33 # initialize rs1
csrrsi x28, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 176)

# Testcase cp_uimm_5 (Test bit = 13)
li x5, 0x01455307 # initialize rs1
csrrsi x20, mscratch, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 180)

# Testcase cp_uimm_5 (Test bit = 14)
li x5, 0xeaf6df7e # initialize rs1
csrrsi x6, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 184)

# Testcase cp_uimm_5 (Test bit = 15)
li x28, 0x9f14f992 # initialize rs1
csrrsi x23, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 188)

# Testcase cp_uimm_5 (Test bit = 16)
li x29, 0xe83cea0e # initialize rs1
csrrsi x2, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cp_uimm_5 (Test bit = 17)
li x11, 0x53eb068f # initialize rs1
csrrsi x9, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 196)

# Testcase cp_uimm_5 (Test bit = 18)
li x13, 0x913caae9 # initialize rs1
csrrsi x3, mscratch, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cp_uimm_5 (Test bit = 19)
li x13, 0x95261325 # initialize rs1
csrrsi x27, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 204)

# Testcase cp_uimm_5 (Test bit = 20)
li x23, 0x1ae1b017 # initialize rs1
csrrsi x17, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 208)

# Testcase cp_uimm_5 (Test bit = 21)
li x31, 0xd95f2965 # initialize rs1
csrrsi x20, mscratch, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 212)

# Testcase cp_uimm_5 (Test bit = 22)
li x8, 0x22ba6fb2 # initialize rs1
csrrsi x5, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 216)

# Testcase cp_uimm_5 (Test bit = 23)
li x24, 0x41cd94c1 # initialize rs1
csrrsi x20, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 220)

# Testcase cp_uimm_5 (Test bit = 24)
li x13, 0x3c25fd56 # initialize rs1
csrrsi x10, mscratch, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 224)

# Testcase cp_uimm_5 (Test bit = 25)
li x6, 0x4af55cb1 # initialize rs1
csrrsi x2, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 228)

# Testcase cp_uimm_5 (Test bit = 26)
li x26, 0xaab8bfb8 # initialize rs1
csrrsi x10, mscratch, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_uimm_5 (Test bit = 27)
li x26, 0xedf1d607 # initialize rs1
csrrsi x27, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_uimm_5 (Test bit = 28)
li x3, 0x649e232d # initialize rs1
csrrsi x9, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 240)

# Testcase cp_uimm_5 (Test bit = 29)
li x14, 0x94549dc7 # initialize rs1
csrrsi x22, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 244)

# Testcase cp_uimm_5 (Test bit = 30)
li x6, 0x085c407d # initialize rs1
csrrsi x11, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 248)

# Testcase cp_uimm_5 (Test bit = 31)
li x28, 0xb6b2b36b # initialize rs1
csrrsi x13, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 252)

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x23, x25 # perform first operation
csrrsi x20, mscratch, 6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x21, x29 # perform first operation
csrrsi x5, mscratch, 30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x30, x13 # perform first operation
csrrsi x16, mscratch, 12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x7, x11 # perform first operation
csrrsi x22, mscratch, 15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x30, x26 # perform first operation
csrrsi x28, mscratch, 19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x3, x24 # perform first operation
csrrsi x17, mscratch, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x10, x22 # perform first operation
csrrsi x10, mscratch, 8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x15, x7 # perform first operation
csrrsi x7, mscratch, 28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x14, x23 # perform first operation
csrrsi x22, mscratch, 12 # perform second (triggering) operation

#.EQU SIGSIZE,256


// ******************
// Tests from: WALLY-COV-csrrw.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x577480e6 # initialize rs1
csrrw x7, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x07118046 # initialize rs1
csrrw x20, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x8d79a993 # initialize rs1
csrrw x26, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xc7677f2a # initialize rs1
csrrw x18, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3ef1aab2 # initialize rs1
csrrw x11, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa39b7b02 # initialize rs1
csrrw x27, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbe134e58 # initialize rs1
csrrw x26, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb3443cdc # initialize rs1
csrrw x31, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x8581cc62 # initialize rs1
csrrw x10, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xdcef7618 # initialize rs1
csrrw x5, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x440bc1b8 # initialize rs1
csrrw x23, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa627b0b4 # initialize rs1
csrrw x12, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x97d12e7d # initialize rs1
csrrw x30, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x2679771c # initialize rs1
csrrw x19, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x372d9686 # initialize rs1
csrrw x25, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x5a90a783 # initialize rs1
csrrw x23, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xd3df3ba6 # initialize rs1
csrrw x12, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xcc7accf4 # initialize rs1
csrrw x9, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x2de4dec1 # initialize rs1
csrrw x24, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x7aa6e7c9 # initialize rs1
csrrw x8, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x02597596 # initialize rs1
csrrw x8, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x1edfb53b # initialize rs1
csrrw x18, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x77e7547b # initialize rs1
csrrw x19, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xa861b010 # initialize rs1
csrrw x27, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x76e83da1 # initialize rs1
csrrw x1, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xae1461bf # initialize rs1
csrrw x13, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x6ffa05bf # initialize rs1
csrrw x18, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xe5d543d4 # initialize rs1
csrrw x12, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xddb30743 # initialize rs1
csrrw x20, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x97fa3fe7 # initialize rs1
csrrw x3, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x08a905e6 # initialize rs1
csrrw x23, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x6f455745 # initialize rs1
csrrw x28, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 124)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0xb412800c # initialize rs1
csrrw x0, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x26, 0x50bbab79 # initialize rs1
csrrw x1, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x5e96ff90 # initialize rs1
csrrw x2, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x5, 0x147a6242 # initialize rs1
csrrw x3, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x08a649e8 # initialize rs1
csrrw x4, mscratch, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0x83d35162 # initialize rs1
csrrw x5, mscratch, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x9dd44353 # initialize rs1
csrrw x6, mscratch, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x8be1e636 # initialize rs1
csrrw x7, mscratch, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0x36481d18 # initialize rs1
csrrw x8, mscratch, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x16, 0xf6765d3b # initialize rs1
csrrw x9, mscratch, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x15, 0x700a4fa4 # initialize rs1
csrrw x10, mscratch, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x24, 0xf9772ad5 # initialize rs1
csrrw x11, mscratch, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x21, 0x46ca8f78 # initialize rs1
csrrw x12, mscratch, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0xfaf6c466 # initialize rs1
csrrw x13, mscratch, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0x084efe3d # initialize rs1
csrrw x14, mscratch, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x9, 0xb1ec8b86 # initialize rs1
csrrw x15, mscratch, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x25, 0x9e87565a # initialize rs1
csrrw x16, mscratch, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x23, 0x553dda0d # initialize rs1
csrrw x17, mscratch, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x4, 0xd87504b9 # initialize rs1
csrrw x18, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x9, 0x1180f44c # initialize rs1
csrrw x19, mscratch, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x25, 0xf152c91f # initialize rs1
csrrw x20, mscratch, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x2, 0x33dab242 # initialize rs1
csrrw x21, mscratch, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x16, 0x1da6edf4 # initialize rs1
csrrw x22, mscratch, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x29, 0x9b86865e # initialize rs1
csrrw x23, mscratch, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x4, 0x721ca3d8 # initialize rs1
csrrw x24, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x30, 0x64f2d3f8 # initialize rs1
csrrw x25, mscratch, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x19, 0xc6775bde # initialize rs1
csrrw x26, mscratch, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x4, 0xbfa38398 # initialize rs1
csrrw x27, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x25, 0xa3266240 # initialize rs1
csrrw x28, mscratch, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x22, 0xfbd6ec41 # initialize rs1
csrrw x29, mscratch, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x8, 0x60e129f9 # initialize rs1
csrrw x30, mscratch, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x10, 0x14060b3c # initialize rs1
csrrw x31, mscratch, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x00000000 # initialize rs1
csrrw x16, mscratch, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x15, 0x00000001 # initialize rs1
csrrw x24, mscratch, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0x00000002 # initialize rs1
csrrw x28, mscratch, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x10, 0x80000000 # initialize rs1
csrrw x25, mscratch, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x4, 0x80000001 # initialize rs1
csrrw x24, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x21, 0x7fffffff # initialize rs1
csrrw x15, mscratch, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x20, 0x7ffffffe # initialize rs1
csrrw x28, mscratch, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0xffffffff # initialize rs1
csrrw x4, mscratch, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x10, 0xfffffffe # initialize rs1
csrrw x25, mscratch, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x24, 0x5bbc8872 # initialize rs1
csrrw x25, mscratch, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x31, 0xaaaaaaaa # initialize rs1
csrrw x2, mscratch, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x27, 0x55555555 # initialize rs1
csrrw x22, mscratch, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x3866e9f4 # initialize rs1
csrrw x0, mscratch, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x68a4018b # initialize rs1
csrrw x1, mscratch, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x11ad67a6 # initialize rs1
csrrw x2, mscratch, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x91926cf6 # initialize rs1
csrrw x3, mscratch, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0xe3bf53b8 # initialize rs1
csrrw x4, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x48a0b5ef # initialize rs1
csrrw x5, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7c04984b # initialize rs1
csrrw x6, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6c932bac # initialize rs1
csrrw x7, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf0b9ef78 # initialize rs1
csrrw x8, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x202fd06b # initialize rs1
csrrw x9, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x589e4731 # initialize rs1
csrrw x10, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x0bb5f769 # initialize rs1
csrrw x11, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x018e3305 # initialize rs1
csrrw x12, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xb352af2c # initialize rs1
csrrw x13, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xed32f12d # initialize rs1
csrrw x14, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xfe3fa5ff # initialize rs1
csrrw x15, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x0418ccc7 # initialize rs1
csrrw x16, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x8750e64a # initialize rs1
csrrw x17, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x0b1080ed # initialize rs1
csrrw x18, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x9be03ffb # initialize rs1
csrrw x19, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf9f97d66 # initialize rs1
csrrw x20, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xe89d5958 # initialize rs1
csrrw x21, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6212a1e4 # initialize rs1
csrrw x22, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x4097550f # initialize rs1
csrrw x23, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x83059087 # initialize rs1
csrrw x24, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x364f41c0 # initialize rs1
csrrw x25, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x50e02258 # initialize rs1
csrrw x26, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xa10960d3 # initialize rs1
csrrw x27, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x9584f5d5 # initialize rs1
csrrw x28, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xb5c95c66 # initialize rs1
csrrw x29, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x6b225798 # initialize rs1
csrrw x30, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xcd498fe4 # initialize rs1
csrrw x31, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x2, x3 # perform first operation
csrrw x11, mscratch, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x11, x31 # perform first operation
csrrw x30, mscratch, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x14, x17 # perform first operation
csrrw x23, mscratch, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x25, x20 # perform first operation
csrrw x25, mscratch, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x21, x28 # perform first operation
csrrw x21, mscratch, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x26, x27 # perform first operation
csrrw x20, mscratch, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x3, x21 # perform first operation
csrrw x30, mscratch, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x8, x13 # perform first operation
csrrw x28, mscratch, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x8, x10 # perform first operation
csrrw x24, mscratch, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x18, x5 # perform first operation
csrrw x18, mscratch, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x21, x12 # perform first operation
csrrw x12, mscratch, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x1, x26 # perform first operation
csrrw x31, mscratch, x12 # perform second (triggering) operation

#.EQU SIGSIZE,432


// ******************
// Tests from: WALLY-COV-csrrs.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x55991566 # initialize rs1
csrrs x27, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xfa6d2a83 # initialize rs1
csrrs x11, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x18eb1c07 # initialize rs1
csrrs x18, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xba50d11a # initialize rs1
csrrs x26, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9ede7366 # initialize rs1
csrrs x23, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x79d3f811 # initialize rs1
csrrs x28, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1a750277 # initialize rs1
csrrs x25, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcbd8573b # initialize rs1
csrrs x14, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xfaa983f7 # initialize rs1
csrrs x15, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x4f919dd8 # initialize rs1
csrrs x30, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb0668e21 # initialize rs1
csrrs x27, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x59a3845b # initialize rs1
csrrs x22, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xc2e19f4e # initialize rs1
csrrs x16, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xe9bf357b # initialize rs1
csrrs x18, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x7fe1d929 # initialize rs1
csrrs x1, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x90e8a2da # initialize rs1
csrrs x24, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x9d392996 # initialize rs1
csrrs x21, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xbaa38d89 # initialize rs1
csrrs x22, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xc7293e58 # initialize rs1
csrrs x12, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x809d81a1 # initialize rs1
csrrs x23, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x1f01dd45 # initialize rs1
csrrs x1, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xd6f1602b # initialize rs1
csrrs x7, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xd49e5970 # initialize rs1
csrrs x9, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x66a2eb46 # initialize rs1
csrrs x20, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x1e1e41ff # initialize rs1
csrrs x2, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xa7a55f71 # initialize rs1
csrrs x29, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xb1df44aa # initialize rs1
csrrs x5, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x88baf7d0 # initialize rs1
csrrs x16, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x6b9f8182 # initialize rs1
csrrs x27, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x675187cc # initialize rs1
csrrs x26, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x5bedf03e # initialize rs1
csrrs x5, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xff738384 # initialize rs1
csrrs x7, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 124)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0x2cc1a0ba # initialize rs1
csrrs x0, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x15, 0xa5bba332 # initialize rs1
csrrs x1, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x11, 0x33f25e4a # initialize rs1
csrrs x2, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x26, 0x0cb93835 # initialize rs1
csrrs x3, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0x68efedc4 # initialize rs1
csrrs x4, mscratch, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0x0c8227f6 # initialize rs1
csrrs x5, mscratch, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0x8f85f876 # initialize rs1
csrrs x6, mscratch, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x20, 0x5e563049 # initialize rs1
csrrs x7, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x18, 0x2122c146 # initialize rs1
csrrs x8, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0x3f77e315 # initialize rs1
csrrs x9, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x625e3e8b # initialize rs1
csrrs x10, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x30, 0xa23441d1 # initialize rs1
csrrs x11, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x11, 0x958ced03 # initialize rs1
csrrs x12, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x7, 0x81aff04e # initialize rs1
csrrs x13, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x15, 0x73fa8262 # initialize rs1
csrrs x14, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x27, 0x3a4ac237 # initialize rs1
csrrs x15, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x23, 0x59d100f6 # initialize rs1
csrrs x16, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x25, 0xb2370cf7 # initialize rs1
csrrs x17, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x15, 0xb57a8a68 # initialize rs1
csrrs x18, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x15, 0x96851e63 # initialize rs1
csrrs x19, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x25, 0x70c562e7 # initialize rs1
csrrs x20, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x15, 0x8fed9375 # initialize rs1
csrrs x21, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x28, 0xb253546a # initialize rs1
csrrs x22, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x5, 0xbea88e1f # initialize rs1
csrrs x23, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x31, 0xa9c785c1 # initialize rs1
csrrs x24, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0xfdefd006 # initialize rs1
csrrs x25, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x19, 0xdf62efa0 # initialize rs1
csrrs x26, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0xd97f731e # initialize rs1
csrrs x27, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x8, 0x3df1add4 # initialize rs1
csrrs x28, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x27, 0x0abf2988 # initialize rs1
csrrs x29, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0xdfc0b9f1 # initialize rs1
csrrs x30, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x15, 0x5b3c1877 # initialize rs1
csrrs x31, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0x00000000 # initialize rs1
csrrs x12, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x3, 0x00000001 # initialize rs1
csrrs x10, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x17, 0x00000002 # initialize rs1
csrrs x28, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x19, 0x80000000 # initialize rs1
csrrs x8, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x27, 0x80000001 # initialize rs1
csrrs x3, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x1, 0x7fffffff # initialize rs1
csrrs x5, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x31, 0x7ffffffe # initialize rs1
csrrs x7, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0xffffffff # initialize rs1
csrrs x8, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0xfffffffe # initialize rs1
csrrs x26, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x5, 0x5bbc8872 # initialize rs1
csrrs x10, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rs1
csrrs x21, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x3, 0x55555555 # initialize rs1
csrrs x25, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x6b5c2bb7 # initialize rs1
csrrs x0, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xdcc226d1 # initialize rs1
csrrs x1, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x6376f4e4 # initialize rs1
csrrs x2, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x255d8946 # initialize rs1
csrrs x3, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x58fbe9be # initialize rs1
csrrs x4, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc0cfe81d # initialize rs1
csrrs x5, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa5aec0cd # initialize rs1
csrrs x6, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf176182d # initialize rs1
csrrs x7, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9e922a04 # initialize rs1
csrrs x8, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf00ba521 # initialize rs1
csrrs x9, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x2aa24a43 # initialize rs1
csrrs x10, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x0a02bfaa # initialize rs1
csrrs x11, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xeff4b02d # initialize rs1
csrrs x12, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe2d9f1db # initialize rs1
csrrs x13, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xcd884ffc # initialize rs1
csrrs x14, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xbd25719b # initialize rs1
csrrs x15, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x083ddad8 # initialize rs1
csrrs x16, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x606b6caf # initialize rs1
csrrs x17, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xbd51c8a7 # initialize rs1
csrrs x18, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xff2c2347 # initialize rs1
csrrs x19, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x5efe187b # initialize rs1
csrrs x20, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x6f6a9c10 # initialize rs1
csrrs x21, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x2545476e # initialize rs1
csrrs x22, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x7361184c # initialize rs1
csrrs x23, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x96cbc62a # initialize rs1
csrrs x24, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xe04e5735 # initialize rs1
csrrs x25, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x5ed630fd # initialize rs1
csrrs x26, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x4d907517 # initialize rs1
csrrs x27, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x8acf4e83 # initialize rs1
csrrs x28, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x122df66d # initialize rs1
csrrs x29, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xfc620e81 # initialize rs1
csrrs x30, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x3a755d75 # initialize rs1
csrrs x31, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x20, x21 # perform first operation
csrrs x2, mscratch, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x18, x7 # perform first operation
csrrs x24, mscratch, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x13, x31 # perform first operation
csrrs x20, mscratch, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x13, x30 # perform first operation
csrrs x13, mscratch, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x21, x30 # perform first operation
csrrs x21, mscratch, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x9, x2 # perform first operation
csrrs x9, mscratch, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x13, x15 # perform first operation
csrrs x25, mscratch, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x19, x12 # perform first operation
csrrs x8, mscratch, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x14, x11 # perform first operation
csrrs x25, mscratch, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x26, x5, x27 # perform first operation
csrrs x5, mscratch, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x24, x8 # perform first operation
csrrs x8, mscratch, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x21, x2 # perform first operation
csrrs x25, mscratch, x28 # perform second (triggering) operation

#.EQU SIGSIZE,432


// ******************
// Tests from: WALLY-COV-csrrc.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x94120180 # initialize rs1
csrrc x22, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xa50f2674 # initialize rs1
csrrc x5, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x1cba44c4 # initialize rs1
csrrc x19, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x8a7de794 # initialize rs1
csrrc x24, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb1ba7a11 # initialize rs1
csrrc x14, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7447d52b # initialize rs1
csrrc x18, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xed9fae38 # initialize rs1
csrrc x10, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x713f25c0 # initialize rs1
csrrc x13, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xebe08873 # initialize rs1
csrrc x2, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x3e8b48bf # initialize rs1
csrrc x5, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xc5c6dc90 # initialize rs1
csrrc x18, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xcffc512b # initialize rs1
csrrc x25, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x66078a7d # initialize rs1
csrrc x1, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x25d240f8 # initialize rs1
csrrc x10, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xfd0e88f5 # initialize rs1
csrrc x12, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x26557b36 # initialize rs1
csrrc x11, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x62a4c060 # initialize rs1
csrrc x15, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x6acaf8a6 # initialize rs1
csrrc x1, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x6b7d1eba # initialize rs1
csrrc x13, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xd4f7d0a9 # initialize rs1
csrrc x9, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xdca0ab41 # initialize rs1
csrrc x30, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x253ebbed # initialize rs1
csrrc x15, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x5a8349df # initialize rs1
csrrc x2, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x9e364604 # initialize rs1
csrrc x17, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x52850f5e # initialize rs1
csrrc x31, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x5bf17dc3 # initialize rs1
csrrc x20, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x6a3cc9f3 # initialize rs1
csrrc x8, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x53c5b971 # initialize rs1
csrrc x17, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x40713b79 # initialize rs1
csrrc x11, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xa948f352 # initialize rs1
csrrc x24, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x022324bd # initialize rs1
csrrc x10, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x4f95c27a # initialize rs1
csrrc x16, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 124)

# Testcase cp_rd (Test destination rd = x0)
li x7, 0xa7e2b232 # initialize rs1
csrrc x0, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x25, 0xf20839de # initialize rs1
csrrc x1, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x15, 0x182ad5dd # initialize rs1
csrrc x2, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x27, 0x8705c3ae # initialize rs1
csrrc x3, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0xbb1223d2 # initialize rs1
csrrc x4, mscratch, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x5afecf11 # initialize rs1
csrrc x5, mscratch, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0xc5f116f8 # initialize rs1
csrrc x6, mscratch, x14 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xd8b98075 # initialize rs1
csrrc x7, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x21, 0x4dc8587e # initialize rs1
csrrc x8, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x27, 0xb751c2fb # initialize rs1
csrrc x9, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x693c9ef6 # initialize rs1
csrrc x10, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0x955bf0d7 # initialize rs1
csrrc x11, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0x15d08bd6 # initialize rs1
csrrc x12, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0xee59f832 # initialize rs1
csrrc x13, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x28, 0x8c50d084 # initialize rs1
csrrc x14, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x23, 0x87e37998 # initialize rs1
csrrc x15, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0xfe49a87e # initialize rs1
csrrc x16, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x9, 0x66da56c4 # initialize rs1
csrrc x17, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x23, 0x0859ec31 # initialize rs1
csrrc x18, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x17, 0xcf8f4836 # initialize rs1
csrrc x19, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x12, 0xcd11f799 # initialize rs1
csrrc x20, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x22, 0x3c34c03f # initialize rs1
csrrc x21, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0x0e24127e # initialize rs1
csrrc x22, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x5, 0x7e17ce19 # initialize rs1
csrrc x23, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x27, 0x182eec40 # initialize rs1
csrrc x24, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x18, 0x7fd0da09 # initialize rs1
csrrc x25, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x22, 0x69417c72 # initialize rs1
csrrc x26, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x3, 0x1bceba37 # initialize rs1
csrrc x27, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x30, 0x0d92e45b # initialize rs1
csrrc x28, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0x169f5ea8 # initialize rs1
csrrc x29, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0x7fb51275 # initialize rs1
csrrc x30, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x2, 0x67386893 # initialize rs1
csrrc x31, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x00000000 # initialize rs1
csrrc x25, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x3, 0x00000001 # initialize rs1
csrrc x17, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x00000002 # initialize rs1
csrrc x26, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x22, 0x80000000 # initialize rs1
csrrc x13, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x24, 0x80000001 # initialize rs1
csrrc x30, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x29, 0x7fffffff # initialize rs1
csrrc x7, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x3, 0x7ffffffe # initialize rs1
csrrc x21, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0xffffffff # initialize rs1
csrrc x17, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x1, 0xfffffffe # initialize rs1
csrrc x19, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x31, 0x5bbc8872 # initialize rs1
csrrc x5, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x14, 0xaaaaaaaa # initialize rs1
csrrc x9, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x6, 0x55555555 # initialize rs1
csrrc x16, mscratch, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xfb0d1b94 # initialize rs1
csrrc x0, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xcacaabf6 # initialize rs1
csrrc x1, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xdbcb04a1 # initialize rs1
csrrc x2, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd6788730 # initialize rs1
csrrc x3, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xee91a8ee # initialize rs1
csrrc x4, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x87cad2a3 # initialize rs1
csrrc x5, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7f49f4a3 # initialize rs1
csrrc x6, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x416286cc # initialize rs1
csrrc x7, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x49e0149f # initialize rs1
csrrc x8, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x3356091e # initialize rs1
csrrc x9, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x0e792708 # initialize rs1
csrrc x10, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x727b6c0f # initialize rs1
csrrc x11, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3a727b6a # initialize rs1
csrrc x12, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xf315dd59 # initialize rs1
csrrc x13, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xf6ca369c # initialize rs1
csrrc x14, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x244ee0cb # initialize rs1
csrrc x15, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xc293f7ed # initialize rs1
csrrc x16, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xcf92e9c4 # initialize rs1
csrrc x17, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x123f26a0 # initialize rs1
csrrc x18, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xe9b02b4a # initialize rs1
csrrc x19, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3e02783e # initialize rs1
csrrc x20, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd42f1a58 # initialize rs1
csrrc x21, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x65dd62d7 # initialize rs1
csrrc x22, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa7b27490 # initialize rs1
csrrc x23, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x4820687b # initialize rs1
csrrc x24, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xe29a14c3 # initialize rs1
csrrc x25, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x13debd74 # initialize rs1
csrrc x26, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x8f43703b # initialize rs1
csrrc x27, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x232df957 # initialize rs1
csrrc x28, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x540748c8 # initialize rs1
csrrc x29, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xba8e52b4 # initialize rs1
csrrc x30, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x9343ca03 # initialize rs1
csrrc x31, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x18, x13 # perform first operation
csrrc x31, mscratch, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x27, x22 # perform first operation
csrrc x11, mscratch, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x31, x29 # perform first operation
csrrc x16, mscratch, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x27, x20 # perform first operation
csrrc x11, mscratch, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x1, x25 # perform first operation
csrrc x12, mscratch, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x23, x16 # perform first operation
csrrc x23, mscratch, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x31, x14 # perform first operation
csrrc x9, mscratch, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x13, x2 # perform first operation
csrrc x7, mscratch, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x23, x13 # perform first operation
csrrc x14, mscratch, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x24, x6 # perform first operation
csrrc x24, mscratch, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x5, x3 # perform first operation
csrrc x3, mscratch, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x21, x22 # perform first operation
csrrc x20, mscratch, x29 # perform second (triggering) operation

#.EQU SIGSIZE,432


// ******************
// Tests from: WALLY-COV-csrrci.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rd (Test destination rd = x0)
li x22, 0xc3a5fbc3 # initialize rs1
csrrci x0, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
li x16, 0x7f61242d # initialize rs1
csrrci x1, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0xe6ec5511 # initialize rs1
csrrci x2, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xa68d612c # initialize rs1
csrrci x3, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0xc86ae0e9 # initialize rs1
csrrci x4, mscratch, 22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0x34ccb5c2 # initialize rs1
csrrci x5, mscratch, 10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0x1ae6b123 # initialize rs1
csrrci x6, mscratch, 22 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0xeaf03eff # initialize rs1
csrrci x7, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
li x17, 0x59561fcf # initialize rs1
csrrci x8, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
li x18, 0xdc56b2f8 # initialize rs1
csrrci x9, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x330cd5d9 # initialize rs1
csrrci x10, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
li x19, 0x982321ad # initialize rs1
csrrci x11, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
li x13, 0xeadc2ab5 # initialize rs1
csrrci x12, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
li x16, 0x5f4acc8a # initialize rs1
csrrci x13, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0x75f34060 # initialize rs1
csrrci x14, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
li x21, 0x8b98b78c # initialize rs1
csrrci x15, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
li x20, 0xb3643f67 # initialize rs1
csrrci x16, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x13bac282 # initialize rs1
csrrci x17, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
li x20, 0xa372a3b1 # initialize rs1
csrrci x18, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
li x9, 0x8e930d23 # initialize rs1
csrrci x19, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
li x19, 0x43d61406 # initialize rs1
csrrci x20, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
li x27, 0xdfab69db # initialize rs1
csrrci x21, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x1d8fa053 # initialize rs1
csrrci x22, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
li x16, 0x905c673e # initialize rs1
csrrci x23, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0xed6a12cd # initialize rs1
csrrci x24, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
li x6, 0x263c9b42 # initialize rs1
csrrci x25, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
li x19, 0x7f473795 # initialize rs1
csrrci x26, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
li x23, 0x0d23f075 # initialize rs1
csrrci x27, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
li x11, 0x4e9e6a7a # initialize rs1
csrrci x28, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
li x14, 0xce4437c5 # initialize rs1
csrrci x29, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x02824286 # initialize rs1
csrrci x30, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0x9a9fc0f6 # initialize rs1
csrrci x31, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_uimm_5 (Test bit = 0)
li x11, 0xd17836ab # initialize rs1
csrrci x8, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_uimm_5 (Test bit = 1)
li x14, 0x78ae15e0 # initialize rs1
csrrci x12, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 132)

# Testcase cp_uimm_5 (Test bit = 2)
li x9, 0xda3dc783 # initialize rs1
csrrci x31, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 136)

# Testcase cp_uimm_5 (Test bit = 3)
li x18, 0x3a8481df # initialize rs1
csrrci x11, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 140)

# Testcase cp_uimm_5 (Test bit = 4)
li x27, 0x1827ea04 # initialize rs1
csrrci x29, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 144)

# Testcase cp_uimm_5 (Test bit = 5)
li x24, 0xe6abf9fb # initialize rs1
csrrci x21, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 148)

# Testcase cp_uimm_5 (Test bit = 6)
li x31, 0x23229178 # initialize rs1
csrrci x3, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 152)

# Testcase cp_uimm_5 (Test bit = 7)
li x31, 0x4233a438 # initialize rs1
csrrci x24, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 156)

# Testcase cp_uimm_5 (Test bit = 8)
li x13, 0xdaca37ac # initialize rs1
csrrci x16, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 160)

# Testcase cp_uimm_5 (Test bit = 9)
li x7, 0x4d33f06f # initialize rs1
csrrci x19, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 164)

# Testcase cp_uimm_5 (Test bit = 10)
li x25, 0x653caee5 # initialize rs1
csrrci x20, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cp_uimm_5 (Test bit = 11)
li x10, 0x796e7064 # initialize rs1
csrrci x25, mscratch, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 172)

# Testcase cp_uimm_5 (Test bit = 12)
li x13, 0x116234bc # initialize rs1
csrrci x26, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 176)

# Testcase cp_uimm_5 (Test bit = 13)
li x18, 0x1219b0cb # initialize rs1
csrrci x27, mscratch, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 180)

# Testcase cp_uimm_5 (Test bit = 14)
li x3, 0x406ec979 # initialize rs1
csrrci x13, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_uimm_5 (Test bit = 15)
li x8, 0x6947ceb1 # initialize rs1
csrrci x10, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 188)

# Testcase cp_uimm_5 (Test bit = 16)
li x25, 0xe4f81fc9 # initialize rs1
csrrci x27, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 192)

# Testcase cp_uimm_5 (Test bit = 17)
li x7, 0x24912871 # initialize rs1
csrrci x21, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 196)

# Testcase cp_uimm_5 (Test bit = 18)
li x24, 0x8971fc81 # initialize rs1
csrrci x23, mscratch, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 200)

# Testcase cp_uimm_5 (Test bit = 19)
li x11, 0x19a32a8d # initialize rs1
csrrci x10, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 204)

# Testcase cp_uimm_5 (Test bit = 20)
li x8, 0x03dfa39e # initialize rs1
csrrci x16, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cp_uimm_5 (Test bit = 21)
li x17, 0xf2424112 # initialize rs1
csrrci x7, mscratch, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 212)

# Testcase cp_uimm_5 (Test bit = 22)
li x11, 0x05ab5350 # initialize rs1
csrrci x17, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 216)

# Testcase cp_uimm_5 (Test bit = 23)
li x16, 0xc69d477c # initialize rs1
csrrci x27, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 220)

# Testcase cp_uimm_5 (Test bit = 24)
li x22, 0x8aca56ed # initialize rs1
csrrci x18, mscratch, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cp_uimm_5 (Test bit = 25)
li x7, 0x9e0a3397 # initialize rs1
csrrci x22, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 228)

# Testcase cp_uimm_5 (Test bit = 26)
li x19, 0x9704915d # initialize rs1
csrrci x1, mscratch, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 232)

# Testcase cp_uimm_5 (Test bit = 27)
li x28, 0xa5d17843 # initialize rs1
csrrci x30, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 236)

# Testcase cp_uimm_5 (Test bit = 28)
li x2, 0xc12d521c # initialize rs1
csrrci x5, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 240)

# Testcase cp_uimm_5 (Test bit = 29)
li x8, 0xf811965a # initialize rs1
csrrci x20, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 244)

# Testcase cp_uimm_5 (Test bit = 30)
li x17, 0x7cf697de # initialize rs1
csrrci x19, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 248)

# Testcase cp_uimm_5 (Test bit = 31)
li x24, 0x0310e73e # initialize rs1
csrrci x18, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 252)

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x9, x26 # perform first operation
csrrci x16, mscratch, 7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x31, x18 # perform first operation
csrrci x10, mscratch, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x2, x11 # perform first operation
csrrci x9, mscratch, 4 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x6, x5 # perform first operation
csrrci x14, mscratch, 30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x2, x22 # perform first operation
csrrci x5, mscratch, 25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x6, x18 # perform first operation
csrrci x7, mscratch, 21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x25, x10 # perform first operation
csrrci x25, mscratch, 8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x24, x5 # perform first operation
csrrci x5, mscratch, 20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x14, x9 # perform first operation
csrrci x17, mscratch, 6 # perform second (triggering) operation

#.EQU SIGSIZE,256


// ******************
// Tests from: WALLY-COV-csrrwi.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rd (Test destination rd = x0)
li x8, 0x716572d2 # initialize rs1
csrrwi x0, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 0)

# Testcase cp_rd (Test destination rd = x1)
li x23, 0x1b4b39fe # initialize rs1
csrrwi x1, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase cp_rd (Test destination rd = x2)
li x1, 0xf7ee0ad2 # initialize rs1
csrrwi x2, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rd (Test destination rd = x3)
li x16, 0x930d2fe1 # initialize rs1
csrrwi x3, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 12)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x26, 0x609ed1c4 # initialize rs1
csrrwi x4, mscratch, 9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0x124f760b # initialize rs1
csrrwi x5, mscratch, 25 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 20)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x3517e6ec # initialize rs1
csrrwi x6, mscratch, 8 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 24)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0xf368f4c2 # initialize rs1
csrrwi x7, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 28)

# Testcase cp_rd (Test destination rd = x8)
li x12, 0x2a2d751a # initialize rs1
csrrwi x8, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cp_rd (Test destination rd = x9)
li x18, 0xf809fd6e # initialize rs1
csrrwi x9, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 36)

# Testcase cp_rd (Test destination rd = x10)
li x15, 0x5247ae3f # initialize rs1
csrrwi x10, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cp_rd (Test destination rd = x11)
li x5, 0xc6770df7 # initialize rs1
csrrwi x11, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 44)

# Testcase cp_rd (Test destination rd = x12)
li x13, 0x65a81140 # initialize rs1
csrrwi x12, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 48)

# Testcase cp_rd (Test destination rd = x13)
li x17, 0xbd1e9aad # initialize rs1
csrrwi x13, mscratch, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 52)

# Testcase cp_rd (Test destination rd = x14)
li x1, 0x9322e57c # initialize rs1
csrrwi x14, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rd (Test destination rd = x15)
li x21, 0x8106f9f5 # initialize rs1
csrrwi x15, mscratch, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 60)

# Testcase cp_rd (Test destination rd = x16)
li x6, 0xf2a2eaae # initialize rs1
csrrwi x16, mscratch, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xfd15fed4 # initialize rs1
csrrwi x17, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 68)

# Testcase cp_rd (Test destination rd = x18)
li x9, 0xb09ba707 # initialize rs1
csrrwi x18, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rd (Test destination rd = x19)
li x1, 0x1b598b54 # initialize rs1
csrrwi x19, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 76)

# Testcase cp_rd (Test destination rd = x20)
li x3, 0x7d7b8c04 # initialize rs1
csrrwi x20, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cp_rd (Test destination rd = x21)
li x22, 0x6808a4db # initialize rs1
csrrwi x21, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 84)

# Testcase cp_rd (Test destination rd = x22)
li x2, 0x935f12f5 # initialize rs1
csrrwi x22, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0x606a2f54 # initialize rs1
csrrwi x23, mscratch, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 92)

# Testcase cp_rd (Test destination rd = x24)
li x10, 0x408ab3f6 # initialize rs1
csrrwi x24, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0xd2ae2f41 # initialize rs1
csrrwi x25, mscratch, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x87a40b8a # initialize rs1
csrrwi x26, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rd (Test destination rd = x27)
li x1, 0xf6ccbfae # initialize rs1
csrrwi x27, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 108)

# Testcase cp_rd (Test destination rd = x28)
li x25, 0xd4b9057e # initialize rs1
csrrwi x28, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0x66bf34af # initialize rs1
csrrwi x29, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 116)

# Testcase cp_rd (Test destination rd = x30)
li x16, 0x037b2729 # initialize rs1
csrrwi x30, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0x58b51081 # initialize rs1
csrrwi x31, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 124)

# Testcase cp_uimm_5 (Test bit = 0)
li x16, 0xf4369069 # initialize rs1
csrrwi x20, mscratch, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 128)

# Testcase cp_uimm_5 (Test bit = 1)
li x29, 0xb865b1fb # initialize rs1
csrrwi x9, mscratch, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 132)

# Testcase cp_uimm_5 (Test bit = 2)
li x16, 0x7e6ed134 # initialize rs1
csrrwi x25, mscratch, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cp_uimm_5 (Test bit = 3)
li x7, 0x29afe670 # initialize rs1
csrrwi x22, mscratch, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 140)

# Testcase cp_uimm_5 (Test bit = 4)
li x24, 0x9ac7225c # initialize rs1
csrrwi x21, mscratch, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 144)

# Testcase cp_uimm_5 (Test bit = 5)
li x26, 0xa39532a7 # initialize rs1
csrrwi x29, mscratch, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 148)

# Testcase cp_uimm_5 (Test bit = 6)
li x20, 0x27084a70 # initialize rs1
csrrwi x23, mscratch, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 152)

# Testcase cp_uimm_5 (Test bit = 7)
li x30, 0x0ec59200 # initialize rs1
csrrwi x31, mscratch, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 156)

# Testcase cp_uimm_5 (Test bit = 8)
li x15, 0x0c1d7d85 # initialize rs1
csrrwi x8, mscratch, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_uimm_5 (Test bit = 9)
li x23, 0xeb4f1d92 # initialize rs1
csrrwi x16, mscratch, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 164)

# Testcase cp_uimm_5 (Test bit = 10)
li x10, 0x327ce778 # initialize rs1
csrrwi x14, mscratch, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 168)

# Testcase cp_uimm_5 (Test bit = 11)
li x15, 0x90cdcb2e # initialize rs1
csrrwi x25, mscratch, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 172)

# Testcase cp_uimm_5 (Test bit = 12)
li x29, 0x0310a3f3 # initialize rs1
csrrwi x16, mscratch, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_uimm_5 (Test bit = 13)
li x22, 0x363bdc6d # initialize rs1
csrrwi x15, mscratch, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 180)

# Testcase cp_uimm_5 (Test bit = 14)
li x22, 0x18072d54 # initialize rs1
csrrwi x8, mscratch, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 184)

# Testcase cp_uimm_5 (Test bit = 15)
li x24, 0x11c27c82 # initialize rs1
csrrwi x12, mscratch, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 188)

# Testcase cp_uimm_5 (Test bit = 16)
li x9, 0xc4c364ff # initialize rs1
csrrwi x13, mscratch, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cp_uimm_5 (Test bit = 17)
li x28, 0xc97d1259 # initialize rs1
csrrwi x30, mscratch, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 196)

# Testcase cp_uimm_5 (Test bit = 18)
li x8, 0x0ca1e90c # initialize rs1
csrrwi x14, mscratch, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_uimm_5 (Test bit = 19)
li x12, 0x3f1a4e82 # initialize rs1
csrrwi x30, mscratch, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 204)

# Testcase cp_uimm_5 (Test bit = 20)
li x16, 0xd8bfec93 # initialize rs1
csrrwi x8, mscratch, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 208)

# Testcase cp_uimm_5 (Test bit = 21)
li x6, 0x9d40ca36 # initialize rs1
csrrwi x5, mscratch, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 212)

# Testcase cp_uimm_5 (Test bit = 22)
li x7, 0x045792f5 # initialize rs1
csrrwi x18, mscratch, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 216)

# Testcase cp_uimm_5 (Test bit = 23)
li x24, 0x2bdeebe7 # initialize rs1
csrrwi x30, mscratch, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 220)

# Testcase cp_uimm_5 (Test bit = 24)
li x25, 0x4856be7b # initialize rs1
csrrwi x17, mscratch, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 224)

# Testcase cp_uimm_5 (Test bit = 25)
li x7, 0x1936c229 # initialize rs1
csrrwi x14, mscratch, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 228)

# Testcase cp_uimm_5 (Test bit = 26)
li x11, 0x07b328c8 # initialize rs1
csrrwi x12, mscratch, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_uimm_5 (Test bit = 27)
li x7, 0x8a5aedf5 # initialize rs1
csrrwi x13, mscratch, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 236)

# Testcase cp_uimm_5 (Test bit = 28)
li x9, 0x074c8c12 # initialize rs1
csrrwi x6, mscratch, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 240)

# Testcase cp_uimm_5 (Test bit = 29)
li x3, 0xaa2cbacf # initialize rs1
csrrwi x7, mscratch, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 244)

# Testcase cp_uimm_5 (Test bit = 30)
li x18, 0x7c04e70d # initialize rs1
csrrwi x17, mscratch, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 248)

# Testcase cp_uimm_5 (Test bit = 31)
li x10, 0x173e8b8d # initialize rs1
csrrwi x22, mscratch, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 252)

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x28, x22 # perform first operation
csrrwi x10, mscratch, 12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x14, x25 # perform first operation
csrrwi x8, mscratch, 8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x2, x25 # perform first operation
csrrwi x13, mscratch, 15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x1, x17 # perform first operation
csrrwi x24, mscratch, 14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x6, x2 # perform first operation
csrrwi x29, mscratch, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x15, x23 # perform first operation
csrrwi x27, mscratch, 23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x12, x20 # perform first operation
csrrwi x12, mscratch, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x26, x14 # perform first operation
csrrwi x14, mscratch, 25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x1, x7 # perform first operation
csrrwi x29, mscratch, 30 # perform second (triggering) operation

#.EQU SIGSIZE,256
.EQU SIGSIZE,2064 #combined


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
