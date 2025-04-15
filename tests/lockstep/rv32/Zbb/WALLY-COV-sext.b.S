///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbb/WALLY-COV-sext.b.S
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
li x0, 0x73a23249 # initialize rs1
sext.b x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x3e4cda9e # initialize rs1
sext.b x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xfd1509ab # initialize rs1
sext.b x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x3b68bf73 # initialize rs1
sext.b x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xef23bdde # initialize rs1
sext.b x12, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x04f73eba # initialize rs1
sext.b x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xab328ff5 # initialize rs1
sext.b x12, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3a52756e # initialize rs1
sext.b x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x353f00ef # initialize rs1
sext.b x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x51dabc8d # initialize rs1
sext.b x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xc7e7efeb # initialize rs1
sext.b x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x2cf90e64 # initialize rs1
sext.b x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x1ab8360e # initialize rs1
sext.b x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa41386b5 # initialize rs1
sext.b x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x21a7514a # initialize rs1
sext.b x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1b0d5b95 # initialize rs1
sext.b x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x3e0bd2e9 # initialize rs1
sext.b x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe3d0ad97 # initialize rs1
sext.b x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x56f83767 # initialize rs1
sext.b x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xd61e8c7d # initialize rs1
sext.b x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xe9d73562 # initialize rs1
sext.b x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x187ec651 # initialize rs1
sext.b x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xb2e3a910 # initialize rs1
sext.b x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x8bdbf2b9 # initialize rs1
sext.b x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x261ee9cf # initialize rs1
sext.b x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xc5f1c144 # initialize rs1
sext.b x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x779741bd # initialize rs1
sext.b x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x5bae51d6 # initialize rs1
sext.b x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x6527e039 # initialize rs1
sext.b x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x079435d3 # initialize rs1
sext.b x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xb47f84cb # initialize rs1
sext.b x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x5e7a69df # initialize rs1
sext.b x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 124)

# Testcase cp_rd (Test destination rd = x0)
li x21, 0xd2db03e5 # initialize rs1
sext.b x0, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xa2fd9faa # initialize rs1
sext.b x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xe8a8ef8e # initialize rs1
sext.b x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x22, 0xeffe4999 # initialize rs1
sext.b x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0xe223dc7e # initialize rs1
sext.b x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x10184b27 # initialize rs1
sext.b x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0x0b89ec54 # initialize rs1
sext.b x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0xb87ddeb8 # initialize rs1
sext.b x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x23, 0xf124e410 # initialize rs1
sext.b x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x6, 0x51d08650 # initialize rs1
sext.b x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x2, 0x25531506 # initialize rs1
sext.b x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x12, 0xde76e043 # initialize rs1
sext.b x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x18, 0x1b42ff8c # initialize rs1
sext.b x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0xccda8c1d # initialize rs1
sext.b x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0x94129162 # initialize rs1
sext.b x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x20, 0xba33b887 # initialize rs1
sext.b x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0x7458de3d # initialize rs1
sext.b x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0x7e621a75 # initialize rs1
sext.b x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x24, 0x2c367542 # initialize rs1
sext.b x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x7, 0xbff3a6a1 # initialize rs1
sext.b x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x28, 0x0c14d441 # initialize rs1
sext.b x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0x0d955ed0 # initialize rs1
sext.b x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x21, 0x51791e6e # initialize rs1
sext.b x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0xb10e8506 # initialize rs1
sext.b x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x5, 0x350c2bea # initialize rs1
sext.b x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0x22be8f97 # initialize rs1
sext.b x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x20, 0xf35fd26d # initialize rs1
sext.b x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x2, 0xd271939c # initialize rs1
sext.b x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x10, 0xf045138b # initialize rs1
sext.b x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x2, 0xd90cc4a1 # initialize rs1
sext.b x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x22, 0xac6e3aeb # initialize rs1
sext.b x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x22, 0x812e330d # initialize rs1
sext.b x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0x00000000 # initialize rs1
sext.b x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x00000001 # initialize rs1
sext.b x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0x00000002 # initialize rs1
sext.b x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x5, 0x80000000 # initialize rs1
sext.b x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x2, 0x80000001 # initialize rs1
sext.b x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x12, 0x7fffffff # initialize rs1
sext.b x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x19, 0x7ffffffe # initialize rs1
sext.b x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x26, 0xffffffff # initialize rs1
sext.b x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0xfffffffe # initialize rs1
sext.b x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x17, 0x5bbc8872 # initialize rs1
sext.b x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x20, 0xaaaaaaaa # initialize rs1
sext.b x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x12, 0x55555555 # initialize rs1
sext.b x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa363ad18 # initialize rs1
sext.b x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x6c4fba2e # initialize rs1
sext.b x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x6de4c1b5 # initialize rs1
sext.b x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x7a98b5ae # initialize rs1
sext.b x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2478cafe # initialize rs1
sext.b x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x96223e28 # initialize rs1
sext.b x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x03e2c48b # initialize rs1
sext.b x6, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xbc0b1d3a # initialize rs1
sext.b x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xfb013cfe # initialize rs1
sext.b x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x96d43476 # initialize rs1
sext.b x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x537b27ba # initialize rs1
sext.b x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x1c5d5ec3 # initialize rs1
sext.b x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3d6f71f6 # initialize rs1
sext.b x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x5a290a68 # initialize rs1
sext.b x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x9edfd5b8 # initialize rs1
sext.b x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x0f439c23 # initialize rs1
sext.b x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xd6d13b6c # initialize rs1
sext.b x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xed44445f # initialize rs1
sext.b x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x7c767657 # initialize rs1
sext.b x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x3c221a57 # initialize rs1
sext.b x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xe6e30418 # initialize rs1
sext.b x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xb841bcb4 # initialize rs1
sext.b x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x475baf7f # initialize rs1
sext.b x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x74affe8d # initialize rs1
sext.b x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x4532053e # initialize rs1
sext.b x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x64e786ab # initialize rs1
sext.b x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x9558ca9d # initialize rs1
sext.b x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xe0c65d2e # initialize rs1
sext.b x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x754cf02c # initialize rs1
sext.b x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xacf7308a # initialize rs1
sext.b x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xa8a6ffc1 # initialize rs1
sext.b x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x7746477e # initialize rs1
sext.b x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x17, x8 # perform first operation
sext.b x12, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x13, x14 # perform first operation
sext.b x31, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x6, x7 # perform first operation
sext.b x2, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x28, x5 # perform first operation
sext.b x13, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x25, x27 # perform first operation
sext.b x13, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x2, x11 # perform first operation
sext.b x5, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x25, x21 # perform first operation
sext.b x17, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x7, x29 # perform first operation
sext.b x5, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x1, x3 # perform first operation
sext.b x21, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x3, x18 # perform first operation
sext.b x3, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x21, x29 # perform first operation
sext.b x29, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x11, x5 # perform first operation
sext.b x19, x27 # perform second (triggering) operation

.EQU SIGSIZE,432


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
