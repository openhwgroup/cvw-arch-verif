///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zknh/WALLY-COV-sha256sig1.S
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
li x0, 0x71874a3e # initialize rs1
sha256sig1 x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xd905977d # initialize rs1
sha256sig1 x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xa3a5243e # initialize rs1
sha256sig1 x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x99ad7fbf # initialize rs1
sha256sig1 x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7060d715 # initialize rs1
sha256sig1 x9, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0de6c96b # initialize rs1
sha256sig1 x17, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x744f6310 # initialize rs1
sha256sig1 x13, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5fe991f5 # initialize rs1
sha256sig1 x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x874a41b4 # initialize rs1
sha256sig1 x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2fd1d9ef # initialize rs1
sha256sig1 x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x4c7b4e5f # initialize rs1
sha256sig1 x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xfaefc963 # initialize rs1
sha256sig1 x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x884d1303 # initialize rs1
sha256sig1 x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x3133800d # initialize rs1
sha256sig1 x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x5fadbdcf # initialize rs1
sha256sig1 x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xdb959f32 # initialize rs1
sha256sig1 x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x32ab5f7e # initialize rs1
sha256sig1 x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe6127d1f # initialize rs1
sha256sig1 x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x80b9840d # initialize rs1
sha256sig1 x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xa7f0be8c # initialize rs1
sha256sig1 x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xd83a4497 # initialize rs1
sha256sig1 x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xf6bb9359 # initialize rs1
sha256sig1 x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xd7b9434f # initialize rs1
sha256sig1 x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xcc4941fa # initialize rs1
sha256sig1 x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xd44fff83 # initialize rs1
sha256sig1 x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xc4b302c5 # initialize rs1
sha256sig1 x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x8e29f396 # initialize rs1
sha256sig1 x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x1ba3a7de # initialize rs1
sha256sig1 x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x50a9e3c9 # initialize rs1
sha256sig1 x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x89e65f0e # initialize rs1
sha256sig1 x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x9241e14e # initialize rs1
sha256sig1 x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x7e3527b1 # initialize rs1
sha256sig1 x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 124)

# Testcase cp_rd (Test destination rd = x0)
li x25, 0xb3fd39d7 # initialize rs1
sha256sig1 x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x11, 0xa44450ca # initialize rs1
sha256sig1 x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x15, 0xa68079dc # initialize rs1
sha256sig1 x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x18, 0x7d98fa62 # initialize rs1
sha256sig1 x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0xfbab3123 # initialize rs1
sha256sig1 x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x4994365d # initialize rs1
sha256sig1 x5, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0x80e3727e # initialize rs1
sha256sig1 x6, x19 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0xd368bc32 # initialize rs1
sha256sig1 x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0x4c8c3cc6 # initialize rs1
sha256sig1 x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x21, 0x33fa2f85 # initialize rs1
sha256sig1 x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x5, 0xda556531 # initialize rs1
sha256sig1 x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x30, 0xcb516285 # initialize rs1
sha256sig1 x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0xe7254ad4 # initialize rs1
sha256sig1 x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x24, 0x514f556c # initialize rs1
sha256sig1 x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x21, 0x111df865 # initialize rs1
sha256sig1 x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0xeb282fde # initialize rs1
sha256sig1 x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x14, 0x999f7155 # initialize rs1
sha256sig1 x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x27, 0xf47abcdb # initialize rs1
sha256sig1 x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x23, 0x0042db78 # initialize rs1
sha256sig1 x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x9, 0xce10d909 # initialize rs1
sha256sig1 x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x19, 0x42a39410 # initialize rs1
sha256sig1 x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x18, 0x40439918 # initialize rs1
sha256sig1 x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x28, 0x678f2595 # initialize rs1
sha256sig1 x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x8, 0x54e0a14c # initialize rs1
sha256sig1 x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x2, 0x2cf083aa # initialize rs1
sha256sig1 x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x18, 0x6d5fdda9 # initialize rs1
sha256sig1 x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x10, 0x09e72784 # initialize rs1
sha256sig1 x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x9, 0x2c17f87b # initialize rs1
sha256sig1 x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x29, 0x26d60576 # initialize rs1
sha256sig1 x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x21, 0xecdd3a8d # initialize rs1
sha256sig1 x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x20, 0x9b984225 # initialize rs1
sha256sig1 x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x14, 0x5ad40f35 # initialize rs1
sha256sig1 x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x00000000 # initialize rs1
sha256sig1 x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x11, 0x00000001 # initialize rs1
sha256sig1 x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x27, 0x00000002 # initialize rs1
sha256sig1 x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x30, 0x80000000 # initialize rs1
sha256sig1 x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x31, 0x80000001 # initialize rs1
sha256sig1 x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x25, 0x7fffffff # initialize rs1
sha256sig1 x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x13, 0x7ffffffe # initialize rs1
sha256sig1 x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0xffffffff # initialize rs1
sha256sig1 x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x5, 0xfffffffe # initialize rs1
sha256sig1 x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x14, 0x5bbc8872 # initialize rs1
sha256sig1 x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x27, 0xaaaaaaaa # initialize rs1
sha256sig1 x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x20, 0x55555555 # initialize rs1
sha256sig1 x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd89b790b # initialize rs1
sha256sig1 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xd0b99d46 # initialize rs1
sha256sig1 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xafc10739 # initialize rs1
sha256sig1 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd10c3a9b # initialize rs1
sha256sig1 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x29aafe83 # initialize rs1
sha256sig1 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x968dbe56 # initialize rs1
sha256sig1 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x781d5e30 # initialize rs1
sha256sig1 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9c4960bd # initialize rs1
sha256sig1 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x75953950 # initialize rs1
sha256sig1 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x81f1b182 # initialize rs1
sha256sig1 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xb30f3725 # initialize rs1
sha256sig1 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa059cf83 # initialize rs1
sha256sig1 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x010fa7e3 # initialize rs1
sha256sig1 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x027a0a9a # initialize rs1
sha256sig1 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xadc1885d # initialize rs1
sha256sig1 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x6f63facb # initialize rs1
sha256sig1 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xbe2c6eda # initialize rs1
sha256sig1 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x17a7143b # initialize rs1
sha256sig1 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x7c3a0ef3 # initialize rs1
sha256sig1 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xdcde56ee # initialize rs1
sha256sig1 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x784e8425 # initialize rs1
sha256sig1 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x979130c0 # initialize rs1
sha256sig1 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6ed8fb50 # initialize rs1
sha256sig1 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x1d6518f9 # initialize rs1
sha256sig1 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x1c5d55fb # initialize rs1
sha256sig1 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x3a8336e7 # initialize rs1
sha256sig1 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x13b4af9d # initialize rs1
sha256sig1 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x688b2689 # initialize rs1
sha256sig1 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x27ed354e # initialize rs1
sha256sig1 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xde328223 # initialize rs1
sha256sig1 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4229bc30 # initialize rs1
sha256sig1 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe13a9a98 # initialize rs1
sha256sig1 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x20, x26 # perform first operation
sha256sig1 x15, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x9, x30 # perform first operation
sha256sig1 x7, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x31, x12 # perform first operation
sha256sig1 x13, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x8, x18 # perform first operation
sha256sig1 x26, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x28, x31 # perform first operation
sha256sig1 x31, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x6, x1 # perform first operation
sha256sig1 x6, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x12, x2 # perform first operation
sha256sig1 x5, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x18, x27 # perform first operation
sha256sig1 x11, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x19, x20 # perform first operation
sha256sig1 x1, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x22, x8 # perform first operation
sha256sig1 x22, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x31, x18 # perform first operation
sha256sig1 x18, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x8, x29 # perform first operation
sha256sig1 x18, x17 # perform second (triggering) operation

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
