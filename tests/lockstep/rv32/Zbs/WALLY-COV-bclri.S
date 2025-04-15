///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbs/WALLY-COV-bclri.S
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
li x0, 0x05119549 # initialize rs1
bclri x10, x0, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x9aac39ce # initialize rs1
bclri x29, x1, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xd53cda58 # initialize rs1
bclri x11, x2, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x5aa630e5 # initialize rs1
bclri x12, x3, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x96fe8b2c # initialize rs1
bclri x9, x4, 13 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x25bb023d # initialize rs1
bclri x23, x5, 28 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x268f9955 # initialize rs1
bclri x19, x6, 19 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc13d10d7 # initialize rs1
bclri x13, x7, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xdc78d5ae # initialize rs1
bclri x27, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x1de0e42f # initialize rs1
bclri x31, x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x4d8eb677 # initialize rs1
bclri x25, x10, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x6eee40d9 # initialize rs1
bclri x15, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x8a1329be # initialize rs1
bclri x26, x12, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x70ccd57b # initialize rs1
bclri x12, x13, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x4b625611 # initialize rs1
bclri x15, x14, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x77a52941 # initialize rs1
bclri x16, x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xa9a4f2d1 # initialize rs1
bclri x30, x16, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x18336d65 # initialize rs1
bclri x19, x17, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x6022f061 # initialize rs1
bclri x21, x18, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x93a544b4 # initialize rs1
bclri x30, x19, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xbd38be5c # initialize rs1
bclri x28, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xe9b780ce # initialize rs1
bclri x30, x21, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x41abce45 # initialize rs1
bclri x25, x22, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xac5b99fd # initialize rs1
bclri x31, x23, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x0299f11b # initialize rs1
bclri x29, x24, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x72023943 # initialize rs1
bclri x23, x25, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xb9217d0d # initialize rs1
bclri x3, x26, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x2339a958 # initialize rs1
bclri x16, x27, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xf99ab516 # initialize rs1
bclri x3, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x90ce346b # initialize rs1
bclri x10, x29, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x488d7174 # initialize rs1
bclri x11, x30, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xc867f238 # initialize rs1
bclri x22, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 124)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0x6d3f2ca3 # initialize rs1
bclri x0, x3, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x19, 0xdf8096c3 # initialize rs1
bclri x1, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x23, 0xe5b4d0be # initialize rs1
bclri x2, x23, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x8, 0x1a2f17cc # initialize rs1
bclri x3, x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x033769df # initialize rs1
bclri x4, x29, 11 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x8218f149 # initialize rs1
bclri x5, x31, 0 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x4bf3dbb9 # initialize rs1
bclri x6, x23, 6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x97cc3bc0 # initialize rs1
bclri x7, x3, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x3, 0x83dc622a # initialize rs1
bclri x8, x3, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x5, 0x7d19c4a7 # initialize rs1
bclri x9, x5, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x26, 0x353a58e1 # initialize rs1
bclri x10, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x5, 0x879ccc7b # initialize rs1
bclri x11, x5, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0xf729e23a # initialize rs1
bclri x12, x10, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x6, 0xecb95336 # initialize rs1
bclri x13, x6, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x5c19c0fb # initialize rs1
bclri x14, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x26, 0xa0c1deb4 # initialize rs1
bclri x15, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x27, 0x12ac9515 # initialize rs1
bclri x16, x27, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x30, 0xd3681251 # initialize rs1
bclri x17, x30, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x19, 0x2f2888b6 # initialize rs1
bclri x18, x19, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x31, 0x3df7fe81 # initialize rs1
bclri x19, x31, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x21, 0x175edd58 # initialize rs1
bclri x20, x21, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0xe10507b2 # initialize rs1
bclri x21, x30, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x6, 0x1072a2a3 # initialize rs1
bclri x22, x6, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x14, 0x104e90d1 # initialize rs1
bclri x23, x14, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x22, 0x25e21846 # initialize rs1
bclri x24, x22, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0x49a62dc8 # initialize rs1
bclri x25, x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x9, 0x018850e6 # initialize rs1
bclri x26, x9, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x14, 0xc043309d # initialize rs1
bclri x27, x14, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x11, 0xc4b0021d # initialize rs1
bclri x28, x11, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x30, 0x953d7c65 # initialize rs1
bclri x29, x30, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x28, 0x7c2c13f2 # initialize rs1
bclri x30, x28, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x28, 0x35c61c59 # initialize rs1
bclri x31, x28, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x00000000 # initialize rs1
bclri x12, x3, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x16, 0x00000001 # initialize rs1
bclri x9, x16, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x28, 0x00000002 # initialize rs1
bclri x27, x28, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x30, 0x80000000 # initialize rs1
bclri x27, x30, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x12, 0x80000001 # initialize rs1
bclri x19, x12, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x11, 0x7fffffff # initialize rs1
bclri x18, x11, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x12, 0x7ffffffe # initialize rs1
bclri x27, x12, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x6, 0xffffffff # initialize rs1
bclri x3, x6, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x12, 0xfffffffe # initialize rs1
bclri x8, x12, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x2, 0x5bbc8872 # initialize rs1
bclri x3, x2, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x20, 0xaaaaaaaa # initialize rs1
bclri x31, x20, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x9, 0x55555555 # initialize rs1
bclri x12, x9, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xb5071efc # initialize rs1
bclri x0, x0, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x789844fb # initialize rs1
bclri x1, x1, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x767dd66a # initialize rs1
bclri x2, x2, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xc3880497 # initialize rs1
bclri x3, x3, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5def08eb # initialize rs1
bclri x4, x4, 27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7fce77c2 # initialize rs1
bclri x5, x5, 7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbb9ea5cc # initialize rs1
bclri x6, x6, 12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6d5f8219 # initialize rs1
bclri x7, x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xbbeed361 # initialize rs1
bclri x8, x8, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x073304f4 # initialize rs1
bclri x9, x9, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x1a105af6 # initialize rs1
bclri x10, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x4a98b0c7 # initialize rs1
bclri x11, x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x2c626960 # initialize rs1
bclri x12, x12, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xfa6f2077 # initialize rs1
bclri x13, x13, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x3ff0c032 # initialize rs1
bclri x14, x14, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x324e14d8 # initialize rs1
bclri x15, x15, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x2eb709d9 # initialize rs1
bclri x16, x16, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x5faba3a4 # initialize rs1
bclri x17, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x1605cb68 # initialize rs1
bclri x18, x18, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xde1a5cc6 # initialize rs1
bclri x19, x19, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x89f11131 # initialize rs1
bclri x20, x20, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd5de9c29 # initialize rs1
bclri x21, x21, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x8cfdbfa6 # initialize rs1
bclri x22, x22, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x7e7d0cce # initialize rs1
bclri x23, x23, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x40223d48 # initialize rs1
bclri x24, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x4108e941 # initialize rs1
bclri x25, x25, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x7e4390d3 # initialize rs1
bclri x26, x26, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xa1f94b8b # initialize rs1
bclri x27, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x186101c8 # initialize rs1
bclri x28, x28, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x53563e10 # initialize rs1
bclri x29, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xc9a4f21a # initialize rs1
bclri x30, x30, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x369f268f # initialize rs1
bclri x31, x31, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_uimm (Test bit = 0)
li x11, 0x2feb2079 # initialize rs1
bclri x19, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 432)

# Testcase cp_uimm (Test bit = 1)
li x8, 0x269944ba # initialize rs1
bclri x26, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 436)

# Testcase cp_uimm (Test bit = 2)
li x25, 0xc97d7b6d # initialize rs1
bclri x8, x25, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_uimm (Test bit = 3)
li x30, 0x73648ae5 # initialize rs1
bclri x7, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 444)

# Testcase cp_uimm (Test bit = 4)
li x17, 0x681b46d4 # initialize rs1
bclri x3, x17, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 448)

# Testcase cp_uimm (Test bit = 5)
li x24, 0x6e54c849 # initialize rs1
bclri x6, x24, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 452)

# Testcase cp_uimm (Test bit = 6)
li x5, 0x8fb097ab # initialize rs1
bclri x2, x5, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 456)

# Testcase cp_uimm (Test bit = 7)
li x23, 0x36c8594c # initialize rs1
bclri x10, x23, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 460)

# Testcase cp_uimm (Test bit = 8)
li x24, 0x6def517b # initialize rs1
bclri x23, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 464)

# Testcase cp_uimm (Test bit = 9)
li x3, 0x2aed495d # initialize rs1
bclri x26, x3, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 468)

# Testcase cp_uimm (Test bit = 10)
li x6, 0x0a191ff0 # initialize rs1
bclri x19, x6, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cp_uimm (Test bit = 11)
li x23, 0xae62fc80 # initialize rs1
bclri x9, x23, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 476)

# Testcase cp_uimm (Test bit = 12)
li x22, 0x6e2e6fef # initialize rs1
bclri x14, x22, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cp_uimm (Test bit = 13)
li x8, 0xc19a1280 # initialize rs1
bclri x10, x8, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 484)

# Testcase cp_uimm (Test bit = 14)
li x20, 0xe5e4b667 # initialize rs1
bclri x10, x20, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 488)

# Testcase cp_uimm (Test bit = 15)
li x16, 0xdbb0bdd4 # initialize rs1
bclri x13, x16, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 492)

# Testcase cp_uimm (Test bit = 16)
li x23, 0x1335ff21 # initialize rs1
bclri x3, x23, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 496)

# Testcase cp_uimm (Test bit = 17)
li x19, 0x2855bc41 # initialize rs1
bclri x29, x19, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 500)

# Testcase cp_uimm (Test bit = 18)
li x29, 0x09a2fdc2 # initialize rs1
bclri x15, x29, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 504)

# Testcase cp_uimm (Test bit = 19)
li x8, 0xf0130123 # initialize rs1
bclri x10, x8, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 508)

# Testcase cp_uimm (Test bit = 20)
li x5, 0xcda6839f # initialize rs1
bclri x10, x5, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cp_uimm (Test bit = 21)
li x18, 0xa011f60e # initialize rs1
bclri x25, x18, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 516)

# Testcase cp_uimm (Test bit = 22)
li x22, 0x853a6f38 # initialize rs1
bclri x6, x22, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 520)

# Testcase cp_uimm (Test bit = 23)
li x9, 0x1276c558 # initialize rs1
bclri x26, x9, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 524)

# Testcase cp_uimm (Test bit = 24)
li x10, 0xacd0003b # initialize rs1
bclri x2, x10, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_uimm (Test bit = 25)
li x8, 0x79df6074 # initialize rs1
bclri x14, x8, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 532)

# Testcase cp_uimm (Test bit = 26)
li x17, 0xd56d3081 # initialize rs1
bclri x20, x17, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 536)

# Testcase cp_uimm (Test bit = 27)
li x5, 0xa18dda6b # initialize rs1
bclri x9, x5, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 540)

# Testcase cp_uimm (Test bit = 28)
li x7, 0x22363fec # initialize rs1
bclri x28, x7, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cp_uimm (Test bit = 29)
li x13, 0xff72fd94 # initialize rs1
bclri x28, x13, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 548)

# Testcase cp_uimm (Test bit = 30)
li x15, 0xac171d2a # initialize rs1
bclri x10, x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 552)

# Testcase cp_uimm (Test bit = 31)
li x6, 0xc87d1b16 # initialize rs1
bclri x19, x6, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 556)

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x6, x25 # perform first operation
bclri x28, x20, 4 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x17, x3 # perform first operation
bclri x10, x13, 30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x2, x20 # perform first operation
bclri x9, x10, 28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x2, x8 # perform first operation
bclri x2, x29, 29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x28, x16 # perform first operation
bclri x7, x14, 21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x10, x2 # perform first operation
bclri x2, x11, 15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x24, x15 # perform first operation
bclri x27, x23, 13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x25, x16 # perform first operation
bclri x19, x29, 23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x22, x9 # perform first operation
bclri x17, x25, 13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x26, x22 # perform first operation
bclri x26, x10, 31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x13, x19 # perform first operation
bclri x19, x9, 28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x12, x22 # perform first operation
bclri x7, x19, 31 # perform second (triggering) operation

.EQU SIGSIZE,560


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
