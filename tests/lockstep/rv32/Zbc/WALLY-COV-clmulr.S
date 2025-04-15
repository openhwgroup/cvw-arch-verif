///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbc/WALLY-COV-clmulr.S
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

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x899a9db2 # initialize rs1
li x8, 0xb99031fd # initialize rs2
clmulr x3, x0, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xf9c97312 # initialize rs1
li x18, 0xf30c1633 # initialize rs2
clmulr x7, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x3fd4af0d # initialize rs1
li x7, 0xf465c33c # initialize rs2
clmulr x1, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x80d31eea # initialize rs1
li x18, 0x54b3ca06 # initialize rs2
clmulr x2, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb135bf7a # initialize rs1
li x6, 0x27c918cd # initialize rs2
clmulr x13, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1d78f540 # initialize rs1
li x29, 0x4e7df97e # initialize rs2
clmulr x9, x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe9972236 # initialize rs1
li x20, 0x804ae6bc # initialize rs2
clmulr x24, x6, x20 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf5ed2c67 # initialize rs1
li x11, 0xaa50bc7f # initialize rs2
clmulr x26, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x6c44bc09 # initialize rs1
li x16, 0x27ca072f # initialize rs2
clmulr x31, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x6fb30177 # initialize rs1
li x30, 0x8b18fee3 # initialize rs2
clmulr x16, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x73f2653a # initialize rs1
li x18, 0x72603bf7 # initialize rs2
clmulr x16, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xce504ab5 # initialize rs1
li x2, 0xfaca3482 # initialize rs2
clmulr x25, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x10f8f327 # initialize rs1
li x6, 0x9e1bd574 # initialize rs2
clmulr x18, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xafb6ffc6 # initialize rs1
li x31, 0xb203dc70 # initialize rs2
clmulr x6, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x97b123d3 # initialize rs1
li x15, 0x43553a90 # initialize rs2
clmulr x30, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xae8a3731 # initialize rs1
li x27, 0xce74a93e # initialize rs2
clmulr x18, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xe1369d39 # initialize rs1
li x11, 0xd7a46f33 # initialize rs2
clmulr x1, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x87f0cea8 # initialize rs1
li x31, 0x0e58afe7 # initialize rs2
clmulr x2, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x04f16541 # initialize rs1
li x6, 0x7cad3052 # initialize rs2
clmulr x26, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x5c601504 # initialize rs1
li x10, 0x49df37f4 # initialize rs2
clmulr x30, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x11b2c069 # initialize rs1
li x10, 0x9d162bd1 # initialize rs2
clmulr x7, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x78e26e5b # initialize rs1
li x24, 0xa1945b69 # initialize rs2
clmulr x30, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xdf118f81 # initialize rs1
li x6, 0x0ccd0452 # initialize rs2
clmulr x20, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb7110e14 # initialize rs1
li x12, 0x06a298b9 # initialize rs2
clmulr x2, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xddafe0ff # initialize rs1
li x2, 0x0f718640 # initialize rs2
clmulr x22, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xf60866df # initialize rs1
li x5, 0xdf0edeab # initialize rs2
clmulr x12, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xd8aafe58 # initialize rs1
li x13, 0x69b34717 # initialize rs2
clmulr x16, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x5d10ff98 # initialize rs1
li x12, 0x099a5028 # initialize rs2
clmulr x23, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x9f53752b # initialize rs1
li x10, 0x9bcb323b # initialize rs2
clmulr x23, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xcfe94724 # initialize rs1
li x22, 0xfd60a21c # initialize rs2
clmulr x6, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xbea20629 # initialize rs1
li x16, 0x5e3324ee # initialize rs2
clmulr x18, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xc104babf # initialize rs1
li x15, 0x24ff1d0d # initialize rs2
clmulr x27, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x17, 0x9753c3ea # initialize rs1
li x0, 0x9f56005e # initialize rs2
clmulr x25, x17, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x18, 0x5d287af9 # initialize rs1
li x1, 0xa6dc7435 # initialize rs2
clmulr x8, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x9, 0xa84d8410 # initialize rs1
li x2, 0xd8bea29f # initialize rs2
clmulr x28, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x26, 0x550fba18 # initialize rs1
li x3, 0xc03354ce # initialize rs2
clmulr x24, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0xad344e80 # initialize rs1
li x4, 0x19aba780 # initialize rs2
clmulr x26, x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0x5fec0d2a # initialize rs1
li x5, 0x5254e859 # initialize rs2
clmulr x21, x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x825a9b96 # initialize rs1
li x6, 0x3b9be56b # initialize rs2
clmulr x27, x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x27, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0x4b864894 # initialize rs1
li x7, 0x2b736b35 # initialize rs2
clmulr x30, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x6, 0x9caa7235 # initialize rs1
li x8, 0x27a5b8de # initialize rs2
clmulr x29, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x3, 0x92dafb02 # initialize rs1
li x9, 0xdb822224 # initialize rs2
clmulr x13, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x12, 0x27d99823 # initialize rs1
li x10, 0x095da110 # initialize rs2
clmulr x3, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x19, 0x7f24c36a # initialize rs1
li x11, 0xc6e66f59 # initialize rs2
clmulr x1, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x26, 0x36b6c61c # initialize rs1
li x12, 0x24078150 # initialize rs2
clmulr x10, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x21, 0xaa27519a # initialize rs1
li x13, 0xc9ad44af # initialize rs2
clmulr x18, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x3, 0xc8661b15 # initialize rs1
li x14, 0x61261dbd # initialize rs2
clmulr x25, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x5, 0x9cdee5ee # initialize rs1
li x15, 0x55c67787 # initialize rs2
clmulr x19, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x28, 0x806f7e64 # initialize rs1
li x16, 0x5f267274 # initialize rs2
clmulr x15, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x23, 0x59ba8c51 # initialize rs1
li x17, 0x062128de # initialize rs2
clmulr x3, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x11, 0x74e4160b # initialize rs1
li x18, 0x160a8df3 # initialize rs2
clmulr x9, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x29, 0x7178258b # initialize rs1
li x19, 0xaa050a12 # initialize rs2
clmulr x14, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x26, 0x405a8487 # initialize rs1
li x20, 0xf521e06c # initialize rs2
clmulr x5, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x17, 0x9628edc6 # initialize rs1
li x21, 0xa672c8ff # initialize rs2
clmulr x31, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x8, 0x05d49574 # initialize rs1
li x22, 0x31d1ae31 # initialize rs2
clmulr x25, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x26, 0x7aa917ac # initialize rs1
li x23, 0x80c25914 # initialize rs2
clmulr x31, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x7, 0x9d90a469 # initialize rs1
li x24, 0x53696d6c # initialize rs2
clmulr x14, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x31, 0x37f7a404 # initialize rs1
li x25, 0xaf7d157d # initialize rs2
clmulr x11, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x1, 0xbeefd316 # initialize rs1
li x26, 0x2ab36718 # initialize rs2
clmulr x19, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x12, 0x7d6c5cc2 # initialize rs1
li x27, 0x387a2c37 # initialize rs2
clmulr x25, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x30, 0x1fd377ba # initialize rs1
li x28, 0xb43bc1ec # initialize rs2
clmulr x24, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x19, 0xe641f5b8 # initialize rs1
li x29, 0x3e68e4e1 # initialize rs2
clmulr x13, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x24, 0xc4ebe278 # initialize rs1
li x30, 0x3b4c69fe # initialize rs2
clmulr x28, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x13, 0x91456f17 # initialize rs1
li x31, 0x5965dea7 # initialize rs2
clmulr x27, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 252)

# Testcase cp_rd (Test destination rd = x0)
li x28, 0x97225ef4 # initialize rs1
li x21, 0xa281d24c # initialize rs2
clmulr x0, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x6, 0x779a5df7 # initialize rs1
li x27, 0x32bf5ba7 # initialize rs2
clmulr x1, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x9, 0x061c0e36 # initialize rs1
li x24, 0xabc86656 # initialize rs2
clmulr x2, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x23, 0xe08e5996 # initialize rs1
li x11, 0x2e96b4af # initialize rs2
clmulr x3, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0xd8902c5f # initialize rs1
li x28, 0x168198d8 # initialize rs2
clmulr x4, x23, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0x6b60acb6 # initialize rs1
li x3, 0x726d2967 # initialize rs2
clmulr x5, x10, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x992aa248 # initialize rs1
li x27, 0x551be783 # initialize rs2
clmulr x6, x29, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0xba05bd76 # initialize rs1
li x22, 0x1cf15311 # initialize rs2
clmulr x7, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x27, 0x5baea441 # initialize rs1
li x31, 0xb1331dd0 # initialize rs2
clmulr x8, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x29, 0xd71e7064 # initialize rs1
li x3, 0x63c434f9 # initialize rs2
clmulr x9, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x3, 0xe5e37a90 # initialize rs1
li x7, 0x36414583 # initialize rs2
clmulr x10, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x18, 0xea8fd3b9 # initialize rs1
li x15, 0xa140dfd4 # initialize rs2
clmulr x11, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x19, 0xb2028551 # initialize rs1
li x21, 0x7d09ae30 # initialize rs2
clmulr x12, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x24, 0x75408530 # initialize rs1
li x17, 0xa1214551 # initialize rs2
clmulr x13, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x45511742 # initialize rs1
li x31, 0x335b5d07 # initialize rs2
clmulr x14, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x23, 0x566aa336 # initialize rs1
li x7, 0x7376cc76 # initialize rs2
clmulr x15, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x7, 0xfe95e62a # initialize rs1
li x19, 0x9de6a9df # initialize rs2
clmulr x16, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x25, 0xec1c2f04 # initialize rs1
li x5, 0x85049fb5 # initialize rs2
clmulr x17, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x27, 0x7a1cc194 # initialize rs1
li x31, 0x211400b8 # initialize rs2
clmulr x18, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x27, 0xbe0177cd # initialize rs1
li x22, 0xe7c4078b # initialize rs2
clmulr x19, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x30, 0xc1f97994 # initialize rs1
li x23, 0x1f3d5895 # initialize rs2
clmulr x20, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x7, 0x112e5372 # initialize rs1
li x27, 0x9a58d7c4 # initialize rs2
clmulr x21, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x8, 0x9a43c393 # initialize rs1
li x25, 0x167a4e97 # initialize rs2
clmulr x22, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x20, 0x166d4c2e # initialize rs1
li x26, 0x2135720c # initialize rs2
clmulr x23, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x9, 0xd4d2d74e # initialize rs1
li x20, 0xae4a9846 # initialize rs2
clmulr x24, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x15, 0x9c8034cc # initialize rs1
li x11, 0x32d46d02 # initialize rs2
clmulr x25, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x29, 0x4231f90a # initialize rs1
li x24, 0xa1466e0e # initialize rs2
clmulr x26, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x25, 0x789624f2 # initialize rs1
li x9, 0x5d474e20 # initialize rs2
clmulr x27, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x13, 0x41441b5b # initialize rs1
li x16, 0x0649167d # initialize rs2
clmulr x28, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x8, 0xba0afeed # initialize rs1
li x12, 0x72375e4a # initialize rs2
clmulr x29, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x29, 0xfbd08c16 # initialize rs1
li x31, 0x2bde5afd # initialize rs2
clmulr x30, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x28, 0x4822f5bd # initialize rs1
li x3, 0x2ce58f72 # initialize rs2
clmulr x31, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x00000000 # initialize rs1
li x27, 0x46da35ac # initialize rs2
clmulr x28, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x00000001 # initialize rs1
li x19, 0x2c7447ce # initialize rs2
clmulr x11, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x31, 0x00000002 # initialize rs1
li x25, 0x78cba21d # initialize rs2
clmulr x23, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x1, 0x80000000 # initialize rs1
li x13, 0xd3c80d77 # initialize rs2
clmulr x25, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x20, 0x80000001 # initialize rs1
li x13, 0x80448ab9 # initialize rs2
clmulr x27, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x8, 0x7fffffff # initialize rs1
li x14, 0x20e48b12 # initialize rs2
clmulr x22, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x8, 0x7ffffffe # initialize rs1
li x27, 0x467185e4 # initialize rs2
clmulr x9, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x31, 0xffffffff # initialize rs1
li x23, 0x4f7094a6 # initialize rs2
clmulr x16, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x30, 0xfffffffe # initialize rs1
li x6, 0xa9e28caa # initialize rs2
clmulr x28, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x16, 0x5bbc8872 # initialize rs1
li x24, 0xc786c2aa # initialize rs2
clmulr x17, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
li x24, 0x1903ff79 # initialize rs2
clmulr x1, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x15, 0x55555555 # initialize rs1
li x3, 0x83ae9d10 # initialize rs2
clmulr x24, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x27, 0x49c4d429 # initialize rs1
li x21, 0x00000000 # initialize rs2
clmulr x18, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0x14b9e19b # initialize rs1
li x1, 0x00000001 # initialize rs2
clmulr x15, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x15, 0x3c43061c # initialize rs1
li x27, 0x00000002 # initialize rs2
clmulr x24, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x22, 0x3088d6e5 # initialize rs1
li x16, 0x80000000 # initialize rs2
clmulr x24, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x17, 0x8cdd5963 # initialize rs1
li x7, 0x80000001 # initialize rs2
clmulr x1, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x2, 0x13e11485 # initialize rs1
li x22, 0x7fffffff # initialize rs2
clmulr x27, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x30, 0x13d05042 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
clmulr x20, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x1, 0xc7a7b358 # initialize rs1
li x19, 0xffffffff # initialize rs2
clmulr x18, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0xaafa156f # initialize rs1
li x3, 0xfffffffe # initialize rs2
clmulr x13, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x31, 0xfdfc0c25 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
clmulr x15, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x11, 0x41d95029 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
clmulr x17, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x17, 0x3c141d34 # initialize rs1
li x12, 0x55555555 # initialize rs2
clmulr x9, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x22, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
clmulr x30, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x15, 0x00000000 # initialize rs1
li x6, 0x00000001 # initialize rs2
clmulr x24, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x18, 0x00000000 # initialize rs1
li x10, 0x00000002 # initialize rs2
clmulr x20, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x12, 0x00000000 # initialize rs1
li x28, 0x80000000 # initialize rs2
clmulr x24, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x23, 0x00000000 # initialize rs1
li x21, 0x80000001 # initialize rs2
clmulr x12, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x23, 0x00000000 # initialize rs1
li x30, 0x7fffffff # initialize rs2
clmulr x8, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x1, 0x00000000 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
clmulr x24, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x25, 0x00000000 # initialize rs1
li x8, 0xffffffff # initialize rs2
clmulr x27, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x30, 0x00000000 # initialize rs1
li x12, 0xfffffffe # initialize rs2
clmulr x18, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x27, 0x00000000 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
clmulr x10, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x9, 0x00000000 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
clmulr x11, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x10, 0x00000000 # initialize rs1
li x11, 0x55555555 # initialize rs2
clmulr x1, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x31, 0x00000001 # initialize rs1
li x8, 0x00000000 # initialize rs2
clmulr x21, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x19, 0x00000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
clmulr x21, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x19, 0x00000001 # initialize rs1
li x25, 0x00000002 # initialize rs2
clmulr x31, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x31, 0x00000001 # initialize rs1
li x7, 0x80000000 # initialize rs2
clmulr x21, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x3, 0x00000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
clmulr x24, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x22, 0x00000001 # initialize rs1
li x20, 0x7fffffff # initialize rs2
clmulr x23, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x15, 0x00000001 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
clmulr x27, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x10, 0x00000001 # initialize rs1
li x18, 0xffffffff # initialize rs2
clmulr x29, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x5, 0x00000001 # initialize rs1
li x8, 0xfffffffe # initialize rs2
clmulr x7, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x24, 0x00000001 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
clmulr x3, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x26, 0x00000001 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
clmulr x3, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x13, 0x00000001 # initialize rs1
li x17, 0x55555555 # initialize rs2
clmulr x16, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x21, 0x00000002 # initialize rs1
li x28, 0x00000000 # initialize rs2
clmulr x18, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x9, 0x00000002 # initialize rs1
li x22, 0x00000001 # initialize rs2
clmulr x19, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x27, 0x00000002 # initialize rs1
li x8, 0x00000002 # initialize rs2
clmulr x15, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x31, 0x00000002 # initialize rs1
li x14, 0x80000000 # initialize rs2
clmulr x24, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x22, 0x00000002 # initialize rs1
li x8, 0x80000001 # initialize rs2
clmulr x25, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x23, 0x00000002 # initialize rs1
li x7, 0x7fffffff # initialize rs2
clmulr x15, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x16, 0x00000002 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
clmulr x29, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x13, 0x00000002 # initialize rs1
li x27, 0xffffffff # initialize rs2
clmulr x15, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x1, 0x00000002 # initialize rs1
li x20, 0xfffffffe # initialize rs2
clmulr x2, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x20, 0x00000002 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
clmulr x25, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x5, 0x00000002 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
clmulr x6, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x20, 0x00000002 # initialize rs1
li x12, 0x55555555 # initialize rs2
clmulr x19, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x12, 0x80000000 # initialize rs1
li x31, 0x00000000 # initialize rs2
clmulr x13, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x1, 0x80000000 # initialize rs1
li x29, 0x00000001 # initialize rs2
clmulr x7, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x1, 0x80000000 # initialize rs1
li x9, 0x00000002 # initialize rs2
clmulr x10, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x9, 0x80000000 # initialize rs1
li x16, 0x80000000 # initialize rs2
clmulr x27, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x14, 0x80000000 # initialize rs1
li x10, 0x80000001 # initialize rs2
clmulr x9, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x26, 0x80000000 # initialize rs1
li x1, 0x7fffffff # initialize rs2
clmulr x8, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x11, 0x80000000 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
clmulr x22, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x22, 0x80000000 # initialize rs1
li x9, 0xffffffff # initialize rs2
clmulr x28, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x17, 0x80000000 # initialize rs1
li x19, 0xfffffffe # initialize rs2
clmulr x10, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x22, 0x80000000 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
clmulr x23, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x31, 0x80000000 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
clmulr x6, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x23, 0x80000000 # initialize rs1
li x17, 0x55555555 # initialize rs2
clmulr x14, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x29, 0x80000001 # initialize rs1
li x14, 0x00000000 # initialize rs2
clmulr x17, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x9, 0x80000001 # initialize rs1
li x3, 0x00000001 # initialize rs2
clmulr x13, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x12, 0x80000001 # initialize rs1
li x19, 0x00000002 # initialize rs2
clmulr x22, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x7, 0x80000001 # initialize rs1
li x29, 0x80000000 # initialize rs2
clmulr x24, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x21, 0x80000001 # initialize rs1
li x1, 0x80000001 # initialize rs2
clmulr x29, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x15, 0x80000001 # initialize rs1
li x19, 0x7fffffff # initialize rs2
clmulr x17, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x7, 0x80000001 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
clmulr x22, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x3, 0x80000001 # initialize rs1
li x7, 0xffffffff # initialize rs2
clmulr x2, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x1, 0x80000001 # initialize rs1
li x6, 0xfffffffe # initialize rs2
clmulr x20, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x20, 0x80000001 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
clmulr x16, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x23, 0x80000001 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
clmulr x9, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x19, 0x80000001 # initialize rs1
li x28, 0x55555555 # initialize rs2
clmulr x11, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x12, 0x7fffffff # initialize rs1
li x21, 0x00000000 # initialize rs2
clmulr x14, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x30, 0x7fffffff # initialize rs1
li x20, 0x00000001 # initialize rs2
clmulr x7, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x11, 0x7fffffff # initialize rs1
li x18, 0x00000002 # initialize rs2
clmulr x6, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x24, 0x7fffffff # initialize rs1
li x22, 0x80000000 # initialize rs2
clmulr x17, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x24, 0x7fffffff # initialize rs1
li x28, 0x80000001 # initialize rs2
clmulr x8, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x13, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
clmulr x12, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x7, 0x7fffffff # initialize rs1
li x22, 0x7ffffffe # initialize rs2
clmulr x14, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x9, 0x7fffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
clmulr x13, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x31, 0x7fffffff # initialize rs1
li x17, 0xfffffffe # initialize rs2
clmulr x3, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x3, 0x7fffffff # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
clmulr x15, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x11, 0x7fffffff # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
clmulr x21, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x18, 0x7fffffff # initialize rs1
li x16, 0x55555555 # initialize rs2
clmulr x6, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x7, 0x7ffffffe # initialize rs1
li x21, 0x00000000 # initialize rs2
clmulr x15, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x29, 0x7ffffffe # initialize rs1
li x8, 0x00000001 # initialize rs2
clmulr x19, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x24, 0x7ffffffe # initialize rs1
li x11, 0x00000002 # initialize rs2
clmulr x12, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x7, 0x7ffffffe # initialize rs1
li x18, 0x80000000 # initialize rs2
clmulr x21, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x20, 0x7ffffffe # initialize rs1
li x26, 0x80000001 # initialize rs2
clmulr x23, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x31, 0x7ffffffe # initialize rs1
li x3, 0x7fffffff # initialize rs2
clmulr x16, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x24, 0x7ffffffe # initialize rs1
li x15, 0x7ffffffe # initialize rs2
clmulr x23, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x14, 0x7ffffffe # initialize rs1
li x21, 0xffffffff # initialize rs2
clmulr x11, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x26, 0x7ffffffe # initialize rs1
li x13, 0xfffffffe # initialize rs2
clmulr x25, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x18, 0x7ffffffe # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
clmulr x1, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x30, 0x7ffffffe # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
clmulr x20, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x26, 0x7ffffffe # initialize rs1
li x30, 0x55555555 # initialize rs2
clmulr x16, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x31, 0xffffffff # initialize rs1
li x12, 0x00000000 # initialize rs2
clmulr x19, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x6, 0xffffffff # initialize rs1
li x25, 0x00000001 # initialize rs2
clmulr x19, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x5, 0xffffffff # initialize rs1
li x17, 0x00000002 # initialize rs2
clmulr x3, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x9, 0xffffffff # initialize rs1
li x27, 0x80000000 # initialize rs2
clmulr x5, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x2, 0xffffffff # initialize rs1
li x18, 0x80000001 # initialize rs2
clmulr x9, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x28, 0xffffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
clmulr x27, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x18, 0xffffffff # initialize rs1
li x5, 0x7ffffffe # initialize rs2
clmulr x8, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x11, 0xffffffff # initialize rs1
li x22, 0xffffffff # initialize rs2
clmulr x10, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x1, 0xffffffff # initialize rs1
li x30, 0xfffffffe # initialize rs2
clmulr x7, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x6, 0xffffffff # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
clmulr x22, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x13, 0xffffffff # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
clmulr x21, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x17, 0xffffffff # initialize rs1
li x27, 0x55555555 # initialize rs2
clmulr x2, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x14, 0xfffffffe # initialize rs1
li x1, 0x00000000 # initialize rs2
clmulr x5, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x20, 0xfffffffe # initialize rs1
li x14, 0x00000001 # initialize rs2
clmulr x31, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x3, 0xfffffffe # initialize rs1
li x8, 0x00000002 # initialize rs2
clmulr x6, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x28, 0xfffffffe # initialize rs1
li x24, 0x80000000 # initialize rs2
clmulr x1, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x9, 0xfffffffe # initialize rs1
li x2, 0x80000001 # initialize rs2
clmulr x30, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x30, 0xfffffffe # initialize rs1
li x11, 0x7fffffff # initialize rs2
clmulr x21, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x18, 0xfffffffe # initialize rs1
li x15, 0x7ffffffe # initialize rs2
clmulr x19, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x16, 0xfffffffe # initialize rs1
li x10, 0xffffffff # initialize rs2
clmulr x7, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x29, 0xfffffffe # initialize rs1
li x16, 0xfffffffe # initialize rs2
clmulr x18, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x24, 0xfffffffe # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
clmulr x27, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x1, 0xfffffffe # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
clmulr x2, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x11, 0xfffffffe # initialize rs1
li x31, 0x55555555 # initialize rs2
clmulr x27, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x24, 0x5bbc8872 # initialize rs1
li x16, 0x00000000 # initialize rs2
clmulr x31, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x11, 0x5bbc8872 # initialize rs1
li x15, 0x00000001 # initialize rs2
clmulr x30, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x6, 0x5bbc8872 # initialize rs1
li x31, 0x00000002 # initialize rs2
clmulr x30, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x3, 0x5bbc8872 # initialize rs1
li x22, 0x80000000 # initialize rs2
clmulr x30, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x15, 0x5bbc8872 # initialize rs1
li x3, 0x80000001 # initialize rs2
clmulr x6, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x27, 0x5bbc8872 # initialize rs1
li x18, 0x7fffffff # initialize rs2
clmulr x3, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x12, 0x5bbc8872 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
clmulr x16, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x14, 0x5bbc8872 # initialize rs1
li x6, 0xffffffff # initialize rs2
clmulr x26, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x20, 0x5bbc8872 # initialize rs1
li x29, 0xfffffffe # initialize rs2
clmulr x31, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x15, 0x5bbc8872 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
clmulr x14, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x12, 0x5bbc8872 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
clmulr x24, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x26, 0x5bbc8872 # initialize rs1
li x7, 0x55555555 # initialize rs2
clmulr x29, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x30, 0xaaaaaaaa # initialize rs1
li x25, 0x00000000 # initialize rs2
clmulr x28, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x14, 0xaaaaaaaa # initialize rs1
li x28, 0x00000001 # initialize rs2
clmulr x8, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x21, 0xaaaaaaaa # initialize rs1
li x31, 0x00000002 # initialize rs2
clmulr x24, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x12, 0xaaaaaaaa # initialize rs1
li x24, 0x80000000 # initialize rs2
clmulr x20, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x31, 0xaaaaaaaa # initialize rs1
li x12, 0x80000001 # initialize rs2
clmulr x5, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x11, 0xaaaaaaaa # initialize rs1
li x8, 0x7fffffff # initialize rs2
clmulr x19, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x1, 0xaaaaaaaa # initialize rs1
li x30, 0x7ffffffe # initialize rs2
clmulr x16, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x29, 0xaaaaaaaa # initialize rs1
li x8, 0xffffffff # initialize rs2
clmulr x23, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x6, 0xaaaaaaaa # initialize rs1
li x31, 0xfffffffe # initialize rs2
clmulr x21, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x30, 0xaaaaaaaa # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
clmulr x18, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x22, 0xaaaaaaaa # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
clmulr x3, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x6, 0xaaaaaaaa # initialize rs1
li x17, 0x55555555 # initialize rs2
clmulr x8, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x30, 0x55555555 # initialize rs1
li x2, 0x00000000 # initialize rs2
clmulr x6, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x16, 0x55555555 # initialize rs1
li x18, 0x00000001 # initialize rs2
clmulr x14, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x31, 0x55555555 # initialize rs1
li x23, 0x00000002 # initialize rs2
clmulr x24, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x16, 0x55555555 # initialize rs1
li x28, 0x80000000 # initialize rs2
clmulr x8, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x15, 0x55555555 # initialize rs1
li x2, 0x80000001 # initialize rs2
clmulr x6, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x28, 0x55555555 # initialize rs1
li x12, 0x7fffffff # initialize rs2
clmulr x2, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x15, 0x55555555 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
clmulr x27, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x30, 0x55555555 # initialize rs1
li x1, 0xffffffff # initialize rs2
clmulr x23, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x15, 0x55555555 # initialize rs1
li x2, 0xfffffffe # initialize rs2
clmulr x11, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x3, 0x55555555 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
clmulr x6, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x13, 0x55555555 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
clmulr x28, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x11, 0x55555555 # initialize rs1
li x3, 0x55555555 # initialize rs2
clmulr x20, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x6b02b9f9 # initialize rs1
li x0, 0x6d54dd97 # initialize rs2
clmulr x8, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x4e21ee09 # initialize rs1
li x1, 0x7626fcc8 # initialize rs2
clmulr x11, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x663cf7e1 # initialize rs1
li x2, 0xa99dbf78 # initialize rs2
clmulr x29, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xb2e8dd0e # initialize rs1
li x3, 0x43489997 # initialize rs2
clmulr x17, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5e6e2145 # initialize rs1
li x4, 0x6c1ffd04 # initialize rs2
clmulr x22, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xda2d8a30 # initialize rs1
li x5, 0xbcb3e79e # initialize rs2
clmulr x8, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe09b0632 # initialize rs1
li x6, 0x75f0b46d # initialize rs2
clmulr x12, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x76915edd # initialize rs1
li x7, 0x5368bc49 # initialize rs2
clmulr x26, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x41dc7b43 # initialize rs1
li x8, 0x1abe3b22 # initialize rs2
clmulr x29, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xf0da103a # initialize rs1
li x9, 0xc2fa438a # initialize rs2
clmulr x6, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa216ccfe # initialize rs1
li x10, 0x426c1515 # initialize rs2
clmulr x11, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x7c5feee4 # initialize rs1
li x11, 0x87efd5a8 # initialize rs2
clmulr x8, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x0899d94b # initialize rs1
li x12, 0x910bfbef # initialize rs2
clmulr x25, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x01b1d230 # initialize rs1
li x13, 0xbabea9fd # initialize rs2
clmulr x8, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xc84181fd # initialize rs1
li x14, 0xd6e56438 # initialize rs2
clmulr x19, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x904c5bfb # initialize rs1
li x15, 0x7dd8bd58 # initialize rs2
clmulr x25, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x39042103 # initialize rs1
li x16, 0x0d8d714e # initialize rs2
clmulr x9, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xc67ba32b # initialize rs1
li x17, 0x9bf98eda # initialize rs2
clmulr x26, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xc18ba74b # initialize rs1
li x18, 0xcb2973b9 # initialize rs2
clmulr x8, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x518d4770 # initialize rs1
li x19, 0x471fb8ae # initialize rs2
clmulr x26, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xc139a75f # initialize rs1
li x20, 0x61510fd9 # initialize rs2
clmulr x12, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xf021722d # initialize rs1
li x21, 0xfc2b514c # initialize rs2
clmulr x13, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xedf17e2d # initialize rs1
li x22, 0x8c0fa247 # initialize rs2
clmulr x18, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x92457a79 # initialize rs1
li x23, 0x9d94696b # initialize rs2
clmulr x14, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xbb0c0f87 # initialize rs1
li x24, 0x46be472b # initialize rs2
clmulr x8, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xcb215dc4 # initialize rs1
li x25, 0xaf2f1aaf # initialize rs2
clmulr x22, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xc160d231 # initialize rs1
li x26, 0x9cb86755 # initialize rs2
clmulr x18, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xf1aa3856 # initialize rs1
li x27, 0xfdb5c68b # initialize rs2
clmulr x13, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x8950e9a5 # initialize rs1
li x28, 0x4498745b # initialize rs2
clmulr x23, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xf626015e # initialize rs1
li x29, 0xec94c2ef # initialize rs2
clmulr x14, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x2ea4174d # initialize rs1
li x30, 0x12969468 # initialize rs2
clmulr x22, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x4119bf88 # initialize rs1
li x31, 0x4237fed5 # initialize rs2
clmulr x8, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x8a4327b5 # initialize rs1
li x8, 0xdbac980a # initialize rs2
clmulr x0, x0, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xf9e52149 # initialize rs1
li x22, 0x04d5af55 # initialize rs2
clmulr x1, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xa1abe7b2 # initialize rs1
li x16, 0x8b35dcc8 # initialize rs2
clmulr x2, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xc9360267 # initialize rs1
li x21, 0x55da1dfe # initialize rs2
clmulr x3, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0b2777d3 # initialize rs1
li x1, 0xcfec7027 # initialize rs2
clmulr x4, x4, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5f754789 # initialize rs1
li x20, 0xf2d87ceb # initialize rs2
clmulr x5, x5, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x11ded53e # initialize rs1
li x5, 0x0a2892fe # initialize rs2
clmulr x6, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc81f87f9 # initialize rs1
li x23, 0x2b235357 # initialize rs2
clmulr x7, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xc855dd42 # initialize rs1
li x5, 0x832e2c17 # initialize rs2
clmulr x8, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x320206b2 # initialize rs1
li x22, 0x48ce5a8b # initialize rs2
clmulr x9, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x17306db1 # initialize rs1
li x10, 0x93e3c174 # initialize rs2
clmulr x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa41a8ad6 # initialize rs1
li x3, 0x65a5c327 # initialize rs2
clmulr x11, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x820d9d58 # initialize rs1
li x21, 0x3b27f1b5 # initialize rs2
clmulr x12, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xeab1460c # initialize rs1
li x27, 0x1ac171aa # initialize rs2
clmulr x13, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xd40b6fb0 # initialize rs1
li x31, 0x76ba4d0d # initialize rs2
clmulr x14, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xe65e9c05 # initialize rs1
li x10, 0x85978312 # initialize rs2
clmulr x15, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xa748f198 # initialize rs1
li x24, 0x394a608c # initialize rs2
clmulr x16, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x8e4f4ada # initialize rs1
li x15, 0x94ff1e2e # initialize rs2
clmulr x17, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6a0294c5 # initialize rs1
li x5, 0x546d2970 # initialize rs2
clmulr x18, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa10157f1 # initialize rs1
li x30, 0xd5d0e0c7 # initialize rs2
clmulr x19, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf2d1e40e # initialize rs1
li x6, 0x844e1840 # initialize rs2
clmulr x20, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x03b648c3 # initialize rs1
li x27, 0x4395b556 # initialize rs2
clmulr x21, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xe04c964c # initialize rs1
li x19, 0x91d39de4 # initialize rs2
clmulr x22, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x37649f1e # initialize rs1
li x29, 0xc1e21014 # initialize rs2
clmulr x23, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x55c34051 # initialize rs1
li x16, 0xe8be3b11 # initialize rs2
clmulr x24, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x54d6e483 # initialize rs1
li x17, 0x92e682b1 # initialize rs2
clmulr x25, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x688ed0f9 # initialize rs1
li x30, 0x269af167 # initialize rs2
clmulr x26, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x71916b3a # initialize rs1
li x30, 0x0ff0f50a # initialize rs2
clmulr x27, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x2fb044ba # initialize rs1
li x1, 0xf770710c # initialize rs2
clmulr x28, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x849dc078 # initialize rs1
li x31, 0x019bb3c8 # initialize rs2
clmulr x29, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1dc7f739 # initialize rs1
li x5, 0x3c38457b # initialize rs2
clmulr x30, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xbf7a98b5 # initialize rs1
li x29, 0xa12e9de1 # initialize rs2
clmulr x31, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x11, 0xe7c039b5 # initialize rs1
li x0, 0x7c1cb9de # initialize rs2
clmulr x0, x11, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x17, 0xe7aaa70b # initialize rs1
li x1, 0x9c42099a # initialize rs2
clmulr x1, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x1, 0x608593b2 # initialize rs1
li x2, 0x1fe17b98 # initialize rs2
clmulr x2, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x19, 0xd40e9e16 # initialize rs1
li x3, 0x38a2c438 # initialize rs2
clmulr x3, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x044ef6d2 # initialize rs1
li x4, 0xce6e43c9 # initialize rs2
clmulr x4, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x9e081f74 # initialize rs1
li x5, 0xa968cec0 # initialize rs2
clmulr x5, x13, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0xc294d3a5 # initialize rs1
li x6, 0x05907da4 # initialize rs2
clmulr x6, x25, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0x0411943c # initialize rs1
li x7, 0xe132146e # initialize rs2
clmulr x7, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x18, 0x488b3103 # initialize rs1
li x8, 0x58304913 # initialize rs2
clmulr x8, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x28, 0x9b55dddf # initialize rs1
li x9, 0x3f3ea3c4 # initialize rs2
clmulr x9, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x21, 0x279ebf9b # initialize rs1
li x10, 0x0504e26c # initialize rs2
clmulr x10, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x3, 0x9c936d12 # initialize rs1
li x11, 0xeb22a236 # initialize rs2
clmulr x11, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x17, 0x79d7f2a4 # initialize rs1
li x12, 0x78479bb0 # initialize rs2
clmulr x12, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0x9fc58eca # initialize rs1
li x13, 0xe8bf7cd1 # initialize rs2
clmulr x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x6, 0xd9b932e4 # initialize rs1
li x14, 0xdb2444e5 # initialize rs2
clmulr x14, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x17, 0xc8c54287 # initialize rs1
li x15, 0x6c891693 # initialize rs2
clmulr x15, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x30, 0x11d267a2 # initialize rs1
li x16, 0x72692105 # initialize rs2
clmulr x16, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x16, 0x335d02d7 # initialize rs1
li x17, 0xc6fd50d8 # initialize rs2
clmulr x17, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x20, 0xd8218b81 # initialize rs1
li x18, 0x0274a56d # initialize rs2
clmulr x18, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x29, 0xdfba0654 # initialize rs1
li x19, 0x3de18ada # initialize rs2
clmulr x19, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x27, 0xb5600b21 # initialize rs1
li x20, 0x42fc72ec # initialize rs2
clmulr x20, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x3, 0x2862000a # initialize rs1
li x21, 0x493ce5d6 # initialize rs2
clmulr x21, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x12, 0x14c9e0de # initialize rs1
li x22, 0xb575a6e7 # initialize rs2
clmulr x22, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x31, 0x56fecc44 # initialize rs1
li x23, 0xfbeb87b1 # initialize rs2
clmulr x23, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x25, 0x1bdf74a2 # initialize rs1
li x24, 0x47b150fe # initialize rs2
clmulr x24, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x14, 0x720a80e0 # initialize rs1
li x25, 0x2ec4df16 # initialize rs2
clmulr x25, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x28, 0xf41d0f79 # initialize rs1
li x26, 0xbe8d826e # initialize rs2
clmulr x26, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x25, 0x0995e149 # initialize rs1
li x27, 0x7529d9b5 # initialize rs2
clmulr x27, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x27, 0xe3b00ef6 # initialize rs1
li x28, 0x824cd2c8 # initialize rs2
clmulr x28, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x15, 0x0c3fd28f # initialize rs1
li x29, 0x0281cbad # initialize rs2
clmulr x29, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x16, 0x08bf9c57 # initialize rs1
li x30, 0xccd0f9f6 # initialize rs2
clmulr x30, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x1, 0x4c59d5a1 # initialize rs1
li x31, 0x31110a64 # initialize rs2
clmulr x31, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x45dd8e80 # initialize rs1
li x0, 0x1d5681ba # initialize rs2
clmulr x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x868ef29a # initialize rs1
li x1, 0x94f7a0b5 # initialize rs2
clmulr x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xc8d4a5ca # initialize rs1
li x2, 0xe32523db # initialize rs2
clmulr x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xeb7abc17 # initialize rs1
li x3, 0xe6e6da91 # initialize rs2
clmulr x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x27f2d0f8 # initialize rs1
li x4, 0x5e625136 # initialize rs2
clmulr x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1565b3c6 # initialize rs1
li x5, 0x36ff56a8 # initialize rs2
clmulr x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2879356b # initialize rs1
li x6, 0xf1e00184 # initialize rs2
clmulr x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x36b06f43 # initialize rs1
li x7, 0xc3b9e8c1 # initialize rs2
clmulr x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xd81d4b91 # initialize rs1
li x8, 0xb97b39c3 # initialize rs2
clmulr x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x55f06f62 # initialize rs1
li x9, 0x2857120e # initialize rs2
clmulr x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x9b379f6a # initialize rs1
li x10, 0x200bb126 # initialize rs2
clmulr x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x67f403bd # initialize rs1
li x11, 0xb7e8a7a6 # initialize rs2
clmulr x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x02a8e0b3 # initialize rs1
li x12, 0xee24bf7a # initialize rs2
clmulr x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x6a11380d # initialize rs1
li x13, 0x6a69e9a9 # initialize rs2
clmulr x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xc7d514c4 # initialize rs1
li x14, 0xfcbdd1b0 # initialize rs2
clmulr x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x51278a15 # initialize rs1
li x15, 0xeb2b46b9 # initialize rs2
clmulr x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x813b9bce # initialize rs1
li x16, 0xf783637c # initialize rs2
clmulr x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x2408dfd4 # initialize rs1
li x17, 0x622857bc # initialize rs2
clmulr x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xf394b03b # initialize rs1
li x18, 0x7070a985 # initialize rs2
clmulr x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x19041dac # initialize rs1
li x19, 0x5b305501 # initialize rs2
clmulr x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x100c9585 # initialize rs1
li x20, 0x438619ca # initialize rs2
clmulr x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x54dbc65f # initialize rs1
li x21, 0x63127741 # initialize rs2
clmulr x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xa11f8bcf # initialize rs1
li x22, 0x6e129ed4 # initialize rs2
clmulr x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xd2c9600d # initialize rs1
li x23, 0x67463e3f # initialize rs2
clmulr x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xfce16089 # initialize rs1
li x24, 0x45dc8ba2 # initialize rs2
clmulr x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x5e99ac89 # initialize rs1
li x25, 0xcef712e7 # initialize rs2
clmulr x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x327c0ca2 # initialize rs1
li x26, 0xb8135ade # initialize rs2
clmulr x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x779d761e # initialize rs1
li x27, 0x02f537c3 # initialize rs2
clmulr x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x1d791dc7 # initialize rs1
li x28, 0xe74415ad # initialize rs2
clmulr x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x79fa5cbc # initialize rs1
li x29, 0x3ba3ad11 # initialize rs2
clmulr x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x5855d13f # initialize rs1
li x30, 0xa8ca921e # initialize rs2
clmulr x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xeaf85938 # initialize rs1
li x31, 0x48a11f34 # initialize rs2
clmulr x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x24, x9 # perform first operation
clmulr x10, x3, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x25, x30 # perform first operation
clmulr x24, x31, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x12, x5 # perform first operation
clmulr x20, x17, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x11, x16 # perform first operation
clmulr x16, x6, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x8, x12 # perform first operation
clmulr x8, x1, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x10, x5 # perform first operation
clmulr x5, x29, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x18, x28 # perform first operation
clmulr x2, x26, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x1, x14 # perform first operation
clmulr x24, x17, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x11, x23 # perform first operation
clmulr x9, x7, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x18, x10 # perform first operation
clmulr x18, x3, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x30, x2 # perform first operation
clmulr x2, x19, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x20, x3 # perform first operation
clmulr x25, x27, x5 # perform second (triggering) operation

.EQU SIGSIZE,1568


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
