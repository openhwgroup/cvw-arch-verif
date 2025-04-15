///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zicsr/WALLY-COV-csrrw.S
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
