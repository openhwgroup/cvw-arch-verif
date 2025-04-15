///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/M/WALLY-COV-divu.S
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
li x0, 0xffc4b452 # initialize rs1
li x10, 0x6ce44c13 # initialize rs2
divu x26, x0, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x2c76239e # initialize rs1
li x12, 0x096dcc98 # initialize rs2
divu x13, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xcad1e639 # initialize rs1
li x8, 0xe09f3546 # initialize rs2
divu x3, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x36c3e75f # initialize rs1
li x6, 0x84d417d7 # initialize rs2
divu x19, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0a5329dc # initialize rs1
li x6, 0xf814424c # initialize rs2
divu x16, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x055d2190 # initialize rs1
li x7, 0xb1ce9555 # initialize rs2
divu x17, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8ed324b5 # initialize rs1
li x4, 0xd90a4706 # initialize rs2
divu x11, x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x001d6c21 # initialize rs1
li x4, 0x99f35959 # initialize rs2
divu x29, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x82b8322d # initialize rs1
li x3, 0x1aa4a5ae # initialize rs2
divu x21, x8, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x811503e9 # initialize rs1
li x1, 0xd14aa51e # initialize rs2
divu x28, x9, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x12fcd38d # initialize rs1
li x17, 0xd86615b8 # initialize rs2
divu x19, x10, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x1410e08f # initialize rs1
li x14, 0x2ad719d7 # initialize rs2
divu x21, x11, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xb8e42ad1 # initialize rs1
li x26, 0xbaea32c3 # initialize rs2
divu x15, x12, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x94f822a4 # initialize rs1
li x27, 0x61facd7c # initialize rs2
divu x26, x13, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe96ad393 # initialize rs1
li x7, 0x5303ff9b # initialize rs2
divu x10, x14, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xfc997d3b # initialize rs1
li x26, 0x3419fc4b # initialize rs2
divu x10, x15, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x5b0e745d # initialize rs1
li x28, 0x7b12470a # initialize rs2
divu x20, x16, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x38b59bca # initialize rs1
li x30, 0x2c70d06f # initialize rs2
divu x29, x17, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xdaefc966 # initialize rs1
li x24, 0x06bc777f # initialize rs2
divu x25, x18, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x171dfed7 # initialize rs1
li x26, 0x55103acd # initialize rs2
divu x16, x19, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xc692c1d9 # initialize rs1
li x13, 0xb9d8a1b3 # initialize rs2
divu x15, x20, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x1b5608c9 # initialize rs1
li x29, 0x7b29c2a1 # initialize rs2
divu x27, x21, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x01611ee9 # initialize rs1
li x16, 0x2e1ca78d # initialize rs2
divu x27, x22, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xc848c5e7 # initialize rs1
li x18, 0xb3af2843 # initialize rs2
divu x28, x23, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xf2daa349 # initialize rs1
li x8, 0xb40c3b85 # initialize rs2
divu x12, x24, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xf72094ed # initialize rs1
li x23, 0x9095f99d # initialize rs2
divu x21, x25, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x92306e40 # initialize rs1
li x10, 0xcf4539cd # initialize rs2
divu x15, x26, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x3154d4e8 # initialize rs1
li x2, 0xe5138690 # initialize rs2
divu x15, x27, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xcde2b521 # initialize rs1
li x6, 0xbb87e29e # initialize rs2
divu x23, x28, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x4d20ba56 # initialize rs1
li x7, 0xb36ba6f4 # initialize rs2
divu x23, x29, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xc911f3b4 # initialize rs1
li x27, 0x2b6b16ac # initialize rs2
divu x6, x30, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x8793a4cb # initialize rs1
li x23, 0xb3518216 # initialize rs2
divu x25, x31, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x17, 0x622171ea # initialize rs1
li x0, 0x7461d6ca # initialize rs2
divu x4, x17, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x4, 0xdf8a1057 # initialize rs1
li x1, 0x79a457e7 # initialize rs2
divu x14, x4, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x17, 0xec941ba3 # initialize rs1
li x2, 0xde0896ca # initialize rs2
divu x13, x17, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x8, 0x86845326 # initialize rs1
li x3, 0x74b417d5 # initialize rs2
divu x16, x8, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
li x11, 0xf797fce4 # initialize rs1
li x4, 0x95ca9600 # initialize rs2
divu x20, x11, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x27, 0xddcc463b # initialize rs1
li x5, 0xf40ac127 # initialize rs2
divu x16, x27, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0xd96b6016 # initialize rs1
li x6, 0x350e576c # initialize rs2
divu x3, x1, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0xea89131c # initialize rs1
li x7, 0x7253ddb9 # initialize rs2
divu x26, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x21, 0xe7aa814f # initialize rs1
li x8, 0x88c01204 # initialize rs2
divu x7, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x24, 0xdf750d0c # initialize rs1
li x9, 0xdc23253f # initialize rs2
divu x22, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x29, 0xa3efe3c4 # initialize rs1
li x10, 0x4a6fb556 # initialize rs2
divu x16, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x23, 0x228687a9 # initialize rs1
li x11, 0x5dd863c7 # initialize rs2
divu x16, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x25, 0x6133c368 # initialize rs1
li x12, 0x261fd0bf # initialize rs2
divu x14, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x27, 0x65cef312 # initialize rs1
li x13, 0xff85c7c5 # initialize rs2
divu x30, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x1, 0xf09372e4 # initialize rs1
li x14, 0x0152ba1e # initialize rs2
divu x31, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x30, 0xc1edb9ba # initialize rs1
li x15, 0xb6e16461 # initialize rs2
divu x11, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x30, 0xb2593289 # initialize rs1
li x16, 0x88bced9f # initialize rs2
divu x14, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x11, 0x18871e6d # initialize rs1
li x17, 0xba5e09dd # initialize rs2
divu x5, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x14, 0x30975c5d # initialize rs1
li x18, 0xda171838 # initialize rs2
divu x16, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x14, 0x5852c7ab # initialize rs1
li x19, 0xcc3ad24c # initialize rs2
divu x6, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x23, 0x65c6285f # initialize rs1
li x20, 0x4052f894 # initialize rs2
divu x16, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x1, 0xa11c5afb # initialize rs1
li x21, 0x2df19866 # initialize rs2
divu x10, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x31, 0xddc4f9d7 # initialize rs1
li x22, 0x8bbfe3ba # initialize rs2
divu x28, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x19, 0xb8b5886a # initialize rs1
li x23, 0x98ad0b1d # initialize rs2
divu x13, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x2, 0x1e9a0148 # initialize rs1
li x24, 0x1c9dc8af # initialize rs2
divu x9, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x27, 0xbac39b36 # initialize rs1
li x25, 0x1b2982e0 # initialize rs2
divu x17, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x14, 0x91c9c3ed # initialize rs1
li x26, 0xbd5f6579 # initialize rs2
divu x28, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x5, 0x1c22b96d # initialize rs1
li x27, 0x29b2440b # initialize rs2
divu x3, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x2, 0x551c34c0 # initialize rs1
li x28, 0xa9cdd651 # initialize rs2
divu x20, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x23, 0x1390e1c8 # initialize rs1
li x29, 0xbcef955e # initialize rs2
divu x15, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x24, 0x38ed1737 # initialize rs1
li x30, 0x91f011c4 # initialize rs2
divu x7, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x22, 0x1199b734 # initialize rs1
li x31, 0xfb84ba33 # initialize rs2
divu x11, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 252)

# Testcase cp_rd (Test destination rd = x0)
li x14, 0xc4ef7124 # initialize rs1
li x25, 0x10670ec1 # initialize rs2
divu x0, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x22, 0xab413e7d # initialize rs1
li x1, 0xdfbf9d7b # initialize rs2
divu x1, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0x11be6bb2 # initialize rs1
li x31, 0x43cd6401 # initialize rs2
divu x2, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x9, 0x2397dc5f # initialize rs1
li x22, 0x182ada8e # initialize rs2
divu x3, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0x855c49b8 # initialize rs1
li x1, 0x7bc4f77f # initialize rs2
divu x4, x2, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0xb0b5599a # initialize rs1
li x13, 0x2dbe1795 # initialize rs2
divu x5, x8, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0x3c1bd522 # initialize rs1
li x17, 0x1a5cdcf8 # initialize rs2
divu x6, x19, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x5c023f55 # initialize rs1
li x19, 0x7e1bcce8 # initialize rs2
divu x7, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x19, 0xf51a73d1 # initialize rs1
li x9, 0x2015615c # initialize rs2
divu x8, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x25, 0x995c03e1 # initialize rs1
li x19, 0x4d78e19b # initialize rs2
divu x9, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x29, 0x9568ef1b # initialize rs1
li x25, 0xd07d9c8e # initialize rs2
divu x10, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x23, 0x028d143d # initialize rs1
li x7, 0x7e4f6916 # initialize rs2
divu x11, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x26, 0x6547719e # initialize rs1
li x29, 0xf514e18d # initialize rs2
divu x12, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x6, 0xe70ef11d # initialize rs1
li x11, 0x29caf39d # initialize rs2
divu x13, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0x371ec22e # initialize rs1
li x18, 0x8a554047 # initialize rs2
divu x14, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0xba2dfc0c # initialize rs1
li x29, 0x410df15d # initialize rs2
divu x15, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x12, 0x690c49c9 # initialize rs1
li x7, 0x9bee8d8e # initialize rs2
divu x16, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x13, 0x6db2fb03 # initialize rs1
li x20, 0x6836d01a # initialize rs2
divu x17, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x27, 0x4e44caa1 # initialize rs1
li x28, 0x05eccb9e # initialize rs2
divu x18, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x20, 0xe8553e97 # initialize rs1
li x29, 0x3db63447 # initialize rs2
divu x19, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x27, 0x22d20f4b # initialize rs1
li x25, 0x234a8614 # initialize rs2
divu x20, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x8, 0xfcdaf703 # initialize rs1
li x17, 0x9e6ff59b # initialize rs2
divu x21, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x20, 0x8f240290 # initialize rs1
li x27, 0xc54989c0 # initialize rs2
divu x22, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x15, 0xcc66a8d2 # initialize rs1
li x13, 0x71f2709a # initialize rs2
divu x23, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x31, 0x2dbb1dd7 # initialize rs1
li x9, 0xbf554960 # initialize rs2
divu x24, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x3, 0xd47a82ae # initialize rs1
li x1, 0x0c06184e # initialize rs2
divu x25, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x10, 0x5a232ef6 # initialize rs1
li x22, 0xf2aae549 # initialize rs2
divu x26, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x23, 0xc5c6027f # initialize rs1
li x28, 0xde70b1c7 # initialize rs2
divu x27, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x1, 0x49f87a4b # initialize rs1
li x14, 0x6bf2f9db # initialize rs2
divu x28, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x15, 0x948b43ee # initialize rs1
li x6, 0x0026e703 # initialize rs2
divu x29, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x15, 0xdfa1e23e # initialize rs1
li x18, 0x9f6b7ea1 # initialize rs2
divu x30, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x24, 0xabb1d3ab # initialize rs1
li x7, 0x4c0fe461 # initialize rs2
divu x31, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x17, 0x00000000 # initialize rs1
li x22, 0x14c98bca # initialize rs2
divu x6, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0x00000001 # initialize rs1
li x12, 0x57dabe31 # initialize rs2
divu x13, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x00000002 # initialize rs1
li x8, 0x1668d7a2 # initialize rs2
divu x29, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x26, 0x80000000 # initialize rs1
li x17, 0x41ce9351 # initialize rs2
divu x31, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x28, 0x80000001 # initialize rs1
li x19, 0xdc89bf32 # initialize rs2
divu x30, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x10, 0x7fffffff # initialize rs1
li x3, 0x2fa2b21e # initialize rs2
divu x12, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x24, 0x7ffffffe # initialize rs1
li x21, 0x110bd938 # initialize rs2
divu x26, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x24, 0xffffffff # initialize rs1
li x28, 0x9b8a9bca # initialize rs2
divu x26, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x20, 0xfffffffe # initialize rs1
li x7, 0x2848861e # initialize rs2
divu x12, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x7, 0x5bbc8872 # initialize rs1
li x26, 0xde0c0a83 # initialize rs2
divu x6, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x11, 0xaaaaaaaa # initialize rs1
li x13, 0x34a67b56 # initialize rs2
divu x22, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x2, 0x55555555 # initialize rs1
li x20, 0x46a6a7b1 # initialize rs2
divu x27, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0x1ba6b01c # initialize rs1
li x6, 0x00000000 # initialize rs2
divu x13, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x22, 0x0dfd8929 # initialize rs1
li x12, 0x00000001 # initialize rs2
divu x10, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x17, 0x4a74a98b # initialize rs1
li x22, 0x00000002 # initialize rs2
divu x29, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x22, 0x91119ccf # initialize rs1
li x15, 0x80000000 # initialize rs2
divu x7, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x26, 0x7e7e14ba # initialize rs1
li x15, 0x80000001 # initialize rs2
divu x16, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x14, 0xd7c2e522 # initialize rs1
li x26, 0x7fffffff # initialize rs2
divu x19, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x30, 0xad80358c # initialize rs1
li x21, 0x7ffffffe # initialize rs2
divu x26, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0x85f2bc30 # initialize rs1
li x25, 0xffffffff # initialize rs2
divu x30, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x9, 0xf1cc619e # initialize rs1
li x14, 0xfffffffe # initialize rs2
divu x19, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x16, 0x98d0d4a9 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
divu x1, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x20, 0xc5dac241 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
divu x30, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x19, 0x56181064 # initialize rs1
li x2, 0x55555555 # initialize rs2
divu x9, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x1, 0x00000000 # initialize rs1
li x5, 0x00000000 # initialize rs2
divu x25, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x18, 0x00000000 # initialize rs1
li x11, 0x00000001 # initialize rs2
divu x2, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x13, 0x00000000 # initialize rs1
li x14, 0x00000002 # initialize rs2
divu x8, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x17, 0x00000000 # initialize rs1
li x19, 0x80000000 # initialize rs2
divu x22, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x6, 0x00000000 # initialize rs1
li x19, 0x80000001 # initialize rs2
divu x16, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x24, 0x00000000 # initialize rs1
li x6, 0x7fffffff # initialize rs2
divu x2, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x20, 0x00000000 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
divu x6, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x12, 0x00000000 # initialize rs1
li x3, 0xffffffff # initialize rs2
divu x7, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x20, 0x00000000 # initialize rs1
li x24, 0xfffffffe # initialize rs2
divu x19, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x25, 0x00000000 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
divu x3, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x22, 0x00000000 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
divu x1, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x24, 0x00000000 # initialize rs1
li x26, 0x55555555 # initialize rs2
divu x25, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x24, 0x00000001 # initialize rs1
li x7, 0x00000000 # initialize rs2
divu x17, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x25, 0x00000001 # initialize rs1
li x26, 0x00000001 # initialize rs2
divu x16, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x6, 0x00000001 # initialize rs1
li x7, 0x00000002 # initialize rs2
divu x22, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x2, 0x00000001 # initialize rs1
li x27, 0x80000000 # initialize rs2
divu x19, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x19, 0x00000001 # initialize rs1
li x12, 0x80000001 # initialize rs2
divu x21, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x15, 0x00000001 # initialize rs1
li x24, 0x7fffffff # initialize rs2
divu x11, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x21, 0x00000001 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
divu x11, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x19, 0x00000001 # initialize rs1
li x21, 0xffffffff # initialize rs2
divu x25, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x16, 0x00000001 # initialize rs1
li x31, 0xfffffffe # initialize rs2
divu x10, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x30, 0x00000001 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
divu x1, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x20, 0x00000001 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
divu x8, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x15, 0x00000001 # initialize rs1
li x1, 0x55555555 # initialize rs2
divu x5, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x1, 0x00000002 # initialize rs1
li x19, 0x00000000 # initialize rs2
divu x9, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x21, 0x00000002 # initialize rs1
li x9, 0x00000001 # initialize rs2
divu x16, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x23, 0x00000002 # initialize rs1
li x26, 0x00000002 # initialize rs2
divu x5, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x6, 0x00000002 # initialize rs1
li x15, 0x80000000 # initialize rs2
divu x31, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x11, 0x00000002 # initialize rs1
li x9, 0x80000001 # initialize rs2
divu x25, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x11, 0x00000002 # initialize rs1
li x2, 0x7fffffff # initialize rs2
divu x10, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x24, 0x00000002 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
divu x16, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x6, 0x00000002 # initialize rs1
li x26, 0xffffffff # initialize rs2
divu x14, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x17, 0x00000002 # initialize rs1
li x30, 0xfffffffe # initialize rs2
divu x24, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x12, 0x00000002 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
divu x19, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x2, 0x00000002 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
divu x22, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x16, 0x00000002 # initialize rs1
li x24, 0x55555555 # initialize rs2
divu x14, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x22, 0x80000000 # initialize rs1
li x1, 0x00000000 # initialize rs2
divu x21, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x27, 0x80000000 # initialize rs1
li x20, 0x00000001 # initialize rs2
divu x14, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x1, 0x80000000 # initialize rs1
li x12, 0x00000002 # initialize rs2
divu x2, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x24, 0x80000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
divu x28, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x27, 0x80000000 # initialize rs1
li x3, 0x80000001 # initialize rs2
divu x25, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x19, 0x80000000 # initialize rs1
li x30, 0x7fffffff # initialize rs2
divu x15, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x7, 0x80000000 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
divu x3, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x24, 0x80000000 # initialize rs1
li x9, 0xffffffff # initialize rs2
divu x19, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x23, 0x80000000 # initialize rs1
li x2, 0xfffffffe # initialize rs2
divu x21, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x13, 0x80000000 # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
divu x12, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x25, 0x80000000 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
divu x23, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x21, 0x80000000 # initialize rs1
li x14, 0x55555555 # initialize rs2
divu x8, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x10, 0x80000001 # initialize rs1
li x20, 0x00000000 # initialize rs2
divu x21, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x18, 0x80000001 # initialize rs1
li x12, 0x00000001 # initialize rs2
divu x27, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x14, 0x80000001 # initialize rs1
li x1, 0x00000002 # initialize rs2
divu x30, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x29, 0x80000001 # initialize rs1
li x21, 0x80000000 # initialize rs2
divu x12, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x18, 0x80000001 # initialize rs1
li x21, 0x80000001 # initialize rs2
divu x25, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x11, 0x80000001 # initialize rs1
li x17, 0x7fffffff # initialize rs2
divu x16, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x30, 0x80000001 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
divu x28, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x9, 0x80000001 # initialize rs1
li x10, 0xffffffff # initialize rs2
divu x6, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x31, 0x80000001 # initialize rs1
li x25, 0xfffffffe # initialize rs2
divu x30, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x31, 0x80000001 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
divu x10, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x30, 0x80000001 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
divu x6, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x16, 0x80000001 # initialize rs1
li x11, 0x55555555 # initialize rs2
divu x3, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x25, 0x7fffffff # initialize rs1
li x27, 0x00000000 # initialize rs2
divu x28, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x3, 0x7fffffff # initialize rs1
li x7, 0x00000001 # initialize rs2
divu x16, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x6, 0x7fffffff # initialize rs1
li x10, 0x00000002 # initialize rs2
divu x27, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x28, 0x7fffffff # initialize rs1
li x30, 0x80000000 # initialize rs2
divu x21, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x9, 0x7fffffff # initialize rs1
li x12, 0x80000001 # initialize rs2
divu x1, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x9, 0x7fffffff # initialize rs1
li x23, 0x7fffffff # initialize rs2
divu x13, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x23, 0x7fffffff # initialize rs1
li x27, 0x7ffffffe # initialize rs2
divu x29, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x29, 0x7fffffff # initialize rs1
li x2, 0xffffffff # initialize rs2
divu x7, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x18, 0x7fffffff # initialize rs1
li x22, 0xfffffffe # initialize rs2
divu x17, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x30, 0x7fffffff # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
divu x20, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x7, 0x7fffffff # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
divu x19, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x9, 0x7fffffff # initialize rs1
li x11, 0x55555555 # initialize rs2
divu x8, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x16, 0x7ffffffe # initialize rs1
li x15, 0x00000000 # initialize rs2
divu x9, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x28, 0x7ffffffe # initialize rs1
li x15, 0x00000001 # initialize rs2
divu x31, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x6, 0x7ffffffe # initialize rs1
li x7, 0x00000002 # initialize rs2
divu x20, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x13, 0x7ffffffe # initialize rs1
li x31, 0x80000000 # initialize rs2
divu x16, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x13, 0x7ffffffe # initialize rs1
li x25, 0x80000001 # initialize rs2
divu x17, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x22, 0x7ffffffe # initialize rs1
li x7, 0x7fffffff # initialize rs2
divu x19, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x29, 0x7ffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
divu x5, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x6, 0x7ffffffe # initialize rs1
li x30, 0xffffffff # initialize rs2
divu x18, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x12, 0x7ffffffe # initialize rs1
li x19, 0xfffffffe # initialize rs2
divu x30, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x25, 0x7ffffffe # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
divu x19, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x2, 0x7ffffffe # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
divu x29, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x13, 0x7ffffffe # initialize rs1
li x16, 0x55555555 # initialize rs2
divu x30, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x9, 0xffffffff # initialize rs1
li x31, 0x00000000 # initialize rs2
divu x12, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x17, 0xffffffff # initialize rs1
li x21, 0x00000001 # initialize rs2
divu x27, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x11, 0xffffffff # initialize rs1
li x14, 0x00000002 # initialize rs2
divu x16, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x25, 0xffffffff # initialize rs1
li x31, 0x80000000 # initialize rs2
divu x19, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x2, 0xffffffff # initialize rs1
li x26, 0x80000001 # initialize rs2
divu x11, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x16, 0xffffffff # initialize rs1
li x12, 0x7fffffff # initialize rs2
divu x29, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x25, 0xffffffff # initialize rs1
li x18, 0x7ffffffe # initialize rs2
divu x28, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x20, 0xffffffff # initialize rs1
li x17, 0xffffffff # initialize rs2
divu x29, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x19, 0xffffffff # initialize rs1
li x9, 0xfffffffe # initialize rs2
divu x11, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x31, 0xffffffff # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
divu x22, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x16, 0xffffffff # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
divu x28, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x29, 0xffffffff # initialize rs1
li x19, 0x55555555 # initialize rs2
divu x27, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x29, 0xfffffffe # initialize rs1
li x26, 0x00000000 # initialize rs2
divu x24, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x10, 0xfffffffe # initialize rs1
li x13, 0x00000001 # initialize rs2
divu x16, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x12, 0xfffffffe # initialize rs1
li x13, 0x00000002 # initialize rs2
divu x29, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x16, 0xfffffffe # initialize rs1
li x30, 0x80000000 # initialize rs2
divu x8, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x22, 0xfffffffe # initialize rs1
li x15, 0x80000001 # initialize rs2
divu x24, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x6, 0xfffffffe # initialize rs1
li x5, 0x7fffffff # initialize rs2
divu x2, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x1, 0xfffffffe # initialize rs1
li x10, 0x7ffffffe # initialize rs2
divu x15, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x15, 0xfffffffe # initialize rs1
li x12, 0xffffffff # initialize rs2
divu x6, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x28, 0xfffffffe # initialize rs1
li x7, 0xfffffffe # initialize rs2
divu x16, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x9, 0xfffffffe # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
divu x25, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x25, 0xfffffffe # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
divu x7, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x9, 0xfffffffe # initialize rs1
li x27, 0x55555555 # initialize rs2
divu x24, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x2, 0x5bbc8872 # initialize rs1
li x9, 0x00000000 # initialize rs2
divu x21, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x29, 0x5bbc8872 # initialize rs1
li x23, 0x00000001 # initialize rs2
divu x8, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x13, 0x5bbc8872 # initialize rs1
li x7, 0x00000002 # initialize rs2
divu x9, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x14, 0x5bbc8872 # initialize rs1
li x1, 0x80000000 # initialize rs2
divu x15, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x24, 0x5bbc8872 # initialize rs1
li x14, 0x80000001 # initialize rs2
divu x3, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x13, 0x5bbc8872 # initialize rs1
li x21, 0x7fffffff # initialize rs2
divu x5, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x11, 0x5bbc8872 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
divu x5, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x16, 0x5bbc8872 # initialize rs1
li x15, 0xffffffff # initialize rs2
divu x31, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x19, 0x5bbc8872 # initialize rs1
li x31, 0xfffffffe # initialize rs2
divu x17, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x24, 0x5bbc8872 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
divu x6, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x1, 0x5bbc8872 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
divu x19, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x24, 0x5bbc8872 # initialize rs1
li x5, 0x55555555 # initialize rs2
divu x27, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x22, 0xaaaaaaaa # initialize rs1
li x17, 0x00000000 # initialize rs2
divu x23, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x20, 0xaaaaaaaa # initialize rs1
li x6, 0x00000001 # initialize rs2
divu x29, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x12, 0xaaaaaaaa # initialize rs1
li x25, 0x00000002 # initialize rs2
divu x6, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x18, 0xaaaaaaaa # initialize rs1
li x21, 0x80000000 # initialize rs2
divu x25, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x21, 0xaaaaaaaa # initialize rs1
li x1, 0x80000001 # initialize rs2
divu x7, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x31, 0xaaaaaaaa # initialize rs1
li x2, 0x7fffffff # initialize rs2
divu x27, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x30, 0xaaaaaaaa # initialize rs1
li x27, 0x7ffffffe # initialize rs2
divu x28, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x14, 0xaaaaaaaa # initialize rs1
li x3, 0xffffffff # initialize rs2
divu x31, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x18, 0xaaaaaaaa # initialize rs1
li x30, 0xfffffffe # initialize rs2
divu x17, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x14, 0xaaaaaaaa # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
divu x1, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x17, 0xaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
divu x10, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x29, 0xaaaaaaaa # initialize rs1
li x16, 0x55555555 # initialize rs2
divu x8, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x15, 0x55555555 # initialize rs1
li x28, 0x00000000 # initialize rs2
divu x3, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x15, 0x55555555 # initialize rs1
li x7, 0x00000001 # initialize rs2
divu x10, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x19, 0x55555555 # initialize rs1
li x14, 0x00000002 # initialize rs2
divu x13, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x6, 0x55555555 # initialize rs1
li x2, 0x80000000 # initialize rs2
divu x27, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x3, 0x55555555 # initialize rs1
li x31, 0x80000001 # initialize rs2
divu x15, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x26, 0x55555555 # initialize rs1
li x18, 0x7fffffff # initialize rs2
divu x23, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x22, 0x55555555 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
divu x1, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x25, 0x55555555 # initialize rs1
li x19, 0xffffffff # initialize rs2
divu x30, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x21, 0x55555555 # initialize rs1
li x23, 0xfffffffe # initialize rs2
divu x18, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x10, 0x55555555 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
divu x30, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x16, 0x55555555 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
divu x2, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x31, 0x55555555 # initialize rs1
li x14, 0x55555555 # initialize rs2
divu x23, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xaf4ae2ff # initialize rs1
li x0, 0xccfc409c # initialize rs2
divu x7, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x19a7c4c4 # initialize rs1
li x1, 0x4410dc61 # initialize rs2
divu x9, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc8b2a3a0 # initialize rs1
li x2, 0x6a8f1711 # initialize rs2
divu x25, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x9d50f394 # initialize rs1
li x3, 0x8a988edc # initialize rs2
divu x21, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0007fe52 # initialize rs1
li x4, 0xa95ca76d # initialize rs2
divu x2, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdb2384f0 # initialize rs1
li x5, 0xb7171673 # initialize rs2
divu x26, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x492a7ee9 # initialize rs1
li x6, 0x9d9ec3d3 # initialize rs2
divu x7, x6, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x7, 0x58e56f8e # initialize rs1
li x7, 0xa5a0d81b # initialize rs2
divu x13, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x8200db97 # initialize rs1
li x8, 0x77f719c8 # initialize rs2
divu x7, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x72668c58 # initialize rs1
li x9, 0xe42311f3 # initialize rs2
divu x23, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x4a033de0 # initialize rs1
li x10, 0x72df06fe # initialize rs2
divu x24, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xf77889cb # initialize rs1
li x11, 0x0f3b87dd # initialize rs2
divu x15, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xc5f4ed23 # initialize rs1
li x12, 0x6aa37ace # initialize rs2
divu x8, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x2d383ac2 # initialize rs1
li x13, 0xf09c136d # initialize rs2
divu x26, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x64b79984 # initialize rs1
li x14, 0x9312323c # initialize rs2
divu x30, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xd98327e8 # initialize rs1
li x15, 0x98a7af3e # initialize rs2
divu x8, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xe68be794 # initialize rs1
li x16, 0xb80448ad # initialize rs2
divu x20, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xab34b617 # initialize rs1
li x17, 0x60c070ec # initialize rs2
divu x3, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x0a5244f7 # initialize rs1
li x18, 0xf6c64bb3 # initialize rs2
divu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x558b66dc # initialize rs1
li x19, 0xfead6fae # initialize rs2
divu x18, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xab7474a1 # initialize rs1
li x20, 0xb5737d55 # initialize rs2
divu x28, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xf254668a # initialize rs1
li x21, 0x8338dac8 # initialize rs2
divu x24, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x435963a3 # initialize rs1
li x22, 0x1d0980e7 # initialize rs2
divu x19, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xe20d726b # initialize rs1
li x23, 0x39b1fce0 # initialize rs2
divu x27, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x645882b0 # initialize rs1
li x24, 0x8e51dd84 # initialize rs2
divu x26, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xaaa9dbd0 # initialize rs1
li x25, 0xa87345bf # initialize rs2
divu x26, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x86653ee5 # initialize rs1
li x26, 0xba1339a1 # initialize rs2
divu x25, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xc14b9c26 # initialize rs1
li x27, 0xa8ac6ba2 # initialize rs2
divu x28, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x8e3bf41d # initialize rs1
li x28, 0x9c80193b # initialize rs2
divu x10, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x81b64a4c # initialize rs1
li x29, 0xbf5d192e # initialize rs2
divu x24, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x0ead6506 # initialize rs1
li x30, 0xbfae5e5c # initialize rs2
divu x18, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xae0ca003 # initialize rs1
li x31, 0x98a14ee4 # initialize rs2
divu x18, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x242eb20f # initialize rs1
li x24, 0xc39b2edc # initialize rs2
divu x0, x0, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xe6883d7b # initialize rs1
li x24, 0x572254f5 # initialize rs2
divu x1, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xd5c481b1 # initialize rs1
li x5, 0x64de038e # initialize rs2
divu x2, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x5632228c # initialize rs1
li x11, 0x68bb0838 # initialize rs2
divu x3, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa08f9a98 # initialize rs1
li x21, 0x7f4db0d0 # initialize rs2
divu x4, x4, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9e5bafe5 # initialize rs1
li x28, 0xf6d6f047 # initialize rs2
divu x5, x5, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x13a633bf # initialize rs1
li x28, 0xf1fd5371 # initialize rs2
divu x6, x6, x28 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x90430375 # initialize rs1
li x18, 0x2372f47e # initialize rs2
divu x7, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xdd5a7cbb # initialize rs1
li x18, 0x86aae97b # initialize rs2
divu x8, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf96e4784 # initialize rs1
li x21, 0xb9756933 # initialize rs2
divu x9, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x355e22e1 # initialize rs1
li x12, 0x37d88821 # initialize rs2
divu x10, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa0dc40ed # initialize rs1
li x28, 0x3d4e814a # initialize rs2
divu x11, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x1002f63e # initialize rs1
li x12, 0x0bf98af0 # initialize rs2
divu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xef77481b # initialize rs1
li x30, 0x8b588359 # initialize rs2
divu x13, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x1d667598 # initialize rs1
li x9, 0x1463ac72 # initialize rs2
divu x14, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa027c01a # initialize rs1
li x13, 0xbd3fa2ae # initialize rs2
divu x15, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xcbdef81c # initialize rs1
li x31, 0xc891a69c # initialize rs2
divu x16, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1bfef2b2 # initialize rs1
li x7, 0x10cf2485 # initialize rs2
divu x17, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x00df72ae # initialize rs1
li x14, 0xfe72ba06 # initialize rs2
divu x18, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xd4dc2675 # initialize rs1
li x25, 0x3d78e830 # initialize rs2
divu x19, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x8d982c03 # initialize rs1
li x26, 0xb4b2d365 # initialize rs2
divu x20, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x06952ed9 # initialize rs1
li x6, 0x0e782a63 # initialize rs2
divu x21, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x93277067 # initialize rs1
li x31, 0xe3af5c6b # initialize rs2
divu x22, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa0c289f9 # initialize rs1
li x23, 0xcb51e235 # initialize rs2
divu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x70e28d71 # initialize rs1
li x8, 0x57bfcd5a # initialize rs2
divu x24, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xa58f4cfc # initialize rs1
li x9, 0x2b98fffd # initialize rs2
divu x25, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xbd9d2668 # initialize rs1
li x19, 0xca45258c # initialize rs2
divu x26, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xadcc7a84 # initialize rs1
li x11, 0x0ccf457b # initialize rs2
divu x27, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xf747283b # initialize rs1
li x2, 0x1a4d70b1 # initialize rs2
divu x28, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xa1ad5101 # initialize rs1
li x3, 0xcff383c8 # initialize rs2
divu x29, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xcc74cf63 # initialize rs1
li x10, 0xd5709a76 # initialize rs2
divu x30, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xa52d4e53 # initialize rs1
li x12, 0x328f9dbe # initialize rs2
divu x31, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x27, 0xfa15053c # initialize rs1
li x0, 0xb36fcc7f # initialize rs2
divu x0, x27, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x14, 0x3181f692 # initialize rs1
li x1, 0x1e8e1215 # initialize rs2
divu x1, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x11, 0x2e747c2c # initialize rs1
li x2, 0x09596313 # initialize rs2
divu x2, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x28, 0xbf030af9 # initialize rs1
li x3, 0x9e972e15 # initialize rs2
divu x3, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0x329004cb # initialize rs1
li x4, 0x9d9bbd3b # initialize rs2
divu x4, x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0xd1003703 # initialize rs1
li x5, 0x12b661b6 # initialize rs2
divu x5, x28, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x70f41b07 # initialize rs1
li x6, 0x86018e55 # initialize rs2
divu x6, x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0x85db4505 # initialize rs1
li x7, 0xf57765cf # initialize rs2
divu x7, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x18, 0x3c85eb82 # initialize rs1
li x8, 0x03a63f43 # initialize rs2
divu x8, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x30, 0x8830d7d5 # initialize rs1
li x9, 0xe3ff15cd # initialize rs2
divu x9, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x19, 0x2c4ff43f # initialize rs1
li x10, 0x8ab3d73a # initialize rs2
divu x10, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0x3a2b73b2 # initialize rs1
li x11, 0x51c0bd19 # initialize rs2
divu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x13, 0x7fdb0cde # initialize rs1
li x12, 0x7aafe90f # initialize rs2
divu x12, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x10, 0x2099d07e # initialize rs1
li x13, 0x637d1c6d # initialize rs2
divu x13, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x7, 0xaf1217aa # initialize rs1
li x14, 0xb0798637 # initialize rs2
divu x14, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x12, 0x6f686f30 # initialize rs1
li x15, 0x60e0a17e # initialize rs2
divu x15, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x24, 0x1a6d23f4 # initialize rs1
li x16, 0x19ea9b15 # initialize rs2
divu x16, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x28, 0x388c592a # initialize rs1
li x17, 0x9e686b88 # initialize rs2
divu x17, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x21, 0xf5271349 # initialize rs1
li x18, 0x4d2608d0 # initialize rs2
divu x18, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x17, 0xe3b33f78 # initialize rs1
li x19, 0xbae87b65 # initialize rs2
divu x19, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x22, 0x5ba2c1a3 # initialize rs1
li x20, 0x19af1525 # initialize rs2
divu x20, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x8, 0x2342e4eb # initialize rs1
li x21, 0x2ee75f9c # initialize rs2
divu x21, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x27, 0xf52aad9d # initialize rs1
li x22, 0x7832e32d # initialize rs2
divu x22, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x12, 0x91b06646 # initialize rs1
li x23, 0x1f650d3c # initialize rs2
divu x23, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x10, 0x9c861566 # initialize rs1
li x24, 0xe5bcf57b # initialize rs2
divu x24, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x18, 0xf85ceb5d # initialize rs1
li x25, 0x518ccf02 # initialize rs2
divu x25, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x11, 0x8ae63e0e # initialize rs1
li x26, 0x1a12881d # initialize rs2
divu x26, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x16, 0xbf56cbb7 # initialize rs1
li x27, 0x0363a567 # initialize rs2
divu x27, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x27, 0xfc430760 # initialize rs1
li x28, 0x6e32d45a # initialize rs2
divu x28, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x30, 0xaabc6222 # initialize rs1
li x29, 0x8254369b # initialize rs2
divu x29, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x1, 0xc0e62a07 # initialize rs1
li x30, 0x1019e915 # initialize rs2
divu x30, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x1, 0xfccdb3bd # initialize rs1
li x31, 0x778af03e # initialize rs2
divu x31, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x7d39746f # initialize rs1
li x0, 0xb2330df3 # initialize rs2
divu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xa64ef420 # initialize rs1
li x1, 0xf6bd2a65 # initialize rs2
divu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xee560b0c # initialize rs1
li x2, 0xecf0fed5 # initialize rs2
divu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x9cc7289d # initialize rs1
li x3, 0xc3bef2b4 # initialize rs2
divu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb44a8f58 # initialize rs1
li x4, 0x8a136a7a # initialize rs2
divu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa8306191 # initialize rs1
li x5, 0x7b267d78 # initialize rs2
divu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7a2a51a8 # initialize rs1
li x6, 0x55fd14a1 # initialize rs2
divu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x87f5af61 # initialize rs1
li x7, 0xeca29e84 # initialize rs2
divu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x51a11427 # initialize rs1
li x8, 0x973532c9 # initialize rs2
divu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x4c2155ba # initialize rs1
li x9, 0x6b65d719 # initialize rs2
divu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xa174d9f5 # initialize rs1
li x10, 0x600ba430 # initialize rs2
divu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x0ef8e63f # initialize rs1
li x11, 0x0107589c # initialize rs2
divu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x424186c4 # initialize rs1
li x12, 0x2ac82a63 # initialize rs2
divu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x7a3cdcc4 # initialize rs1
li x13, 0x83e3b77d # initialize rs2
divu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xbbba7d0b # initialize rs1
li x14, 0x18d29161 # initialize rs2
divu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x81d2d5d5 # initialize rs1
li x15, 0xd70524fc # initialize rs2
divu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x65e5184c # initialize rs1
li x16, 0x2710c86d # initialize rs2
divu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x2abd2972 # initialize rs1
li x17, 0xf6676dc7 # initialize rs2
divu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xefcddde6 # initialize rs1
li x18, 0x5e3d74e7 # initialize rs2
divu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xdde2ec5e # initialize rs1
li x19, 0x7bab3043 # initialize rs2
divu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x2fd574b2 # initialize rs1
li x20, 0x1eca0ad9 # initialize rs2
divu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x94f03730 # initialize rs1
li x21, 0x2dfda867 # initialize rs2
divu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xca91d4e2 # initialize rs1
li x22, 0xb7a1e6cd # initialize rs2
divu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x01b312a9 # initialize rs1
li x23, 0xf53c525b # initialize rs2
divu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x699fbdff # initialize rs1
li x24, 0xa71a352a # initialize rs2
divu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x858eaf56 # initialize rs1
li x25, 0x1a5b7f2c # initialize rs2
divu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x2377aa6c # initialize rs1
li x26, 0x994d61d4 # initialize rs2
divu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x17aaa650 # initialize rs1
li x27, 0x9d06f050 # initialize rs2
divu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xb9a3ce95 # initialize rs1
li x28, 0x33538bfc # initialize rs2
divu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x5e287893 # initialize rs1
li x29, 0xd03b1a8d # initialize rs2
divu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x74256532 # initialize rs1
li x30, 0x3b655cbe # initialize rs2
divu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xc0e2e8d4 # initialize rs1
li x31, 0x4ff44704 # initialize rs2
divu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x20, x28 # perform first operation
divu x7, x18, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x28, x10 # perform first operation
divu x27, x2, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x13, x31 # perform first operation
divu x29, x18, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x31, x23 # perform first operation
divu x13, x13, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x5, x6 # perform first operation
divu x2, x26, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x11, x23 # perform first operation
divu x15, x27, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x2, x18 # perform first operation
divu x19, x15, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x7, x24 # perform first operation
divu x18, x29, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x19, x5 # perform first operation
divu x24, x21, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x23, x30 # perform first operation
divu x23, x3, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x26, x23 # perform first operation
divu x23, x10, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x23, x16 # perform first operation
divu x20, x6, x31 # perform second (triggering) operation

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
