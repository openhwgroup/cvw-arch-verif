///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbkc/WALLY-COV-clmulh.S
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
