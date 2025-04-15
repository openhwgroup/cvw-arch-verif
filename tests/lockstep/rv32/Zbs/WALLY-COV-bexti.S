///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbs/WALLY-COV-bexti.S
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
li x0, 0x7e4f80d9 # initialize rs1
bexti x9, x0, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8a1d91ab # initialize rs1
bexti x10, x1, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x7e94352b # initialize rs1
bexti x19, x2, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xf93d9baa # initialize rs1
bexti x13, x3, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2ae37491 # initialize rs1
bexti x7, x4, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x572b9284 # initialize rs1
bexti x31, x5, 8 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc822430c # initialize rs1
bexti x29, x6, 19 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8fcec199 # initialize rs1
bexti x30, x7, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xbd68468f # initialize rs1
bexti x28, x8, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x89a7aec9 # initialize rs1
bexti x12, x9, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x38ba522c # initialize rs1
bexti x6, x10, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x2f878097 # initialize rs1
bexti x19, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xd5a41e18 # initialize rs1
bexti x24, x12, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x67f2d8de # initialize rs1
bexti x6, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x6b9510c6 # initialize rs1
bexti x13, x14, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xbf518c5f # initialize rs1
bexti x5, x15, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x4cfd5918 # initialize rs1
bexti x6, x16, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x432820d1 # initialize rs1
bexti x25, x17, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x48658111 # initialize rs1
bexti x24, x18, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xef6442cf # initialize rs1
bexti x23, x19, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xd42024a1 # initialize rs1
bexti x1, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x50be8961 # initialize rs1
bexti x26, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xa8e54f27 # initialize rs1
bexti x2, x22, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x81fa9885 # initialize rs1
bexti x19, x23, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x64a7cf9a # initialize rs1
bexti x31, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x04305fda # initialize rs1
bexti x5, x25, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xc0f2cdfc # initialize rs1
bexti x12, x26, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x97626b9b # initialize rs1
bexti x13, x27, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x85661b2f # initialize rs1
bexti x29, x28, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x396b2b8b # initialize rs1
bexti x30, x29, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x875da525 # initialize rs1
bexti x3, x30, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x3873754b # initialize rs1
bexti x23, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 124)

# Testcase cp_rd (Test destination rd = x0)
li x25, 0x67591ce4 # initialize rs1
bexti x0, x25, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x9, 0x584daa7f # initialize rs1
bexti x1, x9, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x23, 0xb12b570f # initialize rs1
bexti x2, x23, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x17, 0x2f068839 # initialize rs1
bexti x3, x17, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x0f2b38b5 # initialize rs1
bexti x4, x17, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0xa9cdf2bc # initialize rs1
bexti x5, x30, 13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0xdbbd3a7b # initialize rs1
bexti x6, x5, 28 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0xeab15acf # initialize rs1
bexti x7, x17, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x2, 0x735d931b # initialize rs1
bexti x8, x2, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x31, 0x8e0285af # initialize rs1
bexti x9, x31, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x62a1823c # initialize rs1
bexti x10, x21, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0x08569e09 # initialize rs1
bexti x11, x8, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x20, 0xe7219588 # initialize rs1
bexti x12, x20, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x30, 0x49dc9abf # initialize rs1
bexti x13, x30, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x6, 0xed981dc6 # initialize rs1
bexti x14, x6, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0xed452fbf # initialize rs1
bexti x15, x12, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x29, 0x3bf7d360 # initialize rs1
bexti x16, x29, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x25, 0x916e3624 # initialize rs1
bexti x17, x25, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0x6bdde81e # initialize rs1
bexti x18, x14, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x6, 0xc6ea7742 # initialize rs1
bexti x19, x6, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0x94e4d4e5 # initialize rs1
bexti x20, x26, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x26, 0xbb6152fc # initialize rs1
bexti x21, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x1, 0x6a543f3a # initialize rs1
bexti x22, x1, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x24, 0x7cf4b349 # initialize rs1
bexti x23, x24, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x26, 0x15d91a40 # initialize rs1
bexti x24, x26, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x9, 0xb487cbef # initialize rs1
bexti x25, x9, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x84fcbcd9 # initialize rs1
bexti x26, x26, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0x039de091 # initialize rs1
bexti x27, x6, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x25, 0xc63ddd44 # initialize rs1
bexti x28, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x8, 0xb552c7d4 # initialize rs1
bexti x29, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x25, 0x18f0b084 # initialize rs1
bexti x30, x25, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0x8b04cb8a # initialize rs1
bexti x31, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x00000000 # initialize rs1
bexti x13, x2, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x00000001 # initialize rs1
bexti x5, x21, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x1, 0x00000002 # initialize rs1
bexti x25, x1, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x9, 0x80000000 # initialize rs1
bexti x14, x9, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x25, 0x80000001 # initialize rs1
bexti x11, x25, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x29, 0x7fffffff # initialize rs1
bexti x23, x29, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x16, 0x7ffffffe # initialize rs1
bexti x23, x16, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x30, 0xffffffff # initialize rs1
bexti x1, x30, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0xfffffffe # initialize rs1
bexti x1, x14, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rs1
bexti x7, x9, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x17, 0xaaaaaaaa # initialize rs1
bexti x18, x17, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x6, 0x55555555 # initialize rs1
bexti x22, x6, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x9959013d # initialize rs1
bexti x0, x0, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x974d6748 # initialize rs1
bexti x1, x1, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8cd0945b # initialize rs1
bexti x2, x2, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xba011fa1 # initialize rs1
bexti x3, x3, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf953ca2b # initialize rs1
bexti x4, x4, 9 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x3d5d9fc2 # initialize rs1
bexti x5, x5, 10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc3dfd780 # initialize rs1
bexti x6, x6, 2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcbfd1096 # initialize rs1
bexti x7, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x2fcc5fd2 # initialize rs1
bexti x8, x8, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x3c387aa4 # initialize rs1
bexti x9, x9, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x3fd22835 # initialize rs1
bexti x10, x10, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x264443fb # initialize rs1
bexti x11, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x9132d8f1 # initialize rs1
bexti x12, x12, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xbf3774ee # initialize rs1
bexti x13, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x91ad1eca # initialize rs1
bexti x14, x14, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb3c5a606 # initialize rs1
bexti x15, x15, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xe9130fff # initialize rs1
bexti x16, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x4847e770 # initialize rs1
bexti x17, x17, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xdf5459ca # initialize rs1
bexti x18, x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x3d96c4ba # initialize rs1
bexti x19, x19, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x2ee7b9bf # initialize rs1
bexti x20, x20, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x312cb4a6 # initialize rs1
bexti x21, x21, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x0f74cb08 # initialize rs1
bexti x22, x22, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xff2fd3ef # initialize rs1
bexti x23, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc07da431 # initialize rs1
bexti x24, x24, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xd3a6f81e # initialize rs1
bexti x25, x25, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xa717a987 # initialize rs1
bexti x26, x26, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xafc68476 # initialize rs1
bexti x27, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xb3fb6a9b # initialize rs1
bexti x28, x28, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1ccca891 # initialize rs1
bexti x29, x29, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x63315c8f # initialize rs1
bexti x30, x30, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x7c2eb190 # initialize rs1
bexti x31, x31, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_uimm (Test bit = 0)
li x25, 0xa5171ea3 # initialize rs1
bexti x7, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 432)

# Testcase cp_uimm (Test bit = 1)
li x23, 0x2df7bd77 # initialize rs1
bexti x11, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 436)

# Testcase cp_uimm (Test bit = 2)
li x15, 0x42b9b77c # initialize rs1
bexti x6, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 440)

# Testcase cp_uimm (Test bit = 3)
li x19, 0x0a79e37f # initialize rs1
bexti x20, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 444)

# Testcase cp_uimm (Test bit = 4)
li x6, 0x2586b632 # initialize rs1
bexti x22, x6, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 448)

# Testcase cp_uimm (Test bit = 5)
li x18, 0x3f0a0751 # initialize rs1
bexti x9, x18, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 452)

# Testcase cp_uimm (Test bit = 6)
li x16, 0xd71439a7 # initialize rs1
bexti x31, x16, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 456)

# Testcase cp_uimm (Test bit = 7)
li x11, 0xfcc0945d # initialize rs1
bexti x5, x11, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 460)

# Testcase cp_uimm (Test bit = 8)
li x12, 0x49c92b5d # initialize rs1
bexti x2, x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cp_uimm (Test bit = 9)
li x22, 0x7ae8160d # initialize rs1
bexti x31, x22, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 468)

# Testcase cp_uimm (Test bit = 10)
li x7, 0xedf1a1a3 # initialize rs1
bexti x27, x7, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_uimm (Test bit = 11)
li x10, 0xb0651bd3 # initialize rs1
bexti x8, x10, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 476)

# Testcase cp_uimm (Test bit = 12)
li x9, 0x4a3d3897 # initialize rs1
bexti x30, x9, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cp_uimm (Test bit = 13)
li x31, 0xef0c7df5 # initialize rs1
bexti x10, x31, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 484)

# Testcase cp_uimm (Test bit = 14)
li x11, 0x2f68b855 # initialize rs1
bexti x7, x11, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cp_uimm (Test bit = 15)
li x14, 0x400d0cfc # initialize rs1
bexti x15, x14, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 492)

# Testcase cp_uimm (Test bit = 16)
li x6, 0xa3c8dff4 # initialize rs1
bexti x10, x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 496)

# Testcase cp_uimm (Test bit = 17)
li x19, 0x1ec9289e # initialize rs1
bexti x7, x19, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 500)

# Testcase cp_uimm (Test bit = 18)
li x6, 0x43cffbfa # initialize rs1
bexti x16, x6, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cp_uimm (Test bit = 19)
li x5, 0x2c8e1fc5 # initialize rs1
bexti x14, x5, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 508)

# Testcase cp_uimm (Test bit = 20)
li x25, 0x1438fe63 # initialize rs1
bexti x5, x25, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 512)

# Testcase cp_uimm (Test bit = 21)
li x21, 0x5b8edcea # initialize rs1
bexti x22, x21, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 516)

# Testcase cp_uimm (Test bit = 22)
li x17, 0x2d153c8a # initialize rs1
bexti x3, x17, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cp_uimm (Test bit = 23)
li x30, 0xde026a9c # initialize rs1
bexti x24, x30, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 524)

# Testcase cp_uimm (Test bit = 24)
li x13, 0x17957b54 # initialize rs1
bexti x10, x13, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_uimm (Test bit = 25)
li x19, 0x43efa2e6 # initialize rs1
bexti x9, x19, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 532)

# Testcase cp_uimm (Test bit = 26)
li x27, 0x677a37d2 # initialize rs1
bexti x6, x27, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cp_uimm (Test bit = 27)
li x9, 0x81923879 # initialize rs1
bexti x3, x9, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 540)

# Testcase cp_uimm (Test bit = 28)
li x11, 0x1bc1c9e5 # initialize rs1
bexti x27, x11, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 544)

# Testcase cp_uimm (Test bit = 29)
li x14, 0x9f524faa # initialize rs1
bexti x28, x14, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 548)

# Testcase cp_uimm (Test bit = 30)
li x10, 0x67201894 # initialize rs1
bexti x5, x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 552)

# Testcase cp_uimm (Test bit = 31)
li x14, 0xa7c72012 # initialize rs1
bexti x7, x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 556)

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x24, x29 # perform first operation
bexti x22, x26, 31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x3, x21 # perform first operation
bexti x16, x28, 24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x18, x7 # perform first operation
bexti x29, x31, 10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x9, x18 # perform first operation
bexti x18, x15, 11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x31, x30 # perform first operation
bexti x25, x13, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x12, x25 # perform first operation
bexti x25, x5, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x25, x14 # perform first operation
bexti x17, x7, 31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x19, x11 # perform first operation
bexti x16, x3, 12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x25, x1 # perform first operation
bexti x21, x29, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x15, x13 # perform first operation
bexti x15, x20, 11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x26, x16, x17 # perform first operation
bexti x17, x20, 13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x18, x29 # perform first operation
bexti x16, x5, 12 # perform second (triggering) operation

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
