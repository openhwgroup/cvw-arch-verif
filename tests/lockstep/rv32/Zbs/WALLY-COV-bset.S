///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbs/WALLY-COV-bset.S
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
li x0, 0x401df5b3 # initialize rs1
li x9, 0x624fd7f7 # initialize rs2
bset x19, x0, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xe2ba2563 # initialize rs1
li x2, 0x4190d26e # initialize rs2
bset x7, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x52f21663 # initialize rs1
li x1, 0x5a896d43 # initialize rs2
bset x31, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xce546746 # initialize rs1
li x9, 0x5acd8c8f # initialize rs2
bset x30, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x833b171f # initialize rs1
li x31, 0x44b3d3b7 # initialize rs2
bset x8, x4, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xea18325c # initialize rs1
li x7, 0x8afdf770 # initialize rs2
bset x12, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x842b6104 # initialize rs1
li x2, 0x6a515301 # initialize rs2
bset x25, x6, x2 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1c87b0b9 # initialize rs1
li x17, 0xf7c9a422 # initialize rs2
bset x4, x7, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x6c54598b # initialize rs1
li x4, 0xf22195c9 # initialize rs2
bset x21, x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc66d6d81 # initialize rs1
li x20, 0x67d2eb01 # initialize rs2
bset x14, x9, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xec4cbb40 # initialize rs1
li x4, 0xdbec4124 # initialize rs2
bset x1, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x7c8b4435 # initialize rs1
li x10, 0x628128b9 # initialize rs2
bset x25, x11, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xe50c8dda # initialize rs1
li x1, 0xb566f38b # initialize rs2
bset x2, x12, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x31b2d148 # initialize rs1
li x11, 0x8018e4d7 # initialize rs2
bset x19, x13, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x387d55e4 # initialize rs1
li x2, 0x8315bc45 # initialize rs2
bset x6, x14, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x6a229864 # initialize rs1
li x31, 0x277d44d0 # initialize rs2
bset x11, x15, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x21e21857 # initialize rs1
li x8, 0x544b13bd # initialize rs2
bset x9, x16, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8b94a5f6 # initialize rs1
li x12, 0x2edd4731 # initialize rs2
bset x22, x17, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xde36cbca # initialize rs1
li x20, 0x593eeaa7 # initialize rs2
bset x10, x18, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x1e8f8077 # initialize rs1
li x24, 0x59ee77df # initialize rs2
bset x27, x19, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xc8d3a10b # initialize rs1
li x30, 0x360e5b34 # initialize rs2
bset x3, x20, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x3c194c89 # initialize rs1
li x24, 0x60707b73 # initialize rs2
bset x30, x21, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x0b0dd56c # initialize rs1
li x9, 0x48028ec7 # initialize rs2
bset x1, x22, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xa5c5d212 # initialize rs1
li x3, 0x87a1982f # initialize rs2
bset x17, x23, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xafb604c1 # initialize rs1
li x6, 0x082e7e32 # initialize rs2
bset x20, x24, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x1843a687 # initialize rs1
li x8, 0x25c135a2 # initialize rs2
bset x23, x25, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xd215aac9 # initialize rs1
li x3, 0xd51885d2 # initialize rs2
bset x1, x26, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x4d1e0358 # initialize rs1
li x24, 0x16ae1b32 # initialize rs2
bset x28, x27, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xdfab5235 # initialize rs1
li x12, 0xca5619ba # initialize rs2
bset x4, x28, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xfe0cec1c # initialize rs1
li x4, 0x75fa6956 # initialize rs2
bset x14, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xfe38a94f # initialize rs1
li x29, 0x8f857916 # initialize rs2
bset x2, x30, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x5b33f8c5 # initialize rs1
li x3, 0xe875e8c4 # initialize rs2
bset x27, x31, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x725d32fa # initialize rs1
li x0, 0x661bbf46 # initialize rs2
bset x3, x20, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x6, 0xd0b78c7b # initialize rs1
li x1, 0xc403e880 # initialize rs2
bset x27, x6, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x23, 0x9a5eed6d # initialize rs1
li x2, 0xc6ea456c # initialize rs2
bset x24, x23, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x30, 0x16581eb3 # initialize rs1
li x3, 0xda1b2c32 # initialize rs2
bset x10, x30, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
li x29, 0x08a00d2a # initialize rs1
li x4, 0x57086b4d # initialize rs2
bset x11, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x90eefd07 # initialize rs1
li x5, 0xcc67d08e # initialize rs2
bset x11, x13, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x9ec78a42 # initialize rs1
li x6, 0x5104359c # initialize rs2
bset x31, x27, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xf9d757e2 # initialize rs1
li x7, 0xd48d171b # initialize rs2
bset x12, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x15, 0x8fa1ca1d # initialize rs1
li x8, 0xc1774178 # initialize rs2
bset x23, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x12, 0x0377dfe3 # initialize rs1
li x9, 0xc5fe234e # initialize rs2
bset x7, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x27, 0xad012f2c # initialize rs1
li x10, 0x04009e88 # initialize rs2
bset x25, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x13, 0x134af118 # initialize rs1
li x11, 0x47aa9436 # initialize rs2
bset x29, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x26, 0x042be8a6 # initialize rs1
li x12, 0xc5cd4084 # initialize rs2
bset x18, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x9, 0x67233d22 # initialize rs1
li x13, 0x4ce71005 # initialize rs2
bset x30, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x1, 0xcbbe4d50 # initialize rs1
li x14, 0xb06076fa # initialize rs2
bset x9, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0x62c4c329 # initialize rs1
li x15, 0xead38ecb # initialize rs2
bset x26, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x9, 0x30c1bd6a # initialize rs1
li x16, 0xc9853d2d # initialize rs2
bset x15, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x6, 0x332b5399 # initialize rs1
li x17, 0xc53e5b89 # initialize rs2
bset x9, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x8, 0x24052125 # initialize rs1
li x18, 0xcbf709b9 # initialize rs2
bset x28, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x16, 0xbe678e63 # initialize rs1
li x19, 0x33b900c9 # initialize rs2
bset x30, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x23, 0x20cc5f20 # initialize rs1
li x20, 0x5badb504 # initialize rs2
bset x21, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x16, 0xd80d8080 # initialize rs1
li x21, 0xe13aaee9 # initialize rs2
bset x25, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0x38ba6671 # initialize rs1
li x22, 0x1798c176 # initialize rs2
bset x31, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x17, 0x0694cf1f # initialize rs1
li x23, 0xf7edcd86 # initialize rs2
bset x5, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x17, 0xb944551a # initialize rs1
li x24, 0x4a2dd902 # initialize rs2
bset x31, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x20, 0xf43bcf9a # initialize rs1
li x25, 0xdea84b0c # initialize rs2
bset x8, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x20, 0x8b40f742 # initialize rs1
li x26, 0x6550bd07 # initialize rs2
bset x31, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x9, 0x7dd24786 # initialize rs1
li x27, 0x0faf512d # initialize rs2
bset x20, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x15, 0xfc4cbe2e # initialize rs1
li x28, 0xb7625808 # initialize rs2
bset x23, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x10, 0x2001a39d # initialize rs1
li x29, 0x01ac9c26 # initialize rs2
bset x11, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x18, 0xaf58a923 # initialize rs1
li x30, 0x00c26c4b # initialize rs2
bset x12, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x1, 0x2346dcda # initialize rs1
li x31, 0x789770a7 # initialize rs2
bset x17, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 252)

# Testcase cp_rd (Test destination rd = x0)
li x14, 0xe76426de # initialize rs1
li x21, 0xd16f9962 # initialize rs2
bset x0, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x23, 0x53ed3fd4 # initialize rs1
li x21, 0x01bd808c # initialize rs2
bset x1, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0xe0f2960e # initialize rs1
li x23, 0xfe3c253e # initialize rs2
bset x2, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x11, 0xbd6f903b # initialize rs1
li x17, 0x2578f6ad # initialize rs2
bset x3, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x3056a712 # initialize rs1
li x2, 0xbd4cd61b # initialize rs2
bset x4, x18, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0x159e1a80 # initialize rs1
li x22, 0xd41d8a18 # initialize rs2
bset x5, x21, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x22d9a2a6 # initialize rs1
li x25, 0x7d2c7d95 # initialize rs2
bset x6, x3, x25 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0xd2328a65 # initialize rs1
li x3, 0x1bb99f03 # initialize rs2
bset x7, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x25, 0xfce41b04 # initialize rs1
li x5, 0x68d70662 # initialize rs2
bset x8, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0xba7dccba # initialize rs1
li x8, 0x786924fb # initialize rs2
bset x9, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0xe8f53c38 # initialize rs1
li x10, 0x5cf55936 # initialize rs2
bset x10, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x20, 0x3033ea42 # initialize rs1
li x23, 0xe5115ab7 # initialize rs2
bset x11, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x23, 0x293772cf # initialize rs1
li x26, 0x2862ee28 # initialize rs2
bset x12, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x25, 0x6d8974cb # initialize rs1
li x24, 0xfa6c42a1 # initialize rs2
bset x13, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x29, 0x4034ba9c # initialize rs1
li x24, 0x519107e4 # initialize rs2
bset x14, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0x5e30c60b # initialize rs1
li x30, 0x5e7e6784 # initialize rs2
bset x15, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x28, 0xad9bbc72 # initialize rs1
li x21, 0xac4122c5 # initialize rs2
bset x16, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x31, 0xf492b409 # initialize rs1
li x17, 0x2b3690ff # initialize rs2
bset x17, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x5, 0x8d12d518 # initialize rs1
li x3, 0x1a5d5661 # initialize rs2
bset x18, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x26, 0xba02a988 # initialize rs1
li x5, 0x3c17d370 # initialize rs2
bset x19, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x10, 0x3676d8b7 # initialize rs1
li x6, 0x7b857d86 # initialize rs2
bset x20, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x6, 0x007097e4 # initialize rs1
li x7, 0x454df45c # initialize rs2
bset x21, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x19, 0xeb429c74 # initialize rs1
li x10, 0x073a0eb8 # initialize rs2
bset x22, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x22, 0x92591116 # initialize rs1
li x15, 0x5fcc244a # initialize rs2
bset x23, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x25, 0x93149b93 # initialize rs1
li x11, 0x42c689b3 # initialize rs2
bset x24, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x30, 0xd8448130 # initialize rs1
li x26, 0x52295595 # initialize rs2
bset x25, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x14, 0x8be63601 # initialize rs1
li x18, 0x6f1284e4 # initialize rs2
bset x26, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x1, 0x7b886022 # initialize rs1
li x21, 0x9cf3c060 # initialize rs2
bset x27, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x14, 0x2316a2e5 # initialize rs1
li x16, 0x2db20ee9 # initialize rs2
bset x28, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0x4c8a02dd # initialize rs1
li x6, 0xd94cc7eb # initialize rs2
bset x29, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x17, 0x67d9270b # initialize rs1
li x14, 0x8a6e004b # initialize rs2
bset x30, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0x5dc8e4a0 # initialize rs1
li x5, 0x48da4701 # initialize rs2
bset x31, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x31, 0x00000000 # initialize rs1
li x2, 0x626ed015 # initialize rs2
bset x1, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x00000001 # initialize rs1
li x6, 0xc5ecc201 # initialize rs2
bset x15, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x9, 0x00000002 # initialize rs1
li x19, 0x6f8755c0 # initialize rs2
bset x31, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x10, 0x80000000 # initialize rs1
li x3, 0xb7b6653a # initialize rs2
bset x19, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x2, 0x80000001 # initialize rs1
li x25, 0x058db9c4 # initialize rs2
bset x11, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x7, 0x7fffffff # initialize rs1
li x1, 0x33ad02b0 # initialize rs2
bset x12, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x6, 0x7ffffffe # initialize rs1
li x25, 0xb4cd0c49 # initialize rs2
bset x22, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0xffffffff # initialize rs1
li x28, 0xb3c13184 # initialize rs2
bset x10, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0xfffffffe # initialize rs1
li x13, 0xd5e93ae9 # initialize rs2
bset x11, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x18, 0x5bbc8872 # initialize rs1
li x30, 0x8e9fbe30 # initialize rs2
bset x19, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x6, 0xaaaaaaaa # initialize rs1
li x7, 0x7567dd6d # initialize rs2
bset x8, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x30, 0x55555555 # initialize rs1
li x18, 0x373c320d # initialize rs2
bset x14, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x7, 0x5f452760 # initialize rs1
li x11, 0x00000000 # initialize rs2
bset x10, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x19, 0x4a13912b # initialize rs1
li x2, 0x00000001 # initialize rs2
bset x5, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x20, 0x64239606 # initialize rs1
li x14, 0x00000002 # initialize rs2
bset x29, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x26, 0xb66847cc # initialize rs1
li x16, 0x80000000 # initialize rs2
bset x27, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x30, 0x7450148e # initialize rs1
li x16, 0x80000001 # initialize rs2
bset x12, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x29, 0xa07eed68 # initialize rs1
li x25, 0x7fffffff # initialize rs2
bset x8, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x18, 0xb02699df # initialize rs1
li x17, 0x7ffffffe # initialize rs2
bset x7, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x3, 0xac776722 # initialize rs1
li x20, 0xffffffff # initialize rs2
bset x17, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x15, 0xec5736f2 # initialize rs1
li x5, 0xfffffffe # initialize rs2
bset x7, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x31, 0xe314df0a # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
bset x29, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x5, 0x81df1d97 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
bset x26, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x9, 0x01281bdc # initialize rs1
li x22, 0x55555555 # initialize rs2
bset x12, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x27, 0x00000000 # initialize rs1
li x7, 0x00000000 # initialize rs2
bset x6, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x7, 0x00000000 # initialize rs1
li x1, 0x00000001 # initialize rs2
bset x5, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x24, 0x00000000 # initialize rs1
li x28, 0x00000002 # initialize rs2
bset x18, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x25, 0x00000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
bset x19, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x29, 0x00000000 # initialize rs1
li x10, 0x80000001 # initialize rs2
bset x25, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x23, 0x00000000 # initialize rs1
li x3, 0x7fffffff # initialize rs2
bset x17, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x16, 0x00000000 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
bset x12, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x27, 0x00000000 # initialize rs1
li x29, 0xffffffff # initialize rs2
bset x15, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x28, 0x00000000 # initialize rs1
li x5, 0xfffffffe # initialize rs2
bset x29, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x9, 0x00000000 # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
bset x12, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x23, 0x00000000 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
bset x5, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x26, 0x00000000 # initialize rs1
li x20, 0x55555555 # initialize rs2
bset x21, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x26, 0x00000001 # initialize rs1
li x24, 0x00000000 # initialize rs2
bset x9, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x21, 0x00000001 # initialize rs1
li x31, 0x00000001 # initialize rs2
bset x11, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x28, 0x00000001 # initialize rs1
li x12, 0x00000002 # initialize rs2
bset x6, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x31, 0x00000001 # initialize rs1
li x13, 0x80000000 # initialize rs2
bset x25, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x12, 0x00000001 # initialize rs1
li x10, 0x80000001 # initialize rs2
bset x11, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x9, 0x00000001 # initialize rs1
li x16, 0x7fffffff # initialize rs2
bset x2, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x8, 0x00000001 # initialize rs1
li x28, 0x7ffffffe # initialize rs2
bset x6, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x10, 0x00000001 # initialize rs1
li x21, 0xffffffff # initialize rs2
bset x15, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x17, 0x00000001 # initialize rs1
li x30, 0xfffffffe # initialize rs2
bset x5, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x31, 0x00000001 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
bset x30, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x30, 0x00000001 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
bset x18, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x12, 0x00000001 # initialize rs1
li x28, 0x55555555 # initialize rs2
bset x29, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x21, 0x00000002 # initialize rs1
li x8, 0x00000000 # initialize rs2
bset x25, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x11, 0x00000002 # initialize rs1
li x18, 0x00000001 # initialize rs2
bset x23, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x14, 0x00000002 # initialize rs1
li x6, 0x00000002 # initialize rs2
bset x13, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x10, 0x00000002 # initialize rs1
li x22, 0x80000000 # initialize rs2
bset x25, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x29, 0x00000002 # initialize rs1
li x27, 0x80000001 # initialize rs2
bset x13, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x13, 0x00000002 # initialize rs1
li x27, 0x7fffffff # initialize rs2
bset x10, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x21, 0x00000002 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
bset x31, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x3, 0x00000002 # initialize rs1
li x25, 0xffffffff # initialize rs2
bset x18, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x23, 0x00000002 # initialize rs1
li x8, 0xfffffffe # initialize rs2
bset x5, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x12, 0x00000002 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
bset x15, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x19, 0x00000002 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
bset x8, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x17, 0x00000002 # initialize rs1
li x28, 0x55555555 # initialize rs2
bset x7, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x1, 0x80000000 # initialize rs1
li x23, 0x00000000 # initialize rs2
bset x7, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x26, 0x80000000 # initialize rs1
li x11, 0x00000001 # initialize rs2
bset x29, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x13, 0x80000000 # initialize rs1
li x27, 0x00000002 # initialize rs2
bset x25, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x19, 0x80000000 # initialize rs1
li x22, 0x80000000 # initialize rs2
bset x10, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x12, 0x80000000 # initialize rs1
li x5, 0x80000001 # initialize rs2
bset x29, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x8, 0x80000000 # initialize rs1
li x6, 0x7fffffff # initialize rs2
bset x22, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x31, 0x80000000 # initialize rs1
li x9, 0x7ffffffe # initialize rs2
bset x19, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x17, 0x80000000 # initialize rs1
li x5, 0xffffffff # initialize rs2
bset x9, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x6, 0x80000000 # initialize rs1
li x23, 0xfffffffe # initialize rs2
bset x5, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x6, 0x80000000 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
bset x10, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x29, 0x80000000 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
bset x3, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x28, 0x80000000 # initialize rs1
li x21, 0x55555555 # initialize rs2
bset x14, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x15, 0x80000001 # initialize rs1
li x7, 0x00000000 # initialize rs2
bset x28, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x24, 0x80000001 # initialize rs1
li x19, 0x00000001 # initialize rs2
bset x31, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x5, 0x80000001 # initialize rs1
li x25, 0x00000002 # initialize rs2
bset x20, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x31, 0x80000001 # initialize rs1
li x22, 0x80000000 # initialize rs2
bset x8, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x23, 0x80000001 # initialize rs1
li x5, 0x80000001 # initialize rs2
bset x28, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x8, 0x80000001 # initialize rs1
li x5, 0x7fffffff # initialize rs2
bset x1, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x30, 0x80000001 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
bset x3, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x15, 0x80000001 # initialize rs1
li x8, 0xffffffff # initialize rs2
bset x6, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x15, 0x80000001 # initialize rs1
li x29, 0xfffffffe # initialize rs2
bset x30, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x9, 0x80000001 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
bset x22, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x13, 0x80000001 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
bset x24, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x18, 0x80000001 # initialize rs1
li x8, 0x55555555 # initialize rs2
bset x13, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x16, 0x7fffffff # initialize rs1
li x23, 0x00000000 # initialize rs2
bset x24, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x28, 0x7fffffff # initialize rs1
li x16, 0x00000001 # initialize rs2
bset x18, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x25, 0x7fffffff # initialize rs1
li x19, 0x00000002 # initialize rs2
bset x18, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x11, 0x7fffffff # initialize rs1
li x17, 0x80000000 # initialize rs2
bset x7, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x2, 0x7fffffff # initialize rs1
li x16, 0x80000001 # initialize rs2
bset x12, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x23, 0x7fffffff # initialize rs1
li x22, 0x7fffffff # initialize rs2
bset x11, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x6, 0x7fffffff # initialize rs1
li x8, 0x7ffffffe # initialize rs2
bset x30, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x22, 0x7fffffff # initialize rs1
li x9, 0xffffffff # initialize rs2
bset x20, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x28, 0x7fffffff # initialize rs1
li x24, 0xfffffffe # initialize rs2
bset x1, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x8, 0x7fffffff # initialize rs1
li x18, 0x5bbc8872 # initialize rs2
bset x30, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x8, 0x7fffffff # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
bset x14, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x20, 0x7fffffff # initialize rs1
li x16, 0x55555555 # initialize rs2
bset x8, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x22, 0x7ffffffe # initialize rs1
li x3, 0x00000000 # initialize rs2
bset x21, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x16, 0x7ffffffe # initialize rs1
li x2, 0x00000001 # initialize rs2
bset x25, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x13, 0x7ffffffe # initialize rs1
li x29, 0x00000002 # initialize rs2
bset x27, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x6, 0x7ffffffe # initialize rs1
li x19, 0x80000000 # initialize rs2
bset x28, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x13, 0x7ffffffe # initialize rs1
li x18, 0x80000001 # initialize rs2
bset x17, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x17, 0x7ffffffe # initialize rs1
li x7, 0x7fffffff # initialize rs2
bset x14, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x21, 0x7ffffffe # initialize rs1
li x20, 0x7ffffffe # initialize rs2
bset x11, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x22, 0x7ffffffe # initialize rs1
li x7, 0xffffffff # initialize rs2
bset x17, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x3, 0x7ffffffe # initialize rs1
li x15, 0xfffffffe # initialize rs2
bset x16, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x14, 0x7ffffffe # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
bset x23, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x5, 0x7ffffffe # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
bset x8, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x12, 0x7ffffffe # initialize rs1
li x20, 0x55555555 # initialize rs2
bset x27, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x29, 0xffffffff # initialize rs1
li x15, 0x00000000 # initialize rs2
bset x17, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x31, 0xffffffff # initialize rs1
li x30, 0x00000001 # initialize rs2
bset x3, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x2, 0xffffffff # initialize rs1
li x12, 0x00000002 # initialize rs2
bset x9, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x20, 0xffffffff # initialize rs1
li x15, 0x80000000 # initialize rs2
bset x19, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x31, 0xffffffff # initialize rs1
li x6, 0x80000001 # initialize rs2
bset x13, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x7, 0xffffffff # initialize rs1
li x9, 0x7fffffff # initialize rs2
bset x27, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x25, 0xffffffff # initialize rs1
li x1, 0x7ffffffe # initialize rs2
bset x13, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x11, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
bset x5, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x13, 0xffffffff # initialize rs1
li x10, 0xfffffffe # initialize rs2
bset x19, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x30, 0xffffffff # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
bset x11, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x22, 0xffffffff # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
bset x10, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x23, 0xffffffff # initialize rs1
li x21, 0x55555555 # initialize rs2
bset x15, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x30, 0xfffffffe # initialize rs1
li x14, 0x00000000 # initialize rs2
bset x18, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x27, 0xfffffffe # initialize rs1
li x26, 0x00000001 # initialize rs2
bset x18, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x29, 0xfffffffe # initialize rs1
li x3, 0x00000002 # initialize rs2
bset x16, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x20, 0xfffffffe # initialize rs1
li x22, 0x80000000 # initialize rs2
bset x19, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x9, 0xfffffffe # initialize rs1
li x5, 0x80000001 # initialize rs2
bset x23, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x1, 0xfffffffe # initialize rs1
li x19, 0x7fffffff # initialize rs2
bset x28, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x3, 0xfffffffe # initialize rs1
li x28, 0x7ffffffe # initialize rs2
bset x23, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x8, 0xfffffffe # initialize rs1
li x9, 0xffffffff # initialize rs2
bset x25, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x10, 0xfffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
bset x2, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x18, 0xfffffffe # initialize rs1
li x30, 0x5bbc8872 # initialize rs2
bset x3, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x23, 0xfffffffe # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
bset x12, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x26, 0xfffffffe # initialize rs1
li x30, 0x55555555 # initialize rs2
bset x27, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x18, 0x5bbc8872 # initialize rs1
li x14, 0x00000000 # initialize rs2
bset x22, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x5, 0x5bbc8872 # initialize rs1
li x10, 0x00000001 # initialize rs2
bset x16, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x30, 0x5bbc8872 # initialize rs1
li x25, 0x00000002 # initialize rs2
bset x20, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x27, 0x5bbc8872 # initialize rs1
li x29, 0x80000000 # initialize rs2
bset x11, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x7, 0x5bbc8872 # initialize rs1
li x26, 0x80000001 # initialize rs2
bset x13, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x11, 0x5bbc8872 # initialize rs1
li x18, 0x7fffffff # initialize rs2
bset x12, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x13, 0x5bbc8872 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
bset x8, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x21, 0x5bbc8872 # initialize rs1
li x16, 0xffffffff # initialize rs2
bset x19, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x11, 0x5bbc8872 # initialize rs1
li x22, 0xfffffffe # initialize rs2
bset x18, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x29, 0x5bbc8872 # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
bset x13, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x12, 0x5bbc8872 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
bset x13, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x3, 0x5bbc8872 # initialize rs1
li x17, 0x55555555 # initialize rs2
bset x25, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x21, 0xaaaaaaaa # initialize rs1
li x20, 0x00000000 # initialize rs2
bset x28, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x10, 0xaaaaaaaa # initialize rs1
li x6, 0x00000001 # initialize rs2
bset x11, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x19, 0xaaaaaaaa # initialize rs1
li x27, 0x00000002 # initialize rs2
bset x1, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x8, 0xaaaaaaaa # initialize rs1
li x14, 0x80000000 # initialize rs2
bset x2, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x27, 0xaaaaaaaa # initialize rs1
li x22, 0x80000001 # initialize rs2
bset x1, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x27, 0xaaaaaaaa # initialize rs1
li x11, 0x7fffffff # initialize rs2
bset x26, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x23, 0xaaaaaaaa # initialize rs1
li x14, 0x7ffffffe # initialize rs2
bset x13, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x27, 0xaaaaaaaa # initialize rs1
li x19, 0xffffffff # initialize rs2
bset x6, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x5, 0xaaaaaaaa # initialize rs1
li x15, 0xfffffffe # initialize rs2
bset x7, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x3, 0xaaaaaaaa # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
bset x31, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
bset x10, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x31, 0xaaaaaaaa # initialize rs1
li x24, 0x55555555 # initialize rs2
bset x28, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x2, 0x55555555 # initialize rs1
li x13, 0x00000000 # initialize rs2
bset x1, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x3, 0x55555555 # initialize rs1
li x29, 0x00000001 # initialize rs2
bset x18, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x28, 0x55555555 # initialize rs1
li x12, 0x00000002 # initialize rs2
bset x26, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x11, 0x55555555 # initialize rs1
li x14, 0x80000000 # initialize rs2
bset x10, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x12, 0x55555555 # initialize rs1
li x19, 0x80000001 # initialize rs2
bset x28, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x6, 0x55555555 # initialize rs1
li x2, 0x7fffffff # initialize rs2
bset x29, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x17, 0x55555555 # initialize rs1
li x31, 0x7ffffffe # initialize rs2
bset x25, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x20, 0x55555555 # initialize rs1
li x22, 0xffffffff # initialize rs2
bset x19, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x16, 0x55555555 # initialize rs1
li x30, 0xfffffffe # initialize rs2
bset x23, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x28, 0x55555555 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
bset x25, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x5, 0x55555555 # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
bset x10, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x28, 0x55555555 # initialize rs1
li x11, 0x55555555 # initialize rs2
bset x12, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x413a1d4a # initialize rs1
li x0, 0xa505bfd9 # initialize rs2
bset x11, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x50cabd51 # initialize rs1
li x1, 0xddfb019c # initialize rs2
bset x30, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x7e929d3a # initialize rs1
li x2, 0x630923cd # initialize rs2
bset x11, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xbd787637 # initialize rs1
li x3, 0xa77301a0 # initialize rs2
bset x2, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0e16f0a6 # initialize rs1
li x4, 0xa8ceaadb # initialize rs2
bset x11, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x47392392 # initialize rs1
li x5, 0xc0ba01e7 # initialize rs2
bset x8, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8e51da40 # initialize rs1
li x6, 0x190c235b # initialize rs2
bset x24, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6c6c9649 # initialize rs1
li x7, 0xa1a89460 # initialize rs2
bset x20, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6573e2fd # initialize rs1
li x8, 0x4bfe439a # initialize rs2
bset x9, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x1425e9f4 # initialize rs1
li x9, 0xd42b62a7 # initialize rs2
bset x16, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xfa6dbeb1 # initialize rs1
li x10, 0x9b242330 # initialize rs2
bset x25, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xd1e303ff # initialize rs1
li x11, 0x260159c1 # initialize rs2
bset x3, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x106a2eb2 # initialize rs1
li x12, 0x25d8fafe # initialize rs2
bset x19, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x7d70a119 # initialize rs1
li x13, 0x06b5af65 # initialize rs2
bset x14, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x7c5e2b76 # initialize rs1
li x14, 0xc4596142 # initialize rs2
bset x30, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x6882008d # initialize rs1
li x15, 0xe8c1eead # initialize rs2
bset x26, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xdde72fa6 # initialize rs1
li x16, 0xbc66625b # initialize rs2
bset x19, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x6f9fe877 # initialize rs1
li x17, 0x3445bd60 # initialize rs2
bset x20, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xa55b3fcc # initialize rs1
li x18, 0x522512f1 # initialize rs2
bset x11, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xf8313d2e # initialize rs1
li x19, 0xbee46885 # initialize rs2
bset x2, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xd532eb02 # initialize rs1
li x20, 0x46bfbc68 # initialize rs2
bset x28, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x8010a541 # initialize rs1
li x21, 0x79a1f26d # initialize rs2
bset x14, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x1ff1fe76 # initialize rs1
li x22, 0x74ee2b74 # initialize rs2
bset x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x226f7f14 # initialize rs1
li x23, 0x9a196e8c # initialize rs2
bset x29, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x07a30549 # initialize rs1
li x24, 0xd6cf8bb2 # initialize rs2
bset x26, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x2dbd14f1 # initialize rs1
li x25, 0xa5dbb61c # initialize rs2
bset x14, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xe10c5f91 # initialize rs1
li x26, 0xa8098fca # initialize rs2
bset x1, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x5d946405 # initialize rs1
li x27, 0x5a3d3af4 # initialize rs2
bset x3, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x573f9784 # initialize rs1
li x28, 0x81862265 # initialize rs2
bset x11, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x87515ff3 # initialize rs1
li x29, 0xb7557aa6 # initialize rs2
bset x27, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xc9e0959e # initialize rs1
li x30, 0x2529095b # initialize rs2
bset x28, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xd385ccc8 # initialize rs1
li x31, 0x39858123 # initialize rs2
bset x8, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x02ca5526 # initialize rs1
li x14, 0x56b8988f # initialize rs2
bset x0, x0, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa8a78d19 # initialize rs1
li x6, 0x1f5f8fb0 # initialize rs2
bset x1, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x83c64d1e # initialize rs1
li x9, 0x6c379449 # initialize rs2
bset x2, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x096672af # initialize rs1
li x5, 0x7365a150 # initialize rs2
bset x3, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x43edba66 # initialize rs1
li x8, 0x57122629 # initialize rs2
bset x4, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x65114717 # initialize rs1
li x20, 0xca1fbb23 # initialize rs2
bset x5, x5, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2f3c4536 # initialize rs1
li x21, 0xb9965b27 # initialize rs2
bset x6, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6f862def # initialize rs1
li x22, 0x756c5824 # initialize rs2
bset x7, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x71611d08 # initialize rs1
li x7, 0xd701d023 # initialize rs2
bset x8, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x9ff5b53d # initialize rs1
li x30, 0x3a402682 # initialize rs2
bset x9, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xee2f332f # initialize rs1
li x17, 0xe8eac5b3 # initialize rs2
bset x10, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x41452440 # initialize rs1
li x29, 0xdba93886 # initialize rs2
bset x11, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf8fc4691 # initialize rs1
li x31, 0xd8fa41a0 # initialize rs2
bset x12, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd0908b0b # initialize rs1
li x30, 0xb881909d # initialize rs2
bset x13, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xdc69a541 # initialize rs1
li x19, 0xc3eca669 # initialize rs2
bset x14, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xff6867a0 # initialize rs1
li x18, 0xc085c68c # initialize rs2
bset x15, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x9fdba886 # initialize rs1
li x20, 0xdc166985 # initialize rs2
bset x16, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x61fb4cdf # initialize rs1
li x1, 0x98746ccc # initialize rs2
bset x17, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xe9af5801 # initialize rs1
li x16, 0x3ca76e9f # initialize rs2
bset x18, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x3bbc8fcf # initialize rs1
li x28, 0x236d0437 # initialize rs2
bset x19, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x01eb66e9 # initialize rs1
li x9, 0x1f5dae9d # initialize rs2
bset x20, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x26f3c795 # initialize rs1
li x13, 0xa0458212 # initialize rs2
bset x21, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xe68f88d5 # initialize rs1
li x5, 0x35fdb582 # initialize rs2
bset x22, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x8d2f4990 # initialize rs1
li x21, 0xccd4ba6d # initialize rs2
bset x23, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe45ea269 # initialize rs1
li x22, 0xb165c7ee # initialize rs2
bset x24, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xaadfa758 # initialize rs1
li x15, 0xd67814b0 # initialize rs2
bset x25, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xec2b5bcd # initialize rs1
li x10, 0xd690b65c # initialize rs2
bset x26, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x9af2e959 # initialize rs1
li x7, 0x8e961dae # initialize rs2
bset x27, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x34610d95 # initialize rs1
li x22, 0xef9ecc32 # initialize rs2
bset x28, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x6fabbe2b # initialize rs1
li x31, 0xc91a31a3 # initialize rs2
bset x29, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xc0d7eab2 # initialize rs1
li x31, 0xab50c0fb # initialize rs2
bset x30, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x7c2c7a12 # initialize rs1
li x24, 0x86cfc04e # initialize rs2
bset x31, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x25, 0x459b00bb # initialize rs1
li x0, 0x591606fa # initialize rs2
bset x0, x25, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0x700f881d # initialize rs1
li x1, 0x3002d6d3 # initialize rs2
bset x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x18, 0xdc8e15bc # initialize rs1
li x2, 0xb543afd3 # initialize rs2
bset x2, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x13, 0xe47c093b # initialize rs1
li x3, 0x583319af # initialize rs2
bset x3, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0xcec3c992 # initialize rs1
li x4, 0x568ec039 # initialize rs2
bset x4, x12, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0xf7a398dd # initialize rs1
li x5, 0xd5fe545a # initialize rs2
bset x5, x7, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0xd2360331 # initialize rs1
li x6, 0x7e512e33 # initialize rs2
bset x6, x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0xbb35da95 # initialize rs1
li x7, 0x1e37856c # initialize rs2
bset x7, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x13, 0x6de78fca # initialize rs1
li x8, 0x15dccfab # initialize rs2
bset x8, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x22, 0x2050103f # initialize rs1
li x9, 0xfa20f1ae # initialize rs2
bset x9, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x16, 0x13c2a34c # initialize rs1
li x10, 0xab9e955f # initialize rs2
bset x10, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x25, 0x1f3e3509 # initialize rs1
li x11, 0x5b4883ad # initialize rs2
bset x11, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x13, 0x74fdb7be # initialize rs1
li x12, 0xec855d62 # initialize rs2
bset x12, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x18, 0xcdf71b52 # initialize rs1
li x13, 0x3b2897f4 # initialize rs2
bset x13, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x27, 0x6c02cdfc # initialize rs1
li x14, 0x74622363 # initialize rs2
bset x14, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x5, 0xae43b9ac # initialize rs1
li x15, 0x30e8e0b2 # initialize rs2
bset x15, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x2, 0xe9c3299f # initialize rs1
li x16, 0x46570d87 # initialize rs2
bset x16, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x7, 0x42502c8d # initialize rs1
li x17, 0x7b1bfef6 # initialize rs2
bset x17, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x24, 0x896f8962 # initialize rs1
li x18, 0x823562cb # initialize rs2
bset x18, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x18, 0x8ebd52ba # initialize rs1
li x19, 0xf8725151 # initialize rs2
bset x19, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x16, 0x50c649ee # initialize rs1
li x20, 0xb51543c3 # initialize rs2
bset x20, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x29, 0x56ee3058 # initialize rs1
li x21, 0x3e2d3169 # initialize rs2
bset x21, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x26, 0x9270f7c3 # initialize rs1
li x22, 0xcafec135 # initialize rs2
bset x22, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x27, 0xdab42cb7 # initialize rs1
li x23, 0x4ada84a4 # initialize rs2
bset x23, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x1, 0xb0eeffd2 # initialize rs1
li x24, 0xc7823036 # initialize rs2
bset x24, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x21, 0xcd5bd2f3 # initialize rs1
li x25, 0xe1685da4 # initialize rs2
bset x25, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x7, 0x8ab4b467 # initialize rs1
li x26, 0x49e7e07f # initialize rs2
bset x26, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x31, 0xc52ba8e5 # initialize rs1
li x27, 0x5e538dc6 # initialize rs2
bset x27, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x29, 0x1f7525ef # initialize rs1
li x28, 0x90ad1bfa # initialize rs2
bset x28, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x11, 0xd9839e83 # initialize rs1
li x29, 0xf29920dc # initialize rs2
bset x29, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x18, 0xce5a032e # initialize rs1
li x30, 0x946cfc84 # initialize rs2
bset x30, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x30, 0xbd0c6ef8 # initialize rs1
li x31, 0x7db2fa02 # initialize rs2
bset x31, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x694db8db # initialize rs1
li x0, 0xca4cdd84 # initialize rs2
bset x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xdf473295 # initialize rs1
li x1, 0xb435854b # initialize rs2
bset x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xa224e3e6 # initialize rs1
li x2, 0x38f1900f # initialize rs2
bset x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x8a438037 # initialize rs1
li x3, 0x27aaa7f4 # initialize rs2
bset x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8d951b76 # initialize rs1
li x4, 0x118c890c # initialize rs2
bset x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe8dae356 # initialize rs1
li x5, 0x0f4d7451 # initialize rs2
bset x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb4bf9b47 # initialize rs1
li x6, 0x638031e4 # initialize rs2
bset x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7bb9c12b # initialize rs1
li x7, 0x7807b22f # initialize rs2
bset x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xb0c05886 # initialize rs1
li x8, 0x8f4bf394 # initialize rs2
bset x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x5ecd95c7 # initialize rs1
li x9, 0x73356fa1 # initialize rs2
bset x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xcb60ab2e # initialize rs1
li x10, 0x3d55b903 # initialize rs2
bset x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x4d53a2af # initialize rs1
li x11, 0x8a55f68e # initialize rs2
bset x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x8769006d # initialize rs1
li x12, 0xe689eca6 # initialize rs2
bset x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xd93a5f77 # initialize rs1
li x13, 0xef6e8379 # initialize rs2
bset x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x959c9d6b # initialize rs1
li x14, 0x9814db9e # initialize rs2
bset x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x9255faeb # initialize rs1
li x15, 0xa265ca12 # initialize rs2
bset x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x311e6e42 # initialize rs1
li x16, 0xad381405 # initialize rs2
bset x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x98fd3178 # initialize rs1
li x17, 0xfed80548 # initialize rs2
bset x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xf0fd4efe # initialize rs1
li x18, 0x553cd163 # initialize rs2
bset x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x90351590 # initialize rs1
li x19, 0xc9987e3c # initialize rs2
bset x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xecdb8d64 # initialize rs1
li x20, 0x1158b21c # initialize rs2
bset x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x2523dff6 # initialize rs1
li x21, 0x20f3e36b # initialize rs2
bset x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xcd9e183c # initialize rs1
li x22, 0xc45dd26c # initialize rs2
bset x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x3ded1d2a # initialize rs1
li x23, 0x14685d93 # initialize rs2
bset x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xa029e0b9 # initialize rs1
li x24, 0xab84d014 # initialize rs2
bset x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xf3920895 # initialize rs1
li x25, 0x4f5e903e # initialize rs2
bset x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x859429bc # initialize rs1
li x26, 0x52bb24a1 # initialize rs2
bset x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xb68aebf9 # initialize rs1
li x27, 0x9bbb2a33 # initialize rs2
bset x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xe41a4742 # initialize rs1
li x28, 0x8e7a44f1 # initialize rs2
bset x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x8cec5e5a # initialize rs1
li x29, 0xcaa4f23a # initialize rs2
bset x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x9efb4251 # initialize rs1
li x30, 0xa09ff52a # initialize rs2
bset x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xec3acf96 # initialize rs1
li x31, 0xe4864df0 # initialize rs2
bset x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x31, x8 # perform first operation
bset x17, x7, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x11, x16 # perform first operation
bset x13, x3, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x2, x1 # perform first operation
bset x5, x17, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x8, x24 # perform first operation
bset x8, x27, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x8, x16 # perform first operation
bset x8, x15, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x22, x19 # perform first operation
bset x2, x8, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x30, x14 # perform first operation
bset x12, x2, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x16, x3 # perform first operation
bset x17, x15, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x10, x5 # perform first operation
bset x9, x25, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x1, x9 # perform first operation
bset x1, x3, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x8, x9 # perform first operation
bset x9, x29, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x3, x8 # perform first operation
bset x27, x14, x29 # perform second (triggering) operation

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
