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
// Tests from: WALLY-COV-clmulh.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xae210fbc # initialize rs1
li x30, 0x7e5d8c43 # initialize rs2
clmulh x24, x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x7b6f225e # initialize rs1
li x23, 0xa1eec93a # initialize rs2
clmulh x2, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x0b8c4f71 # initialize rs1
li x24, 0x10879b16 # initialize rs2
clmulh x21, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x70da6f4b # initialize rs1
li x24, 0x4ecfce49 # initialize rs2
clmulh x29, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0ab0f6dd # initialize rs1
li x10, 0x9ad0f954 # initialize rs2
clmulh x5, x4, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
li x5, 0xe7efe585 # initialize rs1
li x15, 0xfc391fa8 # initialize rs2
clmulh x3, x5, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x5e6752fa # initialize rs1
li x26, 0xb094358c # initialize rs2
clmulh x13, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbfadcdb7 # initialize rs1
li x25, 0x71430c0d # initialize rs2
clmulh x24, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x8c705297 # initialize rs1
li x3, 0xbdd9b0d4 # initialize rs2
clmulh x28, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xa7c85074 # initialize rs1
li x20, 0xafc0f942 # initialize rs2
clmulh x7, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xd2e4d1a8 # initialize rs1
li x27, 0x42090702 # initialize rs2
clmulh x3, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x82f2b0c4 # initialize rs1
li x28, 0xf13e5591 # initialize rs2
clmulh x27, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xc1641f62 # initialize rs1
li x23, 0xa5a8ffde # initialize rs2
clmulh x3, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x90a06fe3 # initialize rs1
li x7, 0xf5647199 # initialize rs2
clmulh x1, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x169acba6 # initialize rs1
li x23, 0x4713184a # initialize rs2
clmulh x28, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x5a4ced42 # initialize rs1
li x27, 0xa1d0d61a # initialize rs2
clmulh x24, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xcd389772 # initialize rs1
li x29, 0x48bb0cf3 # initialize rs2
clmulh x25, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8843198f # initialize rs1
li x22, 0xfc3e59f2 # initialize rs2
clmulh x6, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x6524dff2 # initialize rs1
li x1, 0xfefe4cc9 # initialize rs2
clmulh x14, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x7e56b507 # initialize rs1
li x24, 0x6ad9c381 # initialize rs2
clmulh x8, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x962efebe # initialize rs1
li x31, 0x329ca40d # initialize rs2
clmulh x6, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x8a6c09f7 # initialize rs1
li x9, 0xcd71832e # initialize rs2
clmulh x19, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x489a0443 # initialize rs1
li x29, 0x7964fcd1 # initialize rs2
clmulh x30, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xe965ca3e # initialize rs1
li x29, 0x0b8c61b2 # initialize rs2
clmulh x26, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xa3969faa # initialize rs1
li x30, 0x60ea252e # initialize rs2
clmulh x19, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x6f20b1ab # initialize rs1
li x11, 0xdf7574ea # initialize rs2
clmulh x12, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x59227f6c # initialize rs1
li x12, 0x3a581c24 # initialize rs2
clmulh x22, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x0a9f9960 # initialize rs1
li x3, 0x4ebb1435 # initialize rs2
clmulh x20, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x6cccc330 # initialize rs1
li x13, 0x58a63ddb # initialize rs2
clmulh x7, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x89ff63ef # initialize rs1
li x24, 0x48ff5dd9 # initialize rs2
clmulh x27, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x18a8f6e1 # initialize rs1
li x5, 0xf5f5a7e1 # initialize rs2
clmulh x28, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xb62ce2fe # initialize rs1
li x14, 0x7385ea59 # initialize rs2
clmulh x15, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x7, 0x61cf8d27 # initialize rs1
li x0, 0x80ee1535 # initialize rs2
clmulh x16, x7, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x23, 0xa0a40d90 # initialize rs1
li x1, 0xb6d9f6f9 # initialize rs2
clmulh x10, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x25, 0x67e6d855 # initialize rs1
li x2, 0x6ac00856 # initialize rs2
clmulh x12, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x19, 0x7089ff41 # initialize rs1
li x3, 0x3ef8c1d8 # initialize rs2
clmulh x11, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0x0c8fef8f # initialize rs1
li x4, 0x2e3d4dce # initialize rs2
clmulh x12, x28, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0x33175d17 # initialize rs1
li x5, 0xab712bb0 # initialize rs2
clmulh x11, x2, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0xe4d15f9d # initialize rs1
li x6, 0x6345a47f # initialize rs2
clmulh x25, x15, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x9e32e1a4 # initialize rs1
li x7, 0xc5c84df8 # initialize rs2
clmulh x31, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x22, 0xe08b17da # initialize rs1
li x8, 0x6af19026 # initialize rs2
clmulh x2, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x1, 0xf67fa508 # initialize rs1
li x9, 0xa71d38c0 # initialize rs2
clmulh x24, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x14, 0x0d49d3c6 # initialize rs1
li x10, 0x45f5c6ab # initialize rs2
clmulh x5, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x28, 0x5d783418 # initialize rs1
li x11, 0xb0424ac6 # initialize rs2
clmulh x17, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x16, 0xab0553cf # initialize rs1
li x12, 0x8ed61ff9 # initialize rs2
clmulh x21, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x3, 0xb3974bfd # initialize rs1
li x13, 0x48635e33 # initialize rs2
clmulh x23, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x18, 0x2f14b6e7 # initialize rs1
li x14, 0xc9842334 # initialize rs2
clmulh x29, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x3, 0x3e4439be # initialize rs1
li x15, 0x6dcd161d # initialize rs2
clmulh x17, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x19, 0x7e06faa5 # initialize rs1
li x16, 0xf1d9242d # initialize rs2
clmulh x6, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x25, 0xe644b679 # initialize rs1
li x17, 0x242a9ee5 # initialize rs2
clmulh x8, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x6, 0xf21e324f # initialize rs1
li x18, 0x469e5c99 # initialize rs2
clmulh x30, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x8, 0xa67f7a56 # initialize rs1
li x19, 0x240dc761 # initialize rs2
clmulh x12, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x8, 0x6e0a3943 # initialize rs1
li x20, 0x8f7b145b # initialize rs2
clmulh x13, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x27, 0xf05e3e9a # initialize rs1
li x21, 0x7fd1133a # initialize rs2
clmulh x5, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x19, 0x6b23f706 # initialize rs1
li x22, 0xf4a8db00 # initialize rs2
clmulh x10, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x14, 0xd9a932c0 # initialize rs1
li x23, 0xdd4362c2 # initialize rs2
clmulh x19, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x1, 0x1ce489f3 # initialize rs1
li x24, 0x47f7f750 # initialize rs2
clmulh x26, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x24, 0x71fc202b # initialize rs1
li x25, 0xbf7631ca # initialize rs2
clmulh x27, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x25, 0xd13a9530 # initialize rs1
li x26, 0x6c0a6410 # initialize rs2
clmulh x3, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x26, 0x9a6678ac # initialize rs1
li x27, 0xcdd7afe7 # initialize rs2
clmulh x13, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x22, 0xd660c074 # initialize rs1
li x28, 0x97ce412e # initialize rs2
clmulh x12, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x22, 0xb376f114 # initialize rs1
li x29, 0xc5aa6e26 # initialize rs2
clmulh x5, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x28, 0x026ecd02 # initialize rs1
li x30, 0x6a7d195d # initialize rs2
clmulh x25, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x10, 0x1adc28f5 # initialize rs1
li x31, 0x61d1807c # initialize rs2
clmulh x24, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 252)

# Testcase cp_rd (Test destination rd = x0)
li x14, 0x12b1667b # initialize rs1
li x27, 0x2758073f # initialize rs2
clmulh x0, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x28, 0xddab4c47 # initialize rs1
li x30, 0x4421d148 # initialize rs2
clmulh x1, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x22, 0x609d94fc # initialize rs1
li x10, 0xa8753fc4 # initialize rs2
clmulh x2, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x23, 0x4359606f # initialize rs1
li x16, 0xd7dda1c9 # initialize rs2
clmulh x3, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0x5a29a2d0 # initialize rs1
li x24, 0xf9195e8e # initialize rs2
clmulh x4, x3, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0x615054da # initialize rs1
li x26, 0xf97e93f4 # initialize rs2
clmulh x5, x21, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0xb91f2cec # initialize rs1
li x28, 0xedd7f885 # initialize rs2
clmulh x6, x10, x28 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x94f656f3 # initialize rs1
li x26, 0xcac529c1 # initialize rs2
clmulh x7, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x2, 0xd9464309 # initialize rs1
li x9, 0xf61ed7f7 # initialize rs2
clmulh x8, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x22, 0x86519be6 # initialize rs1
li x19, 0x59890fcb # initialize rs2
clmulh x9, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x31, 0x4e5a6a58 # initialize rs1
li x1, 0xdc88d1d0 # initialize rs2
clmulh x10, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0xeb293591 # initialize rs1
li x29, 0xd3104bfe # initialize rs2
clmulh x11, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x1, 0xe6c029ec # initialize rs1
li x6, 0xbe035c40 # initialize rs2
clmulh x12, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x21, 0xba524f68 # initialize rs1
li x10, 0xc081f39d # initialize rs2
clmulh x13, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x12, 0x2e5be6ab # initialize rs1
li x25, 0x825bad3d # initialize rs2
clmulh x14, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x2, 0xbb2d5265 # initialize rs1
li x7, 0x9b9462dc # initialize rs2
clmulh x15, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x27, 0x973e9ec0 # initialize rs1
li x20, 0x72313fb5 # initialize rs2
clmulh x16, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x15, 0x18f26162 # initialize rs1
li x2, 0xb19a809f # initialize rs2
clmulh x17, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x31, 0x22e58708 # initialize rs1
li x19, 0x6b4547f5 # initialize rs2
clmulh x18, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x28, 0x40322061 # initialize rs1
li x16, 0xee86c57f # initialize rs2
clmulh x19, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x27, 0xe7a88a1b # initialize rs1
li x24, 0xcbffebee # initialize rs2
clmulh x20, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x3, 0xb1ec998b # initialize rs1
li x29, 0xc6a72b18 # initialize rs2
clmulh x21, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x6, 0xc4b9b9f1 # initialize rs1
li x11, 0x7ba3d67c # initialize rs2
clmulh x22, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x10, 0xa0976e56 # initialize rs1
li x19, 0x50fdf9c5 # initialize rs2
clmulh x23, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x6, 0xce8a2490 # initialize rs1
li x2, 0xdeefc5f7 # initialize rs2
clmulh x24, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x24, 0xcb438956 # initialize rs1
li x17, 0xde38300b # initialize rs2
clmulh x25, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x5, 0x66e0da8f # initialize rs1
li x22, 0x2a3e4216 # initialize rs2
clmulh x26, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x3, 0x1c4eca33 # initialize rs1
li x30, 0xa073762f # initialize rs2
clmulh x27, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x26, 0x9f7e3deb # initialize rs1
li x20, 0x451475d6 # initialize rs2
clmulh x28, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x17, 0x29b2b998 # initialize rs1
li x23, 0xcf6b31cc # initialize rs2
clmulh x29, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x23, 0x7b687d1a # initialize rs1
li x8, 0xb85a0149 # initialize rs2
clmulh x30, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0xbfd1127c # initialize rs1
li x17, 0xdafa87a8 # initialize rs2
clmulh x31, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x25, 0x00000000 # initialize rs1
li x18, 0xefc588d1 # initialize rs2
clmulh x19, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x00000001 # initialize rs1
li x29, 0x4a14fa55 # initialize rs2
clmulh x17, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0x00000002 # initialize rs1
li x15, 0x0411d049 # initialize rs2
clmulh x27, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x1, 0x80000000 # initialize rs1
li x8, 0x81d987e1 # initialize rs2
clmulh x25, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x5, 0x80000001 # initialize rs1
li x18, 0x2aea0fb4 # initialize rs2
clmulh x9, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x19, 0x7fffffff # initialize rs1
li x20, 0x196042c9 # initialize rs2
clmulh x28, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x12, 0x7ffffffe # initialize rs1
li x7, 0xa7b3a4a4 # initialize rs2
clmulh x20, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0xffffffff # initialize rs1
li x13, 0x35d3f77e # initialize rs2
clmulh x23, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x16, 0xfffffffe # initialize rs1
li x3, 0xa31b5769 # initialize rs2
clmulh x23, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x16, 0x5bbc8872 # initialize rs1
li x15, 0xe9520b21 # initialize rs2
clmulh x9, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x8, 0xaaaaaaaa # initialize rs1
li x11, 0xba76b8f7 # initialize rs2
clmulh x2, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x26, 0x55555555 # initialize rs1
li x7, 0x799f0918 # initialize rs2
clmulh x13, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x5, 0xba4811a3 # initialize rs1
li x29, 0x00000000 # initialize rs2
clmulh x16, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x18, 0x02d91588 # initialize rs1
li x29, 0x00000001 # initialize rs2
clmulh x11, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x13, 0x6cee35ee # initialize rs1
li x25, 0x00000002 # initialize rs2
clmulh x14, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x12, 0xb87b49ef # initialize rs1
li x13, 0x80000000 # initialize rs2
clmulh x22, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x19, 0x99be3965 # initialize rs1
li x10, 0x80000001 # initialize rs2
clmulh x6, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x22, 0x18957330 # initialize rs1
li x18, 0x7fffffff # initialize rs2
clmulh x1, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x11, 0x629d2a82 # initialize rs1
li x7, 0x7ffffffe # initialize rs2
clmulh x10, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x19, 0xe5929a02 # initialize rs1
li x30, 0xffffffff # initialize rs2
clmulh x8, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x9, 0x80a4cc41 # initialize rs1
li x27, 0xfffffffe # initialize rs2
clmulh x13, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x15, 0x40a3dae6 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
clmulh x18, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x7, 0x8f7f00e5 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
clmulh x2, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x5, 0x5d71fc77 # initialize rs1
li x26, 0x55555555 # initialize rs2
clmulh x25, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x15, 0x00000000 # initialize rs1
li x10, 0x00000000 # initialize rs2
clmulh x29, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x27, 0x00000000 # initialize rs1
li x14, 0x00000001 # initialize rs2
clmulh x21, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x20, 0x00000000 # initialize rs1
li x25, 0x00000002 # initialize rs2
clmulh x12, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x10, 0x00000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
clmulh x31, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x9, 0x00000000 # initialize rs1
li x28, 0x80000001 # initialize rs2
clmulh x23, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x16, 0x00000000 # initialize rs1
li x27, 0x7fffffff # initialize rs2
clmulh x11, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x13, 0x00000000 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
clmulh x23, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x25, 0x00000000 # initialize rs1
li x17, 0xffffffff # initialize rs2
clmulh x30, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x19, 0x00000000 # initialize rs1
li x5, 0xfffffffe # initialize rs2
clmulh x10, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x7, 0x00000000 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
clmulh x2, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x26, 0x00000000 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
clmulh x7, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x13, 0x00000000 # initialize rs1
li x5, 0x55555555 # initialize rs2
clmulh x2, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x20, 0x00000001 # initialize rs1
li x27, 0x00000000 # initialize rs2
clmulh x10, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x2, 0x00000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
clmulh x18, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x6, 0x00000001 # initialize rs1
li x16, 0x00000002 # initialize rs2
clmulh x5, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x29, 0x00000001 # initialize rs1
li x31, 0x80000000 # initialize rs2
clmulh x27, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x3, 0x00000001 # initialize rs1
li x31, 0x80000001 # initialize rs2
clmulh x13, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x19, 0x00000001 # initialize rs1
li x1, 0x7fffffff # initialize rs2
clmulh x14, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x25, 0x00000001 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
clmulh x29, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x18, 0x00000001 # initialize rs1
li x28, 0xffffffff # initialize rs2
clmulh x20, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x8, 0x00000001 # initialize rs1
li x15, 0xfffffffe # initialize rs2
clmulh x20, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x25, 0x00000001 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
clmulh x29, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x12, 0x00000001 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
clmulh x28, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x30, 0x00000001 # initialize rs1
li x5, 0x55555555 # initialize rs2
clmulh x9, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x3, 0x00000002 # initialize rs1
li x21, 0x00000000 # initialize rs2
clmulh x9, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x19, 0x00000002 # initialize rs1
li x26, 0x00000001 # initialize rs2
clmulh x10, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x29, 0x00000002 # initialize rs1
li x25, 0x00000002 # initialize rs2
clmulh x21, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x14, 0x00000002 # initialize rs1
li x18, 0x80000000 # initialize rs2
clmulh x3, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x6, 0x00000002 # initialize rs1
li x30, 0x80000001 # initialize rs2
clmulh x9, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x15, 0x00000002 # initialize rs1
li x22, 0x7fffffff # initialize rs2
clmulh x7, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x9, 0x00000002 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
clmulh x8, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x12, 0x00000002 # initialize rs1
li x6, 0xffffffff # initialize rs2
clmulh x15, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x7, 0x00000002 # initialize rs1
li x17, 0xfffffffe # initialize rs2
clmulh x5, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x14, 0x00000002 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
clmulh x17, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x28, 0x00000002 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
clmulh x9, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x9, 0x00000002 # initialize rs1
li x6, 0x55555555 # initialize rs2
clmulh x29, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x11, 0x80000000 # initialize rs1
li x20, 0x00000000 # initialize rs2
clmulh x14, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x1, 0x80000000 # initialize rs1
li x31, 0x00000001 # initialize rs2
clmulh x11, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x14, 0x80000000 # initialize rs1
li x25, 0x00000002 # initialize rs2
clmulh x9, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x24, 0x80000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
clmulh x2, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x19, 0x80000000 # initialize rs1
li x14, 0x80000001 # initialize rs2
clmulh x24, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x31, 0x80000000 # initialize rs1
li x6, 0x7fffffff # initialize rs2
clmulh x27, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x25, 0x80000000 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
clmulh x11, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x12, 0x80000000 # initialize rs1
li x7, 0xffffffff # initialize rs2
clmulh x30, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x12, 0x80000000 # initialize rs1
li x16, 0xfffffffe # initialize rs2
clmulh x1, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x9, 0x80000000 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
clmulh x18, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x1, 0x80000000 # initialize rs1
li x30, 0xaaaaaaaa # initialize rs2
clmulh x17, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x16, 0x80000000 # initialize rs1
li x9, 0x55555555 # initialize rs2
clmulh x23, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x11, 0x80000001 # initialize rs1
li x8, 0x00000000 # initialize rs2
clmulh x22, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x11, 0x80000001 # initialize rs1
li x10, 0x00000001 # initialize rs2
clmulh x5, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x20, 0x80000001 # initialize rs1
li x9, 0x00000002 # initialize rs2
clmulh x3, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x11, 0x80000001 # initialize rs1
li x6, 0x80000000 # initialize rs2
clmulh x28, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x23, 0x80000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
clmulh x2, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x17, 0x80000001 # initialize rs1
li x3, 0x7fffffff # initialize rs2
clmulh x16, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x14, 0x80000001 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
clmulh x7, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x26, 0x80000001 # initialize rs1
li x9, 0xffffffff # initialize rs2
clmulh x24, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x19, 0x80000001 # initialize rs1
li x25, 0xfffffffe # initialize rs2
clmulh x29, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x26, 0x80000001 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
clmulh x21, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x23, 0x80000001 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
clmulh x30, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x30, 0x80000001 # initialize rs1
li x23, 0x55555555 # initialize rs2
clmulh x25, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x13, 0x7fffffff # initialize rs1
li x6, 0x00000000 # initialize rs2
clmulh x16, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x29, 0x7fffffff # initialize rs1
li x1, 0x00000001 # initialize rs2
clmulh x14, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x16, 0x7fffffff # initialize rs1
li x23, 0x00000002 # initialize rs2
clmulh x27, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x14, 0x7fffffff # initialize rs1
li x7, 0x80000000 # initialize rs2
clmulh x16, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x17, 0x7fffffff # initialize rs1
li x8, 0x80000001 # initialize rs2
clmulh x1, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x5, 0x7fffffff # initialize rs1
li x11, 0x7fffffff # initialize rs2
clmulh x13, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x28, 0x7fffffff # initialize rs1
li x17, 0x7ffffffe # initialize rs2
clmulh x10, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x8, 0x7fffffff # initialize rs1
li x6, 0xffffffff # initialize rs2
clmulh x16, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x1, 0x7fffffff # initialize rs1
li x19, 0xfffffffe # initialize rs2
clmulh x6, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x2, 0x7fffffff # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
clmulh x17, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x25, 0x7fffffff # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
clmulh x20, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x8, 0x7fffffff # initialize rs1
li x13, 0x55555555 # initialize rs2
clmulh x23, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x29, 0x7ffffffe # initialize rs1
li x12, 0x00000000 # initialize rs2
clmulh x21, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x28, 0x7ffffffe # initialize rs1
li x29, 0x00000001 # initialize rs2
clmulh x26, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x13, 0x7ffffffe # initialize rs1
li x14, 0x00000002 # initialize rs2
clmulh x10, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x31, 0x7ffffffe # initialize rs1
li x1, 0x80000000 # initialize rs2
clmulh x29, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x1, 0x7ffffffe # initialize rs1
li x15, 0x80000001 # initialize rs2
clmulh x9, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x8, 0x7ffffffe # initialize rs1
li x15, 0x7fffffff # initialize rs2
clmulh x16, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x23, 0x7ffffffe # initialize rs1
li x9, 0x7ffffffe # initialize rs2
clmulh x28, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x21, 0x7ffffffe # initialize rs1
li x9, 0xffffffff # initialize rs2
clmulh x2, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x10, 0x7ffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
clmulh x6, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x29, 0x7ffffffe # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
clmulh x27, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x19, 0x7ffffffe # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
clmulh x11, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x26, 0x7ffffffe # initialize rs1
li x30, 0x55555555 # initialize rs2
clmulh x13, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x15, 0xffffffff # initialize rs1
li x27, 0x00000000 # initialize rs2
clmulh x3, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x7, 0xffffffff # initialize rs1
li x1, 0x00000001 # initialize rs2
clmulh x26, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x31, 0xffffffff # initialize rs1
li x11, 0x00000002 # initialize rs2
clmulh x18, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x30, 0xffffffff # initialize rs1
li x3, 0x80000000 # initialize rs2
clmulh x19, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x22, 0xffffffff # initialize rs1
li x20, 0x80000001 # initialize rs2
clmulh x23, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x24, 0xffffffff # initialize rs1
li x30, 0x7fffffff # initialize rs2
clmulh x14, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x14, 0xffffffff # initialize rs1
li x25, 0x7ffffffe # initialize rs2
clmulh x31, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x19, 0xffffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
clmulh x29, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x5, 0xffffffff # initialize rs1
li x14, 0xfffffffe # initialize rs2
clmulh x28, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x24, 0xffffffff # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
clmulh x14, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x28, 0xffffffff # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
clmulh x13, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x5, 0xffffffff # initialize rs1
li x31, 0x55555555 # initialize rs2
clmulh x3, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x6, 0xfffffffe # initialize rs1
li x17, 0x00000000 # initialize rs2
clmulh x19, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x11, 0xfffffffe # initialize rs1
li x9, 0x00000001 # initialize rs2
clmulh x30, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x8, 0xfffffffe # initialize rs1
li x9, 0x00000002 # initialize rs2
clmulh x19, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x12, 0xfffffffe # initialize rs1
li x22, 0x80000000 # initialize rs2
clmulh x17, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x13, 0xfffffffe # initialize rs1
li x14, 0x80000001 # initialize rs2
clmulh x3, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x27, 0xfffffffe # initialize rs1
li x23, 0x7fffffff # initialize rs2
clmulh x30, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x11, 0xfffffffe # initialize rs1
li x5, 0x7ffffffe # initialize rs2
clmulh x18, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x9, 0xfffffffe # initialize rs1
li x24, 0xffffffff # initialize rs2
clmulh x25, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x15, 0xfffffffe # initialize rs1
li x16, 0xfffffffe # initialize rs2
clmulh x24, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x20, 0xfffffffe # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
clmulh x21, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x11, 0xfffffffe # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
clmulh x3, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x23, 0xfffffffe # initialize rs1
li x26, 0x55555555 # initialize rs2
clmulh x22, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x20, 0x5bbc8872 # initialize rs1
li x7, 0x00000000 # initialize rs2
clmulh x26, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x20, 0x5bbc8872 # initialize rs1
li x23, 0x00000001 # initialize rs2
clmulh x15, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x21, 0x5bbc8872 # initialize rs1
li x15, 0x00000002 # initialize rs2
clmulh x9, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x1, 0x5bbc8872 # initialize rs1
li x28, 0x80000000 # initialize rs2
clmulh x9, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x28, 0x5bbc8872 # initialize rs1
li x5, 0x80000001 # initialize rs2
clmulh x27, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x1, 0x5bbc8872 # initialize rs1
li x16, 0x7fffffff # initialize rs2
clmulh x8, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x9, 0x5bbc8872 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
clmulh x3, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x17, 0x5bbc8872 # initialize rs1
li x19, 0xffffffff # initialize rs2
clmulh x29, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x5, 0x5bbc8872 # initialize rs1
li x15, 0xfffffffe # initialize rs2
clmulh x1, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x23, 0x5bbc8872 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
clmulh x20, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x13, 0x5bbc8872 # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
clmulh x26, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x14, 0x5bbc8872 # initialize rs1
li x15, 0x55555555 # initialize rs2
clmulh x27, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x10, 0xaaaaaaaa # initialize rs1
li x2, 0x00000000 # initialize rs2
clmulh x14, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x2, 0xaaaaaaaa # initialize rs1
li x18, 0x00000001 # initialize rs2
clmulh x15, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x28, 0xaaaaaaaa # initialize rs1
li x1, 0x00000002 # initialize rs2
clmulh x7, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x10, 0xaaaaaaaa # initialize rs1
li x9, 0x80000000 # initialize rs2
clmulh x18, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x1, 0xaaaaaaaa # initialize rs1
li x24, 0x80000001 # initialize rs2
clmulh x9, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x26, 0xaaaaaaaa # initialize rs1
li x8, 0x7fffffff # initialize rs2
clmulh x2, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x13, 0xaaaaaaaa # initialize rs1
li x27, 0x7ffffffe # initialize rs2
clmulh x17, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x9, 0xaaaaaaaa # initialize rs1
li x14, 0xffffffff # initialize rs2
clmulh x21, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x7, 0xaaaaaaaa # initialize rs1
li x26, 0xfffffffe # initialize rs2
clmulh x1, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x22, 0xaaaaaaaa # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
clmulh x27, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x18, 0xaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
clmulh x22, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x20, 0xaaaaaaaa # initialize rs1
li x16, 0x55555555 # initialize rs2
clmulh x5, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x31, 0x55555555 # initialize rs1
li x8, 0x00000000 # initialize rs2
clmulh x14, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x18, 0x55555555 # initialize rs1
li x11, 0x00000001 # initialize rs2
clmulh x6, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x20, 0x55555555 # initialize rs1
li x9, 0x00000002 # initialize rs2
clmulh x7, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x6, 0x55555555 # initialize rs1
li x11, 0x80000000 # initialize rs2
clmulh x16, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x30, 0x55555555 # initialize rs1
li x6, 0x80000001 # initialize rs2
clmulh x18, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x29, 0x55555555 # initialize rs1
li x26, 0x7fffffff # initialize rs2
clmulh x14, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x20, 0x55555555 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
clmulh x7, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x9, 0x55555555 # initialize rs1
li x5, 0xffffffff # initialize rs2
clmulh x12, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x19, 0x55555555 # initialize rs1
li x29, 0xfffffffe # initialize rs2
clmulh x26, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x31, 0x55555555 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
clmulh x5, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x3, 0x55555555 # initialize rs1
li x10, 0xaaaaaaaa # initialize rs2
clmulh x23, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x11, 0x55555555 # initialize rs1
li x6, 0x55555555 # initialize rs2
clmulh x16, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x053abf9b # initialize rs1
li x0, 0x0a800196 # initialize rs2
clmulh x8, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xed34a7ec # initialize rs1
li x1, 0x9e69ab36 # initialize rs2
clmulh x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x369d653e # initialize rs1
li x2, 0x044c8323 # initialize rs2
clmulh x13, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xc742c8cb # initialize rs1
li x3, 0x25bf53e2 # initialize rs2
clmulh x27, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdfdd903d # initialize rs1
li x4, 0x8a99203f # initialize rs2
clmulh x31, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcc5d60b2 # initialize rs1
li x5, 0x9ee6081c # initialize rs2
clmulh x27, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8745b35c # initialize rs1
li x6, 0xed7d8466 # initialize rs2
clmulh x24, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xce7855be # initialize rs1
li x7, 0x9f9a0075 # initialize rs2
clmulh x23, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6998ec0d # initialize rs1
li x8, 0x3206f869 # initialize rs2
clmulh x20, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x6d60dab9 # initialize rs1
li x9, 0x1e528637 # initialize rs2
clmulh x31, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xbc989189 # initialize rs1
li x10, 0x4f64252e # initialize rs2
clmulh x27, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xd416449c # initialize rs1
li x11, 0xbd67b7d3 # initialize rs2
clmulh x7, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xc67ebf66 # initialize rs1
li x12, 0xeb4ef33b # initialize rs2
clmulh x29, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x0d49a89f # initialize rs1
li x13, 0x34d9ac1c # initialize rs2
clmulh x28, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x423d38cf # initialize rs1
li x14, 0xfce39b64 # initialize rs2
clmulh x8, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xcb8c572e # initialize rs1
li x15, 0x72f55a1a # initialize rs2
clmulh x24, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xb9b63850 # initialize rs1
li x16, 0x86bcb43d # initialize rs2
clmulh x30, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xf3a68f49 # initialize rs1
li x17, 0x2ace2b9f # initialize rs2
clmulh x11, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x1709ad08 # initialize rs1
li x18, 0xf1818d87 # initialize rs2
clmulh x19, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x8e5ee996 # initialize rs1
li x19, 0x64053300 # initialize rs2
clmulh x5, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xd674258f # initialize rs1
li x20, 0x87266e85 # initialize rs2
clmulh x15, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x5bd36f8a # initialize rs1
li x21, 0x169e8f67 # initialize rs2
clmulh x30, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x12251c6c # initialize rs1
li x22, 0x179fd069 # initialize rs2
clmulh x30, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xfe9744ef # initialize rs1
li x23, 0x978648af # initialize rs2
clmulh x16, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xc1c5e390 # initialize rs1
li x24, 0x05bad358 # initialize rs2
clmulh x6, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xf015a68e # initialize rs1
li x25, 0xa70f978a # initialize rs2
clmulh x8, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x9a36b192 # initialize rs1
li x26, 0x056c88d3 # initialize rs2
clmulh x17, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x99b39f16 # initialize rs1
li x27, 0x711a9676 # initialize rs2
clmulh x10, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x8dfc266d # initialize rs1
li x28, 0xab875fe3 # initialize rs2
clmulh x7, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xb1f6aedf # initialize rs1
li x29, 0x0bdb2904 # initialize rs2
clmulh x17, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x8b37ba88 # initialize rs1
li x30, 0x5aaa30b7 # initialize rs2
clmulh x3, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x7bbba3c7 # initialize rs1
li x31, 0x7d4d33ef # initialize rs2
clmulh x15, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x6c4dd487 # initialize rs1
li x13, 0xd49dd6ae # initialize rs2
clmulh x0, x0, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xabdae213 # initialize rs1
li x1, 0xbbdd9119 # initialize rs2
clmulh x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xf1e61f39 # initialize rs1
li x27, 0xa6f05bd3 # initialize rs2
clmulh x2, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x3b58f462 # initialize rs1
li x11, 0xcd67dbfe # initialize rs2
clmulh x3, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc1cad014 # initialize rs1
li x5, 0xae54fbf5 # initialize rs2
clmulh x4, x4, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x453279df # initialize rs1
li x22, 0xc341ee44 # initialize rs2
clmulh x5, x5, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb75b1397 # initialize rs1
li x7, 0x08ee7e80 # initialize rs2
clmulh x6, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xc5dff563 # initialize rs1
li x30, 0xf5f31270 # initialize rs2
clmulh x7, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf822abf0 # initialize rs1
li x15, 0xa209061f # initialize rs2
clmulh x8, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x48b52d51 # initialize rs1
li x9, 0xf73dc50c # initialize rs2
clmulh x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xb2ed161c # initialize rs1
li x21, 0x40a94821 # initialize rs2
clmulh x10, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x6c2e44fa # initialize rs1
li x23, 0x48843480 # initialize rs2
clmulh x11, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xd30384fb # initialize rs1
li x24, 0xaa0c7915 # initialize rs2
clmulh x12, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x34179e20 # initialize rs1
li x24, 0x46bf3b37 # initialize rs2
clmulh x13, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x08ba22af # initialize rs1
li x24, 0x37235691 # initialize rs2
clmulh x14, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x99b25038 # initialize rs1
li x10, 0x2763f069 # initialize rs2
clmulh x15, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xf6d9522e # initialize rs1
li x15, 0x398ac4fb # initialize rs2
clmulh x16, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x6dd83df9 # initialize rs1
li x31, 0x3462a1a6 # initialize rs2
clmulh x17, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x1f018aab # initialize rs1
li x17, 0x2fd62fb4 # initialize rs2
clmulh x18, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x36a937ff # initialize rs1
li x5, 0x2193aa2c # initialize rs2
clmulh x19, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xd6b64a7b # initialize rs1
li x5, 0xbaa75e8e # initialize rs2
clmulh x20, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x3fd787ef # initialize rs1
li x27, 0x6bbded3f # initialize rs2
clmulh x21, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x1a57876f # initialize rs1
li x28, 0xb553ba10 # initialize rs2
clmulh x22, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x9926d208 # initialize rs1
li x19, 0x8f957203 # initialize rs2
clmulh x23, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xa6225d5a # initialize rs1
li x9, 0xb51ba134 # initialize rs2
clmulh x24, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x7ee22a6d # initialize rs1
li x17, 0xe9ec8e54 # initialize rs2
clmulh x25, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x1bf9cf9e # initialize rs1
li x22, 0x7eeb4cb1 # initialize rs2
clmulh x26, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x68ce79d8 # initialize rs1
li x23, 0xbaa87ee6 # initialize rs2
clmulh x27, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xbf4bfd83 # initialize rs1
li x13, 0x19659998 # initialize rs2
clmulh x28, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x4686dfdf # initialize rs1
li x12, 0xd17df868 # initialize rs2
clmulh x29, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xacbd5da0 # initialize rs1
li x19, 0xf2bb43ae # initialize rs2
clmulh x30, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xbdc1dc13 # initialize rs1
li x5, 0xf60dad31 # initialize rs2
clmulh x31, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x27, 0x5cbda8d2 # initialize rs1
li x0, 0x66964786 # initialize rs2
clmulh x0, x27, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x17, 0x1e5565f6 # initialize rs1
li x1, 0x2a90b618 # initialize rs2
clmulh x1, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x24, 0x7b7d78d8 # initialize rs1
li x2, 0x8d52e32f # initialize rs2
clmulh x2, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x22, 0x1ca0a428 # initialize rs1
li x3, 0x7df519f1 # initialize rs2
clmulh x3, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0x8872b1a0 # initialize rs1
li x4, 0x1c8c52c6 # initialize rs2
clmulh x4, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x441a6d84 # initialize rs1
li x5, 0x1505a53a # initialize rs2
clmulh x5, x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0x5db7c576 # initialize rs1
li x6, 0x388ef73e # initialize rs2
clmulh x6, x25, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x4, 0x8d60c644 # initialize rs1
li x7, 0xf489d8db # initialize rs2
clmulh x7, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x25, 0xd4c6b19d # initialize rs1
li x8, 0xf76a03ff # initialize rs2
clmulh x8, x25, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x27, 0x86969ff2 # initialize rs1
li x9, 0x2fd285bd # initialize rs2
clmulh x9, x27, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x28, 0x139dccad # initialize rs1
li x10, 0xbb9aa22a # initialize rs2
clmulh x10, x28, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x13, 0x054b379e # initialize rs1
li x11, 0x5323d551 # initialize rs2
clmulh x11, x13, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x15, 0x69891eba # initialize rs1
li x12, 0x559b72ef # initialize rs2
clmulh x12, x15, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x12, 0x527a67b3 # initialize rs1
li x13, 0x773e83da # initialize rs2
clmulh x13, x12, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x27, 0x03941930 # initialize rs1
li x14, 0x49f63057 # initialize rs2
clmulh x14, x27, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x25, 0xff60e49b # initialize rs1
li x15, 0xf709ed22 # initialize rs2
clmulh x15, x25, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x10, 0x4eb91f03 # initialize rs1
li x16, 0xe0b44539 # initialize rs2
clmulh x16, x10, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x6, 0xf2b7d5ed # initialize rs1
li x17, 0x85d94f9b # initialize rs2
clmulh x17, x6, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x23, 0x76660771 # initialize rs1
li x18, 0x93f06d25 # initialize rs2
clmulh x18, x23, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x18, 0x9de5be79 # initialize rs1
li x19, 0x4fdaa7ac # initialize rs2
clmulh x19, x18, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x29, 0xbc11a46f # initialize rs1
li x20, 0xcd0a5183 # initialize rs2
clmulh x20, x29, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x2, 0x051610ab # initialize rs1
li x21, 0x91beb63f # initialize rs2
clmulh x21, x2, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x10, 0xec4131c3 # initialize rs1
li x22, 0xc9ad8948 # initialize rs2
clmulh x22, x10, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x27, 0x390e5c31 # initialize rs1
li x23, 0x6a482c99 # initialize rs2
clmulh x23, x27, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x10, 0x15042426 # initialize rs1
li x24, 0x4a6ca2e6 # initialize rs2
clmulh x24, x10, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x3, 0x1b8d3579 # initialize rs1
li x25, 0xbb10ad6c # initialize rs2
clmulh x25, x3, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x24, 0x9cec642f # initialize rs1
li x26, 0x1aee13f0 # initialize rs2
clmulh x26, x24, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x22, 0xaa9138cc # initialize rs1
li x27, 0x94e3a373 # initialize rs2
clmulh x27, x22, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x31, 0xcf7ec3cf # initialize rs1
li x28, 0x479f4ea3 # initialize rs2
clmulh x28, x31, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x2, 0x6c5c910f # initialize rs1
li x29, 0x1e7e15a5 # initialize rs2
clmulh x29, x2, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x27, 0xbb7eb17c # initialize rs1
li x30, 0x38b4e4fc # initialize rs2
clmulh x30, x27, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x24, 0x7cbf327f # initialize rs1
li x31, 0x3ffff9bc # initialize rs2
clmulh x31, x24, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x0fbcdf15 # initialize rs1
li x0, 0x9ea1433d # initialize rs2
clmulh x0, x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x4b5d04ef # initialize rs1
li x1, 0xc4fb4372 # initialize rs2
clmulh x1, x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x86c3e529 # initialize rs1
li x2, 0x74e9a8b4 # initialize rs2
clmulh x2, x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xfd163ef3 # initialize rs1
li x3, 0x73d6ef62 # initialize rs2
clmulh x3, x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x8d75b4c6 # initialize rs1
li x4, 0x4154bfd9 # initialize rs2
clmulh x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7b638e39 # initialize rs1
li x5, 0x86f65c8c # initialize rs2
clmulh x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc4b5a211 # initialize rs1
li x6, 0xc747be3a # initialize rs2
clmulh x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x787410aa # initialize rs1
li x7, 0x821c023e # initialize rs2
clmulh x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x3faffb2c # initialize rs1
li x8, 0x55ef8070 # initialize rs2
clmulh x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x02b0ea11 # initialize rs1
li x9, 0x0caa339b # initialize rs2
clmulh x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xc97fad7b # initialize rs1
li x10, 0x0a6585fa # initialize rs2
clmulh x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xdf4470c0 # initialize rs1
li x11, 0xc0a85892 # initialize rs2
clmulh x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xcf4286c4 # initialize rs1
li x12, 0x76dbfbd0 # initialize rs2
clmulh x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x2b80d374 # initialize rs1
li x13, 0x1d312eb2 # initialize rs2
clmulh x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x54aa31a5 # initialize rs1
li x14, 0x1d8261b7 # initialize rs2
clmulh x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xd747be2c # initialize rs1
li x15, 0x3381b6d8 # initialize rs2
clmulh x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x19684e67 # initialize rs1
li x16, 0x4e27bdc9 # initialize rs2
clmulh x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x3f7076d2 # initialize rs1
li x17, 0xcd02259e # initialize rs2
clmulh x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x1ff91c8c # initialize rs1
li x18, 0x368db214 # initialize rs2
clmulh x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x99e3d543 # initialize rs1
li x19, 0x79effa26 # initialize rs2
clmulh x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xbb98b118 # initialize rs1
li x20, 0xbdb3b188 # initialize rs2
clmulh x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc1d19d92 # initialize rs1
li x21, 0xff1364ed # initialize rs2
clmulh x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x61ff6b17 # initialize rs1
li x22, 0xb70fe07f # initialize rs2
clmulh x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x21761697 # initialize rs1
li x23, 0x17477228 # initialize rs2
clmulh x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xc186a9b4 # initialize rs1
li x24, 0xa7cc7d53 # initialize rs2
clmulh x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xd88852ae # initialize rs1
li x25, 0x9f8dcd4c # initialize rs2
clmulh x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x2159d4d3 # initialize rs1
li x26, 0x1ab5e821 # initialize rs2
clmulh x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xbba5e5b4 # initialize rs1
li x27, 0x0a15c0bd # initialize rs2
clmulh x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xbb187de9 # initialize rs1
li x28, 0xea53de64 # initialize rs2
clmulh x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x17c62c63 # initialize rs1
li x29, 0xceef793f # initialize rs2
clmulh x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x883e6e18 # initialize rs1
li x30, 0xad6d8a65 # initialize rs2
clmulh x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xc4e77488 # initialize rs1
li x31, 0xe107c355 # initialize rs2
clmulh x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x6, x16 # perform first operation
clmulh x12, x3, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x17, x15 # perform first operation
clmulh x25, x7, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x26, x18 # perform first operation
clmulh x25, x1, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x6, x12 # perform first operation
clmulh x6, x26, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x25, x3 # perform first operation
clmulh x25, x9, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x22, x21 # perform first operation
clmulh x22, x2, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x26, x23 # perform first operation
clmulh x14, x8, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x10, x28 # perform first operation
clmulh x3, x30, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x22, x28 # perform first operation
clmulh x23, x17, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x20, x23 # perform first operation
clmulh x20, x28, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x30, x21 # perform first operation
clmulh x21, x20, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x1, x9 # perform first operation
clmulh x15, x3, x21 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-clmulr.S
// ******************


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

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-clmul.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xfa95613b # initialize rs1
li x22, 0x92fb1c09 # initialize rs2
clmul x15, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x130d3a30 # initialize rs1
li x3, 0x96c6aa63 # initialize rs2
clmul x29, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x85bcc306 # initialize rs1
li x11, 0x71118cef # initialize rs2
clmul x6, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb2cd9341 # initialize rs1
li x13, 0x854de076 # initialize rs2
clmul x14, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6465422f # initialize rs1
li x10, 0x8ff4036c # initialize rs2
clmul x22, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb591a377 # initialize rs1
li x2, 0xb1ef01fe # initialize rs2
clmul x18, x5, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3110a473 # initialize rs1
li x31, 0xd86083ad # initialize rs2
clmul x24, x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x64ff0887 # initialize rs1
li x1, 0xc011610a # initialize rs2
clmul x30, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xf189a82f # initialize rs1
li x23, 0x5c89d634 # initialize rs2
clmul x14, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x17b6c207 # initialize rs1
li x10, 0x38ed56c3 # initialize rs2
clmul x2, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x7a7dd699 # initialize rs1
li x31, 0xf8561d5e # initialize rs2
clmul x1, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa33af9ed # initialize rs1
li x14, 0x6eaf43da # initialize rs2
clmul x10, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xf646058d # initialize rs1
li x11, 0x7da10eee # initialize rs2
clmul x3, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xe3b93081 # initialize rs1
li x6, 0x33e7ed18 # initialize rs2
clmul x2, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x5b594029 # initialize rs1
li x30, 0x90efd4db # initialize rs2
clmul x13, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xe37a6d85 # initialize rs1
li x7, 0xd0e779d4 # initialize rs2
clmul x19, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x98603e01 # initialize rs1
li x8, 0xbed70743 # initialize rs2
clmul x22, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x1fce9cd1 # initialize rs1
li x2, 0x7f639fd8 # initialize rs2
clmul x22, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xd352a186 # initialize rs1
li x12, 0x75c506ab # initialize rs2
clmul x19, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x4ffeb3e9 # initialize rs1
li x21, 0x19a51f83 # initialize rs2
clmul x13, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x63c3bf5a # initialize rs1
li x13, 0x18e95069 # initialize rs2
clmul x11, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x6d3cc926 # initialize rs1
li x11, 0x5e19620d # initialize rs2
clmul x24, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xd5f3de16 # initialize rs1
li x9, 0xa457ccc5 # initialize rs2
clmul x1, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x51efc1c3 # initialize rs1
li x31, 0x87a09768 # initialize rs2
clmul x10, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x875e2bc0 # initialize rs1
li x26, 0x28547080 # initialize rs2
clmul x16, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x8112f28a # initialize rs1
li x27, 0x56115333 # initialize rs2
clmul x6, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xfcec9fce # initialize rs1
li x31, 0x98c91ef7 # initialize rs2
clmul x30, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x87d75e42 # initialize rs1
li x26, 0x8a6bc4a6 # initialize rs2
clmul x31, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xf1c88b2e # initialize rs1
li x20, 0xd33a8c1e # initialize rs2
clmul x16, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xe2b8123f # initialize rs1
li x13, 0x539b23a0 # initialize rs2
clmul x24, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x1c35aebf # initialize rs1
li x6, 0x53c7312d # initialize rs2
clmul x29, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x673ef67b # initialize rs1
li x19, 0x246035ce # initialize rs2
clmul x26, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x1, 0x78473f76 # initialize rs1
li x0, 0x8b70caed # initialize rs2
clmul x8, x1, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x21, 0x5fcda6e8 # initialize rs1
li x1, 0x50413065 # initialize rs2
clmul x23, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x19, 0x015feb44 # initialize rs1
li x2, 0x6718d628 # initialize rs2
clmul x8, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x9, 0xd955ffa3 # initialize rs1
li x3, 0xbd28892d # initialize rs2
clmul x16, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0x1442126d # initialize rs1
li x4, 0x0696961e # initialize rs2
clmul x17, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0xdf256780 # initialize rs1
li x5, 0x83333bf5 # initialize rs2
clmul x28, x7, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x16, 0xe12a8a53 # initialize rs1
li x6, 0x7ec67da3 # initialize rs2
clmul x18, x16, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0xaf0f2520 # initialize rs1
li x7, 0x92dc391a # initialize rs2
clmul x18, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x19, 0xc6dcd537 # initialize rs1
li x8, 0x9b275c58 # initialize rs2
clmul x24, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x7, 0xa026c56d # initialize rs1
li x9, 0x2919ea4b # initialize rs2
clmul x31, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x28, 0xc9d4f4f3 # initialize rs1
li x10, 0x9a551042 # initialize rs2
clmul x19, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0x5901db60 # initialize rs1
li x11, 0x65b978f7 # initialize rs2
clmul x20, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x30, 0x3a5b3d74 # initialize rs1
li x12, 0x510d2959 # initialize rs2
clmul x29, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x20, 0xf39ef45f # initialize rs1
li x13, 0xfa1df1e6 # initialize rs2
clmul x28, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x26, 0x77d0d887 # initialize rs1
li x14, 0x3385b9ad # initialize rs2
clmul x22, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x6, 0xc0a71e73 # initialize rs1
li x15, 0x8caa20c5 # initialize rs2
clmul x28, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x11, 0x34e5da11 # initialize rs1
li x16, 0x7b83ee33 # initialize rs2
clmul x26, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x2, 0x2a42a26f # initialize rs1
li x17, 0x5c0333d2 # initialize rs2
clmul x24, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x5, 0x9c731d2f # initialize rs1
li x18, 0x994e4788 # initialize rs2
clmul x15, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x17, 0x91076bf7 # initialize rs1
li x19, 0x6341259e # initialize rs2
clmul x10, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x8, 0xd455a111 # initialize rs1
li x20, 0x7b7594ec # initialize rs2
clmul x31, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x30, 0xc50f5e23 # initialize rs1
li x21, 0x05b7d31c # initialize rs2
clmul x8, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x14, 0x92c0c209 # initialize rs1
li x22, 0x13e5015d # initialize rs2
clmul x15, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x27, 0x3019522e # initialize rs1
li x23, 0xac7b4dee # initialize rs2
clmul x8, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x10, 0x3ad8413d # initialize rs1
li x24, 0xd53a2608 # initialize rs2
clmul x14, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x3, 0x10a79e06 # initialize rs1
li x25, 0xf1f59849 # initialize rs2
clmul x15, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x15, 0x22c617c7 # initialize rs1
li x26, 0xefff9d34 # initialize rs2
clmul x30, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x23, 0x9d27f8ff # initialize rs1
li x27, 0x7e2f85e8 # initialize rs2
clmul x1, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x22, 0x48c47255 # initialize rs1
li x28, 0x2cb55610 # initialize rs2
clmul x1, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x5, 0x788ce2f7 # initialize rs1
li x29, 0xf48f1867 # initialize rs2
clmul x28, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x10, 0xf1f1187c # initialize rs1
li x30, 0xb03ae992 # initialize rs2
clmul x27, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x30, 0x61f40169 # initialize rs1
li x31, 0x4c202132 # initialize rs2
clmul x3, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 252)

# Testcase cp_rd (Test destination rd = x0)
li x20, 0x6edb6bab # initialize rs1
li x21, 0xcbced670 # initialize rs2
clmul x0, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x24, 0x717330fe # initialize rs1
li x12, 0x0976e833 # initialize rs2
clmul x1, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0xacc7e279 # initialize rs1
li x8, 0xaa4fc2af # initialize rs2
clmul x2, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x12, 0xd5186e8e # initialize rs1
li x2, 0x6810bbee # initialize rs2
clmul x3, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0x66154f09 # initialize rs1
li x22, 0x8bea6b9b # initialize rs2
clmul x4, x15, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x08671ecf # initialize rs1
li x7, 0x4fcdc173 # initialize rs2
clmul x5, x1, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0x1f4b8fc5 # initialize rs1
li x31, 0xa33172a8 # initialize rs2
clmul x6, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
li x21, 0x86f7fff8 # initialize rs1
li x27, 0xa10a1f58 # initialize rs2
clmul x7, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x24, 0x6ed96d29 # initialize rs1
li x21, 0x3937c862 # initialize rs2
clmul x8, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xe0ebf058 # initialize rs1
li x20, 0xac7a288d # initialize rs2
clmul x9, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x19, 0x2649f102 # initialize rs1
li x20, 0xcd1807f5 # initialize rs2
clmul x10, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0x99194d0a # initialize rs1
li x21, 0x23880c08 # initialize rs2
clmul x11, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x6, 0xa0ea2e08 # initialize rs1
li x25, 0x9c59c265 # initialize rs2
clmul x12, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x27, 0x6917d7a7 # initialize rs1
li x18, 0xe0f522da # initialize rs2
clmul x13, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x443e185f # initialize rs1
li x13, 0xa2cf0335 # initialize rs2
clmul x14, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x18, 0xd3a6ade7 # initialize rs1
li x22, 0x82101bf0 # initialize rs2
clmul x15, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x19, 0x7c325d2e # initialize rs1
li x10, 0x06cb8f49 # initialize rs2
clmul x16, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x22, 0x6b678001 # initialize rs1
li x20, 0x2fd9fc04 # initialize rs2
clmul x17, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x8, 0xaca71fa0 # initialize rs1
li x17, 0x85bc0740 # initialize rs2
clmul x18, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x8b826320 # initialize rs1
li x15, 0x4b3a545e # initialize rs2
clmul x19, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x23, 0x294aa4e1 # initialize rs1
li x26, 0xad24ee54 # initialize rs2
clmul x20, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0x70872a81 # initialize rs1
li x18, 0x26a5f407 # initialize rs2
clmul x21, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x27, 0x77c64ccd # initialize rs1
li x28, 0x459338ce # initialize rs2
clmul x22, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0xf50acc97 # initialize rs1
li x7, 0x917eaed0 # initialize rs2
clmul x23, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x18, 0x47dd530c # initialize rs1
li x8, 0x1e74646a # initialize rs2
clmul x24, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x16, 0x58dee979 # initialize rs1
li x17, 0xb4e57f2a # initialize rs2
clmul x25, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x10, 0xc1e2719c # initialize rs1
li x16, 0x7ac88651 # initialize rs2
clmul x26, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x26, 0x63314f5a # initialize rs1
li x31, 0xbd638463 # initialize rs2
clmul x27, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x1, 0x318ac2f4 # initialize rs1
li x17, 0x710691fd # initialize rs2
clmul x28, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x2, 0x403a8f6e # initialize rs1
li x7, 0xad235999 # initialize rs2
clmul x29, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x19, 0x5634026e # initialize rs1
li x13, 0x86747ecc # initialize rs2
clmul x30, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x16, 0x0c271f53 # initialize rs1
li x24, 0xf860fa22 # initialize rs2
clmul x31, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x00000000 # initialize rs1
li x29, 0x611c5a14 # initialize rs2
clmul x16, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x00000001 # initialize rs1
li x27, 0xf453bc1b # initialize rs2
clmul x28, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x7, 0x00000002 # initialize rs1
li x19, 0x5025e259 # initialize rs2
clmul x18, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x10, 0x80000000 # initialize rs1
li x21, 0x62f89c44 # initialize rs2
clmul x24, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x17, 0x80000001 # initialize rs1
li x14, 0x42bfcda7 # initialize rs2
clmul x1, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x26, 0x7fffffff # initialize rs1
li x29, 0xd4559057 # initialize rs2
clmul x30, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x15, 0x7ffffffe # initialize rs1
li x12, 0x4f587d06 # initialize rs2
clmul x9, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0xffffffff # initialize rs1
li x16, 0xc522863d # initialize rs2
clmul x23, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x27, 0xfffffffe # initialize rs1
li x15, 0x24ee07f4 # initialize rs2
clmul x31, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x2, 0x5bbc8872 # initialize rs1
li x30, 0x406e4126 # initialize rs2
clmul x21, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x1, 0xaaaaaaaa # initialize rs1
li x9, 0xbd310e48 # initialize rs2
clmul x26, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x27, 0x55555555 # initialize rs1
li x12, 0x05fc108c # initialize rs2
clmul x6, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x15, 0x3a073014 # initialize rs1
li x10, 0x00000000 # initialize rs2
clmul x2, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x25, 0xb51a6754 # initialize rs1
li x1, 0x00000001 # initialize rs2
clmul x22, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x10, 0x8b84bf64 # initialize rs1
li x3, 0x00000002 # initialize rs2
clmul x2, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x7, 0xf4025048 # initialize rs1
li x29, 0x80000000 # initialize rs2
clmul x13, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x22, 0x9e7b8cce # initialize rs1
li x31, 0x80000001 # initialize rs2
clmul x16, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x13, 0x5753b42e # initialize rs1
li x28, 0x7fffffff # initialize rs2
clmul x18, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x31, 0x803a05de # initialize rs1
li x8, 0x7ffffffe # initialize rs2
clmul x11, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x20, 0xfea37d65 # initialize rs1
li x15, 0xffffffff # initialize rs2
clmul x17, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0xcfc77cff # initialize rs1
li x24, 0xfffffffe # initialize rs2
clmul x11, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x20, 0x7b0d8053 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
clmul x7, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x16, 0x73d64414 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
clmul x3, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x20, 0xe9e1bd85 # initialize rs1
li x11, 0x55555555 # initialize rs2
clmul x24, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x16, 0x00000000 # initialize rs1
li x21, 0x00000000 # initialize rs2
clmul x1, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x27, 0x00000000 # initialize rs1
li x22, 0x00000001 # initialize rs2
clmul x12, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x20, 0x00000000 # initialize rs1
li x17, 0x00000002 # initialize rs2
clmul x7, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x18, 0x00000000 # initialize rs1
li x7, 0x80000000 # initialize rs2
clmul x30, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x10, 0x00000000 # initialize rs1
li x13, 0x80000001 # initialize rs2
clmul x28, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x26, 0x00000000 # initialize rs1
li x16, 0x7fffffff # initialize rs2
clmul x17, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x12, 0x00000000 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
clmul x25, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x26, 0x00000000 # initialize rs1
li x11, 0xffffffff # initialize rs2
clmul x5, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x26, 0x00000000 # initialize rs1
li x24, 0xfffffffe # initialize rs2
clmul x10, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x13, 0x00000000 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
clmul x31, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x28, 0x00000000 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
clmul x1, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x22, 0x00000000 # initialize rs1
li x26, 0x55555555 # initialize rs2
clmul x7, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x14, 0x00000001 # initialize rs1
li x31, 0x00000000 # initialize rs2
clmul x12, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x31, 0x00000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
clmul x17, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x30, 0x00000001 # initialize rs1
li x23, 0x00000002 # initialize rs2
clmul x1, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x2, 0x00000001 # initialize rs1
li x17, 0x80000000 # initialize rs2
clmul x19, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x29, 0x00000001 # initialize rs1
li x30, 0x80000001 # initialize rs2
clmul x18, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x16, 0x00000001 # initialize rs1
li x24, 0x7fffffff # initialize rs2
clmul x20, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x18, 0x00000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
clmul x28, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x21, 0x00000001 # initialize rs1
li x13, 0xffffffff # initialize rs2
clmul x6, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x22, 0x00000001 # initialize rs1
li x10, 0xfffffffe # initialize rs2
clmul x18, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x11, 0x00000001 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
clmul x23, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x14, 0x00000001 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
clmul x19, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x17, 0x00000001 # initialize rs1
li x3, 0x55555555 # initialize rs2
clmul x31, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x9, 0x00000002 # initialize rs1
li x13, 0x00000000 # initialize rs2
clmul x22, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x5, 0x00000002 # initialize rs1
li x11, 0x00000001 # initialize rs2
clmul x20, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x19, 0x00000002 # initialize rs1
li x2, 0x00000002 # initialize rs2
clmul x21, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x27, 0x00000002 # initialize rs1
li x25, 0x80000000 # initialize rs2
clmul x22, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x25, 0x00000002 # initialize rs1
li x16, 0x80000001 # initialize rs2
clmul x18, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x2, 0x00000002 # initialize rs1
li x3, 0x7fffffff # initialize rs2
clmul x13, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x5, 0x00000002 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
clmul x28, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x19, 0x00000002 # initialize rs1
li x18, 0xffffffff # initialize rs2
clmul x13, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x6, 0x00000002 # initialize rs1
li x8, 0xfffffffe # initialize rs2
clmul x16, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x24, 0x00000002 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
clmul x29, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x26, 0x00000002 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
clmul x10, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x31, 0x00000002 # initialize rs1
li x2, 0x55555555 # initialize rs2
clmul x9, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x20, 0x80000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
clmul x11, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x21, 0x80000000 # initialize rs1
li x31, 0x00000001 # initialize rs2
clmul x27, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x14, 0x80000000 # initialize rs1
li x9, 0x00000002 # initialize rs2
clmul x11, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x11, 0x80000000 # initialize rs1
li x14, 0x80000000 # initialize rs2
clmul x20, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x9, 0x80000000 # initialize rs1
li x5, 0x80000001 # initialize rs2
clmul x1, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x8, 0x80000000 # initialize rs1
li x23, 0x7fffffff # initialize rs2
clmul x31, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x18, 0x80000000 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
clmul x29, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x10, 0x80000000 # initialize rs1
li x27, 0xffffffff # initialize rs2
clmul x31, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x17, 0x80000000 # initialize rs1
li x16, 0xfffffffe # initialize rs2
clmul x10, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x7, 0x80000000 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
clmul x25, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x16, 0x80000000 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
clmul x11, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x13, 0x80000000 # initialize rs1
li x23, 0x55555555 # initialize rs2
clmul x5, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x21, 0x80000001 # initialize rs1
li x18, 0x00000000 # initialize rs2
clmul x6, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x17, 0x80000001 # initialize rs1
li x20, 0x00000001 # initialize rs2
clmul x24, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x6, 0x80000001 # initialize rs1
li x26, 0x00000002 # initialize rs2
clmul x5, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x26, 0x80000001 # initialize rs1
li x30, 0x80000000 # initialize rs2
clmul x16, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x16, 0x80000001 # initialize rs1
li x8, 0x80000001 # initialize rs2
clmul x18, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x15, 0x80000001 # initialize rs1
li x10, 0x7fffffff # initialize rs2
clmul x16, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x19, 0x80000001 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
clmul x13, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x1, 0x80000001 # initialize rs1
li x14, 0xffffffff # initialize rs2
clmul x25, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x21, 0x80000001 # initialize rs1
li x9, 0xfffffffe # initialize rs2
clmul x14, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x20, 0x80000001 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
clmul x29, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x16, 0x80000001 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
clmul x24, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x9, 0x80000001 # initialize rs1
li x1, 0x55555555 # initialize rs2
clmul x14, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x5, 0x7fffffff # initialize rs1
li x25, 0x00000000 # initialize rs2
clmul x9, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x6, 0x7fffffff # initialize rs1
li x19, 0x00000001 # initialize rs2
clmul x24, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x25, 0x7fffffff # initialize rs1
li x29, 0x00000002 # initialize rs2
clmul x7, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x27, 0x7fffffff # initialize rs1
li x18, 0x80000000 # initialize rs2
clmul x28, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x24, 0x7fffffff # initialize rs1
li x19, 0x80000001 # initialize rs2
clmul x25, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x29, 0x7fffffff # initialize rs1
li x30, 0x7fffffff # initialize rs2
clmul x31, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x12, 0x7fffffff # initialize rs1
li x24, 0x7ffffffe # initialize rs2
clmul x22, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x31, 0x7fffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
clmul x25, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x31, 0x7fffffff # initialize rs1
li x12, 0xfffffffe # initialize rs2
clmul x9, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x10, 0x7fffffff # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
clmul x12, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x3, 0x7fffffff # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
clmul x2, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x19, 0x7fffffff # initialize rs1
li x7, 0x55555555 # initialize rs2
clmul x18, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x20, 0x7ffffffe # initialize rs1
li x15, 0x00000000 # initialize rs2
clmul x29, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x20, 0x7ffffffe # initialize rs1
li x7, 0x00000001 # initialize rs2
clmul x15, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x21, 0x7ffffffe # initialize rs1
li x22, 0x00000002 # initialize rs2
clmul x14, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x12, 0x7ffffffe # initialize rs1
li x25, 0x80000000 # initialize rs2
clmul x19, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x23, 0x7ffffffe # initialize rs1
li x22, 0x80000001 # initialize rs2
clmul x6, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x11, 0x7ffffffe # initialize rs1
li x10, 0x7fffffff # initialize rs2
clmul x25, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs1
li x17, 0x7ffffffe # initialize rs2
clmul x22, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x13, 0x7ffffffe # initialize rs1
li x21, 0xffffffff # initialize rs2
clmul x15, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x3, 0x7ffffffe # initialize rs1
li x1, 0xfffffffe # initialize rs2
clmul x29, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x20, 0x7ffffffe # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
clmul x15, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x7, 0x7ffffffe # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
clmul x25, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x16, 0x7ffffffe # initialize rs1
li x20, 0x55555555 # initialize rs2
clmul x11, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x11, 0xffffffff # initialize rs1
li x23, 0x00000000 # initialize rs2
clmul x27, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x1, 0xffffffff # initialize rs1
li x22, 0x00000001 # initialize rs2
clmul x9, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x5, 0xffffffff # initialize rs1
li x17, 0x00000002 # initialize rs2
clmul x9, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x23, 0xffffffff # initialize rs1
li x11, 0x80000000 # initialize rs2
clmul x17, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x24, 0xffffffff # initialize rs1
li x14, 0x80000001 # initialize rs2
clmul x25, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x31, 0xffffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
clmul x16, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x30, 0xffffffff # initialize rs1
li x16, 0x7ffffffe # initialize rs2
clmul x19, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x3, 0xffffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
clmul x16, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x8, 0xffffffff # initialize rs1
li x27, 0xfffffffe # initialize rs2
clmul x30, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x11, 0xffffffff # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
clmul x27, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x12, 0xffffffff # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
clmul x7, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x17, 0xffffffff # initialize rs1
li x12, 0x55555555 # initialize rs2
clmul x31, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x10, 0xfffffffe # initialize rs1
li x22, 0x00000000 # initialize rs2
clmul x17, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x17, 0xfffffffe # initialize rs1
li x10, 0x00000001 # initialize rs2
clmul x16, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x7, 0xfffffffe # initialize rs1
li x6, 0x00000002 # initialize rs2
clmul x21, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x2, 0xfffffffe # initialize rs1
li x21, 0x80000000 # initialize rs2
clmul x12, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x14, 0xfffffffe # initialize rs1
li x8, 0x80000001 # initialize rs2
clmul x31, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x24, 0xfffffffe # initialize rs1
li x7, 0x7fffffff # initialize rs2
clmul x28, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x17, 0xfffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
clmul x1, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x23, 0xfffffffe # initialize rs1
li x6, 0xffffffff # initialize rs2
clmul x27, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x1, 0xfffffffe # initialize rs1
li x26, 0xfffffffe # initialize rs2
clmul x7, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x31, 0xfffffffe # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
clmul x13, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x3, 0xfffffffe # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
clmul x28, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x30, 0xfffffffe # initialize rs1
li x11, 0x55555555 # initialize rs2
clmul x22, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x29, 0x5bbc8872 # initialize rs1
li x10, 0x00000000 # initialize rs2
clmul x1, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x20, 0x5bbc8872 # initialize rs1
li x5, 0x00000001 # initialize rs2
clmul x17, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x27, 0x5bbc8872 # initialize rs1
li x15, 0x00000002 # initialize rs2
clmul x13, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x30, 0x5bbc8872 # initialize rs1
li x24, 0x80000000 # initialize rs2
clmul x3, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x22, 0x5bbc8872 # initialize rs1
li x18, 0x80000001 # initialize rs2
clmul x27, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x1, 0x5bbc8872 # initialize rs1
li x14, 0x7fffffff # initialize rs2
clmul x6, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x17, 0x5bbc8872 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
clmul x5, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x23, 0x5bbc8872 # initialize rs1
li x9, 0xffffffff # initialize rs2
clmul x29, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x28, 0x5bbc8872 # initialize rs1
li x19, 0xfffffffe # initialize rs2
clmul x25, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x17, 0x5bbc8872 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
clmul x15, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x16, 0x5bbc8872 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
clmul x21, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x11, 0x5bbc8872 # initialize rs1
li x17, 0x55555555 # initialize rs2
clmul x27, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x7, 0xaaaaaaaa # initialize rs1
li x6, 0x00000000 # initialize rs2
clmul x20, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x27, 0xaaaaaaaa # initialize rs1
li x31, 0x00000001 # initialize rs2
clmul x12, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x2, 0xaaaaaaaa # initialize rs1
li x20, 0x00000002 # initialize rs2
clmul x12, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x31, 0xaaaaaaaa # initialize rs1
li x21, 0x80000000 # initialize rs2
clmul x7, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x8, 0xaaaaaaaa # initialize rs1
li x11, 0x80000001 # initialize rs2
clmul x14, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x25, 0xaaaaaaaa # initialize rs1
li x26, 0x7fffffff # initialize rs2
clmul x22, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x16, 0xaaaaaaaa # initialize rs1
li x25, 0x7ffffffe # initialize rs2
clmul x17, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x5, 0xaaaaaaaa # initialize rs1
li x22, 0xffffffff # initialize rs2
clmul x27, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x30, 0xaaaaaaaa # initialize rs1
li x2, 0xfffffffe # initialize rs2
clmul x9, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x8, 0xaaaaaaaa # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
clmul x25, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x29, 0xaaaaaaaa # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
clmul x12, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x2, 0xaaaaaaaa # initialize rs1
li x6, 0x55555555 # initialize rs2
clmul x7, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x11, 0x55555555 # initialize rs1
li x16, 0x00000000 # initialize rs2
clmul x9, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x1, 0x55555555 # initialize rs1
li x17, 0x00000001 # initialize rs2
clmul x26, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x27, 0x55555555 # initialize rs1
li x11, 0x00000002 # initialize rs2
clmul x19, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x13, 0x55555555 # initialize rs1
li x19, 0x80000000 # initialize rs2
clmul x23, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x27, 0x55555555 # initialize rs1
li x19, 0x80000001 # initialize rs2
clmul x13, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x5, 0x55555555 # initialize rs1
li x20, 0x7fffffff # initialize rs2
clmul x19, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x7, 0x55555555 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
clmul x2, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x14, 0x55555555 # initialize rs1
li x7, 0xffffffff # initialize rs2
clmul x6, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x11, 0x55555555 # initialize rs1
li x26, 0xfffffffe # initialize rs2
clmul x13, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x31, 0x55555555 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
clmul x28, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x29, 0x55555555 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
clmul x30, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x31, 0x55555555 # initialize rs1
li x21, 0x55555555 # initialize rs2
clmul x25, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xbd778d84 # initialize rs1
li x0, 0xfed3f0e2 # initialize rs2
clmul x11, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xc61bd6e1 # initialize rs1
li x1, 0xc5b87ae7 # initialize rs2
clmul x25, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xd06e2aff # initialize rs1
li x2, 0x5987a6b0 # initialize rs2
clmul x14, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x583eb27a # initialize rs1
li x3, 0xb1632501 # initialize rs2
clmul x22, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb02967ea # initialize rs1
li x4, 0xce0bbbeb # initialize rs2
clmul x1, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xab80c7cc # initialize rs1
li x5, 0xf148a22a # initialize rs2
clmul x25, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x58077f71 # initialize rs1
li x6, 0x963d3776 # initialize rs2
clmul x29, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3f2a5ed9 # initialize rs1
li x7, 0xa41ff5c9 # initialize rs2
clmul x22, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x4fce4e20 # initialize rs1
li x8, 0x9d9a192e # initialize rs2
clmul x10, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xd469f0c3 # initialize rs1
li x9, 0xdebf77ea # initialize rs2
clmul x5, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x08f520ca # initialize rs1
li x10, 0xbdf46b49 # initialize rs2
clmul x31, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xbf69c050 # initialize rs1
li x11, 0xf73b35a4 # initialize rs2
clmul x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x6a98f831 # initialize rs1
li x12, 0xfad03d94 # initialize rs2
clmul x16, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xc3b94a84 # initialize rs1
li x13, 0x8359c7f7 # initialize rs2
clmul x14, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x878f23ba # initialize rs1
li x14, 0xc9ffd954 # initialize rs2
clmul x3, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xc62693c4 # initialize rs1
li x15, 0x78dc1e28 # initialize rs2
clmul x10, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x960f4b4d # initialize rs1
li x16, 0x848c6a0b # initialize rs2
clmul x9, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x1afb53fd # initialize rs1
li x17, 0xe2952cc9 # initialize rs2
clmul x24, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x61a57946 # initialize rs1
li x18, 0x414f5797 # initialize rs2
clmul x23, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xb9d29fcd # initialize rs1
li x19, 0x6ecbc406 # initialize rs2
clmul x17, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x282553f1 # initialize rs1
li x20, 0x69b0350a # initialize rs2
clmul x29, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x1457e5cb # initialize rs1
li x21, 0x8f4016fe # initialize rs2
clmul x18, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x1791d4e1 # initialize rs1
li x22, 0xb97f6cfe # initialize rs2
clmul x12, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x8d505277 # initialize rs1
li x23, 0x6c53c078 # initialize rs2
clmul x28, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x777bd248 # initialize rs1
li x24, 0xad06656b # initialize rs2
clmul x8, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x6ee28b8c # initialize rs1
li x25, 0x7a352462 # initialize rs2
clmul x31, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xeee09c50 # initialize rs1
li x26, 0x33300bbe # initialize rs2
clmul x30, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xb0e0cdb1 # initialize rs1
li x27, 0xe162b61c # initialize rs2
clmul x7, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x7209b2b7 # initialize rs1
li x28, 0x67e95a29 # initialize rs2
clmul x6, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x43c8317e # initialize rs1
li x29, 0x251a025a # initialize rs2
clmul x3, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xc6d4b0ed # initialize rs1
li x30, 0x10d9f4af # initialize rs2
clmul x9, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x25fdc0b7 # initialize rs1
li x31, 0x7e5d243a # initialize rs2
clmul x7, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x24261c3a # initialize rs1
li x13, 0x45781e13 # initialize rs2
clmul x0, x0, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa91d8244 # initialize rs1
li x29, 0x3a78c2ad # initialize rs2
clmul x1, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xfaa54974 # initialize rs1
li x20, 0x836a87fb # initialize rs2
clmul x2, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x61a1b140 # initialize rs1
li x16, 0x2610479a # initialize rs2
clmul x3, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe1a22e40 # initialize rs1
li x15, 0xe75b9fdd # initialize rs2
clmul x4, x4, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xef499414 # initialize rs1
li x20, 0xbe4ce6d3 # initialize rs2
clmul x5, x5, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x46f04e39 # initialize rs1
li x11, 0xb30865a5 # initialize rs2
clmul x6, x6, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdcd62ffc # initialize rs1
li x31, 0x514c8c78 # initialize rs2
clmul x7, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x658d2388 # initialize rs1
li x12, 0xfc63f1e9 # initialize rs2
clmul x8, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x2f039e1a # initialize rs1
li x31, 0x0e478d8a # initialize rs2
clmul x9, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x340a5874 # initialize rs1
li x20, 0x88fb8aad # initialize rs2
clmul x10, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa3766cbd # initialize rs1
li x3, 0x2801b867 # initialize rs2
clmul x11, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xee525642 # initialize rs1
li x25, 0x8c82491a # initialize rs2
clmul x12, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x55002a41 # initialize rs1
li x17, 0x2261afd8 # initialize rs2
clmul x13, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x84fe4e2e # initialize rs1
li x9, 0x418c5ac4 # initialize rs2
clmul x14, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xf119e38e # initialize rs1
li x12, 0x806812e6 # initialize rs2
clmul x15, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x92c49214 # initialize rs1
li x27, 0xe8b4077d # initialize rs2
clmul x16, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xd4433c97 # initialize rs1
li x21, 0x9584d1df # initialize rs2
clmul x17, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xbc9a4f5e # initialize rs1
li x18, 0x424afd87 # initialize rs2
clmul x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xe4a31a87 # initialize rs1
li x31, 0xf72d87d8 # initialize rs2
clmul x19, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x4fb6da86 # initialize rs1
li x7, 0xa3460c94 # initialize rs2
clmul x20, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xbd5bd136 # initialize rs1
li x31, 0x5e94d2f6 # initialize rs2
clmul x21, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xc2e581c0 # initialize rs1
li x22, 0x7e6e1e4c # initialize rs2
clmul x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xfc6e44d9 # initialize rs1
li x14, 0xc8c7d450 # initialize rs2
clmul x23, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x64357ef7 # initialize rs1
li x22, 0x7473335d # initialize rs2
clmul x24, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xbb1c3ff0 # initialize rs1
li x16, 0x286f0383 # initialize rs2
clmul x25, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x4ce07d34 # initialize rs1
li x3, 0x71f9ac27 # initialize rs2
clmul x26, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x09ccba20 # initialize rs1
li x23, 0xe14274ea # initialize rs2
clmul x27, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x632dd15e # initialize rs1
li x24, 0xd4ff436e # initialize rs2
clmul x28, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x9641f050 # initialize rs1
li x13, 0x7a006314 # initialize rs2
clmul x29, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xb40d0196 # initialize rs1
li x29, 0x6eb3f4e8 # initialize rs2
clmul x30, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x7d8b9727 # initialize rs1
li x16, 0x8f830618 # initialize rs2
clmul x31, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x22, 0x048ee7a2 # initialize rs1
li x0, 0x06b0664f # initialize rs2
clmul x0, x22, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x9, 0x3801d1cd # initialize rs1
li x1, 0x09e0a283 # initialize rs2
clmul x1, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x9, 0xa126d8a1 # initialize rs1
li x2, 0x5542181c # initialize rs2
clmul x2, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x20, 0x344c4a50 # initialize rs1
li x3, 0x8b539f6e # initialize rs2
clmul x3, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0xa00c7191 # initialize rs1
li x4, 0xf021e31f # initialize rs2
clmul x4, x30, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0xe57be7df # initialize rs1
li x5, 0xca51c086 # initialize rs2
clmul x5, x20, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x0fb01c86 # initialize rs1
li x6, 0x2a6c12df # initialize rs2
clmul x6, x27, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xa013f037 # initialize rs1
li x7, 0xb3e5ce41 # initialize rs2
clmul x7, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x31, 0x482ece3d # initialize rs1
li x8, 0x47469dca # initialize rs2
clmul x8, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x28, 0x0a74ab38 # initialize rs1
li x9, 0xca0e2a58 # initialize rs2
clmul x9, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x28, 0xcbbf2ecf # initialize rs1
li x10, 0xd0a2ecc7 # initialize rs2
clmul x10, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x15, 0xa54e10fb # initialize rs1
li x11, 0x3f2b9789 # initialize rs2
clmul x11, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x1, 0xdc1fdd0b # initialize rs1
li x12, 0x7507d255 # initialize rs2
clmul x12, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x7, 0xc0d9921b # initialize rs1
li x13, 0x2a47a75a # initialize rs2
clmul x13, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x25, 0x75ffc247 # initialize rs1
li x14, 0x5dae9b20 # initialize rs2
clmul x14, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x25, 0xedd5232b # initialize rs1
li x15, 0xaf2d7655 # initialize rs2
clmul x15, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x7, 0x21213d57 # initialize rs1
li x16, 0xf09b4f53 # initialize rs2
clmul x16, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x23, 0xbbdedb61 # initialize rs1
li x17, 0x57e43383 # initialize rs2
clmul x17, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x23, 0xe04bf8b6 # initialize rs1
li x18, 0x6f9b0a8d # initialize rs2
clmul x18, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x14, 0xe214b285 # initialize rs1
li x19, 0xe6f0ca4b # initialize rs2
clmul x19, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x22, 0xba032f3d # initialize rs1
li x20, 0x32e494f0 # initialize rs2
clmul x20, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x14, 0x2ccb6ddd # initialize rs1
li x21, 0xb484f153 # initialize rs2
clmul x21, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x16, 0x0a7fdd39 # initialize rs1
li x22, 0x30136c4a # initialize rs2
clmul x22, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x12, 0xf059ddb9 # initialize rs1
li x23, 0x746f6c90 # initialize rs2
clmul x23, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x9, 0xde270ccd # initialize rs1
li x24, 0x7bc29983 # initialize rs2
clmul x24, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x2, 0x8966fb6d # initialize rs1
li x25, 0x167414df # initialize rs2
clmul x25, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x4e83da17 # initialize rs1
li x26, 0x4fc7c5cf # initialize rs2
clmul x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x2, 0xf073579d # initialize rs1
li x27, 0xf1460783 # initialize rs2
clmul x27, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x5, 0x95a93f17 # initialize rs1
li x28, 0xdae93a2b # initialize rs2
clmul x28, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x2, 0x388fe714 # initialize rs1
li x29, 0x29e80e2d # initialize rs2
clmul x29, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x9, 0xdc73af26 # initialize rs1
li x30, 0x993c97c2 # initialize rs2
clmul x30, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x15, 0xc3a95889 # initialize rs1
li x31, 0x313bc543 # initialize rs2
clmul x31, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x384bac44 # initialize rs1
li x0, 0x5dda788f # initialize rs2
clmul x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x3d178a06 # initialize rs1
li x1, 0xb8335425 # initialize rs2
clmul x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xe477c24c # initialize rs1
li x2, 0xe3bc6416 # initialize rs2
clmul x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x0c294666 # initialize rs1
li x3, 0xa3dcd366 # initialize rs2
clmul x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xcddd9366 # initialize rs1
li x4, 0x3e0f9b2c # initialize rs2
clmul x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x87af0cbd # initialize rs1
li x5, 0x881e877d # initialize rs2
clmul x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa868916c # initialize rs1
li x6, 0x2b74b234 # initialize rs2
clmul x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x66388a27 # initialize rs1
li x7, 0x04aa9fbc # initialize rs2
clmul x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x0ea8e836 # initialize rs1
li x8, 0xdb085867 # initialize rs2
clmul x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x40bef444 # initialize rs1
li x9, 0x54a8b466 # initialize rs2
clmul x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x40a46d8f # initialize rs1
li x10, 0xa0a9abc3 # initialize rs2
clmul x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x7d34a47b # initialize rs1
li x11, 0x43843dd1 # initialize rs2
clmul x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x69e739d3 # initialize rs1
li x12, 0x57de5159 # initialize rs2
clmul x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x10c45c89 # initialize rs1
li x13, 0x4469077a # initialize rs2
clmul x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x6ea73efa # initialize rs1
li x14, 0xd222593a # initialize rs2
clmul x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xa03ed30e # initialize rs1
li x15, 0x3dfb10d7 # initialize rs2
clmul x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x477541fd # initialize rs1
li x16, 0x9f7c1100 # initialize rs2
clmul x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x4528a5c0 # initialize rs1
li x17, 0x8a057a8d # initialize rs2
clmul x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xc92a3f8e # initialize rs1
li x18, 0x1b07fa22 # initialize rs2
clmul x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x5c124ca7 # initialize rs1
li x19, 0xbd46c00c # initialize rs2
clmul x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x5d4637a2 # initialize rs1
li x20, 0x9b4dfc79 # initialize rs2
clmul x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x153191f0 # initialize rs1
li x21, 0xc3911452 # initialize rs2
clmul x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x0899f090 # initialize rs1
li x22, 0x1997153b # initialize rs2
clmul x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xc081ceb7 # initialize rs1
li x23, 0x96d69333 # initialize rs2
clmul x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xc89afbe5 # initialize rs1
li x24, 0xae831d43 # initialize rs2
clmul x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xe33835b9 # initialize rs1
li x25, 0x0b477c45 # initialize rs2
clmul x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x1fd45c9a # initialize rs1
li x26, 0xbfb253ba # initialize rs2
clmul x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xb682f48c # initialize rs1
li x27, 0x08846236 # initialize rs2
clmul x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xccc17db8 # initialize rs1
li x28, 0x078b46b5 # initialize rs2
clmul x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xe518200d # initialize rs1
li x29, 0xea395b6e # initialize rs2
clmul x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xab178f6b # initialize rs1
li x30, 0x56731b8d # initialize rs2
clmul x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x29f6403c # initialize rs1
li x31, 0x0e2dde2f # initialize rs2
clmul x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x7, x14 # perform first operation
clmul x3, x20, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x30, x20 # perform first operation
clmul x2, x23, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x25, x5 # perform first operation
clmul x26, x23, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x6, x22 # perform first operation
clmul x31, x31, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x14, x28 # perform first operation
clmul x14, x27, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x14, x28 # perform first operation
clmul x14, x21, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x27, x17 # perform first operation
clmul x2, x20, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x2, x31 # perform first operation
clmul x9, x11, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x26, x6 # perform first operation
clmul x29, x21, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x5, x3 # perform first operation
clmul x5, x29, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x5, x11 # perform first operation
clmul x11, x8, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x1, x26 # perform first operation
clmul x18, x28, x6 # perform second (triggering) operation

#.EQU SIGSIZE,1568
.EQU SIGSIZE,4704 #combined


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
