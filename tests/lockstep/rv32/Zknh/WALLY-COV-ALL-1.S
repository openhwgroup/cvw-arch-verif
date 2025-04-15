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
// Tests from: WALLY-COV-sha256sig1.S
// ******************


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

#.EQU SIGSIZE,432


// ******************
// Tests from: WALLY-COV-sha512sig1l.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x003ee678 # initialize rs1
li x30, 0x25ebd378 # initialize rs2
sha512sig1l x14, x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb1d39ab3 # initialize rs1
li x7, 0x3ad144d0 # initialize rs2
sha512sig1l x19, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x47984654 # initialize rs1
li x11, 0x307574fc # initialize rs2
sha512sig1l x16, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x2c1c7905 # initialize rs1
li x31, 0x131f62ff # initialize rs2
sha512sig1l x21, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf9a5caaa # initialize rs1
li x18, 0xfaf91994 # initialize rs2
sha512sig1l x26, x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa750cffb # initialize rs1
li x3, 0x506c13f9 # initialize rs2
sha512sig1l x6, x5, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0x222300d2 # initialize rs1
li x23, 0x8f804c81 # initialize rs2
sha512sig1l x11, x6, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfe02d701 # initialize rs1
li x27, 0xb5216400 # initialize rs2
sha512sig1l x29, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x3486a197 # initialize rs1
li x17, 0xaef3a237 # initialize rs2
sha512sig1l x31, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc8ae7ad9 # initialize rs1
li x5, 0x65bda74d # initialize rs2
sha512sig1l x16, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x9eeb246b # initialize rs1
li x2, 0xe44575b9 # initialize rs2
sha512sig1l x14, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x3eae5edc # initialize rs1
li x22, 0xa4255f83 # initialize rs2
sha512sig1l x13, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xaa744c08 # initialize rs1
li x24, 0x70c11276 # initialize rs2
sha512sig1l x3, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xe3f3729e # initialize rs1
li x16, 0x165f8c80 # initialize rs2
sha512sig1l x27, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe249a2da # initialize rs1
li x3, 0x9f86b661 # initialize rs2
sha512sig1l x15, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xa2bb8fdb # initialize rs1
li x24, 0xb845ba52 # initialize rs2
sha512sig1l x16, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xa61a0efc # initialize rs1
li x20, 0xa36b3be7 # initialize rs2
sha512sig1l x9, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x05a00b92 # initialize rs1
li x24, 0xdbf33fba # initialize rs2
sha512sig1l x9, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x0f44bf84 # initialize rs1
li x15, 0xa82346ae # initialize rs2
sha512sig1l x11, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xc8522279 # initialize rs1
li x2, 0x4777d295 # initialize rs2
sha512sig1l x6, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xf58cbe46 # initialize rs1
li x19, 0xbd5ff767 # initialize rs2
sha512sig1l x22, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xcc2e59ee # initialize rs1
li x11, 0x29b2f8f7 # initialize rs2
sha512sig1l x13, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x9f699635 # initialize rs1
li x19, 0x5c4d4759 # initialize rs2
sha512sig1l x12, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xe3bc0ab9 # initialize rs1
li x24, 0x680a94e4 # initialize rs2
sha512sig1l x17, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xc553fa2a # initialize rs1
li x21, 0xf0dab223 # initialize rs2
sha512sig1l x11, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x56d3178c # initialize rs1
li x23, 0x17741ac6 # initialize rs2
sha512sig1l x19, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x682e46a2 # initialize rs1
li x21, 0x9aef6716 # initialize rs2
sha512sig1l x22, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x875999cf # initialize rs1
li x14, 0x5defe309 # initialize rs2
sha512sig1l x11, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xfb6cffc7 # initialize rs1
li x10, 0xd11fd309 # initialize rs2
sha512sig1l x24, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x0daa42e3 # initialize rs1
li x5, 0x94bd14b6 # initialize rs2
sha512sig1l x2, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xe0e9f648 # initialize rs1
li x5, 0x093e26c6 # initialize rs2
sha512sig1l x6, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x93e9a15f # initialize rs1
li x12, 0x49fcd6cf # initialize rs2
sha512sig1l x14, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x2, 0xc25011e5 # initialize rs1
li x0, 0x8f82f6a0 # initialize rs2
sha512sig1l x24, x2, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x22, 0x0c5b3651 # initialize rs1
li x1, 0xaa9a882e # initialize rs2
sha512sig1l x5, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x13, 0xddab14c0 # initialize rs1
li x2, 0xbf87fa3c # initialize rs2
sha512sig1l x14, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x9, 0x54c5fba9 # initialize rs1
li x3, 0xa2a063ac # initialize rs2
sha512sig1l x29, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0xe00c6283 # initialize rs1
li x4, 0x08bd789a # initialize rs2
sha512sig1l x11, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0x28fdac76 # initialize rs1
li x5, 0xd47ef3e8 # initialize rs2
sha512sig1l x4, x21, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0xa168832f # initialize rs1
li x6, 0x0e8f9caa # initialize rs2
sha512sig1l x2, x12, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0xf92022db # initialize rs1
li x7, 0x0549138e # initialize rs2
sha512sig1l x9, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x5, 0xc9fb9d20 # initialize rs1
li x8, 0xdb23eaa9 # initialize rs2
sha512sig1l x3, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x24, 0x64f8815a # initialize rs1
li x9, 0x7b47b00a # initialize rs2
sha512sig1l x28, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x17, 0x2dbb4ba2 # initialize rs1
li x10, 0xd01d21be # initialize rs2
sha512sig1l x1, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x24, 0x651154b6 # initialize rs1
li x11, 0x40e40ad8 # initialize rs2
sha512sig1l x13, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x31, 0xf1760562 # initialize rs1
li x12, 0xd701b3e5 # initialize rs2
sha512sig1l x14, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x24, 0xe9ef9213 # initialize rs1
li x13, 0x75f94825 # initialize rs2
sha512sig1l x29, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x24, 0xa7703db9 # initialize rs1
li x14, 0x6ca5b749 # initialize rs2
sha512sig1l x11, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x19, 0x6179ca3c # initialize rs1
li x15, 0x784333b9 # initialize rs2
sha512sig1l x21, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x11, 0xb6df63a5 # initialize rs1
li x16, 0xdbd26d22 # initialize rs2
sha512sig1l x9, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x11, 0x625803fd # initialize rs1
li x17, 0xc8852877 # initialize rs2
sha512sig1l x6, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0xc2a25a2d # initialize rs1
li x18, 0x7596cf99 # initialize rs2
sha512sig1l x22, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x7, 0xcf19aad1 # initialize rs1
li x19, 0xc0823404 # initialize rs2
sha512sig1l x15, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0xcffc666c # initialize rs1
li x20, 0x2e7f1b49 # initialize rs2
sha512sig1l x10, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x18, 0x55ed3101 # initialize rs1
li x21, 0x2a31dbe9 # initialize rs2
sha512sig1l x13, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0x3708bc02 # initialize rs1
li x22, 0xdcc33c35 # initialize rs2
sha512sig1l x29, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x15, 0x9c4257b0 # initialize rs1
li x23, 0x5b98f521 # initialize rs2
sha512sig1l x18, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x29, 0x0119358b # initialize rs1
li x24, 0x23690c32 # initialize rs2
sha512sig1l x31, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x20, 0x9148f653 # initialize rs1
li x25, 0x1211d78d # initialize rs2
sha512sig1l x9, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x8, 0xd0559cf6 # initialize rs1
li x26, 0xdbdd566c # initialize rs2
sha512sig1l x6, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x5, 0x748adc65 # initialize rs1
li x27, 0x98a35099 # initialize rs2
sha512sig1l x19, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x5, 0xe6d20398 # initialize rs1
li x28, 0xe9529e9d # initialize rs2
sha512sig1l x17, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x28, 0x31c09769 # initialize rs1
li x29, 0x7bae788c # initialize rs2
sha512sig1l x13, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x2, 0x1afc3fa0 # initialize rs1
li x30, 0x4cbda7fb # initialize rs2
sha512sig1l x14, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x24, 0x0712b39e # initialize rs1
li x31, 0xc8f01d0d # initialize rs2
sha512sig1l x17, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 252)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0xe474d257 # initialize rs1
li x25, 0xbb97463f # initialize rs2
sha512sig1l x0, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x20, 0xc7dd018d # initialize rs1
li x14, 0x36fae105 # initialize rs2
sha512sig1l x1, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x27, 0x293dae1c # initialize rs1
li x5, 0x65ef6a7c # initialize rs2
sha512sig1l x2, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x6, 0x6e66493f # initialize rs1
li x27, 0xcb38b7ec # initialize rs2
sha512sig1l x3, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0x507258e3 # initialize rs1
li x22, 0x23d17972 # initialize rs2
sha512sig1l x4, x9, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x26, 0xf8cd10b0 # initialize rs1
li x31, 0x39967204 # initialize rs2
sha512sig1l x5, x26, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0xc046abbd # initialize rs1
li x5, 0xfb598320 # initialize rs2
sha512sig1l x6, x1, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x3e7a6ad3 # initialize rs1
li x26, 0x1ee234ea # initialize rs2
sha512sig1l x7, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x15, 0xa1922177 # initialize rs1
li x21, 0x6bc7fcfd # initialize rs2
sha512sig1l x8, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x8, 0xb4b4b57f # initialize rs1
li x27, 0xb0ac0cd4 # initialize rs2
sha512sig1l x9, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x2, 0xc502338e # initialize rs1
li x9, 0xb2f9dd11 # initialize rs2
sha512sig1l x10, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x13, 0xef57df03 # initialize rs1
li x22, 0x70ece0e4 # initialize rs2
sha512sig1l x11, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x18, 0x1a28a259 # initialize rs1
li x12, 0x53cb66c2 # initialize rs2
sha512sig1l x12, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x17, 0x5e764a75 # initialize rs1
li x21, 0x7f1f3aef # initialize rs2
sha512sig1l x13, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0x5103c8c2 # initialize rs1
li x24, 0x61703333 # initialize rs2
sha512sig1l x14, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x2, 0x59c6420b # initialize rs1
li x16, 0x45cdf9ce # initialize rs2
sha512sig1l x15, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x24, 0xbf2e876b # initialize rs1
li x8, 0xc773b42e # initialize rs2
sha512sig1l x16, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x1, 0xe5abd9cb # initialize rs1
li x20, 0xe26b7fb2 # initialize rs2
sha512sig1l x17, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x28, 0xddc28171 # initialize rs1
li x20, 0x6639499a # initialize rs2
sha512sig1l x18, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x13, 0x84c6671e # initialize rs1
li x17, 0x940657c5 # initialize rs2
sha512sig1l x19, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x27, 0xe5a7eae8 # initialize rs1
li x17, 0xb29b0b4c # initialize rs2
sha512sig1l x20, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0xa64e0577 # initialize rs1
li x18, 0x1df880a6 # initialize rs2
sha512sig1l x21, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x20, 0xee26a12c # initialize rs1
li x29, 0x1350f61b # initialize rs2
sha512sig1l x22, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0xd5287f1b # initialize rs1
li x14, 0x45c067a4 # initialize rs2
sha512sig1l x23, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x15, 0x5c59d20d # initialize rs1
li x9, 0x3640e36e # initialize rs2
sha512sig1l x24, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x22, 0xfab9c105 # initialize rs1
li x27, 0x8889742f # initialize rs2
sha512sig1l x25, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x11, 0xdacb206c # initialize rs1
li x15, 0x8a33bff0 # initialize rs2
sha512sig1l x26, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x21, 0x6a4062b6 # initialize rs1
li x11, 0x8c30ba1f # initialize rs2
sha512sig1l x27, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x12, 0x25a65bc7 # initialize rs1
li x6, 0xd91d384b # initialize rs2
sha512sig1l x28, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x31, 0x302b12e9 # initialize rs1
li x28, 0x58b03131 # initialize rs2
sha512sig1l x29, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x27, 0xe62dfd6b # initialize rs1
li x24, 0xd8b00b35 # initialize rs2
sha512sig1l x30, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x15, 0x65c1c074 # initialize rs1
li x1, 0xa7cdc7a4 # initialize rs2
sha512sig1l x31, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x00000000 # initialize rs1
li x29, 0x2eb5017b # initialize rs2
sha512sig1l x16, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x27, 0x00000001 # initialize rs1
li x15, 0x8f74e809 # initialize rs2
sha512sig1l x19, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x19, 0x00000002 # initialize rs1
li x16, 0x32642ae9 # initialize rs2
sha512sig1l x1, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x7, 0x80000000 # initialize rs1
li x27, 0xc622b1b6 # initialize rs2
sha512sig1l x13, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x11, 0x80000001 # initialize rs1
li x16, 0xbc5878b7 # initialize rs2
sha512sig1l x26, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x25, 0x7fffffff # initialize rs1
li x21, 0x4a85b26c # initialize rs2
sha512sig1l x10, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x12, 0x7ffffffe # initialize rs1
li x6, 0xa4c0e51c # initialize rs2
sha512sig1l x14, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x30, 0xffffffff # initialize rs1
li x24, 0x0f1b9a40 # initialize rs2
sha512sig1l x10, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x5, 0xfffffffe # initialize rs1
li x10, 0x4dc1a506 # initialize rs2
sha512sig1l x30, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x16, 0x5bbc8872 # initialize rs1
li x27, 0x6e8cf0fb # initialize rs2
sha512sig1l x3, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x31, 0xaaaaaaaa # initialize rs1
li x24, 0xa2a9634c # initialize rs2
sha512sig1l x27, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x11, 0x55555555 # initialize rs1
li x14, 0x87aedf63 # initialize rs2
sha512sig1l x1, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x30, 0x6817b962 # initialize rs1
li x28, 0x00000000 # initialize rs2
sha512sig1l x7, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x8, 0x900b66f9 # initialize rs1
li x9, 0x00000001 # initialize rs2
sha512sig1l x20, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x29, 0x6f4121b5 # initialize rs1
li x8, 0x00000002 # initialize rs2
sha512sig1l x21, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x31, 0x2c08e96f # initialize rs1
li x21, 0x80000000 # initialize rs2
sha512sig1l x2, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x23, 0x95a01cb8 # initialize rs1
li x24, 0x80000001 # initialize rs2
sha512sig1l x10, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x21, 0xfa79dcbf # initialize rs1
li x16, 0x7fffffff # initialize rs2
sha512sig1l x19, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x20, 0xd433cc9f # initialize rs1
li x7, 0x7ffffffe # initialize rs2
sha512sig1l x19, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x14, 0x12e0f74a # initialize rs1
li x20, 0xffffffff # initialize rs2
sha512sig1l x21, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0xacea41a5 # initialize rs1
li x16, 0xfffffffe # initialize rs2
sha512sig1l x31, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x21, 0x23576ee8 # initialize rs1
li x3, 0x5bbc8872 # initialize rs2
sha512sig1l x20, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x17, 0x539c5e51 # initialize rs1
li x5, 0xaaaaaaaa # initialize rs2
sha512sig1l x26, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x1, 0x43d89525 # initialize rs1
li x17, 0x55555555 # initialize rs2
sha512sig1l x15, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0x00000000 # initialize rs1
li x15, 0x00000000 # initialize rs2
sha512sig1l x19, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x12, 0x00000000 # initialize rs1
li x18, 0x00000001 # initialize rs2
sha512sig1l x27, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x30, 0x00000000 # initialize rs1
li x31, 0x00000002 # initialize rs2
sha512sig1l x25, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x31, 0x00000000 # initialize rs1
li x11, 0x80000000 # initialize rs2
sha512sig1l x27, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x2, 0x00000000 # initialize rs1
li x14, 0x80000001 # initialize rs2
sha512sig1l x31, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x15, 0x00000000 # initialize rs1
li x24, 0x7fffffff # initialize rs2
sha512sig1l x1, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x14, 0x00000000 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sha512sig1l x16, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x7, 0x00000000 # initialize rs1
li x24, 0xffffffff # initialize rs2
sha512sig1l x12, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x7, 0x00000000 # initialize rs1
li x1, 0xfffffffe # initialize rs2
sha512sig1l x23, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x9, 0x00000000 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
sha512sig1l x18, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x25, 0x00000000 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
sha512sig1l x29, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x16, 0x00000000 # initialize rs1
li x8, 0x55555555 # initialize rs2
sha512sig1l x2, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x21, 0x00000001 # initialize rs1
li x22, 0x00000000 # initialize rs2
sha512sig1l x27, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x19, 0x00000001 # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sig1l x3, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x6, 0x00000001 # initialize rs1
li x27, 0x00000002 # initialize rs2
sha512sig1l x20, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x15, 0x00000001 # initialize rs1
li x22, 0x80000000 # initialize rs2
sha512sig1l x2, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x11, 0x00000001 # initialize rs1
li x10, 0x80000001 # initialize rs2
sha512sig1l x19, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x22, 0x00000001 # initialize rs1
li x23, 0x7fffffff # initialize rs2
sha512sig1l x10, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x5, 0x00000001 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
sha512sig1l x24, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x2, 0x00000001 # initialize rs1
li x24, 0xffffffff # initialize rs2
sha512sig1l x20, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x15, 0x00000001 # initialize rs1
li x25, 0xfffffffe # initialize rs2
sha512sig1l x5, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x13, 0x00000001 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
sha512sig1l x14, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x28, 0x00000001 # initialize rs1
li x24, 0xaaaaaaaa # initialize rs2
sha512sig1l x18, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x7, 0x00000001 # initialize rs1
li x5, 0x55555555 # initialize rs2
sha512sig1l x13, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x13, 0x00000002 # initialize rs1
li x17, 0x00000000 # initialize rs2
sha512sig1l x29, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x18, 0x00000002 # initialize rs1
li x27, 0x00000001 # initialize rs2
sha512sig1l x7, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x25, 0x00000002 # initialize rs1
li x5, 0x00000002 # initialize rs2
sha512sig1l x31, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x13, 0x00000002 # initialize rs1
li x26, 0x80000000 # initialize rs2
sha512sig1l x20, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x5, 0x00000002 # initialize rs1
li x20, 0x80000001 # initialize rs2
sha512sig1l x18, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x19, 0x00000002 # initialize rs1
li x13, 0x7fffffff # initialize rs2
sha512sig1l x15, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x10, 0x00000002 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
sha512sig1l x29, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x20, 0x00000002 # initialize rs1
li x6, 0xffffffff # initialize rs2
sha512sig1l x19, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x24, 0x00000002 # initialize rs1
li x5, 0xfffffffe # initialize rs2
sha512sig1l x3, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x30, 0x00000002 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
sha512sig1l x14, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x23, 0x00000002 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
sha512sig1l x25, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x14, 0x00000002 # initialize rs1
li x28, 0x55555555 # initialize rs2
sha512sig1l x6, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x3, 0x80000000 # initialize rs1
li x31, 0x00000000 # initialize rs2
sha512sig1l x18, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x25, 0x80000000 # initialize rs1
li x29, 0x00000001 # initialize rs2
sha512sig1l x28, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x12, 0x80000000 # initialize rs1
li x14, 0x00000002 # initialize rs2
sha512sig1l x2, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x23, 0x80000000 # initialize rs1
li x6, 0x80000000 # initialize rs2
sha512sig1l x2, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x11, 0x80000000 # initialize rs1
li x13, 0x80000001 # initialize rs2
sha512sig1l x3, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x29, 0x80000000 # initialize rs1
li x5, 0x7fffffff # initialize rs2
sha512sig1l x21, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x17, 0x80000000 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
sha512sig1l x21, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x1, 0x80000000 # initialize rs1
li x11, 0xffffffff # initialize rs2
sha512sig1l x27, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x12, 0x80000000 # initialize rs1
li x19, 0xfffffffe # initialize rs2
sha512sig1l x7, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x21, 0x80000000 # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
sha512sig1l x5, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x17, 0x80000000 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
sha512sig1l x23, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x29, 0x80000000 # initialize rs1
li x15, 0x55555555 # initialize rs2
sha512sig1l x27, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x2, 0x80000001 # initialize rs1
li x29, 0x00000000 # initialize rs2
sha512sig1l x14, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x20, 0x80000001 # initialize rs1
li x23, 0x00000001 # initialize rs2
sha512sig1l x19, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x13, 0x80000001 # initialize rs1
li x7, 0x00000002 # initialize rs2
sha512sig1l x31, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x1, 0x80000001 # initialize rs1
li x6, 0x80000000 # initialize rs2
sha512sig1l x27, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x17, 0x80000001 # initialize rs1
li x3, 0x80000001 # initialize rs2
sha512sig1l x31, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x25, 0x80000001 # initialize rs1
li x8, 0x7fffffff # initialize rs2
sha512sig1l x12, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x25, 0x80000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
sha512sig1l x10, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x15, 0x80000001 # initialize rs1
li x6, 0xffffffff # initialize rs2
sha512sig1l x3, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x23, 0x80000001 # initialize rs1
li x20, 0xfffffffe # initialize rs2
sha512sig1l x15, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x6, 0x80000001 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
sha512sig1l x7, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x25, 0x80000001 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
sha512sig1l x30, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x15, 0x80000001 # initialize rs1
li x31, 0x55555555 # initialize rs2
sha512sig1l x21, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x29, 0x7fffffff # initialize rs1
li x17, 0x00000000 # initialize rs2
sha512sig1l x3, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x17, 0x7fffffff # initialize rs1
li x5, 0x00000001 # initialize rs2
sha512sig1l x30, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x18, 0x7fffffff # initialize rs1
li x14, 0x00000002 # initialize rs2
sha512sig1l x2, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x15, 0x7fffffff # initialize rs1
li x26, 0x80000000 # initialize rs2
sha512sig1l x17, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x12, 0x7fffffff # initialize rs1
li x14, 0x80000001 # initialize rs2
sha512sig1l x27, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x31, 0x7fffffff # initialize rs1
li x20, 0x7fffffff # initialize rs2
sha512sig1l x30, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x10, 0x7fffffff # initialize rs1
li x8, 0x7ffffffe # initialize rs2
sha512sig1l x23, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x22, 0x7fffffff # initialize rs1
li x18, 0xffffffff # initialize rs2
sha512sig1l x25, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x25, 0x7fffffff # initialize rs1
li x30, 0xfffffffe # initialize rs2
sha512sig1l x13, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x6, 0x7fffffff # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
sha512sig1l x25, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x2, 0x7fffffff # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
sha512sig1l x29, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x15, 0x7fffffff # initialize rs1
li x16, 0x55555555 # initialize rs2
sha512sig1l x9, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x18, 0x7ffffffe # initialize rs1
li x25, 0x00000000 # initialize rs2
sha512sig1l x17, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x23, 0x7ffffffe # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sig1l x26, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x7, 0x7ffffffe # initialize rs1
li x30, 0x00000002 # initialize rs2
sha512sig1l x26, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x28, 0x7ffffffe # initialize rs1
li x26, 0x80000000 # initialize rs2
sha512sig1l x3, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x24, 0x7ffffffe # initialize rs1
li x7, 0x80000001 # initialize rs2
sha512sig1l x28, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x17, 0x7ffffffe # initialize rs1
li x23, 0x7fffffff # initialize rs2
sha512sig1l x5, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x13, 0x7ffffffe # initialize rs1
li x6, 0x7ffffffe # initialize rs2
sha512sig1l x7, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x9, 0x7ffffffe # initialize rs1
li x11, 0xffffffff # initialize rs2
sha512sig1l x24, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x16, 0x7ffffffe # initialize rs1
li x22, 0xfffffffe # initialize rs2
sha512sig1l x15, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x8, 0x7ffffffe # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
sha512sig1l x12, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x26, 0x7ffffffe # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
sha512sig1l x7, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x15, 0x7ffffffe # initialize rs1
li x26, 0x55555555 # initialize rs2
sha512sig1l x20, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x13, 0xffffffff # initialize rs1
li x1, 0x00000000 # initialize rs2
sha512sig1l x2, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x21, 0xffffffff # initialize rs1
li x19, 0x00000001 # initialize rs2
sha512sig1l x27, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x10, 0xffffffff # initialize rs1
li x21, 0x00000002 # initialize rs2
sha512sig1l x1, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x8, 0xffffffff # initialize rs1
li x25, 0x80000000 # initialize rs2
sha512sig1l x13, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x29, 0xffffffff # initialize rs1
li x9, 0x80000001 # initialize rs2
sha512sig1l x17, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x14, 0xffffffff # initialize rs1
li x25, 0x7fffffff # initialize rs2
sha512sig1l x6, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x28, 0xffffffff # initialize rs1
li x16, 0x7ffffffe # initialize rs2
sha512sig1l x9, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x28, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
sha512sig1l x29, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x12, 0xffffffff # initialize rs1
li x7, 0xfffffffe # initialize rs2
sha512sig1l x20, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x6, 0xffffffff # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
sha512sig1l x25, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x23, 0xffffffff # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
sha512sig1l x10, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x19, 0xffffffff # initialize rs1
li x14, 0x55555555 # initialize rs2
sha512sig1l x25, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x13, 0xfffffffe # initialize rs1
li x28, 0x00000000 # initialize rs2
sha512sig1l x20, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x31, 0xfffffffe # initialize rs1
li x26, 0x00000001 # initialize rs2
sha512sig1l x14, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x24, 0xfffffffe # initialize rs1
li x10, 0x00000002 # initialize rs2
sha512sig1l x13, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x31, 0xfffffffe # initialize rs1
li x20, 0x80000000 # initialize rs2
sha512sig1l x23, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x18, 0xfffffffe # initialize rs1
li x19, 0x80000001 # initialize rs2
sha512sig1l x5, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x30, 0xfffffffe # initialize rs1
li x2, 0x7fffffff # initialize rs2
sha512sig1l x23, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x1, 0xfffffffe # initialize rs1
li x31, 0x7ffffffe # initialize rs2
sha512sig1l x19, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x20, 0xfffffffe # initialize rs1
li x1, 0xffffffff # initialize rs2
sha512sig1l x29, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x5, 0xfffffffe # initialize rs1
li x3, 0xfffffffe # initialize rs2
sha512sig1l x28, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x10, 0xfffffffe # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
sha512sig1l x24, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x28, 0xfffffffe # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
sha512sig1l x7, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x9, 0xfffffffe # initialize rs1
li x22, 0x55555555 # initialize rs2
sha512sig1l x31, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x17, 0x5bbc8872 # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sig1l x12, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x9, 0x5bbc8872 # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sig1l x17, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x31, 0x5bbc8872 # initialize rs1
li x29, 0x00000002 # initialize rs2
sha512sig1l x14, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x1, 0x5bbc8872 # initialize rs1
li x3, 0x80000000 # initialize rs2
sha512sig1l x20, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x13, 0x5bbc8872 # initialize rs1
li x6, 0x80000001 # initialize rs2
sha512sig1l x12, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x13, 0x5bbc8872 # initialize rs1
li x7, 0x7fffffff # initialize rs2
sha512sig1l x11, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x16, 0x5bbc8872 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
sha512sig1l x6, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x17, 0x5bbc8872 # initialize rs1
li x22, 0xffffffff # initialize rs2
sha512sig1l x27, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x18, 0x5bbc8872 # initialize rs1
li x1, 0xfffffffe # initialize rs2
sha512sig1l x13, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x3, 0x5bbc8872 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
sha512sig1l x14, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x18, 0x5bbc8872 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
sha512sig1l x12, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x16, 0x5bbc8872 # initialize rs1
li x15, 0x55555555 # initialize rs2
sha512sig1l x18, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x10, 0xaaaaaaaa # initialize rs1
li x18, 0x00000000 # initialize rs2
sha512sig1l x3, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x18, 0xaaaaaaaa # initialize rs1
li x7, 0x00000001 # initialize rs2
sha512sig1l x29, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x11, 0xaaaaaaaa # initialize rs1
li x27, 0x00000002 # initialize rs2
sha512sig1l x9, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x13, 0xaaaaaaaa # initialize rs1
li x8, 0x80000000 # initialize rs2
sha512sig1l x21, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x26, 0xaaaaaaaa # initialize rs1
li x3, 0x80000001 # initialize rs2
sha512sig1l x22, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x23, 0xaaaaaaaa # initialize rs1
li x13, 0x7fffffff # initialize rs2
sha512sig1l x25, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x19, 0xaaaaaaaa # initialize rs1
li x13, 0x7ffffffe # initialize rs2
sha512sig1l x26, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x31, 0xaaaaaaaa # initialize rs1
li x3, 0xffffffff # initialize rs2
sha512sig1l x27, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x18, 0xaaaaaaaa # initialize rs1
li x24, 0xfffffffe # initialize rs2
sha512sig1l x9, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x6, 0xaaaaaaaa # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
sha512sig1l x3, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x22, 0xaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
sha512sig1l x20, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x18, 0xaaaaaaaa # initialize rs1
li x1, 0x55555555 # initialize rs2
sha512sig1l x25, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x2, 0x55555555 # initialize rs1
li x3, 0x00000000 # initialize rs2
sha512sig1l x18, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x23, 0x55555555 # initialize rs1
li x25, 0x00000001 # initialize rs2
sha512sig1l x6, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x6, 0x55555555 # initialize rs1
li x16, 0x00000002 # initialize rs2
sha512sig1l x20, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x19, 0x55555555 # initialize rs1
li x30, 0x80000000 # initialize rs2
sha512sig1l x21, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x28, 0x55555555 # initialize rs1
li x21, 0x80000001 # initialize rs2
sha512sig1l x1, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x14, 0x55555555 # initialize rs1
li x21, 0x7fffffff # initialize rs2
sha512sig1l x24, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x25, 0x55555555 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
sha512sig1l x8, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x3, 0x55555555 # initialize rs1
li x1, 0xffffffff # initialize rs2
sha512sig1l x30, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x28, 0x55555555 # initialize rs1
li x6, 0xfffffffe # initialize rs2
sha512sig1l x3, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x21, 0x55555555 # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
sha512sig1l x23, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x6, 0x55555555 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
sha512sig1l x23, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x17, 0x55555555 # initialize rs1
li x19, 0x55555555 # initialize rs2
sha512sig1l x16, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x524c9740 # initialize rs1
li x0, 0xdfbe1d2d # initialize rs2
sha512sig1l x8, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x984f7ccc # initialize rs1
li x1, 0x9b05b151 # initialize rs2
sha512sig1l x18, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc046e552 # initialize rs1
li x2, 0x5bd610f2 # initialize rs2
sha512sig1l x3, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xfe004e1c # initialize rs1
li x3, 0x3223a0f0 # initialize rs2
sha512sig1l x6, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x58e36a12 # initialize rs1
li x4, 0xd22fe2c9 # initialize rs2
sha512sig1l x12, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x83d222f3 # initialize rs1
li x5, 0xa6d73607 # initialize rs2
sha512sig1l x21, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x64fa94e6 # initialize rs1
li x6, 0xe14ef39d # initialize rs2
sha512sig1l x1, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x1, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd7a5be92 # initialize rs1
li x7, 0x9e139cfa # initialize rs2
sha512sig1l x6, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6c1e4fb4 # initialize rs1
li x8, 0x5e320fdb # initialize rs2
sha512sig1l x24, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xfa04b019 # initialize rs1
li x9, 0xd9d3da78 # initialize rs2
sha512sig1l x14, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xa6c75eec # initialize rs1
li x10, 0x107357ee # initialize rs2
sha512sig1l x5, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x85ce8d42 # initialize rs1
li x11, 0x6b9508c9 # initialize rs2
sha512sig1l x27, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x711a9649 # initialize rs1
li x12, 0x86846d28 # initialize rs2
sha512sig1l x11, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xb4dcc0c7 # initialize rs1
li x13, 0xd14ddc66 # initialize rs2
sha512sig1l x9, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x9f402c29 # initialize rs1
li x14, 0x6e6570d5 # initialize rs2
sha512sig1l x20, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x85abbeb8 # initialize rs1
li x15, 0x26e58648 # initialize rs2
sha512sig1l x28, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xbce8778b # initialize rs1
li x16, 0xbbadffc1 # initialize rs2
sha512sig1l x19, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xf77c7f54 # initialize rs1
li x17, 0xd79f203c # initialize rs2
sha512sig1l x2, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xa4391e3f # initialize rs1
li x18, 0xfa2e1a0d # initialize rs2
sha512sig1l x11, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x366ff17b # initialize rs1
li x19, 0x41a6e590 # initialize rs2
sha512sig1l x18, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xc9a61f01 # initialize rs1
li x20, 0x2d3265c6 # initialize rs2
sha512sig1l x14, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xe3dff881 # initialize rs1
li x21, 0x7d7c4132 # initialize rs2
sha512sig1l x9, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xbadb7a83 # initialize rs1
li x22, 0x636e876d # initialize rs2
sha512sig1l x18, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xbdc3f62a # initialize rs1
li x23, 0xb27f02ae # initialize rs2
sha512sig1l x14, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x2f4ca176 # initialize rs1
li x24, 0x260b1ef4 # initialize rs2
sha512sig1l x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xbf569e97 # initialize rs1
li x25, 0x075e2325 # initialize rs2
sha512sig1l x24, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x72ce7291 # initialize rs1
li x26, 0x6c94e82d # initialize rs2
sha512sig1l x1, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x07190bed # initialize rs1
li x27, 0x6578eaf4 # initialize rs2
sha512sig1l x23, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x85ae8bcc # initialize rs1
li x28, 0x74a1640a # initialize rs2
sha512sig1l x9, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x511539c7 # initialize rs1
li x29, 0x33be9cfc # initialize rs2
sha512sig1l x28, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x2dfa959a # initialize rs1
li x30, 0x0461c44e # initialize rs2
sha512sig1l x11, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x6bb3adb0 # initialize rs1
li x31, 0xf3199b4b # initialize rs2
sha512sig1l x6, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x00794710 # initialize rs1
li x28, 0x01aed80d # initialize rs2
sha512sig1l x0, x0, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x57810d24 # initialize rs1
li x14, 0x69df8555 # initialize rs2
sha512sig1l x1, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x3dc27b75 # initialize rs1
li x14, 0xb86f93bf # initialize rs2
sha512sig1l x2, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x34d8c1a3 # initialize rs1
li x20, 0xefa3c23f # initialize rs2
sha512sig1l x3, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd9b4d4e4 # initialize rs1
li x10, 0x8ae944cb # initialize rs2
sha512sig1l x4, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7715b9d9 # initialize rs1
li x4, 0x6b5e1241 # initialize rs2
sha512sig1l x5, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2a9d4051 # initialize rs1
li x13, 0xbf09b66c # initialize rs2
sha512sig1l x6, x6, x13 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3faf50cc # initialize rs1
li x28, 0x6025cc78 # initialize rs2
sha512sig1l x7, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xaefd0e46 # initialize rs1
li x18, 0xd2cb3701 # initialize rs2
sha512sig1l x8, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc0b9eaf6 # initialize rs1
li x10, 0x5b265b5b # initialize rs2
sha512sig1l x9, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x08c8b26c # initialize rs1
li x8, 0x723937aa # initialize rs2
sha512sig1l x10, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xec3311ac # initialize rs1
li x5, 0xa268028f # initialize rs2
sha512sig1l x11, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x6ed24a18 # initialize rs1
li x28, 0x9af520ed # initialize rs2
sha512sig1l x12, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xb23e2384 # initialize rs1
li x1, 0xc1756a26 # initialize rs2
sha512sig1l x13, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x74628b3c # initialize rs1
li x30, 0xbe962caa # initialize rs2
sha512sig1l x14, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x0246550e # initialize rs1
li x13, 0xfd4fa4e3 # initialize rs2
sha512sig1l x15, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x0dff1b4c # initialize rs1
li x21, 0x5359d423 # initialize rs2
sha512sig1l x16, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x27f44e08 # initialize rs1
li x11, 0xd144496b # initialize rs2
sha512sig1l x17, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x36ee9313 # initialize rs1
li x13, 0xefb34d56 # initialize rs2
sha512sig1l x18, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x7f609cb3 # initialize rs1
li x9, 0x46480684 # initialize rs2
sha512sig1l x19, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xd39a98e9 # initialize rs1
li x20, 0xd319baa6 # initialize rs2
sha512sig1l x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xcb5eac60 # initialize rs1
li x29, 0x9d4efe2b # initialize rs2
sha512sig1l x21, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x67993379 # initialize rs1
li x17, 0x21ffb782 # initialize rs2
sha512sig1l x22, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xc1372c8e # initialize rs1
li x6, 0xb8df7b97 # initialize rs2
sha512sig1l x23, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe41bff18 # initialize rs1
li x1, 0x9a9f3f0d # initialize rs2
sha512sig1l x24, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x115b2c77 # initialize rs1
li x1, 0x30f10f57 # initialize rs2
sha512sig1l x25, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x4662e63b # initialize rs1
li x6, 0xefa557c3 # initialize rs2
sha512sig1l x26, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x74848a68 # initialize rs1
li x11, 0xb7c7a8ac # initialize rs2
sha512sig1l x27, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xd756f58f # initialize rs1
li x14, 0x5edb649d # initialize rs2
sha512sig1l x28, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xc7c621ad # initialize rs1
li x5, 0xfd6548f7 # initialize rs2
sha512sig1l x29, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x7e7c8e79 # initialize rs1
li x12, 0xa9de2eba # initialize rs2
sha512sig1l x30, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x4d82fd3f # initialize rs1
li x27, 0x208ef902 # initialize rs2
sha512sig1l x31, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x18, 0xce54c45c # initialize rs1
li x0, 0x549a02a1 # initialize rs2
sha512sig1l x0, x18, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0xe3f046b9 # initialize rs1
li x1, 0xd270f3a3 # initialize rs2
sha512sig1l x1, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x28, 0xcc7e46a2 # initialize rs1
li x2, 0x10a48b33 # initialize rs2
sha512sig1l x2, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x28, 0x476db184 # initialize rs1
li x3, 0x1e5985da # initialize rs2
sha512sig1l x3, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0x8572c465 # initialize rs1
li x4, 0xc52f6e08 # initialize rs2
sha512sig1l x4, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
li x10, 0x7a57675a # initialize rs1
li x5, 0x4e930ad8 # initialize rs2
sha512sig1l x5, x10, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0x2efe8c55 # initialize rs1
li x6, 0x548e7ae9 # initialize rs2
sha512sig1l x6, x25, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xac110754 # initialize rs1
li x7, 0x71fcec81 # initialize rs2
sha512sig1l x7, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x28, 0xa5f71185 # initialize rs1
li x8, 0xfb1fd67b # initialize rs2
sha512sig1l x8, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x18, 0x969a9e25 # initialize rs1
li x9, 0x7d22fdbb # initialize rs2
sha512sig1l x9, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x27, 0x4f975af2 # initialize rs1
li x10, 0x5f4824f1 # initialize rs2
sha512sig1l x10, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x20, 0x4ba8cc22 # initialize rs1
li x11, 0xe9d8a90d # initialize rs2
sha512sig1l x11, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x3, 0x203adb48 # initialize rs1
li x12, 0x71bab9e4 # initialize rs2
sha512sig1l x12, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x21, 0x189a39e6 # initialize rs1
li x13, 0x16bec94e # initialize rs2
sha512sig1l x13, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x21, 0xb491ea45 # initialize rs1
li x14, 0x78e06691 # initialize rs2
sha512sig1l x14, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x11, 0x922777db # initialize rs1
li x15, 0x05b619cd # initialize rs2
sha512sig1l x15, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x8, 0x5dbd2d75 # initialize rs1
li x16, 0x12f273f1 # initialize rs2
sha512sig1l x16, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x14, 0x9955ab0a # initialize rs1
li x17, 0xcad33e83 # initialize rs2
sha512sig1l x17, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x12, 0x0f8bfe84 # initialize rs1
li x18, 0x048c1948 # initialize rs2
sha512sig1l x18, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x14, 0x3787124f # initialize rs1
li x19, 0x2688c891 # initialize rs2
sha512sig1l x19, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x19, 0xd7cc9338 # initialize rs1
li x20, 0x60249f9c # initialize rs2
sha512sig1l x20, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x31, 0xab2b6881 # initialize rs1
li x21, 0xb0ef7213 # initialize rs2
sha512sig1l x21, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x9, 0x2748aaa3 # initialize rs1
li x22, 0xb57c431d # initialize rs2
sha512sig1l x22, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x22, 0xf93b56da # initialize rs1
li x23, 0x03339b83 # initialize rs2
sha512sig1l x23, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x9, 0x6d6e2890 # initialize rs1
li x24, 0x97943d64 # initialize rs2
sha512sig1l x24, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x13, 0xa3ae8800 # initialize rs1
li x25, 0xd74d6a4d # initialize rs2
sha512sig1l x25, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x31, 0x7a77c2fa # initialize rs1
li x26, 0x6339f381 # initialize rs2
sha512sig1l x26, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x15, 0x78dd187a # initialize rs1
li x27, 0x36a98bd1 # initialize rs2
sha512sig1l x27, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x1, 0x41ccb4f0 # initialize rs1
li x28, 0x7f6db7ef # initialize rs2
sha512sig1l x28, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x15, 0x55627c65 # initialize rs1
li x29, 0xe78f8e67 # initialize rs2
sha512sig1l x29, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0xb47b522e # initialize rs1
li x30, 0x6727fed2 # initialize rs2
sha512sig1l x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x30, 0xc31bef23 # initialize rs1
li x31, 0x64869319 # initialize rs2
sha512sig1l x31, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xd493ace4 # initialize rs1
li x0, 0x4f4f1fe7 # initialize rs2
sha512sig1l x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xbc6d3bf0 # initialize rs1
li x1, 0x1d8c1f3b # initialize rs2
sha512sig1l x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x05e7990d # initialize rs1
li x2, 0x53e43bac # initialize rs2
sha512sig1l x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xa9f25c71 # initialize rs1
li x3, 0x7452a278 # initialize rs2
sha512sig1l x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x873f24d2 # initialize rs1
li x4, 0x651885af # initialize rs2
sha512sig1l x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1eb6752c # initialize rs1
li x5, 0x5298d27c # initialize rs2
sha512sig1l x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x84897e67 # initialize rs1
li x6, 0x5a6b7b44 # initialize rs2
sha512sig1l x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x186a7168 # initialize rs1
li x7, 0x57501c33 # initialize rs2
sha512sig1l x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xcce2a6a1 # initialize rs1
li x8, 0x9aa6888f # initialize rs2
sha512sig1l x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x65f2634a # initialize rs1
li x9, 0x702a1599 # initialize rs2
sha512sig1l x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x4d9f42da # initialize rs1
li x10, 0x085d25c3 # initialize rs2
sha512sig1l x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x62e54b88 # initialize rs1
li x11, 0x23f3d7c7 # initialize rs2
sha512sig1l x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xadf199bc # initialize rs1
li x12, 0xe9fdcf76 # initialize rs2
sha512sig1l x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x161db494 # initialize rs1
li x13, 0x95fde202 # initialize rs2
sha512sig1l x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xa5a3e70c # initialize rs1
li x14, 0xb4e15954 # initialize rs2
sha512sig1l x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x7a2ca0d2 # initialize rs1
li x15, 0x51094e92 # initialize rs2
sha512sig1l x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xb35ab70f # initialize rs1
li x16, 0x4371de11 # initialize rs2
sha512sig1l x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x7e58b308 # initialize rs1
li x17, 0x85f10ae6 # initialize rs2
sha512sig1l x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x2fad17ef # initialize rs1
li x18, 0x56c81c28 # initialize rs2
sha512sig1l x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xc03cf2c1 # initialize rs1
li x19, 0x45c79fae # initialize rs2
sha512sig1l x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x6626a01d # initialize rs1
li x20, 0x61c8bbe5 # initialize rs2
sha512sig1l x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x55b33b28 # initialize rs1
li x21, 0x6062a04a # initialize rs2
sha512sig1l x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x579ea50a # initialize rs1
li x22, 0x2e29ad3b # initialize rs2
sha512sig1l x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x78543675 # initialize rs1
li x23, 0x8d5bc2ac # initialize rs2
sha512sig1l x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xe106da2d # initialize rs1
li x24, 0x65c9bfcc # initialize rs2
sha512sig1l x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x842f480a # initialize rs1
li x25, 0xbbce14d1 # initialize rs2
sha512sig1l x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x1d0b9893 # initialize rs1
li x26, 0xd954c05d # initialize rs2
sha512sig1l x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x4182524f # initialize rs1
li x27, 0xcb4fa687 # initialize rs2
sha512sig1l x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xebecaeee # initialize rs1
li x28, 0xd92d54df # initialize rs2
sha512sig1l x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x46159ecc # initialize rs1
li x29, 0x16a50737 # initialize rs2
sha512sig1l x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xa8fc2361 # initialize rs1
li x30, 0xbba5dddb # initialize rs2
sha512sig1l x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x7d8ab73d # initialize rs1
li x31, 0x0d4c0121 # initialize rs2
sha512sig1l x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x11, x16 # perform first operation
sha512sig1l x29, x2, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x18, x24 # perform first operation
sha512sig1l x10, x6, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x10, x31 # perform first operation
sha512sig1l x16, x5, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x24, x22 # perform first operation
sha512sig1l x19, x2, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x23, x15 # perform first operation
sha512sig1l x31, x29, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x3, x31 # perform first operation
sha512sig1l x18, x28, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x31, x8 # perform first operation
sha512sig1l x11, x24, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x22, x26 # perform first operation
sha512sig1l x31, x2, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x21, x2 # perform first operation
sha512sig1l x30, x1, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x15, x5 # perform first operation
sha512sig1l x15, x21, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x18, x21 # perform first operation
sha512sig1l x21, x26, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x9, x10 # perform first operation
sha512sig1l x26, x5, x30 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-sha512sum1r.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xbee84c0d # initialize rs1
li x2, 0x6f50f91c # initialize rs2
sha512sum1r x18, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xd82d3557 # initialize rs1
li x5, 0xd4e212a8 # initialize rs2
sha512sum1r x9, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x642d5d7f # initialize rs1
li x30, 0xb6a94437 # initialize rs2
sha512sum1r x7, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xc21eeb51 # initialize rs1
li x1, 0x0a899a7a # initialize rs2
sha512sum1r x8, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9d4d6908 # initialize rs1
li x10, 0x837785ab # initialize rs2
sha512sum1r x18, x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4193b907 # initialize rs1
li x29, 0x774127da # initialize rs2
sha512sum1r x2, x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe3552b25 # initialize rs1
li x29, 0x408bba6d # initialize rs2
sha512sum1r x16, x6, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x16, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4c24cd2c # initialize rs1
li x23, 0xba733f74 # initialize rs2
sha512sum1r x4, x7, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x614d4314 # initialize rs1
li x27, 0x5b02ad0a # initialize rs2
sha512sum1r x3, x8, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xda4dc0ad # initialize rs1
li x31, 0x47f5148f # initialize rs2
sha512sum1r x7, x9, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xee85f6b4 # initialize rs1
li x9, 0x0b32a029 # initialize rs2
sha512sum1r x24, x10, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa2e335d6 # initialize rs1
li x20, 0xa7fcbdb9 # initialize rs2
sha512sum1r x26, x11, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x8bb1a2a8 # initialize rs1
li x20, 0xd89630df # initialize rs2
sha512sum1r x31, x12, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x54f1e508 # initialize rs1
li x2, 0x7e673cd1 # initialize rs2
sha512sum1r x1, x13, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x2514fc78 # initialize rs1
li x17, 0xcdee5f48 # initialize rs2
sha512sum1r x2, x14, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x67324231 # initialize rs1
li x8, 0xc7d28585 # initialize rs2
sha512sum1r x2, x15, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x3709cde3 # initialize rs1
li x15, 0x5fb33e9c # initialize rs2
sha512sum1r x11, x16, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xac7a5151 # initialize rs1
li x27, 0x85873008 # initialize rs2
sha512sum1r x23, x17, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xeafbe51e # initialize rs1
li x30, 0x450f170f # initialize rs2
sha512sum1r x14, x18, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xd2c05acc # initialize rs1
li x1, 0x102c1ee4 # initialize rs2
sha512sum1r x9, x19, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x1de1e9d3 # initialize rs1
li x13, 0x0b5fe7da # initialize rs2
sha512sum1r x24, x20, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xb49bb328 # initialize rs1
li x31, 0x137a2200 # initialize rs2
sha512sum1r x27, x21, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x3a5eec73 # initialize rs1
li x4, 0xc3d1cce6 # initialize rs2
sha512sum1r x19, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x0784c396 # initialize rs1
li x12, 0x3679407b # initialize rs2
sha512sum1r x6, x23, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xfda62872 # initialize rs1
li x9, 0x91435440 # initialize rs2
sha512sum1r x15, x24, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x3eeb8cf0 # initialize rs1
li x9, 0xf226cddf # initialize rs2
sha512sum1r x30, x25, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x934fa18a # initialize rs1
li x29, 0x23cfea7a # initialize rs2
sha512sum1r x27, x26, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x91779acb # initialize rs1
li x6, 0xe3dc399e # initialize rs2
sha512sum1r x11, x27, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x4500d3b0 # initialize rs1
li x30, 0xe71d6695 # initialize rs2
sha512sum1r x11, x28, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x83035f91 # initialize rs1
li x14, 0x74feafd3 # initialize rs2
sha512sum1r x6, x29, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xbbed2ea7 # initialize rs1
li x19, 0x4292452d # initialize rs2
sha512sum1r x4, x30, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x0b9070c2 # initialize rs1
li x26, 0x1fe1c0ca # initialize rs2
sha512sum1r x15, x31, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x4, 0x57e63944 # initialize rs1
li x0, 0x7c6195f2 # initialize rs2
sha512sum1r x8, x4, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x14, 0xdab2315e # initialize rs1
li x1, 0x67827b55 # initialize rs2
sha512sum1r x23, x14, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0x34f8cb4e # initialize rs1
li x2, 0x8ce318ff # initialize rs2
sha512sum1r x6, x3, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x10, 0x0ccc5151 # initialize rs1
li x3, 0x95bba5c3 # initialize rs2
sha512sum1r x4, x10, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
li x20, 0x6c99b7e5 # initialize rs1
li x4, 0x24c6cc9c # initialize rs2
sha512sum1r x2, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0xf7b2396c # initialize rs1
li x5, 0xc09a1187 # initialize rs2
sha512sum1r x30, x17, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x16, 0x81e094e9 # initialize rs1
li x6, 0xbf435ee8 # initialize rs2
sha512sum1r x1, x16, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x1, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x00a4f01d # initialize rs1
li x7, 0x6f92925c # initialize rs2
sha512sum1r x18, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0xc20c6729 # initialize rs1
li x8, 0x4be12706 # initialize rs2
sha512sum1r x29, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x19, 0x3d30a86f # initialize rs1
li x9, 0x9181c2b5 # initialize rs2
sha512sum1r x15, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x6, 0x1fc84d59 # initialize rs1
li x10, 0xfdaf9270 # initialize rs2
sha512sum1r x1, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x28, 0x1820a2fe # initialize rs1
li x11, 0x502bc985 # initialize rs2
sha512sum1r x2, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x13, 0xffeb0108 # initialize rs1
li x12, 0xbcd9f076 # initialize rs2
sha512sum1r x5, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x26, 0xbedae2cc # initialize rs1
li x13, 0xf2edcb82 # initialize rs2
sha512sum1r x5, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x28, 0xd1db79f3 # initialize rs1
li x14, 0x7dbb1b58 # initialize rs2
sha512sum1r x10, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x20, 0xc21abbf1 # initialize rs1
li x15, 0xa66a34ef # initialize rs2
sha512sum1r x26, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x22, 0x1310ed9d # initialize rs1
li x16, 0x166a1baa # initialize rs2
sha512sum1r x21, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x8, 0x13cb3f2b # initialize rs1
li x17, 0x4fc3376e # initialize rs2
sha512sum1r x27, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x27, 0x4d903003 # initialize rs1
li x18, 0x6ca7c986 # initialize rs2
sha512sum1r x12, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x25, 0x028a5e2c # initialize rs1
li x19, 0x3391bfd8 # initialize rs2
sha512sum1r x8, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x22, 0x7bed868e # initialize rs1
li x20, 0x5a93bb4d # initialize rs2
sha512sum1r x13, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x23, 0xdef5b0b4 # initialize rs1
li x21, 0x0749cbb5 # initialize rs2
sha512sum1r x6, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x8, 0x1ccc1410 # initialize rs1
li x22, 0xa90ad70f # initialize rs2
sha512sum1r x2, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x3, 0x5bf10121 # initialize rs1
li x23, 0x8eb01ba2 # initialize rs2
sha512sum1r x9, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x5, 0xb765cb8d # initialize rs1
li x24, 0x396258dc # initialize rs2
sha512sum1r x26, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x20, 0xe0e3bf9c # initialize rs1
li x25, 0xa2895d85 # initialize rs2
sha512sum1r x9, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x9, 0x1df6adc8 # initialize rs1
li x26, 0x4734102f # initialize rs2
sha512sum1r x20, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x22, 0x51722f17 # initialize rs1
li x27, 0x609a70df # initialize rs2
sha512sum1r x9, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x15, 0xdd208c25 # initialize rs1
li x28, 0x29874074 # initialize rs2
sha512sum1r x25, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x31, 0x0376d616 # initialize rs1
li x29, 0x680e392f # initialize rs2
sha512sum1r x23, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x24, 0x730c4706 # initialize rs1
li x30, 0x6253f7e3 # initialize rs2
sha512sum1r x6, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x7, 0x4e437365 # initialize rs1
li x31, 0x52ef00a5 # initialize rs2
sha512sum1r x27, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 252)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0x0012e5af # initialize rs1
li x14, 0xb3ef0615 # initialize rs2
sha512sum1r x0, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0x35011c14 # initialize rs1
li x17, 0x14d24b91 # initialize rs2
sha512sum1r x1, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0xb55eacd6 # initialize rs1
li x3, 0xb549ee0b # initialize rs2
sha512sum1r x2, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x7, 0xd6fe33bc # initialize rs1
li x31, 0xfaea3372 # initialize rs2
sha512sum1r x3, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x574b7b16 # initialize rs1
li x21, 0x47a40a83 # initialize rs2
sha512sum1r x4, x6, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x980ccc73 # initialize rs1
li x7, 0xb6902cbb # initialize rs2
sha512sum1r x5, x23, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0x4c98c7d8 # initialize rs1
li x27, 0x1e529eae # initialize rs2
sha512sum1r x6, x31, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x1d5f7ef8 # initialize rs1
li x22, 0xe62531e7 # initialize rs2
sha512sum1r x7, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0xcac02837 # initialize rs1
li x27, 0x982a0a40 # initialize rs2
sha512sum1r x8, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x11, 0x790dd003 # initialize rs1
li x9, 0x09143b2d # initialize rs2
sha512sum1r x9, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0xb54643a5 # initialize rs1
li x23, 0xef00bf93 # initialize rs2
sha512sum1r x10, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x20, 0x202e7801 # initialize rs1
li x3, 0xec7197d3 # initialize rs2
sha512sum1r x11, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x20, 0xd9b8b642 # initialize rs1
li x15, 0xa0ea079f # initialize rs2
sha512sum1r x12, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x5, 0x52eece1e # initialize rs1
li x16, 0xcbf8a505 # initialize rs2
sha512sum1r x13, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x11, 0xbab5e5ba # initialize rs1
li x21, 0xacfc01fa # initialize rs2
sha512sum1r x14, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x1, 0xb24dc4f1 # initialize rs1
li x10, 0x7cc2e09f # initialize rs2
sha512sum1r x15, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x27, 0xb193a9ee # initialize rs1
li x23, 0xa86ea654 # initialize rs2
sha512sum1r x16, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x19, 0x45fd0500 # initialize rs1
li x14, 0x3ad5c4c4 # initialize rs2
sha512sum1r x17, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x2, 0xd4255cb7 # initialize rs1
li x11, 0x29fcade2 # initialize rs2
sha512sum1r x18, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x3, 0xa7d35db6 # initialize rs1
li x15, 0xe3a92dda # initialize rs2
sha512sum1r x19, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x12, 0x29a20bda # initialize rs1
li x30, 0x22c3d207 # initialize rs2
sha512sum1r x20, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x22, 0x7b94ad51 # initialize rs1
li x16, 0xbe751d35 # initialize rs2
sha512sum1r x21, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0x50315e42 # initialize rs1
li x13, 0xebe2e0b8 # initialize rs2
sha512sum1r x22, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x17, 0x77f73f7e # initialize rs1
li x23, 0xb44e8a2f # initialize rs2
sha512sum1r x23, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x19, 0x9f7c9a48 # initialize rs1
li x3, 0xc3413996 # initialize rs2
sha512sum1r x24, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0x717cdcfa # initialize rs1
li x1, 0x5376a883 # initialize rs2
sha512sum1r x25, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x29, 0xe5795b72 # initialize rs1
li x12, 0x2da7c7fa # initialize rs2
sha512sum1r x26, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0x3d80cd31 # initialize rs1
li x17, 0x76e9f6d4 # initialize rs2
sha512sum1r x27, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x22, 0xd817cc8c # initialize rs1
li x27, 0x2f4d2379 # initialize rs2
sha512sum1r x28, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x27, 0xde084dd0 # initialize rs1
li x1, 0xc6ff089b # initialize rs2
sha512sum1r x29, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x13, 0xa8db93cb # initialize rs1
li x20, 0x8fd56150 # initialize rs2
sha512sum1r x30, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x5, 0xd3dff813 # initialize rs1
li x29, 0x3c1c1e42 # initialize rs2
sha512sum1r x31, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x00000000 # initialize rs1
li x23, 0x4bc627a1 # initialize rs2
sha512sum1r x17, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x3, 0x00000001 # initialize rs1
li x30, 0x9e4905b2 # initialize rs2
sha512sum1r x21, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x6, 0x00000002 # initialize rs1
li x29, 0x62b0aec1 # initialize rs2
sha512sum1r x22, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x7, 0x80000000 # initialize rs1
li x14, 0x43773ba6 # initialize rs2
sha512sum1r x27, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x20, 0x80000001 # initialize rs1
li x13, 0x0d0f8272 # initialize rs2
sha512sum1r x10, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x31, 0x7fffffff # initialize rs1
li x20, 0x8ef5b03b # initialize rs2
sha512sum1r x21, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs1
li x23, 0x9faa715a # initialize rs2
sha512sum1r x21, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x22, 0xffffffff # initialize rs1
li x24, 0xde6a3bfe # initialize rs2
sha512sum1r x10, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0xfffffffe # initialize rs1
li x28, 0x3f885d82 # initialize rs2
sha512sum1r x9, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x15, 0x5bbc8872 # initialize rs1
li x3, 0xd5a1cf3a # initialize rs2
sha512sum1r x18, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x27, 0xaaaaaaaa # initialize rs1
li x6, 0xf6762cfd # initialize rs2
sha512sum1r x24, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x27, 0x55555555 # initialize rs1
li x6, 0x490fa327 # initialize rs2
sha512sum1r x12, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x23, 0x4147178d # initialize rs1
li x29, 0x00000000 # initialize rs2
sha512sum1r x1, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x31, 0xe49ff05b # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sum1r x1, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x21, 0x175ecb1b # initialize rs1
li x28, 0x00000002 # initialize rs2
sha512sum1r x9, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x15, 0x0ce15817 # initialize rs1
li x17, 0x80000000 # initialize rs2
sha512sum1r x31, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x6, 0x075fd96e # initialize rs1
li x29, 0x80000001 # initialize rs2
sha512sum1r x21, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x25, 0xc18ab712 # initialize rs1
li x28, 0x7fffffff # initialize rs2
sha512sum1r x7, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x5, 0x6b489197 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
sha512sum1r x3, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x22, 0x39b00ace # initialize rs1
li x30, 0xffffffff # initialize rs2
sha512sum1r x25, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x10, 0x3f4d9f6d # initialize rs1
li x22, 0xfffffffe # initialize rs2
sha512sum1r x11, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x18, 0xb3a597fb # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
sha512sum1r x1, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x26, 0xa658fb53 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
sha512sum1r x2, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x11, 0x7e7d50d8 # initialize rs1
li x8, 0x55555555 # initialize rs2
sha512sum1r x9, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x19, 0x00000000 # initialize rs1
li x12, 0x00000000 # initialize rs2
sha512sum1r x3, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x5, 0x00000000 # initialize rs1
li x25, 0x00000001 # initialize rs2
sha512sum1r x2, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x20, 0x00000000 # initialize rs1
li x30, 0x00000002 # initialize rs2
sha512sum1r x28, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x24, 0x00000000 # initialize rs1
li x31, 0x80000000 # initialize rs2
sha512sum1r x14, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x7, 0x00000000 # initialize rs1
li x26, 0x80000001 # initialize rs2
sha512sum1r x11, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x22, 0x00000000 # initialize rs1
li x24, 0x7fffffff # initialize rs2
sha512sum1r x12, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x22, 0x00000000 # initialize rs1
li x14, 0x7ffffffe # initialize rs2
sha512sum1r x16, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x10, 0x00000000 # initialize rs1
li x8, 0xffffffff # initialize rs2
sha512sum1r x3, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x16, 0x00000000 # initialize rs1
li x31, 0xfffffffe # initialize rs2
sha512sum1r x11, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x19, 0x00000000 # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
sha512sum1r x17, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x8, 0x00000000 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
sha512sum1r x23, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x27, 0x00000000 # initialize rs1
li x7, 0x55555555 # initialize rs2
sha512sum1r x21, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x21, 0x00000001 # initialize rs1
li x14, 0x00000000 # initialize rs2
sha512sum1r x30, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x00000001 # initialize rs1
li x6, 0x00000001 # initialize rs2
sha512sum1r x31, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x5, 0x00000001 # initialize rs1
li x14, 0x00000002 # initialize rs2
sha512sum1r x9, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x24, 0x00000001 # initialize rs1
li x14, 0x80000000 # initialize rs2
sha512sum1r x15, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x13, 0x00000001 # initialize rs1
li x23, 0x80000001 # initialize rs2
sha512sum1r x28, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x17, 0x00000001 # initialize rs1
li x20, 0x7fffffff # initialize rs2
sha512sum1r x18, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x2, 0x00000001 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
sha512sum1r x15, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x7, 0x00000001 # initialize rs1
li x25, 0xffffffff # initialize rs2
sha512sum1r x19, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x22, 0x00000001 # initialize rs1
li x21, 0xfffffffe # initialize rs2
sha512sum1r x30, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x28, 0x00000001 # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
sha512sum1r x6, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x1, 0x00000001 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
sha512sum1r x13, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x9, 0x00000001 # initialize rs1
li x6, 0x55555555 # initialize rs2
sha512sum1r x19, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x31, 0x00000002 # initialize rs1
li x16, 0x00000000 # initialize rs2
sha512sum1r x10, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x1, 0x00000002 # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sum1r x16, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x17, 0x00000002 # initialize rs1
li x21, 0x00000002 # initialize rs2
sha512sum1r x26, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x29, 0x00000002 # initialize rs1
li x2, 0x80000000 # initialize rs2
sha512sum1r x21, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x9, 0x00000002 # initialize rs1
li x27, 0x80000001 # initialize rs2
sha512sum1r x21, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x5, 0x00000002 # initialize rs1
li x9, 0x7fffffff # initialize rs2
sha512sum1r x23, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x17, 0x00000002 # initialize rs1
li x13, 0x7ffffffe # initialize rs2
sha512sum1r x1, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x17, 0x00000002 # initialize rs1
li x29, 0xffffffff # initialize rs2
sha512sum1r x3, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x29, 0x00000002 # initialize rs1
li x28, 0xfffffffe # initialize rs2
sha512sum1r x24, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x28, 0x00000002 # initialize rs1
li x11, 0x5bbc8872 # initialize rs2
sha512sum1r x10, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x14, 0x00000002 # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
sha512sum1r x11, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x20, 0x00000002 # initialize rs1
li x5, 0x55555555 # initialize rs2
sha512sum1r x30, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x20, 0x80000000 # initialize rs1
li x9, 0x00000000 # initialize rs2
sha512sum1r x14, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x28, 0x80000000 # initialize rs1
li x2, 0x00000001 # initialize rs2
sha512sum1r x26, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x1, 0x80000000 # initialize rs1
li x18, 0x00000002 # initialize rs2
sha512sum1r x26, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x13, 0x80000000 # initialize rs1
li x21, 0x80000000 # initialize rs2
sha512sum1r x10, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x8, 0x80000000 # initialize rs1
li x31, 0x80000001 # initialize rs2
sha512sum1r x16, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x27, 0x80000000 # initialize rs1
li x17, 0x7fffffff # initialize rs2
sha512sum1r x13, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x9, 0x80000000 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
sha512sum1r x11, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x22, 0x80000000 # initialize rs1
li x30, 0xffffffff # initialize rs2
sha512sum1r x12, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x21, 0x80000000 # initialize rs1
li x3, 0xfffffffe # initialize rs2
sha512sum1r x7, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x26, 0x80000000 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
sha512sum1r x3, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x5, 0x80000000 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sha512sum1r x11, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x7, 0x80000000 # initialize rs1
li x5, 0x55555555 # initialize rs2
sha512sum1r x6, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x27, 0x80000001 # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sum1r x20, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x24, 0x80000001 # initialize rs1
li x19, 0x00000001 # initialize rs2
sha512sum1r x30, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x11, 0x80000001 # initialize rs1
li x27, 0x00000002 # initialize rs2
sha512sum1r x31, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x24, 0x80000001 # initialize rs1
li x2, 0x80000000 # initialize rs2
sha512sum1r x25, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x13, 0x80000001 # initialize rs1
li x17, 0x80000001 # initialize rs2
sha512sum1r x11, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x16, 0x80000001 # initialize rs1
li x7, 0x7fffffff # initialize rs2
sha512sum1r x9, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x18, 0x80000001 # initialize rs1
li x1, 0x7ffffffe # initialize rs2
sha512sum1r x17, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x11, 0x80000001 # initialize rs1
li x8, 0xffffffff # initialize rs2
sha512sum1r x22, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x6, 0x80000001 # initialize rs1
li x19, 0xfffffffe # initialize rs2
sha512sum1r x26, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x10, 0x80000001 # initialize rs1
li x28, 0x5bbc8872 # initialize rs2
sha512sum1r x6, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x20, 0x80000001 # initialize rs1
li x27, 0xaaaaaaaa # initialize rs2
sha512sum1r x7, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x13, 0x80000001 # initialize rs1
li x19, 0x55555555 # initialize rs2
sha512sum1r x5, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x29, 0x7fffffff # initialize rs1
li x3, 0x00000000 # initialize rs2
sha512sum1r x6, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x12, 0x7fffffff # initialize rs1
li x18, 0x00000001 # initialize rs2
sha512sum1r x28, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x23, 0x7fffffff # initialize rs1
li x17, 0x00000002 # initialize rs2
sha512sum1r x20, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x13, 0x7fffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
sha512sum1r x8, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x6, 0x7fffffff # initialize rs1
li x10, 0x80000001 # initialize rs2
sha512sum1r x1, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x18, 0x7fffffff # initialize rs1
li x13, 0x7fffffff # initialize rs2
sha512sum1r x11, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x16, 0x7fffffff # initialize rs1
li x23, 0x7ffffffe # initialize rs2
sha512sum1r x14, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x26, 0x7fffffff # initialize rs1
li x19, 0xffffffff # initialize rs2
sha512sum1r x28, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x1, 0x7fffffff # initialize rs1
li x23, 0xfffffffe # initialize rs2
sha512sum1r x8, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x15, 0x7fffffff # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
sha512sum1r x23, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x27, 0x7fffffff # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
sha512sum1r x3, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x9, 0x7fffffff # initialize rs1
li x13, 0x55555555 # initialize rs2
sha512sum1r x20, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x8, 0x7ffffffe # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sum1r x17, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x27, 0x7ffffffe # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sum1r x25, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x22, 0x7ffffffe # initialize rs1
li x10, 0x00000002 # initialize rs2
sha512sum1r x13, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x14, 0x7ffffffe # initialize rs1
li x30, 0x80000000 # initialize rs2
sha512sum1r x9, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x14, 0x7ffffffe # initialize rs1
li x6, 0x80000001 # initialize rs2
sha512sum1r x7, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x16, 0x7ffffffe # initialize rs1
li x30, 0x7fffffff # initialize rs2
sha512sum1r x20, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x10, 0x7ffffffe # initialize rs1
li x30, 0x7ffffffe # initialize rs2
sha512sum1r x23, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x29, 0x7ffffffe # initialize rs1
li x14, 0xffffffff # initialize rs2
sha512sum1r x7, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x31, 0x7ffffffe # initialize rs1
li x16, 0xfffffffe # initialize rs2
sha512sum1r x15, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x30, 0x7ffffffe # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
sha512sum1r x15, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x6, 0x7ffffffe # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sha512sum1r x26, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x20, 0x7ffffffe # initialize rs1
li x25, 0x55555555 # initialize rs2
sha512sum1r x30, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x22, 0xffffffff # initialize rs1
li x7, 0x00000000 # initialize rs2
sha512sum1r x25, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x25, 0xffffffff # initialize rs1
li x5, 0x00000001 # initialize rs2
sha512sum1r x9, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x1, 0xffffffff # initialize rs1
li x16, 0x00000002 # initialize rs2
sha512sum1r x9, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x29, 0xffffffff # initialize rs1
li x19, 0x80000000 # initialize rs2
sha512sum1r x21, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x2, 0xffffffff # initialize rs1
li x23, 0x80000001 # initialize rs2
sha512sum1r x20, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x28, 0xffffffff # initialize rs1
li x10, 0x7fffffff # initialize rs2
sha512sum1r x24, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x28, 0xffffffff # initialize rs1
li x26, 0x7ffffffe # initialize rs2
sha512sum1r x14, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x9, 0xffffffff # initialize rs1
li x24, 0xffffffff # initialize rs2
sha512sum1r x30, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x16, 0xffffffff # initialize rs1
li x21, 0xfffffffe # initialize rs2
sha512sum1r x2, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x23, 0xffffffff # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
sha512sum1r x16, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x22, 0xffffffff # initialize rs1
li x14, 0xaaaaaaaa # initialize rs2
sha512sum1r x6, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x19, 0xffffffff # initialize rs1
li x15, 0x55555555 # initialize rs2
sha512sum1r x1, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x10, 0xfffffffe # initialize rs1
li x22, 0x00000000 # initialize rs2
sha512sum1r x13, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x8, 0xfffffffe # initialize rs1
li x5, 0x00000001 # initialize rs2
sha512sum1r x10, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x15, 0xfffffffe # initialize rs1
li x10, 0x00000002 # initialize rs2
sha512sum1r x12, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x6, 0xfffffffe # initialize rs1
li x16, 0x80000000 # initialize rs2
sha512sum1r x11, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x3, 0xfffffffe # initialize rs1
li x17, 0x80000001 # initialize rs2
sha512sum1r x23, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x24, 0xfffffffe # initialize rs1
li x12, 0x7fffffff # initialize rs2
sha512sum1r x15, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x18, 0xfffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
sha512sum1r x10, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x16, 0xfffffffe # initialize rs1
li x20, 0xffffffff # initialize rs2
sha512sum1r x5, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x26, 0xfffffffe # initialize rs1
li x10, 0xfffffffe # initialize rs2
sha512sum1r x8, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x26, 0xfffffffe # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
sha512sum1r x29, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x17, 0xfffffffe # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
sha512sum1r x6, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x11, 0xfffffffe # initialize rs1
li x26, 0x55555555 # initialize rs2
sha512sum1r x21, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x8, 0x5bbc8872 # initialize rs1
li x6, 0x00000000 # initialize rs2
sha512sum1r x10, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x11, 0x5bbc8872 # initialize rs1
li x8, 0x00000001 # initialize rs2
sha512sum1r x5, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x17, 0x5bbc8872 # initialize rs1
li x10, 0x00000002 # initialize rs2
sha512sum1r x2, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x11, 0x5bbc8872 # initialize rs1
li x1, 0x80000000 # initialize rs2
sha512sum1r x17, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x20, 0x5bbc8872 # initialize rs1
li x13, 0x80000001 # initialize rs2
sha512sum1r x1, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x6, 0x5bbc8872 # initialize rs1
li x19, 0x7fffffff # initialize rs2
sha512sum1r x13, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x10, 0x5bbc8872 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
sha512sum1r x11, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x10, 0x5bbc8872 # initialize rs1
li x3, 0xffffffff # initialize rs2
sha512sum1r x18, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x5, 0x5bbc8872 # initialize rs1
li x25, 0xfffffffe # initialize rs2
sha512sum1r x27, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x16, 0x5bbc8872 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
sha512sum1r x3, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x22, 0x5bbc8872 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
sha512sum1r x15, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x7, 0x5bbc8872 # initialize rs1
li x14, 0x55555555 # initialize rs2
sha512sum1r x31, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x16, 0xaaaaaaaa # initialize rs1
li x11, 0x00000000 # initialize rs2
sha512sum1r x21, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x21, 0xaaaaaaaa # initialize rs1
li x5, 0x00000001 # initialize rs2
sha512sum1r x19, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x2, 0xaaaaaaaa # initialize rs1
li x20, 0x00000002 # initialize rs2
sha512sum1r x30, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x27, 0xaaaaaaaa # initialize rs1
li x8, 0x80000000 # initialize rs2
sha512sum1r x16, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x12, 0xaaaaaaaa # initialize rs1
li x26, 0x80000001 # initialize rs2
sha512sum1r x15, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x31, 0xaaaaaaaa # initialize rs1
li x8, 0x7fffffff # initialize rs2
sha512sum1r x18, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x10, 0xaaaaaaaa # initialize rs1
li x25, 0x7ffffffe # initialize rs2
sha512sum1r x19, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x19, 0xaaaaaaaa # initialize rs1
li x27, 0xffffffff # initialize rs2
sha512sum1r x10, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x15, 0xaaaaaaaa # initialize rs1
li x10, 0xfffffffe # initialize rs2
sha512sum1r x1, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x15, 0xaaaaaaaa # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
sha512sum1r x6, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x27, 0xaaaaaaaa # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
sha512sum1r x13, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x6, 0xaaaaaaaa # initialize rs1
li x17, 0x55555555 # initialize rs2
sha512sum1r x28, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x20, 0x55555555 # initialize rs1
li x25, 0x00000000 # initialize rs2
sha512sum1r x5, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x12, 0x55555555 # initialize rs1
li x14, 0x00000001 # initialize rs2
sha512sum1r x13, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x2, 0x55555555 # initialize rs1
li x10, 0x00000002 # initialize rs2
sha512sum1r x1, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x19, 0x55555555 # initialize rs1
li x2, 0x80000000 # initialize rs2
sha512sum1r x23, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x7, 0x55555555 # initialize rs1
li x3, 0x80000001 # initialize rs2
sha512sum1r x28, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x28, 0x55555555 # initialize rs1
li x11, 0x7fffffff # initialize rs2
sha512sum1r x5, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x30, 0x55555555 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
sha512sum1r x15, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x13, 0x55555555 # initialize rs1
li x30, 0xffffffff # initialize rs2
sha512sum1r x28, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x14, 0x55555555 # initialize rs1
li x27, 0xfffffffe # initialize rs2
sha512sum1r x30, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x29, 0x55555555 # initialize rs1
li x24, 0x5bbc8872 # initialize rs2
sha512sum1r x9, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x11, 0x55555555 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
sha512sum1r x16, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x21, 0x55555555 # initialize rs1
li x18, 0x55555555 # initialize rs2
sha512sum1r x8, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x9ec79e9d # initialize rs1
li x0, 0x2fd85004 # initialize rs2
sha512sum1r x18, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xa5f49451 # initialize rs1
li x1, 0xba69b236 # initialize rs2
sha512sum1r x3, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xa914ea0f # initialize rs1
li x2, 0x6e2f5159 # initialize rs2
sha512sum1r x8, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x45cd1741 # initialize rs1
li x3, 0x24a216eb # initialize rs2
sha512sum1r x20, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x09eaf3fd # initialize rs1
li x4, 0x7fec1e7e # initialize rs2
sha512sum1r x30, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x10ff7bbf # initialize rs1
li x5, 0x3a21b748 # initialize rs2
sha512sum1r x16, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdf486ba6 # initialize rs1
li x6, 0x4c566c7a # initialize rs2
sha512sum1r x28, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x28, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6e2af8fc # initialize rs1
li x7, 0xda977a62 # initialize rs2
sha512sum1r x31, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xed6fb11a # initialize rs1
li x8, 0x2ac61b9d # initialize rs2
sha512sum1r x23, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x5fde95ed # initialize rs1
li x9, 0x7f0618d1 # initialize rs2
sha512sum1r x22, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x66d2a83e # initialize rs1
li x10, 0xc84de00d # initialize rs2
sha512sum1r x20, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x83e1cab2 # initialize rs1
li x11, 0x0087e92d # initialize rs2
sha512sum1r x12, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x0a63ca01 # initialize rs1
li x12, 0x0e8f4164 # initialize rs2
sha512sum1r x15, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x2201f492 # initialize rs1
li x13, 0x9230a369 # initialize rs2
sha512sum1r x6, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x010b3e54 # initialize rs1
li x14, 0xed54ac44 # initialize rs2
sha512sum1r x25, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x395369e8 # initialize rs1
li x15, 0xf79a9239 # initialize rs2
sha512sum1r x18, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x4f6fbe24 # initialize rs1
li x16, 0x7a509df0 # initialize rs2
sha512sum1r x31, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x6cfa6ca8 # initialize rs1
li x17, 0xd141ec11 # initialize rs2
sha512sum1r x1, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x9f0b5cab # initialize rs1
li x18, 0x984b4325 # initialize rs2
sha512sum1r x31, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x44d088ed # initialize rs1
li x19, 0x103fb11f # initialize rs2
sha512sum1r x28, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xb8a787f3 # initialize rs1
li x20, 0x5d3bfd58 # initialize rs2
sha512sum1r x11, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xfc0f9f2f # initialize rs1
li x21, 0xab2e8e1d # initialize rs2
sha512sum1r x23, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xfd7c3601 # initialize rs1
li x22, 0xf5a6a209 # initialize rs2
sha512sum1r x5, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xdf00b7d3 # initialize rs1
li x23, 0xdcf1ab23 # initialize rs2
sha512sum1r x21, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x8a40cf3c # initialize rs1
li x24, 0x72f82bf1 # initialize rs2
sha512sum1r x28, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xf13d1c2b # initialize rs1
li x25, 0xdb4b9f56 # initialize rs2
sha512sum1r x15, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xed3890d4 # initialize rs1
li x26, 0x50ccfc4d # initialize rs2
sha512sum1r x12, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xb9c8cf5c # initialize rs1
li x27, 0xf015048d # initialize rs2
sha512sum1r x24, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xcff5319a # initialize rs1
li x28, 0x67929f76 # initialize rs2
sha512sum1r x2, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x391833ea # initialize rs1
li x29, 0xe16715e1 # initialize rs2
sha512sum1r x8, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x697408d2 # initialize rs1
li x30, 0xade58982 # initialize rs2
sha512sum1r x14, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x06924f68 # initialize rs1
li x31, 0x8aecfce2 # initialize rs2
sha512sum1r x19, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd43efdd5 # initialize rs1
li x2, 0xe6ed5006 # initialize rs2
sha512sum1r x0, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x146f33be # initialize rs1
li x24, 0x9e473971 # initialize rs2
sha512sum1r x1, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x2aa314f9 # initialize rs1
li x28, 0x5f5515f2 # initialize rs2
sha512sum1r x2, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x39549f95 # initialize rs1
li x1, 0x0bb581a2 # initialize rs2
sha512sum1r x3, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdff8e360 # initialize rs1
li x19, 0x14d6dc9c # initialize rs2
sha512sum1r x4, x4, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4ad013bf # initialize rs1
li x18, 0x1e824582 # initialize rs2
sha512sum1r x5, x5, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3a9e1067 # initialize rs1
li x26, 0x00ff6251 # initialize rs2
sha512sum1r x6, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6df83a13 # initialize rs1
li x11, 0xe21bd6d6 # initialize rs2
sha512sum1r x7, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x4beec249 # initialize rs1
li x29, 0x70290c60 # initialize rs2
sha512sum1r x8, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x09fe22f0 # initialize rs1
li x12, 0xb726cd7e # initialize rs2
sha512sum1r x9, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x718a3537 # initialize rs1
li x8, 0x908107aa # initialize rs2
sha512sum1r x10, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x148c7280 # initialize rs1
li x13, 0x978af36a # initialize rs2
sha512sum1r x11, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3c518902 # initialize rs1
li x12, 0xbc8f9854 # initialize rs2
sha512sum1r x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x6257f641 # initialize rs1
li x25, 0x1a3a1068 # initialize rs2
sha512sum1r x13, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xd8c41dea # initialize rs1
li x15, 0xbce5105c # initialize rs2
sha512sum1r x14, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x44386c1d # initialize rs1
li x10, 0xc6f4086c # initialize rs2
sha512sum1r x15, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x67be38ca # initialize rs1
li x16, 0xf5527cde # initialize rs2
sha512sum1r x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x29579b17 # initialize rs1
li x20, 0x6459a28d # initialize rs2
sha512sum1r x17, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x8ccd2af4 # initialize rs1
li x5, 0x497bc2ac # initialize rs2
sha512sum1r x18, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x42b2a9b4 # initialize rs1
li x11, 0x7bcc3ac6 # initialize rs2
sha512sum1r x19, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x2651c8fa # initialize rs1
li x10, 0x52cb24ca # initialize rs2
sha512sum1r x20, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xc9716c33 # initialize rs1
li x3, 0xc0349089 # initialize rs2
sha512sum1r x21, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x09e6a404 # initialize rs1
li x16, 0xc727e713 # initialize rs2
sha512sum1r x22, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x31e65b98 # initialize rs1
li x27, 0x9b1e527b # initialize rs2
sha512sum1r x23, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7bbde7b8 # initialize rs1
li x27, 0x59dbebf8 # initialize rs2
sha512sum1r x24, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xe6f98469 # initialize rs1
li x9, 0xeab7f56c # initialize rs2
sha512sum1r x25, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x9bf13fca # initialize rs1
li x23, 0xb9acde41 # initialize rs2
sha512sum1r x26, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xeb613386 # initialize rs1
li x6, 0xe19ce535 # initialize rs2
sha512sum1r x27, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x8f418474 # initialize rs1
li x29, 0x2a7a2094 # initialize rs2
sha512sum1r x28, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x15909e2a # initialize rs1
li x18, 0xad0fb530 # initialize rs2
sha512sum1r x29, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xa530b77a # initialize rs1
li x2, 0xaeffeb4a # initialize rs2
sha512sum1r x30, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xbbd0d9bb # initialize rs1
li x2, 0x28f443fa # initialize rs2
sha512sum1r x31, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x8, 0x7f23c9a9 # initialize rs1
li x0, 0xe207b90c # initialize rs2
sha512sum1r x0, x8, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x23, 0x36096152 # initialize rs1
li x1, 0x4378a1c0 # initialize rs2
sha512sum1r x1, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x10, 0x46bd0f42 # initialize rs1
li x2, 0x295c8917 # initialize rs2
sha512sum1r x2, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x21, 0x0ede7b6e # initialize rs1
li x3, 0xb92f3bcb # initialize rs2
sha512sum1r x3, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x13, 0xddb59d6d # initialize rs1
li x4, 0x2118e225 # initialize rs2
sha512sum1r x4, x13, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x3c9a2553 # initialize rs1
li x5, 0x8212af25 # initialize rs2
sha512sum1r x5, x3, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0xa8c92f79 # initialize rs1
li x6, 0xf996be1e # initialize rs2
sha512sum1r x6, x26, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x96c50c37 # initialize rs1
li x7, 0xebce7ba3 # initialize rs2
sha512sum1r x7, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x13, 0x6c659b93 # initialize rs1
li x8, 0xecd9e8a2 # initialize rs2
sha512sum1r x8, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x22, 0x6edeaa3e # initialize rs1
li x9, 0x6d296fdc # initialize rs2
sha512sum1r x9, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x26, 0x1ab3080b # initialize rs1
li x10, 0xe64bcc9d # initialize rs2
sha512sum1r x10, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x25, 0x0a67754d # initialize rs1
li x11, 0x8a221e79 # initialize rs2
sha512sum1r x11, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x3, 0xe2c2255b # initialize rs1
li x12, 0x4be4ab65 # initialize rs2
sha512sum1r x12, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x9, 0x1968ca1b # initialize rs1
li x13, 0x7307540a # initialize rs2
sha512sum1r x13, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x6, 0xc60833a4 # initialize rs1
li x14, 0x1c939cab # initialize rs2
sha512sum1r x14, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x21, 0x0f6b4d7b # initialize rs1
li x15, 0x6d4783d1 # initialize rs2
sha512sum1r x15, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x2, 0x04ddc1fa # initialize rs1
li x16, 0x45e84249 # initialize rs2
sha512sum1r x16, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0x8f617a01 # initialize rs1
li x17, 0x5debe70a # initialize rs2
sha512sum1r x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x15, 0xfe039b7a # initialize rs1
li x18, 0x419c2fd1 # initialize rs2
sha512sum1r x18, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x9, 0x03611c99 # initialize rs1
li x19, 0x8e52ee95 # initialize rs2
sha512sum1r x19, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x10, 0xc47bb8ac # initialize rs1
li x20, 0x4c2bf69a # initialize rs2
sha512sum1r x20, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x5a54867d # initialize rs1
li x21, 0xe972a21b # initialize rs2
sha512sum1r x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x20, 0xf9f68bb2 # initialize rs1
li x22, 0xe7f5c142 # initialize rs2
sha512sum1r x22, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x9, 0x58a12d18 # initialize rs1
li x23, 0xd8c98f2c # initialize rs2
sha512sum1r x23, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x18, 0xde0988cf # initialize rs1
li x24, 0x0e33a6cd # initialize rs2
sha512sum1r x24, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x30, 0x8a21be47 # initialize rs1
li x25, 0xaf775ad4 # initialize rs2
sha512sum1r x25, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x28, 0xf6daed02 # initialize rs1
li x26, 0x9ea187c1 # initialize rs2
sha512sum1r x26, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x16, 0xcbcedf7e # initialize rs1
li x27, 0x5270965d # initialize rs2
sha512sum1r x27, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x13, 0xfda3e72b # initialize rs1
li x28, 0x0a295350 # initialize rs2
sha512sum1r x28, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x16, 0xf401709d # initialize rs1
li x29, 0x48addc51 # initialize rs2
sha512sum1r x29, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x12, 0x7fa6d045 # initialize rs1
li x30, 0x797ffd86 # initialize rs2
sha512sum1r x30, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x1, 0x8b5eb1cf # initialize rs1
li x31, 0x87d95c85 # initialize rs2
sha512sum1r x31, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xd581ff23 # initialize rs1
li x0, 0xa7df062c # initialize rs2
sha512sum1r x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xd5a24497 # initialize rs1
li x1, 0xb4243682 # initialize rs2
sha512sum1r x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x7c96b44b # initialize rs1
li x2, 0x874063ce # initialize rs2
sha512sum1r x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x4713fd0d # initialize rs1
li x3, 0x173e5ad7 # initialize rs2
sha512sum1r x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x040ddd14 # initialize rs1
li x4, 0x85496f21 # initialize rs2
sha512sum1r x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x46c651cf # initialize rs1
li x5, 0x0782aea9 # initialize rs2
sha512sum1r x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x617586e0 # initialize rs1
li x6, 0x5ef46b58 # initialize rs2
sha512sum1r x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb043dcb5 # initialize rs1
li x7, 0x21a44395 # initialize rs2
sha512sum1r x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xaad222dd # initialize rs1
li x8, 0x3976aec5 # initialize rs2
sha512sum1r x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x5fb1c8ad # initialize rs1
li x9, 0x5688c9de # initialize rs2
sha512sum1r x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x1df6e1c9 # initialize rs1
li x10, 0xe8af08d3 # initialize rs2
sha512sum1r x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xce298c7e # initialize rs1
li x11, 0xbdfc21e1 # initialize rs2
sha512sum1r x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x7975e4aa # initialize rs1
li x12, 0x43a6b5d3 # initialize rs2
sha512sum1r x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xdd0dca50 # initialize rs1
li x13, 0xb0a2ce6f # initialize rs2
sha512sum1r x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x71ad56cc # initialize rs1
li x14, 0x69b2e147 # initialize rs2
sha512sum1r x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x9cd25866 # initialize rs1
li x15, 0x0bdd08fb # initialize rs2
sha512sum1r x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x791fc515 # initialize rs1
li x16, 0x60c8de02 # initialize rs2
sha512sum1r x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x0329239a # initialize rs1
li x17, 0x6e532899 # initialize rs2
sha512sum1r x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x282065b3 # initialize rs1
li x18, 0xe8452061 # initialize rs2
sha512sum1r x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x98c316b8 # initialize rs1
li x19, 0xdbfc3aff # initialize rs2
sha512sum1r x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x633eed4f # initialize rs1
li x20, 0x577be4bb # initialize rs2
sha512sum1r x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xf24628ed # initialize rs1
li x21, 0x3ee4cb9d # initialize rs2
sha512sum1r x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xc02a4cf9 # initialize rs1
li x22, 0x5855bb88 # initialize rs2
sha512sum1r x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x0e9625ba # initialize rs1
li x23, 0xf126fc93 # initialize rs2
sha512sum1r x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x55f30172 # initialize rs1
li x24, 0x12b49ba2 # initialize rs2
sha512sum1r x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x26154669 # initialize rs1
li x25, 0x69c369ba # initialize rs2
sha512sum1r x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x70645c0e # initialize rs1
li x26, 0x6abbdabf # initialize rs2
sha512sum1r x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xba005f2c # initialize rs1
li x27, 0xc7b9723b # initialize rs2
sha512sum1r x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x0f83d804 # initialize rs1
li x28, 0xa37fa793 # initialize rs2
sha512sum1r x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x75f70ede # initialize rs1
li x29, 0xbf01a431 # initialize rs2
sha512sum1r x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xa4772b94 # initialize rs1
li x30, 0x2f326dab # initialize rs2
sha512sum1r x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x1b21daea # initialize rs1
li x31, 0x5b2d58f8 # initialize rs2
sha512sum1r x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x2, x7 # perform first operation
sha512sum1r x29, x31, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x9, x7 # perform first operation
sha512sum1r x5, x1, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x15, x24 # perform first operation
sha512sum1r x17, x9, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x21, x2 # perform first operation
sha512sum1r x17, x6, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x18, x7 # perform first operation
sha512sum1r x19, x30, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x13, x23 # perform first operation
sha512sum1r x2, x18, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x3, x13 # perform first operation
sha512sum1r x22, x24, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x6, x3 # perform first operation
sha512sum1r x10, x14, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x14, x26 # perform first operation
sha512sum1r x11, x13, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x28, x21 # perform first operation
sha512sum1r x28, x3, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x28, x1 # perform first operation
sha512sum1r x1, x20, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x8, x24 # perform first operation
sha512sum1r x6, x31, x25 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-sha256sum0.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x84bb32b0 # initialize rs1
sha256sum0 x7, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x93b1ecc0 # initialize rs1
sha256sum0 x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xfac6c6fe # initialize rs1
sha256sum0 x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x17388ee6 # initialize rs1
sha256sum0 x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc06e2a8d # initialize rs1
sha256sum0 x17, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5c4f3adc # initialize rs1
sha256sum0 x28, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8a178637 # initialize rs1
sha256sum0 x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xb146b378 # initialize rs1
sha256sum0 x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xa181b362 # initialize rs1
sha256sum0 x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x99c6e94e # initialize rs1
sha256sum0 x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xad6c944d # initialize rs1
sha256sum0 x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x35926ae2 # initialize rs1
sha256sum0 x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x408feadb # initialize rs1
sha256sum0 x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x0cbb3684 # initialize rs1
sha256sum0 x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x15ec386b # initialize rs1
sha256sum0 x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x712b1f3c # initialize rs1
sha256sum0 x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x47f27ffc # initialize rs1
sha256sum0 x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x3945bc76 # initialize rs1
sha256sum0 x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x0144c433 # initialize rs1
sha256sum0 x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x7d6626ee # initialize rs1
sha256sum0 x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x4c449db4 # initialize rs1
sha256sum0 x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x62ca548e # initialize rs1
sha256sum0 x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x58d5d57f # initialize rs1
sha256sum0 x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x4ba1557f # initialize rs1
sha256sum0 x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x5ffa8cb2 # initialize rs1
sha256sum0 x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xad5373d9 # initialize rs1
sha256sum0 x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xd01b4394 # initialize rs1
sha256sum0 x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x009523b8 # initialize rs1
sha256sum0 x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xb8461b24 # initialize rs1
sha256sum0 x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x9aaaf6ae # initialize rs1
sha256sum0 x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x653c7f2d # initialize rs1
sha256sum0 x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x754f1627 # initialize rs1
sha256sum0 x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 124)

# Testcase cp_rd (Test destination rd = x0)
li x25, 0x0113e847 # initialize rs1
sha256sum0 x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x2, 0xae7f6374 # initialize rs1
sha256sum0 x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0x79cbfe6a # initialize rs1
sha256sum0 x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x10, 0xca73f240 # initialize rs1
sha256sum0 x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x1ed29e45 # initialize rs1
sha256sum0 x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0x04f183b8 # initialize rs1
sha256sum0 x5, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0x36c0f9b7 # initialize rs1
sha256sum0 x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0xdb577cbd # initialize rs1
sha256sum0 x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x20, 0xfb2175a4 # initialize rs1
sha256sum0 x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x5, 0x7e72136b # initialize rs1
sha256sum0 x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0xfc5ac1c2 # initialize rs1
sha256sum0 x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x25, 0xd2c083f5 # initialize rs1
sha256sum0 x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x30, 0x31a7b72f # initialize rs1
sha256sum0 x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x2, 0x0d2c073b # initialize rs1
sha256sum0 x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0xb7df1db6 # initialize rs1
sha256sum0 x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0xc29dac56 # initialize rs1
sha256sum0 x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0x7a2f3035 # initialize rs1
sha256sum0 x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x1, 0x5eb9938c # initialize rs1
sha256sum0 x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x29, 0x36206ab6 # initialize rs1
sha256sum0 x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x23, 0x8885068c # initialize rs1
sha256sum0 x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x12, 0x616110b4 # initialize rs1
sha256sum0 x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x12, 0x48e406d1 # initialize rs1
sha256sum0 x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0xc2562bd9 # initialize rs1
sha256sum0 x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x7, 0x4f20ccb6 # initialize rs1
sha256sum0 x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x1, 0x25a97a20 # initialize rs1
sha256sum0 x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x6, 0xaa191765 # initialize rs1
sha256sum0 x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x21, 0xcf840f16 # initialize rs1
sha256sum0 x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0x2fd5ac9e # initialize rs1
sha256sum0 x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x604ba7ce # initialize rs1
sha256sum0 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x19, 0x2b30ca67 # initialize rs1
sha256sum0 x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x23, 0x2c796600 # initialize rs1
sha256sum0 x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x9, 0x4619e364 # initialize rs1
sha256sum0 x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x11, 0x00000000 # initialize rs1
sha256sum0 x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x00000001 # initialize rs1
sha256sum0 x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x22, 0x00000002 # initialize rs1
sha256sum0 x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x16, 0x80000000 # initialize rs1
sha256sum0 x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x19, 0x80000001 # initialize rs1
sha256sum0 x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x17, 0x7fffffff # initialize rs1
sha256sum0 x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs1
sha256sum0 x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x21, 0xffffffff # initialize rs1
sha256sum0 x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x16, 0xfffffffe # initialize rs1
sha256sum0 x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x14, 0x5bbc8872 # initialize rs1
sha256sum0 x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x3, 0xaaaaaaaa # initialize rs1
sha256sum0 x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x9, 0x55555555 # initialize rs1
sha256sum0 x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc288e196 # initialize rs1
sha256sum0 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x3f51938d # initialize rs1
sha256sum0 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x0fd8a558 # initialize rs1
sha256sum0 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xc502096f # initialize rs1
sha256sum0 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd2630d26 # initialize rs1
sha256sum0 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbc7cd7e2 # initialize rs1
sha256sum0 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xfd4c9a45 # initialize rs1
sha256sum0 x6, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x87d5e6f0 # initialize rs1
sha256sum0 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x70cb94a7 # initialize rs1
sha256sum0 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd6b9108b # initialize rs1
sha256sum0 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x9709f29c # initialize rs1
sha256sum0 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x5b97f14a # initialize rs1
sha256sum0 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa268d543 # initialize rs1
sha256sum0 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1e8bcd31 # initialize rs1
sha256sum0 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x92135315 # initialize rs1
sha256sum0 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x55782bc4 # initialize rs1
sha256sum0 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xa30154b9 # initialize rs1
sha256sum0 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xead970ec # initialize rs1
sha256sum0 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xdd10543d # initialize rs1
sha256sum0 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x7b397b59 # initialize rs1
sha256sum0 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xd30ef79c # initialize rs1
sha256sum0 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x057c5d3c # initialize rs1
sha256sum0 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xa5bce28c # initialize rs1
sha256sum0 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xdd695781 # initialize rs1
sha256sum0 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x117b24a3 # initialize rs1
sha256sum0 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x18bd1757 # initialize rs1
sha256sum0 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x698156c8 # initialize rs1
sha256sum0 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xf5e92cd7 # initialize rs1
sha256sum0 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x9c34d8ba # initialize rs1
sha256sum0 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x95aedff4 # initialize rs1
sha256sum0 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1345d260 # initialize rs1
sha256sum0 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x50d5f0ed # initialize rs1
sha256sum0 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x31, x15 # perform first operation
sha256sum0 x10, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x13, x7 # perform first operation
sha256sum0 x20, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x15, x17 # perform first operation
sha256sum0 x12, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x19, x10 # perform first operation
sha256sum0 x28, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x24, x31 # perform first operation
sha256sum0 x24, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x18, x9 # perform first operation
sha256sum0 x9, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x28, x7 # perform first operation
sha256sum0 x29, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x17, x7 # perform first operation
sha256sum0 x10, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x22, x11 # perform first operation
sha256sum0 x29, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x15, x12 # perform first operation
sha256sum0 x15, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x10, x26 # perform first operation
sha256sum0 x26, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x10, x7 # perform first operation
sha256sum0 x14, x3 # perform second (triggering) operation

#.EQU SIGSIZE,432


// ******************
// Tests from: WALLY-COV-sha256sig0.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x07775b64 # initialize rs1
sha256sig0 x25, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xe169729a # initialize rs1
sha256sig0 x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x2b1145e4 # initialize rs1
sha256sig0 x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xa98f09f6 # initialize rs1
sha256sig0 x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x88d78654 # initialize rs1
sha256sig0 x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x17aaf186 # initialize rs1
sha256sig0 x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x68dde273 # initialize rs1
sha256sig0 x2, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x418f63ee # initialize rs1
sha256sig0 x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9ef73530 # initialize rs1
sha256sig0 x11, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x13522b0b # initialize rs1
sha256sig0 x23, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x0df0d519 # initialize rs1
sha256sig0 x20, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x61a7fba7 # initialize rs1
sha256sig0 x15, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6abf4e0f # initialize rs1
sha256sig0 x16, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x8af088b1 # initialize rs1
sha256sig0 x23, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x08fbc6e2 # initialize rs1
sha256sig0 x12, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x94e0e047 # initialize rs1
sha256sig0 x31, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xb094d69a # initialize rs1
sha256sig0 x12, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe0af6775 # initialize rs1
sha256sig0 x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x3761fbc5 # initialize rs1
sha256sig0 x3, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x2b412e4d # initialize rs1
sha256sig0 x15, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x03dc3d64 # initialize rs1
sha256sig0 x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x6c6d0a1b # initialize rs1
sha256sig0 x20, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x9a7d7a68 # initialize rs1
sha256sig0 x24, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x5a94f50f # initialize rs1
sha256sig0 x18, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x6c622d80 # initialize rs1
sha256sig0 x16, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x7d4a3c94 # initialize rs1
sha256sig0 x30, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x7a0dc601 # initialize rs1
sha256sig0 x19, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd3a6e275 # initialize rs1
sha256sig0 x18, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xd1a5fafd # initialize rs1
sha256sig0 x3, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x3254ae32 # initialize rs1
sha256sig0 x10, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xd3b35437 # initialize rs1
sha256sig0 x1, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xf4c068dd # initialize rs1
sha256sig0 x8, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 124)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0x8738bbaa # initialize rs1
sha256sig0 x0, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x17, 0x24612556 # initialize rs1
sha256sig0 x1, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x20, 0xeb33ed8e # initialize rs1
sha256sig0 x2, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x9, 0xa57559b7 # initialize rs1
sha256sig0 x3, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
li x26, 0xa891c52f # initialize rs1
sha256sig0 x4, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0xf58ccb17 # initialize rs1
sha256sig0 x5, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x88f69b48 # initialize rs1
sha256sig0 x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0x9cf0fae1 # initialize rs1
sha256sig0 x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x18, 0xf6bb8ed5 # initialize rs1
sha256sig0 x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0xaf7cc19b # initialize rs1
sha256sig0 x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x15, 0x374b96f3 # initialize rs1
sha256sig0 x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x26, 0xe12d27dc # initialize rs1
sha256sig0 x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x26, 0xa1df4801 # initialize rs1
sha256sig0 x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x20, 0x246cecb9 # initialize rs1
sha256sig0 x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x27, 0x51a70bbe # initialize rs1
sha256sig0 x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x13, 0x4519d161 # initialize rs1
sha256sig0 x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x14, 0xc2778be9 # initialize rs1
sha256sig0 x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x5, 0xdd16764b # initialize rs1
sha256sig0 x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x8, 0x1a914d2d # initialize rs1
sha256sig0 x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x17, 0x417ea2dc # initialize rs1
sha256sig0 x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x7218c6ae # initialize rs1
sha256sig0 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x8, 0xf76541f0 # initialize rs1
sha256sig0 x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x28, 0x201dbf9a # initialize rs1
sha256sig0 x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x11, 0x33dad8f5 # initialize rs1
sha256sig0 x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x6, 0x54ee25e9 # initialize rs1
sha256sig0 x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x24, 0x784545b9 # initialize rs1
sha256sig0 x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x1, 0xcea58ece # initialize rs1
sha256sig0 x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x20, 0xe4787cc5 # initialize rs1
sha256sig0 x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x21, 0x622bdfca # initialize rs1
sha256sig0 x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0x31f171b0 # initialize rs1
sha256sig0 x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x12, 0x757f32a5 # initialize rs1
sha256sig0 x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x18, 0x95c79c63 # initialize rs1
sha256sig0 x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x00000000 # initialize rs1
sha256sig0 x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x00000001 # initialize rs1
sha256sig0 x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0x00000002 # initialize rs1
sha256sig0 x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x21, 0x80000000 # initialize rs1
sha256sig0 x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x19, 0x80000001 # initialize rs1
sha256sig0 x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x27, 0x7fffffff # initialize rs1
sha256sig0 x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x21, 0x7ffffffe # initialize rs1
sha256sig0 x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0xffffffff # initialize rs1
sha256sig0 x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0xfffffffe # initialize rs1
sha256sig0 x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x27, 0x5bbc8872 # initialize rs1
sha256sig0 x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x28, 0xaaaaaaaa # initialize rs1
sha256sig0 x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x2, 0x55555555 # initialize rs1
sha256sig0 x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc2b107b3 # initialize rs1
sha256sig0 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xda7793db # initialize rs1
sha256sig0 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xa6da0f7c # initialize rs1
sha256sig0 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x1bc3048f # initialize rs1
sha256sig0 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2efc331c # initialize rs1
sha256sig0 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x79021468 # initialize rs1
sha256sig0 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xfec3ba57 # initialize rs1
sha256sig0 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5b1f265d # initialize rs1
sha256sig0 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9dabe1a7 # initialize rs1
sha256sig0 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xb713a140 # initialize rs1
sha256sig0 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xd7190ac2 # initialize rs1
sha256sig0 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xcc97791a # initialize rs1
sha256sig0 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x0c91ce93 # initialize rs1
sha256sig0 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x77b8a697 # initialize rs1
sha256sig0 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc56c90f6 # initialize rs1
sha256sig0 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7b0e7d05 # initialize rs1
sha256sig0 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x1d6b9ee0 # initialize rs1
sha256sig0 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xbe733e1e # initialize rs1
sha256sig0 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xb373d08f # initialize rs1
sha256sig0 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x5774b7a4 # initialize rs1
sha256sig0 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x6da495b5 # initialize rs1
sha256sig0 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x1bb92e9f # initialize rs1
sha256sig0 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x9b60074c # initialize rs1
sha256sig0 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x38c0cd9e # initialize rs1
sha256sig0 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x11fe2feb # initialize rs1
sha256sig0 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x412d2614 # initialize rs1
sha256sig0 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x8f790428 # initialize rs1
sha256sig0 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x81a7b1bb # initialize rs1
sha256sig0 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xeda68661 # initialize rs1
sha256sig0 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x246e6be7 # initialize rs1
sha256sig0 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xe69e90c2 # initialize rs1
sha256sig0 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x45596d96 # initialize rs1
sha256sig0 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x6, x10 # perform first operation
sha256sig0 x2, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x19, x16 # perform first operation
sha256sig0 x12, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x5, x26 # perform first operation
sha256sig0 x17, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x18, x23 # perform first operation
sha256sig0 x23, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x11, x14 # perform first operation
sha256sig0 x12, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x31, x29 # perform first operation
sha256sig0 x29, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x16, x18 # perform first operation
sha256sig0 x14, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x15, x21 # perform first operation
sha256sig0 x20, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x9, x8 # perform first operation
sha256sig0 x10, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x9, x11 # perform first operation
sha256sig0 x9, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x18, x7 # perform first operation
sha256sig0 x7, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x29, x10 # perform first operation
sha256sig0 x27, x28 # perform second (triggering) operation

#.EQU SIGSIZE,432


// ******************
// Tests from: WALLY-COV-sha512sum0r.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xee0be100 # initialize rs1
li x12, 0xaf4dc9f3 # initialize rs2
sha512sum0r x24, x0, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xafb99d58 # initialize rs1
li x11, 0xdfe58a90 # initialize rs2
sha512sum0r x18, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x1df1d0c3 # initialize rs1
li x10, 0x9af46548 # initialize rs2
sha512sum0r x30, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x3827aab0 # initialize rs1
li x14, 0x62f5adb3 # initialize rs2
sha512sum0r x2, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9e9f11ab # initialize rs1
li x2, 0x444667d5 # initialize rs2
sha512sum0r x15, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x503d448a # initialize rs1
li x27, 0x5dfc15a9 # initialize rs2
sha512sum0r x8, x5, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe3de44e5 # initialize rs1
li x7, 0xff19be22 # initialize rs2
sha512sum0r x17, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xbd213861 # initialize rs1
li x2, 0x00e950f6 # initialize rs2
sha512sum0r x3, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x8c303219 # initialize rs1
li x28, 0xdbef61bf # initialize rs2
sha512sum0r x5, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x3ca20d18 # initialize rs1
li x7, 0x224f68e4 # initialize rs2
sha512sum0r x18, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x4f586103 # initialize rs1
li x28, 0x805db448 # initialize rs2
sha512sum0r x20, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x1a6e46c0 # initialize rs1
li x27, 0x6599c3ee # initialize rs2
sha512sum0r x12, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x69ac6acb # initialize rs1
li x18, 0x7c865b66 # initialize rs2
sha512sum0r x10, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x7e8d9eff # initialize rs1
li x2, 0x617a68a8 # initialize rs2
sha512sum0r x18, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x57f659d1 # initialize rs1
li x16, 0xe00eac1a # initialize rs2
sha512sum0r x5, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x956da2d5 # initialize rs1
li x17, 0xe7bedbb4 # initialize rs2
sha512sum0r x21, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x5085f854 # initialize rs1
li x3, 0x68e64249 # initialize rs2
sha512sum0r x25, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x052cd8f4 # initialize rs1
li x24, 0x953c18d3 # initialize rs2
sha512sum0r x28, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xcbf9b357 # initialize rs1
li x12, 0xe4750f00 # initialize rs2
sha512sum0r x14, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x102f0e22 # initialize rs1
li x10, 0xd817c15a # initialize rs2
sha512sum0r x15, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x3caa0526 # initialize rs1
li x12, 0xa65dc1e5 # initialize rs2
sha512sum0r x1, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x493c8d43 # initialize rs1
li x16, 0x57dfc8e2 # initialize rs2
sha512sum0r x9, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x4df9bee3 # initialize rs1
li x9, 0xc1b0f81a # initialize rs2
sha512sum0r x17, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x5ffa8ed0 # initialize rs1
li x11, 0xfd67db20 # initialize rs2
sha512sum0r x31, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x1f938f51 # initialize rs1
li x29, 0x16e7702a # initialize rs2
sha512sum0r x14, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x55bb6690 # initialize rs1
li x12, 0x52835cd2 # initialize rs2
sha512sum0r x30, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xfad161a9 # initialize rs1
li x20, 0xb4fff8fa # initialize rs2
sha512sum0r x23, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x665d8565 # initialize rs1
li x22, 0xda9b27ad # initialize rs2
sha512sum0r x10, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x9d393675 # initialize rs1
li x22, 0x7e90fef4 # initialize rs2
sha512sum0r x18, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x51215c69 # initialize rs1
li x24, 0x9049a4ca # initialize rs2
sha512sum0r x7, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xa463649d # initialize rs1
li x25, 0xcf568414 # initialize rs2
sha512sum0r x5, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x61234989 # initialize rs1
li x9, 0x9f63e601 # initialize rs2
sha512sum0r x10, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x788256ae # initialize rs1
li x0, 0x6885d2b6 # initialize rs2
sha512sum0r x17, x20, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x10, 0x8aa75dc5 # initialize rs1
li x1, 0x555880a9 # initialize rs2
sha512sum0r x16, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x9, 0xe3c4efe0 # initialize rs1
li x2, 0xa4fba3fc # initialize rs2
sha512sum0r x15, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x6, 0xa5b13871 # initialize rs1
li x3, 0x4d63b2c0 # initialize rs2
sha512sum0r x30, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0xd7d44916 # initialize rs1
li x4, 0x3649cad7 # initialize rs2
sha512sum0r x30, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0x2fe3cb35 # initialize rs1
li x5, 0x5a3a349d # initialize rs2
sha512sum0r x1, x30, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0xdc3f0723 # initialize rs1
li x6, 0x9a982472 # initialize rs2
sha512sum0r x22, x31, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0xcf5a9ebc # initialize rs1
li x7, 0xf539782e # initialize rs2
sha512sum0r x1, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x24, 0xcad4ec3d # initialize rs1
li x8, 0x8d491c11 # initialize rs2
sha512sum0r x29, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x10, 0x6da3f549 # initialize rs1
li x9, 0xf34018da # initialize rs2
sha512sum0r x23, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x19, 0x1bd25794 # initialize rs1
li x10, 0xb8cc58f5 # initialize rs2
sha512sum0r x30, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x22, 0xe1ec24ef # initialize rs1
li x11, 0xba597af9 # initialize rs2
sha512sum0r x15, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x7, 0x1185b13d # initialize rs1
li x12, 0x16f39c55 # initialize rs2
sha512sum0r x27, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0xbf4208a2 # initialize rs1
li x13, 0x3e5cfbc8 # initialize rs2
sha512sum0r x27, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x22, 0xe309957f # initialize rs1
li x14, 0xf0707287 # initialize rs2
sha512sum0r x23, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x13, 0x3947599a # initialize rs1
li x15, 0x56a8eb0e # initialize rs2
sha512sum0r x12, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x7, 0xacceb679 # initialize rs1
li x16, 0x696d1532 # initialize rs2
sha512sum0r x19, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x29, 0x38faf448 # initialize rs1
li x17, 0xfd8ebe0a # initialize rs2
sha512sum0r x24, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x1, 0xc7c22262 # initialize rs1
li x18, 0x43499f12 # initialize rs2
sha512sum0r x17, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x14, 0xb72aca9a # initialize rs1
li x19, 0x82ed154b # initialize rs2
sha512sum0r x27, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x27, 0x73b35672 # initialize rs1
li x20, 0x62f27241 # initialize rs2
sha512sum0r x29, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x14, 0x6d0f8543 # initialize rs1
li x21, 0x4f692843 # initialize rs2
sha512sum0r x31, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x8, 0xeb182d01 # initialize rs1
li x22, 0x1b138bb6 # initialize rs2
sha512sum0r x26, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x31, 0x1cdd82db # initialize rs1
li x23, 0x13b70602 # initialize rs2
sha512sum0r x24, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x5, 0x8666dbd2 # initialize rs1
li x24, 0x806de10d # initialize rs2
sha512sum0r x31, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x11, 0x3e1421f9 # initialize rs1
li x25, 0x03efd484 # initialize rs2
sha512sum0r x1, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x21, 0x1c12a890 # initialize rs1
li x26, 0xbd54fa33 # initialize rs2
sha512sum0r x2, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x3, 0x4f82891d # initialize rs1
li x27, 0x058fe57e # initialize rs2
sha512sum0r x26, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x11, 0xc4534dc8 # initialize rs1
li x28, 0xd2de1191 # initialize rs2
sha512sum0r x27, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x15, 0x35b08805 # initialize rs1
li x29, 0x140245cd # initialize rs2
sha512sum0r x5, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x23, 0x902e4ac7 # initialize rs1
li x30, 0x8e40bc59 # initialize rs2
sha512sum0r x13, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x23, 0x43f9caa7 # initialize rs1
li x31, 0xa7ecefa5 # initialize rs2
sha512sum0r x25, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 252)

# Testcase cp_rd (Test destination rd = x0)
li x26, 0x8ee83de2 # initialize rs1
li x27, 0xf2b07559 # initialize rs2
sha512sum0r x0, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x29, 0x85d1c300 # initialize rs1
li x2, 0xf064d948 # initialize rs2
sha512sum0r x1, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x7, 0xceb29208 # initialize rs1
li x14, 0x897770bf # initialize rs2
sha512sum0r x2, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x21, 0x30e0ae8a # initialize rs1
li x27, 0xe0bb894e # initialize rs2
sha512sum0r x3, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x8ab269a4 # initialize rs1
li x3, 0x5505661c # initialize rs2
sha512sum0r x4, x18, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0xfed8be0b # initialize rs1
li x2, 0xcc30fd12 # initialize rs2
sha512sum0r x5, x21, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x479b9c22 # initialize rs1
li x11, 0x05ed2b7a # initialize rs2
sha512sum0r x6, x29, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0x59e367c1 # initialize rs1
li x24, 0x94a02635 # initialize rs2
sha512sum0r x7, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x0458caf8 # initialize rs1
li x30, 0x645b8133 # initialize rs2
sha512sum0r x8, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0x323f2460 # initialize rs1
li x6, 0x69e614c2 # initialize rs2
sha512sum0r x9, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x14, 0x243dc8f3 # initialize rs1
li x20, 0xf9df2bd0 # initialize rs2
sha512sum0r x10, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x24, 0xd5d189e5 # initialize rs1
li x6, 0x6cb3fee5 # initialize rs2
sha512sum0r x11, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x26, 0x314b32e6 # initialize rs1
li x17, 0xb0cab767 # initialize rs2
sha512sum0r x12, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x16, 0xc0e36276 # initialize rs1
li x15, 0x3489c83d # initialize rs2
sha512sum0r x13, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x1, 0xcf32625f # initialize rs1
li x10, 0xb6993d03 # initialize rs2
sha512sum0r x14, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0x40ca426f # initialize rs1
li x27, 0x695ae5fd # initialize rs2
sha512sum0r x15, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x11, 0xe9b68a3d # initialize rs1
li x3, 0xe856755d # initialize rs2
sha512sum0r x16, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x26, 0x4aadb0da # initialize rs1
li x21, 0xf65a9ab8 # initialize rs2
sha512sum0r x17, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x5, 0xf0bd85e2 # initialize rs1
li x1, 0x962683a2 # initialize rs2
sha512sum0r x18, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x10, 0xd5f571e1 # initialize rs1
li x17, 0x5084c504 # initialize rs2
sha512sum0r x19, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x12, 0x7f4de307 # initialize rs1
li x13, 0x8a14fa0a # initialize rs2
sha512sum0r x20, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x22, 0x96cb931c # initialize rs1
li x27, 0xacd1e032 # initialize rs2
sha512sum0r x21, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x18, 0x4f999030 # initialize rs1
li x1, 0x759a678c # initialize rs2
sha512sum0r x22, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0xe0d67343 # initialize rs1
li x29, 0x0c4f2116 # initialize rs2
sha512sum0r x23, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x17, 0x6ee20e51 # initialize rs1
li x18, 0xdf775f95 # initialize rs2
sha512sum0r x24, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x71495c61 # initialize rs1
li x3, 0xc8e37bb3 # initialize rs2
sha512sum0r x25, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x2, 0xf7520d6c # initialize rs1
li x6, 0xa2e33647 # initialize rs2
sha512sum0r x26, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x17, 0xecfec58e # initialize rs1
li x16, 0x4320a870 # initialize rs2
sha512sum0r x27, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x20, 0x16acae10 # initialize rs1
li x7, 0xaab3a229 # initialize rs2
sha512sum0r x28, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x15, 0x12eda9d8 # initialize rs1
li x22, 0xe51a670a # initialize rs2
sha512sum0r x29, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x21, 0xa4b9ba27 # initialize rs1
li x29, 0x2caeeb57 # initialize rs2
sha512sum0r x30, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x3, 0x9c87181e # initialize rs1
li x15, 0x6cc8b276 # initialize rs2
sha512sum0r x31, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x13, 0x00000000 # initialize rs1
li x8, 0x1c67df12 # initialize rs2
sha512sum0r x12, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x30, 0x00000001 # initialize rs1
li x5, 0xf1de9b10 # initialize rs2
sha512sum0r x25, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x00000002 # initialize rs1
li x26, 0x92c8de27 # initialize rs2
sha512sum0r x2, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x3, 0x80000000 # initialize rs1
li x7, 0x2f960952 # initialize rs2
sha512sum0r x11, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x24, 0x80000001 # initialize rs1
li x25, 0xf6d851ca # initialize rs2
sha512sum0r x13, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x26, 0x7fffffff # initialize rs1
li x14, 0x02e4f12b # initialize rs2
sha512sum0r x18, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x25, 0x7ffffffe # initialize rs1
li x28, 0x38e9ee02 # initialize rs2
sha512sum0r x15, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x16, 0xffffffff # initialize rs1
li x31, 0x082b19e4 # initialize rs2
sha512sum0r x1, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0xfffffffe # initialize rs1
li x29, 0x067f47fd # initialize rs2
sha512sum0r x31, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x5, 0x5bbc8872 # initialize rs1
li x1, 0x8a7ce5eb # initialize rs2
sha512sum0r x28, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x28, 0xaaaaaaaa # initialize rs1
li x15, 0x950b3c70 # initialize rs2
sha512sum0r x8, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x7, 0x55555555 # initialize rs1
li x24, 0x39644617 # initialize rs2
sha512sum0r x8, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x30, 0xfdbe49d5 # initialize rs1
li x21, 0x00000000 # initialize rs2
sha512sum0r x6, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x1, 0xd722e3dc # initialize rs1
li x17, 0x00000001 # initialize rs2
sha512sum0r x26, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x30, 0x7d1a8f5e # initialize rs1
li x28, 0x00000002 # initialize rs2
sha512sum0r x17, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x30, 0x8489aadc # initialize rs1
li x27, 0x80000000 # initialize rs2
sha512sum0r x20, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x8, 0xa0c1fab5 # initialize rs1
li x18, 0x80000001 # initialize rs2
sha512sum0r x26, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x12, 0xd263e688 # initialize rs1
li x9, 0x7fffffff # initialize rs2
sha512sum0r x11, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x28, 0x747ee521 # initialize rs1
li x5, 0x7ffffffe # initialize rs2
sha512sum0r x10, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x18, 0xc8fff37f # initialize rs1
li x13, 0xffffffff # initialize rs2
sha512sum0r x8, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x29, 0xf952460c # initialize rs1
li x13, 0xfffffffe # initialize rs2
sha512sum0r x6, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x6, 0xef56060d # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
sha512sum0r x9, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x21, 0x57dca625 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
sha512sum0r x6, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x5, 0xfb91c5a9 # initialize rs1
li x8, 0x55555555 # initialize rs2
sha512sum0r x21, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x1, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
sha512sum0r x9, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x16, 0x00000000 # initialize rs1
li x27, 0x00000001 # initialize rs2
sha512sum0r x30, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x10, 0x00000000 # initialize rs1
li x28, 0x00000002 # initialize rs2
sha512sum0r x23, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x15, 0x00000000 # initialize rs1
li x24, 0x80000000 # initialize rs2
sha512sum0r x23, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x29, 0x00000000 # initialize rs1
li x17, 0x80000001 # initialize rs2
sha512sum0r x14, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x30, 0x00000000 # initialize rs1
li x17, 0x7fffffff # initialize rs2
sha512sum0r x7, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x16, 0x00000000 # initialize rs1
li x22, 0x7ffffffe # initialize rs2
sha512sum0r x19, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x28, 0x00000000 # initialize rs1
li x19, 0xffffffff # initialize rs2
sha512sum0r x30, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x7, 0x00000000 # initialize rs1
li x18, 0xfffffffe # initialize rs2
sha512sum0r x27, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x18, 0x00000000 # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
sha512sum0r x27, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x14, 0x00000000 # initialize rs1
li x1, 0xaaaaaaaa # initialize rs2
sha512sum0r x29, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x2, 0x00000000 # initialize rs1
li x6, 0x55555555 # initialize rs2
sha512sum0r x22, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x17, 0x00000001 # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sum0r x6, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x20, 0x00000001 # initialize rs1
li x27, 0x00000001 # initialize rs2
sha512sum0r x22, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x3, 0x00000001 # initialize rs1
li x23, 0x00000002 # initialize rs2
sha512sum0r x7, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x2, 0x00000001 # initialize rs1
li x11, 0x80000000 # initialize rs2
sha512sum0r x13, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x22, 0x00000001 # initialize rs1
li x1, 0x80000001 # initialize rs2
sha512sum0r x15, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x16, 0x00000001 # initialize rs1
li x7, 0x7fffffff # initialize rs2
sha512sum0r x15, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x7, 0x00000001 # initialize rs1
li x16, 0x7ffffffe # initialize rs2
sha512sum0r x17, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x29, 0x00000001 # initialize rs1
li x31, 0xffffffff # initialize rs2
sha512sum0r x16, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x2, 0x00000001 # initialize rs1
li x5, 0xfffffffe # initialize rs2
sha512sum0r x11, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x10, 0x00000001 # initialize rs1
li x7, 0x5bbc8872 # initialize rs2
sha512sum0r x17, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x1, 0x00000001 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
sha512sum0r x31, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x16, 0x00000001 # initialize rs1
li x2, 0x55555555 # initialize rs2
sha512sum0r x18, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x30, 0x00000002 # initialize rs1
li x26, 0x00000000 # initialize rs2
sha512sum0r x18, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x17, 0x00000002 # initialize rs1
li x18, 0x00000001 # initialize rs2
sha512sum0r x9, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x6, 0x00000002 # initialize rs1
li x2, 0x00000002 # initialize rs2
sha512sum0r x15, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x8, 0x00000002 # initialize rs1
li x13, 0x80000000 # initialize rs2
sha512sum0r x19, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x19, 0x00000002 # initialize rs1
li x12, 0x80000001 # initialize rs2
sha512sum0r x18, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x6, 0x00000002 # initialize rs1
li x13, 0x7fffffff # initialize rs2
sha512sum0r x8, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x31, 0x00000002 # initialize rs1
li x10, 0x7ffffffe # initialize rs2
sha512sum0r x30, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x8, 0x00000002 # initialize rs1
li x16, 0xffffffff # initialize rs2
sha512sum0r x5, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x6, 0x00000002 # initialize rs1
li x16, 0xfffffffe # initialize rs2
sha512sum0r x25, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x16, 0x00000002 # initialize rs1
li x1, 0x5bbc8872 # initialize rs2
sha512sum0r x15, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x14, 0x00000002 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
sha512sum0r x23, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x23, 0x00000002 # initialize rs1
li x24, 0x55555555 # initialize rs2
sha512sum0r x17, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x20, 0x80000000 # initialize rs1
li x29, 0x00000000 # initialize rs2
sha512sum0r x30, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x18, 0x80000000 # initialize rs1
li x2, 0x00000001 # initialize rs2
sha512sum0r x12, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x29, 0x80000000 # initialize rs1
li x31, 0x00000002 # initialize rs2
sha512sum0r x11, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x18, 0x80000000 # initialize rs1
li x7, 0x80000000 # initialize rs2
sha512sum0r x1, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x10, 0x80000000 # initialize rs1
li x14, 0x80000001 # initialize rs2
sha512sum0r x8, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x3, 0x80000000 # initialize rs1
li x29, 0x7fffffff # initialize rs2
sha512sum0r x6, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x2, 0x80000000 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
sha512sum0r x29, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x30, 0x80000000 # initialize rs1
li x5, 0xffffffff # initialize rs2
sha512sum0r x16, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x11, 0x80000000 # initialize rs1
li x5, 0xfffffffe # initialize rs2
sha512sum0r x1, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x14, 0x80000000 # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
sha512sum0r x22, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x20, 0x80000000 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
sha512sum0r x11, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x27, 0x80000000 # initialize rs1
li x14, 0x55555555 # initialize rs2
sha512sum0r x19, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x17, 0x80000001 # initialize rs1
li x5, 0x00000000 # initialize rs2
sha512sum0r x27, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x11, 0x80000001 # initialize rs1
li x9, 0x00000001 # initialize rs2
sha512sum0r x28, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x1, 0x80000001 # initialize rs1
li x21, 0x00000002 # initialize rs2
sha512sum0r x9, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x7, 0x80000001 # initialize rs1
li x28, 0x80000000 # initialize rs2
sha512sum0r x15, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x20, 0x80000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
sha512sum0r x24, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x28, 0x80000001 # initialize rs1
li x9, 0x7fffffff # initialize rs2
sha512sum0r x18, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x25, 0x80000001 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
sha512sum0r x11, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x1, 0x80000001 # initialize rs1
li x18, 0xffffffff # initialize rs2
sha512sum0r x16, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x7, 0x80000001 # initialize rs1
li x15, 0xfffffffe # initialize rs2
sha512sum0r x19, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x22, 0x80000001 # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
sha512sum0r x28, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x23, 0x80000001 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sha512sum0r x26, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x10, 0x80000001 # initialize rs1
li x12, 0x55555555 # initialize rs2
sha512sum0r x21, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x8, 0x7fffffff # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sum0r x18, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x9, 0x7fffffff # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sum0r x27, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x26, 0x7fffffff # initialize rs1
li x28, 0x00000002 # initialize rs2
sha512sum0r x27, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x5, 0x7fffffff # initialize rs1
li x10, 0x80000000 # initialize rs2
sha512sum0r x27, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x10, 0x7fffffff # initialize rs1
li x19, 0x80000001 # initialize rs2
sha512sum0r x6, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x28, 0x7fffffff # initialize rs1
li x1, 0x7fffffff # initialize rs2
sha512sum0r x24, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x10, 0x7fffffff # initialize rs1
li x17, 0x7ffffffe # initialize rs2
sha512sum0r x30, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x9, 0x7fffffff # initialize rs1
li x13, 0xffffffff # initialize rs2
sha512sum0r x30, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x18, 0x7fffffff # initialize rs1
li x12, 0xfffffffe # initialize rs2
sha512sum0r x8, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x17, 0x7fffffff # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
sha512sum0r x10, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x19, 0x7fffffff # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
sha512sum0r x21, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x19, 0x7fffffff # initialize rs1
li x15, 0x55555555 # initialize rs2
sha512sum0r x18, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x28, 0x7ffffffe # initialize rs1
li x13, 0x00000000 # initialize rs2
sha512sum0r x8, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x30, 0x7ffffffe # initialize rs1
li x12, 0x00000001 # initialize rs2
sha512sum0r x21, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x19, 0x7ffffffe # initialize rs1
li x8, 0x00000002 # initialize rs2
sha512sum0r x21, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x26, 0x7ffffffe # initialize rs1
li x16, 0x80000000 # initialize rs2
sha512sum0r x22, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x31, 0x7ffffffe # initialize rs1
li x12, 0x80000001 # initialize rs2
sha512sum0r x26, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x9, 0x7ffffffe # initialize rs1
li x5, 0x7fffffff # initialize rs2
sha512sum0r x12, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x31, 0x7ffffffe # initialize rs1
li x22, 0x7ffffffe # initialize rs2
sha512sum0r x2, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x11, 0x7ffffffe # initialize rs1
li x13, 0xffffffff # initialize rs2
sha512sum0r x20, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x12, 0x7ffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
sha512sum0r x17, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x30, 0x7ffffffe # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
sha512sum0r x5, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x21, 0x7ffffffe # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sha512sum0r x2, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x30, 0x7ffffffe # initialize rs1
li x6, 0x55555555 # initialize rs2
sha512sum0r x19, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x29, 0xffffffff # initialize rs1
li x27, 0x00000000 # initialize rs2
sha512sum0r x30, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x29, 0xffffffff # initialize rs1
li x26, 0x00000001 # initialize rs2
sha512sum0r x15, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x2, 0xffffffff # initialize rs1
li x26, 0x00000002 # initialize rs2
sha512sum0r x16, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x26, 0xffffffff # initialize rs1
li x29, 0x80000000 # initialize rs2
sha512sum0r x6, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x6, 0xffffffff # initialize rs1
li x14, 0x80000001 # initialize rs2
sha512sum0r x26, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x8, 0xffffffff # initialize rs1
li x18, 0x7fffffff # initialize rs2
sha512sum0r x6, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x31, 0xffffffff # initialize rs1
li x6, 0x7ffffffe # initialize rs2
sha512sum0r x25, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x12, 0xffffffff # initialize rs1
li x21, 0xffffffff # initialize rs2
sha512sum0r x20, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x5, 0xffffffff # initialize rs1
li x3, 0xfffffffe # initialize rs2
sha512sum0r x19, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x10, 0xffffffff # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
sha512sum0r x17, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x5, 0xffffffff # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
sha512sum0r x13, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x28, 0xffffffff # initialize rs1
li x29, 0x55555555 # initialize rs2
sha512sum0r x12, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x15, 0xfffffffe # initialize rs1
li x20, 0x00000000 # initialize rs2
sha512sum0r x24, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x11, 0xfffffffe # initialize rs1
li x27, 0x00000001 # initialize rs2
sha512sum0r x2, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x11, 0xfffffffe # initialize rs1
li x26, 0x00000002 # initialize rs2
sha512sum0r x18, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x14, 0xfffffffe # initialize rs1
li x22, 0x80000000 # initialize rs2
sha512sum0r x19, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x23, 0xfffffffe # initialize rs1
li x26, 0x80000001 # initialize rs2
sha512sum0r x19, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x15, 0xfffffffe # initialize rs1
li x22, 0x7fffffff # initialize rs2
sha512sum0r x1, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x24, 0xfffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
sha512sum0r x1, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x29, 0xfffffffe # initialize rs1
li x1, 0xffffffff # initialize rs2
sha512sum0r x7, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x28, 0xfffffffe # initialize rs1
li x15, 0xfffffffe # initialize rs2
sha512sum0r x7, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x17, 0xfffffffe # initialize rs1
li x5, 0x5bbc8872 # initialize rs2
sha512sum0r x28, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x26, 0xfffffffe # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sha512sum0r x19, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x11, 0xfffffffe # initialize rs1
li x10, 0x55555555 # initialize rs2
sha512sum0r x20, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x19, 0x5bbc8872 # initialize rs1
li x25, 0x00000000 # initialize rs2
sha512sum0r x16, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x9, 0x5bbc8872 # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sum0r x5, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x30, 0x5bbc8872 # initialize rs1
li x5, 0x00000002 # initialize rs2
sha512sum0r x21, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x2, 0x5bbc8872 # initialize rs1
li x25, 0x80000000 # initialize rs2
sha512sum0r x9, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x10, 0x5bbc8872 # initialize rs1
li x19, 0x80000001 # initialize rs2
sha512sum0r x21, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x15, 0x5bbc8872 # initialize rs1
li x26, 0x7fffffff # initialize rs2
sha512sum0r x22, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x3, 0x5bbc8872 # initialize rs1
li x15, 0x7ffffffe # initialize rs2
sha512sum0r x19, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x1, 0x5bbc8872 # initialize rs1
li x14, 0xffffffff # initialize rs2
sha512sum0r x12, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x8, 0x5bbc8872 # initialize rs1
li x20, 0xfffffffe # initialize rs2
sha512sum0r x22, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x27, 0x5bbc8872 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
sha512sum0r x8, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x9, 0x5bbc8872 # initialize rs1
li x18, 0xaaaaaaaa # initialize rs2
sha512sum0r x13, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x14, 0x5bbc8872 # initialize rs1
li x29, 0x55555555 # initialize rs2
sha512sum0r x26, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x2, 0xaaaaaaaa # initialize rs1
li x13, 0x00000000 # initialize rs2
sha512sum0r x23, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x31, 0xaaaaaaaa # initialize rs1
li x10, 0x00000001 # initialize rs2
sha512sum0r x1, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x24, 0xaaaaaaaa # initialize rs1
li x3, 0x00000002 # initialize rs2
sha512sum0r x11, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x31, 0xaaaaaaaa # initialize rs1
li x6, 0x80000000 # initialize rs2
sha512sum0r x19, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x23, 0xaaaaaaaa # initialize rs1
li x24, 0x80000001 # initialize rs2
sha512sum0r x27, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x14, 0xaaaaaaaa # initialize rs1
li x22, 0x7fffffff # initialize rs2
sha512sum0r x31, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x24, 0xaaaaaaaa # initialize rs1
li x16, 0x7ffffffe # initialize rs2
sha512sum0r x7, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x9, 0xaaaaaaaa # initialize rs1
li x18, 0xffffffff # initialize rs2
sha512sum0r x20, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x29, 0xaaaaaaaa # initialize rs1
li x19, 0xfffffffe # initialize rs2
sha512sum0r x24, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x12, 0xaaaaaaaa # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
sha512sum0r x18, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
sha512sum0r x3, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x14, 0xaaaaaaaa # initialize rs1
li x29, 0x55555555 # initialize rs2
sha512sum0r x8, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x1, 0x55555555 # initialize rs1
li x7, 0x00000000 # initialize rs2
sha512sum0r x2, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x3, 0x55555555 # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sum0r x19, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x29, 0x55555555 # initialize rs1
li x14, 0x00000002 # initialize rs2
sha512sum0r x22, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x13, 0x55555555 # initialize rs1
li x2, 0x80000000 # initialize rs2
sha512sum0r x24, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x12, 0x55555555 # initialize rs1
li x15, 0x80000001 # initialize rs2
sha512sum0r x20, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x14, 0x55555555 # initialize rs1
li x8, 0x7fffffff # initialize rs2
sha512sum0r x30, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x29, 0x55555555 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sha512sum0r x13, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x10, 0x55555555 # initialize rs1
li x26, 0xffffffff # initialize rs2
sha512sum0r x7, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x26, 0x55555555 # initialize rs1
li x19, 0xfffffffe # initialize rs2
sha512sum0r x3, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x19, 0x55555555 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
sha512sum0r x14, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x12, 0x55555555 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
sha512sum0r x11, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x18, 0x55555555 # initialize rs1
li x23, 0x55555555 # initialize rs2
sha512sum0r x11, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x14a5ea32 # initialize rs1
li x0, 0xcde21601 # initialize rs2
sha512sum0r x10, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x179762e8 # initialize rs1
li x1, 0xd712bfd3 # initialize rs2
sha512sum0r x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x98fe174b # initialize rs1
li x2, 0xf791b0ed # initialize rs2
sha512sum0r x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2493b3cf # initialize rs1
li x3, 0x2d0272f0 # initialize rs2
sha512sum0r x29, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5a757566 # initialize rs1
li x4, 0x10cd8a6a # initialize rs2
sha512sum0r x15, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1a9cca4e # initialize rs1
li x5, 0xa66da0f5 # initialize rs2
sha512sum0r x3, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x582a5747 # initialize rs1
li x6, 0x353e7823 # initialize rs2
sha512sum0r x4, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x85856d08 # initialize rs1
li x7, 0x5faea210 # initialize rs2
sha512sum0r x20, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x8acf0733 # initialize rs1
li x8, 0x8a8f8a21 # initialize rs2
sha512sum0r x25, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xfb70bc7c # initialize rs1
li x9, 0x07a9b512 # initialize rs2
sha512sum0r x14, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x93326a3c # initialize rs1
li x10, 0xa002e3f0 # initialize rs2
sha512sum0r x16, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x0b355017 # initialize rs1
li x11, 0x36baf22a # initialize rs2
sha512sum0r x6, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x0e162ed1 # initialize rs1
li x12, 0x3f5a6114 # initialize rs2
sha512sum0r x24, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x6a32a331 # initialize rs1
li x13, 0x62db741b # initialize rs2
sha512sum0r x2, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x9f255d54 # initialize rs1
li x14, 0xb4611824 # initialize rs2
sha512sum0r x10, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xa8b7076f # initialize rs1
li x15, 0x91e60d18 # initialize rs2
sha512sum0r x14, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xec524cd9 # initialize rs1
li x16, 0x8c3c4ab7 # initialize rs2
sha512sum0r x17, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xbbb0ae0d # initialize rs1
li x17, 0xb95c75a0 # initialize rs2
sha512sum0r x15, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x92b3af24 # initialize rs1
li x18, 0x380724ac # initialize rs2
sha512sum0r x24, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xdae40a3c # initialize rs1
li x19, 0xa3cc5a61 # initialize rs2
sha512sum0r x30, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x4b92a33b # initialize rs1
li x20, 0x6bc831ae # initialize rs2
sha512sum0r x11, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xb7a0fa5a # initialize rs1
li x21, 0xd63a40eb # initialize rs2
sha512sum0r x18, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x9a3b47b8 # initialize rs1
li x22, 0x20698c9d # initialize rs2
sha512sum0r x24, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x3546eef8 # initialize rs1
li x23, 0xb7c8e400 # initialize rs2
sha512sum0r x30, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xfc90511b # initialize rs1
li x24, 0xd391916c # initialize rs2
sha512sum0r x6, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xd7b9deeb # initialize rs1
li x25, 0x4f461f1b # initialize rs2
sha512sum0r x17, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x8e6f1014 # initialize rs1
li x26, 0x58f126c6 # initialize rs2
sha512sum0r x19, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xd2cf3c22 # initialize rs1
li x27, 0xe25b4db3 # initialize rs2
sha512sum0r x22, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x8e9119e4 # initialize rs1
li x28, 0x841d66b9 # initialize rs2
sha512sum0r x25, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x79cc38b4 # initialize rs1
li x29, 0x302db349 # initialize rs2
sha512sum0r x25, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x4e8a8dda # initialize rs1
li x30, 0x3269cc2c # initialize rs2
sha512sum0r x17, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x88fbf767 # initialize rs1
li x31, 0x11475fa5 # initialize rs2
sha512sum0r x11, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x71f59874 # initialize rs1
li x3, 0x13e5caa8 # initialize rs2
sha512sum0r x0, x0, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x23471f0a # initialize rs1
li x19, 0x147eef97 # initialize rs2
sha512sum0r x1, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8266051d # initialize rs1
li x21, 0xd5caf2f5 # initialize rs2
sha512sum0r x2, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x2fc87c66 # initialize rs1
li x17, 0x64be583a # initialize rs2
sha512sum0r x3, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa2d7e3b4 # initialize rs1
li x26, 0x62649920 # initialize rs2
sha512sum0r x4, x4, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x93bf331d # initialize rs1
li x1, 0x750a2499 # initialize rs2
sha512sum0r x5, x5, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x475c6de7 # initialize rs1
li x26, 0x233544ec # initialize rs2
sha512sum0r x6, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8a4e3398 # initialize rs1
li x10, 0x9842b165 # initialize rs2
sha512sum0r x7, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x68ae44dc # initialize rs1
li x3, 0x8ee6c796 # initialize rs2
sha512sum0r x8, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x65d6d421 # initialize rs1
li x28, 0xbfab390f # initialize rs2
sha512sum0r x9, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x3ab9ab17 # initialize rs1
li x18, 0x5696231d # initialize rs2
sha512sum0r x10, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x004f911c # initialize rs1
li x18, 0xa2e28eb1 # initialize rs2
sha512sum0r x11, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb1e9ecf5 # initialize rs1
li x21, 0x20f1264a # initialize rs2
sha512sum0r x12, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x3a1b4fa1 # initialize rs1
li x20, 0x9fd42549 # initialize rs2
sha512sum0r x13, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x0121c9cc # initialize rs1
li x13, 0x40eef0e6 # initialize rs2
sha512sum0r x14, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa318c568 # initialize rs1
li x2, 0xb3095fe3 # initialize rs2
sha512sum0r x15, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x98bc4f1e # initialize rs1
li x30, 0x21534238 # initialize rs2
sha512sum0r x16, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1b351651 # initialize rs1
li x27, 0x41cd7dd4 # initialize rs2
sha512sum0r x17, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x7446b0a0 # initialize rs1
li x20, 0x23ecbf73 # initialize rs2
sha512sum0r x18, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x36aae693 # initialize rs1
li x22, 0x0d3e8df7 # initialize rs2
sha512sum0r x19, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xfb3a99b2 # initialize rs1
li x30, 0xf21fed71 # initialize rs2
sha512sum0r x20, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x6d89d1be # initialize rs1
li x5, 0xcb6897f5 # initialize rs2
sha512sum0r x21, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x26251f0b # initialize rs1
li x26, 0xf53b3352 # initialize rs2
sha512sum0r x22, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x67776752 # initialize rs1
li x3, 0x4a735887 # initialize rs2
sha512sum0r x23, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc6eee90d # initialize rs1
li x24, 0x7de8422c # initialize rs2
sha512sum0r x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x906715af # initialize rs1
li x31, 0xa4e57710 # initialize rs2
sha512sum0r x25, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x667d87f9 # initialize rs1
li x5, 0x74cc149a # initialize rs2
sha512sum0r x26, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb8c71f44 # initialize rs1
li x8, 0xb6bf4d3c # initialize rs2
sha512sum0r x27, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x81c945f8 # initialize rs1
li x29, 0xcf658d33 # initialize rs2
sha512sum0r x28, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x45538328 # initialize rs1
li x18, 0x385eb1b4 # initialize rs2
sha512sum0r x29, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xcabcf3e1 # initialize rs1
li x22, 0x97747915 # initialize rs2
sha512sum0r x30, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xc712cfba # initialize rs1
li x17, 0x02f64824 # initialize rs2
sha512sum0r x31, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x26, 0xfae7e28b # initialize rs1
li x0, 0x90313ea5 # initialize rs2
sha512sum0r x0, x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x21, 0x9d5bc8ad # initialize rs1
li x1, 0xc8368397 # initialize rs2
sha512sum0r x1, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x8, 0x8f55b56d # initialize rs1
li x2, 0x563be264 # initialize rs2
sha512sum0r x2, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x10, 0xc1868d6c # initialize rs1
li x3, 0xc3dc38ef # initialize rs2
sha512sum0r x3, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0xcce1a6fb # initialize rs1
li x4, 0x640dec2b # initialize rs2
sha512sum0r x4, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0xbb02ac1f # initialize rs1
li x5, 0x2b5902b4 # initialize rs2
sha512sum0r x5, x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x157f4057 # initialize rs1
li x6, 0x249d2978 # initialize rs2
sha512sum0r x6, x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xb7adadaf # initialize rs1
li x7, 0x98b1631a # initialize rs2
sha512sum0r x7, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x15, 0xb7923a88 # initialize rs1
li x8, 0x218f8f86 # initialize rs2
sha512sum0r x8, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x25, 0x3afbb13f # initialize rs1
li x9, 0x27f79e40 # initialize rs2
sha512sum0r x9, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x8, 0x67c39af2 # initialize rs1
li x10, 0x067f1068 # initialize rs2
sha512sum0r x10, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x18, 0x6c03748d # initialize rs1
li x11, 0x9712cb7d # initialize rs2
sha512sum0r x11, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x1, 0xb7c55bb0 # initialize rs1
li x12, 0xe2a61c8d # initialize rs2
sha512sum0r x12, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x17, 0xf073d8b5 # initialize rs1
li x13, 0x2825f7db # initialize rs2
sha512sum0r x13, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x16, 0xdaa83ae4 # initialize rs1
li x14, 0x40a18979 # initialize rs2
sha512sum0r x14, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x27, 0x6859ab58 # initialize rs1
li x15, 0x707e78f7 # initialize rs2
sha512sum0r x15, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x23, 0x6ebaea76 # initialize rs1
li x16, 0x8750da76 # initialize rs2
sha512sum0r x16, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x8, 0xfd2bb9a4 # initialize rs1
li x17, 0x9212d6ed # initialize rs2
sha512sum0r x17, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x31, 0x71e87e17 # initialize rs1
li x18, 0x39bed3b2 # initialize rs2
sha512sum0r x18, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x15, 0x7c5b482c # initialize rs1
li x19, 0x445f337c # initialize rs2
sha512sum0r x19, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x3, 0xc544b1f2 # initialize rs1
li x20, 0x33f0c128 # initialize rs2
sha512sum0r x20, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x31, 0x90e49ad0 # initialize rs1
li x21, 0xf37cd257 # initialize rs2
sha512sum0r x21, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x17, 0x10bee99d # initialize rs1
li x22, 0x09cf64ff # initialize rs2
sha512sum0r x22, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x25, 0xd613f7de # initialize rs1
li x23, 0x41a4779b # initialize rs2
sha512sum0r x23, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x20, 0xf8a675a5 # initialize rs1
li x24, 0xb1c6dba8 # initialize rs2
sha512sum0r x24, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x17, 0x0a5801c7 # initialize rs1
li x25, 0x8c662e90 # initialize rs2
sha512sum0r x25, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x28, 0xb50a737e # initialize rs1
li x26, 0xfb2f4ffc # initialize rs2
sha512sum0r x26, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x2, 0x5b2e060e # initialize rs1
li x27, 0x4a23feda # initialize rs2
sha512sum0r x27, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x20, 0xe2587894 # initialize rs1
li x28, 0x910cbf58 # initialize rs2
sha512sum0r x28, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x6, 0x6c29a42d # initialize rs1
li x29, 0x9d1389f7 # initialize rs2
sha512sum0r x29, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x19, 0xe78acdd6 # initialize rs1
li x30, 0x20c67c32 # initialize rs2
sha512sum0r x30, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x5, 0xc6e8382a # initialize rs1
li x31, 0xbcd68107 # initialize rs2
sha512sum0r x31, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x696e0705 # initialize rs1
li x0, 0x72cf5068 # initialize rs2
sha512sum0r x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x3b993a34 # initialize rs1
li x1, 0xb995d212 # initialize rs2
sha512sum0r x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x07e8b151 # initialize rs1
li x2, 0x856be73e # initialize rs2
sha512sum0r x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x79077b8c # initialize rs1
li x3, 0x61d37f67 # initialize rs2
sha512sum0r x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xffd32606 # initialize rs1
li x4, 0x615e65be # initialize rs2
sha512sum0r x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1eda6313 # initialize rs1
li x5, 0xf8cde784 # initialize rs2
sha512sum0r x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2cc4934a # initialize rs1
li x6, 0xef894c0b # initialize rs2
sha512sum0r x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfafee9e8 # initialize rs1
li x7, 0x0f192f94 # initialize rs2
sha512sum0r x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xc1257e27 # initialize rs1
li x8, 0x0bde628f # initialize rs2
sha512sum0r x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x64435fe2 # initialize rs1
li x9, 0xa4d3e06a # initialize rs2
sha512sum0r x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x9c610164 # initialize rs1
li x10, 0x9854df24 # initialize rs2
sha512sum0r x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x16f7d999 # initialize rs1
li x11, 0xc7db9f1a # initialize rs2
sha512sum0r x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xf3fbe407 # initialize rs1
li x12, 0xfc3391c2 # initialize rs2
sha512sum0r x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xe378a6b7 # initialize rs1
li x13, 0x60a7ab11 # initialize rs2
sha512sum0r x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x26512a6f # initialize rs1
li x14, 0xf625bbd4 # initialize rs2
sha512sum0r x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xd6a13a5a # initialize rs1
li x15, 0x32abbecb # initialize rs2
sha512sum0r x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x808b5ad6 # initialize rs1
li x16, 0xa8957e68 # initialize rs2
sha512sum0r x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x3178480c # initialize rs1
li x17, 0xc314ec63 # initialize rs2
sha512sum0r x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xaf511788 # initialize rs1
li x18, 0x86fe6cb3 # initialize rs2
sha512sum0r x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xcc39447d # initialize rs1
li x19, 0x573148db # initialize rs2
sha512sum0r x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xfd3bb0bd # initialize rs1
li x20, 0xcca87b79 # initialize rs2
sha512sum0r x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x710198ef # initialize rs1
li x21, 0x5b989e0a # initialize rs2
sha512sum0r x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x398b1e8c # initialize rs1
li x22, 0x3265f906 # initialize rs2
sha512sum0r x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x1b52c238 # initialize rs1
li x23, 0x3fd6b69e # initialize rs2
sha512sum0r x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xf41f072a # initialize rs1
li x24, 0x567d2b34 # initialize rs2
sha512sum0r x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xe6260bd3 # initialize rs1
li x25, 0x3b25de21 # initialize rs2
sha512sum0r x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x6e4b850c # initialize rs1
li x26, 0xd7693394 # initialize rs2
sha512sum0r x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x21e73928 # initialize rs1
li x27, 0x09e3196d # initialize rs2
sha512sum0r x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x53bd4dc9 # initialize rs1
li x28, 0x8b3c69e3 # initialize rs2
sha512sum0r x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x4ba075ff # initialize rs1
li x29, 0xe94fb964 # initialize rs2
sha512sum0r x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x504ebbb1 # initialize rs1
li x30, 0x143e578b # initialize rs2
sha512sum0r x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x46ea4faf # initialize rs1
li x31, 0x0f07edc2 # initialize rs2
sha512sum0r x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x19, x15 # perform first operation
sha512sum0r x29, x23, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x25, x29 # perform first operation
sha512sum0r x6, x21, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x3, x14 # perform first operation
sha512sum0r x21, x27, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x7, x30 # perform first operation
sha512sum0r x30, x17, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x28, x27 # perform first operation
sha512sum0r x11, x21, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x2, x9 # perform first operation
sha512sum0r x16, x9, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x9, x12 # perform first operation
sha512sum0r x30, x1, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x16, x2 # perform first operation
sha512sum0r x10, x22, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x14, x7 # perform first operation
sha512sum0r x16, x10, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x13, x21 # perform first operation
sha512sum0r x13, x18, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x20, x31 # perform first operation
sha512sum0r x31, x2, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x25, x27 # perform first operation
sha512sum0r x17, x13, x24 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-sha512sig0l.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x7a663f5f # initialize rs1
li x27, 0x0bdeff63 # initialize rs2
sha512sig0l x14, x0, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x681457c9 # initialize rs1
li x11, 0x135cd933 # initialize rs2
sha512sig0l x25, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xf7614839 # initialize rs1
li x10, 0x320b759f # initialize rs2
sha512sig0l x7, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x16864274 # initialize rs1
li x28, 0xb50ebde5 # initialize rs2
sha512sig0l x23, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x887cac52 # initialize rs1
li x3, 0x9ec01db1 # initialize rs2
sha512sig0l x6, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf3988002 # initialize rs1
li x17, 0x9ddb3b37 # initialize rs2
sha512sig0l x9, x5, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xed567453 # initialize rs1
li x22, 0x07eb777f # initialize rs2
sha512sig0l x31, x6, x22 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6dacc927 # initialize rs1
li x8, 0x9ac400f3 # initialize rs2
sha512sig0l x10, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xb2263992 # initialize rs1
li x5, 0xed75f061 # initialize rs2
sha512sig0l x2, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xf28ee7c0 # initialize rs1
li x29, 0x8c4e5947 # initialize rs2
sha512sig0l x15, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x354ba7b4 # initialize rs1
li x2, 0x34d2fc2a # initialize rs2
sha512sig0l x23, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x3a96ea7c # initialize rs1
li x24, 0x6f56c703 # initialize rs2
sha512sig0l x1, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x51aadfc2 # initialize rs1
li x28, 0xf403332f # initialize rs2
sha512sig0l x21, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x25e20a7b # initialize rs1
li x26, 0x56cad435 # initialize rs2
sha512sig0l x18, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x22a66b3f # initialize rs1
li x16, 0xcfff66ed # initialize rs2
sha512sig0l x5, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x165c291e # initialize rs1
li x1, 0xda8cc519 # initialize rs2
sha512sig0l x7, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x71bdc65d # initialize rs1
li x5, 0x4ec605a5 # initialize rs2
sha512sig0l x15, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x47a2fe0f # initialize rs1
li x2, 0x949a2c21 # initialize rs2
sha512sig0l x3, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x4943132a # initialize rs1
li x11, 0x606df0a7 # initialize rs2
sha512sig0l x23, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x8f29222d # initialize rs1
li x28, 0xb33594ad # initialize rs2
sha512sig0l x8, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x40e417d5 # initialize rs1
li x16, 0x9f5d620a # initialize rs2
sha512sig0l x13, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xac2afcbe # initialize rs1
li x30, 0xab6ca765 # initialize rs2
sha512sig0l x5, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xe02d20bf # initialize rs1
li x27, 0xf0ac1c75 # initialize rs2
sha512sig0l x9, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x1ab7d4c8 # initialize rs1
li x10, 0xd11bdc79 # initialize rs2
sha512sig0l x20, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x0761fef1 # initialize rs1
li x10, 0x3d95a5d2 # initialize rs2
sha512sig0l x22, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x08829fbf # initialize rs1
li x18, 0x285b8e68 # initialize rs2
sha512sig0l x6, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xed284505 # initialize rs1
li x16, 0x3a572453 # initialize rs2
sha512sig0l x15, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x6cf7210f # initialize rs1
li x14, 0x4ea34704 # initialize rs2
sha512sig0l x28, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xa83d3f00 # initialize rs1
li x9, 0x529db3ad # initialize rs2
sha512sig0l x11, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xae705117 # initialize rs1
li x17, 0x8d884924 # initialize rs2
sha512sig0l x11, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xec9c1523 # initialize rs1
li x9, 0xe8c68f7d # initialize rs2
sha512sig0l x24, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x859362de # initialize rs1
li x29, 0x6bae3735 # initialize rs2
sha512sig0l x13, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x18, 0xe4510141 # initialize rs1
li x0, 0xa58fa0a3 # initialize rs2
sha512sig0l x26, x18, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x12, 0xb3457bd4 # initialize rs1
li x1, 0xbeab906d # initialize rs2
sha512sig0l x16, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x7, 0xd8e361bf # initialize rs1
li x2, 0x83d54c4f # initialize rs2
sha512sig0l x17, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x7, 0x7df0b3c4 # initialize rs1
li x3, 0x049cee09 # initialize rs2
sha512sig0l x22, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0xfc244cbc # initialize rs1
li x4, 0xb993a5a6 # initialize rs2
sha512sig0l x20, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0x42af9fcc # initialize rs1
li x5, 0xa9f56651 # initialize rs2
sha512sig0l x25, x14, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x8c846b10 # initialize rs1
li x6, 0xda619dcb # initialize rs2
sha512sig0l x18, x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x18, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0xf54ea637 # initialize rs1
li x7, 0xa607b295 # initialize rs2
sha512sig0l x21, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x12, 0xc9f75035 # initialize rs1
li x8, 0x66c3cf7f # initialize rs2
sha512sig0l x2, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x7, 0x2f0e5ee3 # initialize rs1
li x9, 0xe74e61c0 # initialize rs2
sha512sig0l x28, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x2, 0xf15eecdc # initialize rs1
li x10, 0xba514300 # initialize rs2
sha512sig0l x21, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x23, 0x1e2d3637 # initialize rs1
li x11, 0xf5bc9953 # initialize rs2
sha512sig0l x1, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x16, 0xc2a0ab68 # initialize rs1
li x12, 0x3577b604 # initialize rs2
sha512sig0l x24, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x12, 0xb7d4e7a9 # initialize rs1
li x13, 0x44f5d2d0 # initialize rs2
sha512sig0l x21, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x15, 0xf9d41474 # initialize rs1
li x14, 0xd0067e35 # initialize rs2
sha512sig0l x10, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x27, 0xb10538f9 # initialize rs1
li x15, 0xc8a9ac67 # initialize rs2
sha512sig0l x6, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x27, 0xc7499da6 # initialize rs1
li x16, 0x9fcc1496 # initialize rs2
sha512sig0l x5, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x30, 0xb31cd04d # initialize rs1
li x17, 0xe0f17f63 # initialize rs2
sha512sig0l x2, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x3, 0xcd592cdb # initialize rs1
li x18, 0x2d7cf23c # initialize rs2
sha512sig0l x5, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x24, 0x675a042e # initialize rs1
li x19, 0xef2319a4 # initialize rs2
sha512sig0l x15, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x30, 0x198102c8 # initialize rs1
li x20, 0x83f65583 # initialize rs2
sha512sig0l x6, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x17, 0x64636209 # initialize rs1
li x21, 0xb0afc878 # initialize rs2
sha512sig0l x14, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x14, 0xf51c3950 # initialize rs1
li x22, 0x04849285 # initialize rs2
sha512sig0l x10, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x17, 0x493e9e29 # initialize rs1
li x23, 0x5f248698 # initialize rs2
sha512sig0l x25, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x2, 0xd7745ef9 # initialize rs1
li x24, 0x9be58963 # initialize rs2
sha512sig0l x18, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x10, 0xf4a6509a # initialize rs1
li x25, 0x5fc8efd2 # initialize rs2
sha512sig0l x26, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x2, 0xd80bdc02 # initialize rs1
li x26, 0x4d36d89a # initialize rs2
sha512sig0l x21, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x22, 0x24f24509 # initialize rs1
li x27, 0x04d75db2 # initialize rs2
sha512sig0l x6, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x5, 0x772aa7af # initialize rs1
li x28, 0x34d5e717 # initialize rs2
sha512sig0l x3, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x5, 0x5d45f978 # initialize rs1
li x29, 0xdc51f52a # initialize rs2
sha512sig0l x8, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x19, 0x97f46d87 # initialize rs1
li x30, 0xb8436824 # initialize rs2
sha512sig0l x13, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x13, 0x14c760d0 # initialize rs1
li x31, 0x19a2b6ba # initialize rs2
sha512sig0l x9, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 252)

# Testcase cp_rd (Test destination rd = x0)
li x16, 0x19c26a16 # initialize rs1
li x24, 0x5136c347 # initialize rs2
sha512sig0l x0, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x21, 0x2b9af404 # initialize rs1
li x14, 0xc36358fc # initialize rs2
sha512sig0l x1, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x27, 0x51336672 # initialize rs1
li x18, 0x567846f4 # initialize rs2
sha512sig0l x2, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x17, 0xed41029e # initialize rs1
li x14, 0xbcd61968 # initialize rs2
sha512sig0l x3, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x212b1af4 # initialize rs1
li x22, 0x76ce0731 # initialize rs2
sha512sig0l x4, x17, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x26, 0xf06604e8 # initialize rs1
li x18, 0x485b8903 # initialize rs2
sha512sig0l x5, x26, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x3a2efe87 # initialize rs1
li x29, 0xe0876520 # initialize rs2
sha512sig0l x6, x9, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0xbd7d28cf # initialize rs1
li x10, 0xbdb627c1 # initialize rs2
sha512sig0l x7, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x18, 0x5b96b0ac # initialize rs1
li x15, 0x03fbe869 # initialize rs2
sha512sig0l x8, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x1, 0xfec6eef5 # initialize rs1
li x27, 0x6631bff9 # initialize rs2
sha512sig0l x9, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0xb9af8d14 # initialize rs1
li x3, 0xf5776353 # initialize rs2
sha512sig0l x10, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x17, 0x415b484e # initialize rs1
li x27, 0xdad437bd # initialize rs2
sha512sig0l x11, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0x8ceab853 # initialize rs1
li x19, 0xc2b9c3c4 # initialize rs2
sha512sig0l x12, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x2, 0x2535a923 # initialize rs1
li x23, 0x0c282b2b # initialize rs2
sha512sig0l x13, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x25, 0xac0b6178 # initialize rs1
li x26, 0x72a477aa # initialize rs2
sha512sig0l x14, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0x8398c307 # initialize rs1
li x7, 0x44f5258e # initialize rs2
sha512sig0l x15, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x6, 0x77136ae3 # initialize rs1
li x13, 0x6e698dce # initialize rs2
sha512sig0l x16, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x5, 0x9a552a07 # initialize rs1
li x30, 0x12476222 # initialize rs2
sha512sig0l x17, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x13, 0x45875b87 # initialize rs1
li x10, 0xab0dad16 # initialize rs2
sha512sig0l x18, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x18, 0xdd94f8dc # initialize rs1
li x14, 0x391b8f3b # initialize rs2
sha512sig0l x19, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0x816a6bd1 # initialize rs1
li x27, 0xbb8389ee # initialize rs2
sha512sig0l x20, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x25, 0x3ad75f72 # initialize rs1
li x8, 0x17db4a78 # initialize rs2
sha512sig0l x21, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x25, 0xc48c9e54 # initialize rs1
li x23, 0xf9391f01 # initialize rs2
sha512sig0l x22, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x9, 0x599c2a60 # initialize rs1
li x31, 0x893ac825 # initialize rs2
sha512sig0l x23, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0xf19e43a6 # initialize rs1
li x20, 0x4aa87df1 # initialize rs2
sha512sig0l x24, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0x5e9f3e1f # initialize rs1
li x11, 0x40af80b2 # initialize rs2
sha512sig0l x25, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x7, 0x73bab160 # initialize rs1
li x16, 0x0d455952 # initialize rs2
sha512sig0l x26, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0xa3fcb09d # initialize rs1
li x20, 0x1bce259d # initialize rs2
sha512sig0l x27, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x11, 0x54e1e86a # initialize rs1
li x24, 0x76ace9a7 # initialize rs2
sha512sig0l x28, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x17, 0x5f2ff28d # initialize rs1
li x28, 0x813f2e0c # initialize rs2
sha512sig0l x29, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x7, 0xf08fb2cf # initialize rs1
li x30, 0x19bd0ee6 # initialize rs2
sha512sig0l x30, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x17, 0x0b2ccfd0 # initialize rs1
li x21, 0xfa0cdeed # initialize rs2
sha512sig0l x31, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x1, 0x00000000 # initialize rs1
li x5, 0xbaf6ccca # initialize rs2
sha512sig0l x13, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0x00000001 # initialize rs1
li x18, 0x1ca5c06e # initialize rs2
sha512sig0l x21, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0x00000002 # initialize rs1
li x11, 0x8d6a6af2 # initialize rs2
sha512sig0l x12, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x11, 0x80000000 # initialize rs1
li x26, 0xac40beaf # initialize rs2
sha512sig0l x8, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x13, 0x80000001 # initialize rs1
li x23, 0x666bd124 # initialize rs2
sha512sig0l x27, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x12, 0x7fffffff # initialize rs1
li x17, 0xdd028d1c # initialize rs2
sha512sig0l x3, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x28, 0x7ffffffe # initialize rs1
li x27, 0xa6c9cb19 # initialize rs2
sha512sig0l x8, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x13, 0xffffffff # initialize rs1
li x18, 0xf86fa14c # initialize rs2
sha512sig0l x11, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x5, 0xfffffffe # initialize rs1
li x12, 0x87a20c3d # initialize rs2
sha512sig0l x14, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x12, 0x5bbc8872 # initialize rs1
li x14, 0xc1f09ff5 # initialize rs2
sha512sig0l x28, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x26, 0xaaaaaaaa # initialize rs1
li x11, 0x8dcb51e8 # initialize rs2
sha512sig0l x22, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x16, 0x55555555 # initialize rs1
li x15, 0x0e4a23fa # initialize rs2
sha512sig0l x22, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x25, 0xe49ca6e8 # initialize rs1
li x17, 0x00000000 # initialize rs2
sha512sig0l x5, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x7, 0x09950778 # initialize rs1
li x30, 0x00000001 # initialize rs2
sha512sig0l x2, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x5, 0xe26cd27c # initialize rs1
li x6, 0x00000002 # initialize rs2
sha512sig0l x14, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x3, 0x9bfcf183 # initialize rs1
li x5, 0x80000000 # initialize rs2
sha512sig0l x25, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x1, 0x8bafeb9c # initialize rs1
li x5, 0x80000001 # initialize rs2
sha512sig0l x25, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x31, 0x6992ff44 # initialize rs1
li x3, 0x7fffffff # initialize rs2
sha512sig0l x18, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x5, 0x8e52482a # initialize rs1
li x29, 0x7ffffffe # initialize rs2
sha512sig0l x20, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0xcadac856 # initialize rs1
li x11, 0xffffffff # initialize rs2
sha512sig0l x2, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x7, 0x5c068c85 # initialize rs1
li x15, 0xfffffffe # initialize rs2
sha512sig0l x31, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x27, 0x0e9b9c61 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
sha512sig0l x5, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x28, 0x1413eb03 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
sha512sig0l x19, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x1, 0xd1ad74ed # initialize rs1
li x18, 0x55555555 # initialize rs2
sha512sig0l x21, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x16, 0x00000000 # initialize rs1
li x23, 0x00000000 # initialize rs2
sha512sig0l x19, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x00000000 # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sig0l x3, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x31, 0x00000000 # initialize rs1
li x15, 0x00000002 # initialize rs2
sha512sig0l x16, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x1, 0x00000000 # initialize rs1
li x7, 0x80000000 # initialize rs2
sha512sig0l x8, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x31, 0x00000000 # initialize rs1
li x1, 0x80000001 # initialize rs2
sha512sig0l x20, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x25, 0x00000000 # initialize rs1
li x31, 0x7fffffff # initialize rs2
sha512sig0l x17, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x3, 0x00000000 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
sha512sig0l x21, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x9, 0x00000000 # initialize rs1
li x13, 0xffffffff # initialize rs2
sha512sig0l x20, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x20, 0x00000000 # initialize rs1
li x13, 0xfffffffe # initialize rs2
sha512sig0l x19, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x18, 0x00000000 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
sha512sig0l x27, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x14, 0x00000000 # initialize rs1
li x7, 0xaaaaaaaa # initialize rs2
sha512sig0l x10, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x7, 0x00000000 # initialize rs1
li x5, 0x55555555 # initialize rs2
sha512sig0l x18, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x1, 0x00000001 # initialize rs1
li x22, 0x00000000 # initialize rs2
sha512sig0l x30, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x25, 0x00000001 # initialize rs1
li x7, 0x00000001 # initialize rs2
sha512sig0l x31, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x2, 0x00000001 # initialize rs1
li x6, 0x00000002 # initialize rs2
sha512sig0l x17, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x18, 0x00000001 # initialize rs1
li x20, 0x80000000 # initialize rs2
sha512sig0l x1, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x3, 0x00000001 # initialize rs1
li x24, 0x80000001 # initialize rs2
sha512sig0l x28, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x13, 0x00000001 # initialize rs1
li x15, 0x7fffffff # initialize rs2
sha512sig0l x12, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x27, 0x00000001 # initialize rs1
li x6, 0x7ffffffe # initialize rs2
sha512sig0l x28, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x20, 0x00000001 # initialize rs1
li x8, 0xffffffff # initialize rs2
sha512sig0l x31, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x8, 0x00000001 # initialize rs1
li x22, 0xfffffffe # initialize rs2
sha512sig0l x3, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x22, 0x00000001 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
sha512sig0l x5, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x31, 0x00000001 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sha512sig0l x16, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x12, 0x00000001 # initialize rs1
li x5, 0x55555555 # initialize rs2
sha512sig0l x24, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x11, 0x00000002 # initialize rs1
li x16, 0x00000000 # initialize rs2
sha512sig0l x21, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x7, 0x00000002 # initialize rs1
li x13, 0x00000001 # initialize rs2
sha512sig0l x26, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x30, 0x00000002 # initialize rs1
li x25, 0x00000002 # initialize rs2
sha512sig0l x9, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x12, 0x00000002 # initialize rs1
li x27, 0x80000000 # initialize rs2
sha512sig0l x16, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x21, 0x00000002 # initialize rs1
li x17, 0x80000001 # initialize rs2
sha512sig0l x11, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x15, 0x00000002 # initialize rs1
li x30, 0x7fffffff # initialize rs2
sha512sig0l x28, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x9, 0x00000002 # initialize rs1
li x27, 0x7ffffffe # initialize rs2
sha512sig0l x26, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x17, 0x00000002 # initialize rs1
li x10, 0xffffffff # initialize rs2
sha512sig0l x8, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x25, 0x00000002 # initialize rs1
li x11, 0xfffffffe # initialize rs2
sha512sig0l x16, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x28, 0x00000002 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
sha512sig0l x21, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x27, 0x00000002 # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sha512sig0l x30, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x25, 0x00000002 # initialize rs1
li x22, 0x55555555 # initialize rs2
sha512sig0l x19, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x29, 0x80000000 # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sig0l x22, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x22, 0x80000000 # initialize rs1
li x5, 0x00000001 # initialize rs2
sha512sig0l x13, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x23, 0x80000000 # initialize rs1
li x16, 0x00000002 # initialize rs2
sha512sig0l x6, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x19, 0x80000000 # initialize rs1
li x16, 0x80000000 # initialize rs2
sha512sig0l x28, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x28, 0x80000000 # initialize rs1
li x25, 0x80000001 # initialize rs2
sha512sig0l x2, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x19, 0x80000000 # initialize rs1
li x9, 0x7fffffff # initialize rs2
sha512sig0l x22, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x9, 0x80000000 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
sha512sig0l x23, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x19, 0x80000000 # initialize rs1
li x30, 0xffffffff # initialize rs2
sha512sig0l x16, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x28, 0x80000000 # initialize rs1
li x20, 0xfffffffe # initialize rs2
sha512sig0l x3, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x28, 0x80000000 # initialize rs1
li x8, 0x5bbc8872 # initialize rs2
sha512sig0l x22, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x21, 0x80000000 # initialize rs1
li x23, 0xaaaaaaaa # initialize rs2
sha512sig0l x20, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x26, 0x80000000 # initialize rs1
li x22, 0x55555555 # initialize rs2
sha512sig0l x18, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x22, 0x80000001 # initialize rs1
li x26, 0x00000000 # initialize rs2
sha512sig0l x2, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x12, 0x80000001 # initialize rs1
li x25, 0x00000001 # initialize rs2
sha512sig0l x20, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x8, 0x80000001 # initialize rs1
li x18, 0x00000002 # initialize rs2
sha512sig0l x25, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x17, 0x80000001 # initialize rs1
li x9, 0x80000000 # initialize rs2
sha512sig0l x2, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x28, 0x80000001 # initialize rs1
li x24, 0x80000001 # initialize rs2
sha512sig0l x27, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x22, 0x80000001 # initialize rs1
li x23, 0x7fffffff # initialize rs2
sha512sig0l x18, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x31, 0x80000001 # initialize rs1
li x12, 0x7ffffffe # initialize rs2
sha512sig0l x20, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x27, 0x80000001 # initialize rs1
li x28, 0xffffffff # initialize rs2
sha512sig0l x18, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x6, 0x80000001 # initialize rs1
li x30, 0xfffffffe # initialize rs2
sha512sig0l x26, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x19, 0x80000001 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
sha512sig0l x9, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x13, 0x80000001 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
sha512sig0l x20, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x14, 0x80000001 # initialize rs1
li x13, 0x55555555 # initialize rs2
sha512sig0l x22, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x1, 0x7fffffff # initialize rs1
li x25, 0x00000000 # initialize rs2
sha512sig0l x20, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x21, 0x7fffffff # initialize rs1
li x18, 0x00000001 # initialize rs2
sha512sig0l x29, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x18, 0x7fffffff # initialize rs1
li x10, 0x00000002 # initialize rs2
sha512sig0l x21, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x23, 0x7fffffff # initialize rs1
li x25, 0x80000000 # initialize rs2
sha512sig0l x27, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x16, 0x7fffffff # initialize rs1
li x2, 0x80000001 # initialize rs2
sha512sig0l x29, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x27, 0x7fffffff # initialize rs1
li x19, 0x7fffffff # initialize rs2
sha512sig0l x29, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x31, 0x7fffffff # initialize rs1
li x11, 0x7ffffffe # initialize rs2
sha512sig0l x18, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x18, 0x7fffffff # initialize rs1
li x8, 0xffffffff # initialize rs2
sha512sig0l x29, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x9, 0x7fffffff # initialize rs1
li x15, 0xfffffffe # initialize rs2
sha512sig0l x30, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x17, 0x7fffffff # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
sha512sig0l x25, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x6, 0x7fffffff # initialize rs1
li x12, 0xaaaaaaaa # initialize rs2
sha512sig0l x15, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x20, 0x7fffffff # initialize rs1
li x21, 0x55555555 # initialize rs2
sha512sig0l x11, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x3, 0x7ffffffe # initialize rs1
li x12, 0x00000000 # initialize rs2
sha512sig0l x30, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x23, 0x7ffffffe # initialize rs1
li x12, 0x00000001 # initialize rs2
sha512sig0l x10, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x28, 0x7ffffffe # initialize rs1
li x6, 0x00000002 # initialize rs2
sha512sig0l x9, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x1, 0x7ffffffe # initialize rs1
li x24, 0x80000000 # initialize rs2
sha512sig0l x31, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x30, 0x7ffffffe # initialize rs1
li x6, 0x80000001 # initialize rs2
sha512sig0l x28, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x19, 0x7ffffffe # initialize rs1
li x15, 0x7fffffff # initialize rs2
sha512sig0l x23, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x13, 0x7ffffffe # initialize rs1
li x12, 0x7ffffffe # initialize rs2
sha512sig0l x31, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x3, 0x7ffffffe # initialize rs1
li x18, 0xffffffff # initialize rs2
sha512sig0l x27, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x7, 0x7ffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
sha512sig0l x14, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x8, 0x7ffffffe # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
sha512sig0l x22, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x23, 0x7ffffffe # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
sha512sig0l x25, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x23, 0x7ffffffe # initialize rs1
li x14, 0x55555555 # initialize rs2
sha512sig0l x21, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x20, 0xffffffff # initialize rs1
li x6, 0x00000000 # initialize rs2
sha512sig0l x22, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x9, 0xffffffff # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sig0l x30, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x31, 0xffffffff # initialize rs1
li x3, 0x00000002 # initialize rs2
sha512sig0l x19, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x25, 0xffffffff # initialize rs1
li x9, 0x80000000 # initialize rs2
sha512sig0l x13, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x1, 0xffffffff # initialize rs1
li x20, 0x80000001 # initialize rs2
sha512sig0l x25, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x9, 0xffffffff # initialize rs1
li x3, 0x7fffffff # initialize rs2
sha512sig0l x16, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x18, 0xffffffff # initialize rs1
li x16, 0x7ffffffe # initialize rs2
sha512sig0l x8, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x5, 0xffffffff # initialize rs1
li x7, 0xffffffff # initialize rs2
sha512sig0l x3, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x14, 0xffffffff # initialize rs1
li x6, 0xfffffffe # initialize rs2
sha512sig0l x21, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x29, 0xffffffff # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
sha512sig0l x17, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x26, 0xffffffff # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sha512sig0l x1, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x11, 0xffffffff # initialize rs1
li x27, 0x55555555 # initialize rs2
sha512sig0l x1, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x9, 0xfffffffe # initialize rs1
li x30, 0x00000000 # initialize rs2
sha512sig0l x22, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x26, 0xfffffffe # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sig0l x9, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x13, 0xfffffffe # initialize rs1
li x8, 0x00000002 # initialize rs2
sha512sig0l x5, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x15, 0xfffffffe # initialize rs1
li x7, 0x80000000 # initialize rs2
sha512sig0l x10, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x1, 0xfffffffe # initialize rs1
li x23, 0x80000001 # initialize rs2
sha512sig0l x7, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x10, 0xfffffffe # initialize rs1
li x13, 0x7fffffff # initialize rs2
sha512sig0l x1, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x16, 0xfffffffe # initialize rs1
li x27, 0x7ffffffe # initialize rs2
sha512sig0l x9, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x24, 0xfffffffe # initialize rs1
li x27, 0xffffffff # initialize rs2
sha512sig0l x30, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x10, 0xfffffffe # initialize rs1
li x28, 0xfffffffe # initialize rs2
sha512sig0l x7, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x20, 0xfffffffe # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
sha512sig0l x31, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x25, 0xfffffffe # initialize rs1
li x13, 0xaaaaaaaa # initialize rs2
sha512sig0l x22, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x21, 0xfffffffe # initialize rs1
li x18, 0x55555555 # initialize rs2
sha512sig0l x10, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x15, 0x5bbc8872 # initialize rs1
li x14, 0x00000000 # initialize rs2
sha512sig0l x29, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x29, 0x5bbc8872 # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sig0l x24, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x29, 0x5bbc8872 # initialize rs1
li x11, 0x00000002 # initialize rs2
sha512sig0l x9, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x13, 0x5bbc8872 # initialize rs1
li x17, 0x80000000 # initialize rs2
sha512sig0l x31, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x29, 0x5bbc8872 # initialize rs1
li x10, 0x80000001 # initialize rs2
sha512sig0l x15, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x27, 0x5bbc8872 # initialize rs1
li x3, 0x7fffffff # initialize rs2
sha512sig0l x14, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x10, 0x5bbc8872 # initialize rs1
li x3, 0x7ffffffe # initialize rs2
sha512sig0l x24, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x26, 0x5bbc8872 # initialize rs1
li x29, 0xffffffff # initialize rs2
sha512sig0l x18, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x8, 0x5bbc8872 # initialize rs1
li x27, 0xfffffffe # initialize rs2
sha512sig0l x28, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x25, 0x5bbc8872 # initialize rs1
li x22, 0x5bbc8872 # initialize rs2
sha512sig0l x30, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x21, 0x5bbc8872 # initialize rs1
li x11, 0xaaaaaaaa # initialize rs2
sha512sig0l x19, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x17, 0x5bbc8872 # initialize rs1
li x3, 0x55555555 # initialize rs2
sha512sig0l x2, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x12, 0xaaaaaaaa # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sig0l x9, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x12, 0xaaaaaaaa # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sig0l x17, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x13, 0xaaaaaaaa # initialize rs1
li x29, 0x00000002 # initialize rs2
sha512sig0l x24, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x18, 0xaaaaaaaa # initialize rs1
li x22, 0x80000000 # initialize rs2
sha512sig0l x11, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x6, 0xaaaaaaaa # initialize rs1
li x23, 0x80000001 # initialize rs2
sha512sig0l x1, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x8, 0xaaaaaaaa # initialize rs1
li x27, 0x7fffffff # initialize rs2
sha512sig0l x9, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x27, 0xaaaaaaaa # initialize rs1
li x31, 0x7ffffffe # initialize rs2
sha512sig0l x18, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x5, 0xaaaaaaaa # initialize rs1
li x9, 0xffffffff # initialize rs2
sha512sig0l x6, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x10, 0xaaaaaaaa # initialize rs1
li x29, 0xfffffffe # initialize rs2
sha512sig0l x25, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x6, 0xaaaaaaaa # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
sha512sig0l x20, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x5, 0xaaaaaaaa # initialize rs1
li x15, 0xaaaaaaaa # initialize rs2
sha512sig0l x28, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x23, 0xaaaaaaaa # initialize rs1
li x10, 0x55555555 # initialize rs2
sha512sig0l x11, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x26, 0x55555555 # initialize rs1
li x13, 0x00000000 # initialize rs2
sha512sig0l x22, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x30, 0x55555555 # initialize rs1
li x10, 0x00000001 # initialize rs2
sha512sig0l x14, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x12, 0x55555555 # initialize rs1
li x18, 0x00000002 # initialize rs2
sha512sig0l x11, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x13, 0x55555555 # initialize rs1
li x10, 0x80000000 # initialize rs2
sha512sig0l x15, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x8, 0x55555555 # initialize rs1
li x29, 0x80000001 # initialize rs2
sha512sig0l x22, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x26, 0x55555555 # initialize rs1
li x29, 0x7fffffff # initialize rs2
sha512sig0l x20, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x27, 0x55555555 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
sha512sig0l x26, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x17, 0x55555555 # initialize rs1
li x21, 0xffffffff # initialize rs2
sha512sig0l x5, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x19, 0x55555555 # initialize rs1
li x7, 0xfffffffe # initialize rs2
sha512sig0l x15, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x15, 0x55555555 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
sha512sig0l x22, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x14, 0x55555555 # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sha512sig0l x25, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x7, 0x55555555 # initialize rs1
li x26, 0x55555555 # initialize rs2
sha512sig0l x15, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xa861f8f2 # initialize rs1
li x0, 0x3860b250 # initialize rs2
sha512sig0l x20, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xc04494e2 # initialize rs1
li x1, 0xf757a1da # initialize rs2
sha512sig0l x19, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xd62597d8 # initialize rs1
li x2, 0x63ae1d73 # initialize rs2
sha512sig0l x6, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xba952ea6 # initialize rs1
li x3, 0xd9521aad # initialize rs2
sha512sig0l x12, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xba20da9f # initialize rs1
li x4, 0x291d2e05 # initialize rs2
sha512sig0l x16, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbbb460cc # initialize rs1
li x5, 0xcfffd991 # initialize rs2
sha512sig0l x27, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x98caf15d # initialize rs1
li x6, 0x643b9dc9 # initialize rs2
sha512sig0l x12, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xab41ac8b # initialize rs1
li x7, 0x9b91d49b # initialize rs2
sha512sig0l x25, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x9a02adaf # initialize rs1
li x8, 0xeb345acd # initialize rs2
sha512sig0l x20, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x604121ec # initialize rs1
li x9, 0xb7cf5083 # initialize rs2
sha512sig0l x25, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x78c265be # initialize rs1
li x10, 0x95aaea77 # initialize rs2
sha512sig0l x26, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xdf59bc11 # initialize rs1
li x11, 0x433e3538 # initialize rs2
sha512sig0l x20, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x8a860a4b # initialize rs1
li x12, 0xa4e68214 # initialize rs2
sha512sig0l x18, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x5e7f2ad9 # initialize rs1
li x13, 0x83112619 # initialize rs2
sha512sig0l x17, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xbdc43a99 # initialize rs1
li x14, 0xf086e865 # initialize rs2
sha512sig0l x16, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xb735f82a # initialize rs1
li x15, 0xf28b4ad7 # initialize rs2
sha512sig0l x27, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xa281f974 # initialize rs1
li x16, 0xc047e43d # initialize rs2
sha512sig0l x1, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x723f2566 # initialize rs1
li x17, 0xf2992ca7 # initialize rs2
sha512sig0l x20, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x9378ef34 # initialize rs1
li x18, 0x2a65087a # initialize rs2
sha512sig0l x6, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xbe266c80 # initialize rs1
li x19, 0x922ed0b0 # initialize rs2
sha512sig0l x31, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x97126247 # initialize rs1
li x20, 0xb484cfa2 # initialize rs2
sha512sig0l x30, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xeab8369f # initialize rs1
li x21, 0x2597c45d # initialize rs2
sha512sig0l x18, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x857fc709 # initialize rs1
li x22, 0x65383a13 # initialize rs2
sha512sig0l x14, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x5c2965f1 # initialize rs1
li x23, 0x8fde68dc # initialize rs2
sha512sig0l x14, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x050b13c7 # initialize rs1
li x24, 0x5fb5257a # initialize rs2
sha512sig0l x7, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x60fb1ec8 # initialize rs1
li x25, 0x153db06a # initialize rs2
sha512sig0l x27, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x4949a37d # initialize rs1
li x26, 0x9f243316 # initialize rs2
sha512sig0l x14, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x02a166f4 # initialize rs1
li x27, 0xeb68f635 # initialize rs2
sha512sig0l x29, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x69ae712b # initialize rs1
li x28, 0x738bfe29 # initialize rs2
sha512sig0l x9, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xbaa59df9 # initialize rs1
li x29, 0xa77d1d65 # initialize rs2
sha512sig0l x5, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x00a6e70f # initialize rs1
li x30, 0x9ecc24d9 # initialize rs2
sha512sig0l x15, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x9c306db4 # initialize rs1
li x31, 0x2cb02460 # initialize rs2
sha512sig0l x25, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x244132be # initialize rs1
li x29, 0xe93fdabe # initialize rs2
sha512sig0l x0, x0, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x98c7be1b # initialize rs1
li x11, 0xe0a39bd1 # initialize rs2
sha512sig0l x1, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x06db5f0b # initialize rs1
li x17, 0x8d4377f9 # initialize rs2
sha512sig0l x2, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0438f29d # initialize rs1
li x18, 0xf10cef42 # initialize rs2
sha512sig0l x3, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4800769c # initialize rs1
li x31, 0x18eeb230 # initialize rs2
sha512sig0l x4, x4, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xec1bed1c # initialize rs1
li x26, 0xcf7c2375 # initialize rs2
sha512sig0l x5, x5, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb4fb7d26 # initialize rs1
li x15, 0xec8311e3 # initialize rs2
sha512sig0l x6, x6, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x28cb5449 # initialize rs1
li x22, 0xddb09642 # initialize rs2
sha512sig0l x7, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xcfeee567 # initialize rs1
li x1, 0x81a028bd # initialize rs2
sha512sig0l x8, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x1bc8c265 # initialize rs1
li x5, 0x7b81e5b0 # initialize rs2
sha512sig0l x9, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x59c50b07 # initialize rs1
li x26, 0xce1d1a66 # initialize rs2
sha512sig0l x10, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xcb75abe5 # initialize rs1
li x1, 0x439a0514 # initialize rs2
sha512sig0l x11, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x14955b5a # initialize rs1
li x22, 0xd5f94961 # initialize rs2
sha512sig0l x12, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x67afff55 # initialize rs1
li x26, 0x95f1ee9a # initialize rs2
sha512sig0l x13, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x986f536d # initialize rs1
li x19, 0x82199a8e # initialize rs2
sha512sig0l x14, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb63a8933 # initialize rs1
li x28, 0xc816730d # initialize rs2
sha512sig0l x15, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xb6631bac # initialize rs1
li x11, 0x90508ba9 # initialize rs2
sha512sig0l x16, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc155e614 # initialize rs1
li x26, 0x837c533f # initialize rs2
sha512sig0l x17, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x512f61b2 # initialize rs1
li x15, 0x70cfc164 # initialize rs2
sha512sig0l x18, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x4d3e7f8b # initialize rs1
li x9, 0xfb92bc4e # initialize rs2
sha512sig0l x19, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa52237fe # initialize rs1
li x14, 0xadc3a742 # initialize rs2
sha512sig0l x20, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x2da2e4a2 # initialize rs1
li x14, 0x0a36bfa0 # initialize rs2
sha512sig0l x21, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb3700786 # initialize rs1
li x6, 0xf23f52dc # initialize rs2
sha512sig0l x22, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x35714495 # initialize rs1
li x2, 0x1df5e151 # initialize rs2
sha512sig0l x23, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x9a7d07fa # initialize rs1
li x18, 0x4756ff25 # initialize rs2
sha512sig0l x24, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xfa55abcb # initialize rs1
li x28, 0x48775107 # initialize rs2
sha512sig0l x25, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x18a94deb # initialize rs1
li x3, 0x96b88265 # initialize rs2
sha512sig0l x26, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x383ac2a1 # initialize rs1
li x21, 0x0f0275f2 # initialize rs2
sha512sig0l x27, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xf6c54f20 # initialize rs1
li x15, 0xce847838 # initialize rs2
sha512sig0l x28, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xdca4bf16 # initialize rs1
li x10, 0xc39d38b7 # initialize rs2
sha512sig0l x29, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd0231365 # initialize rs1
li x2, 0x3cd41f9e # initialize rs2
sha512sig0l x30, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x3a85e7bb # initialize rs1
li x6, 0x778a1692 # initialize rs2
sha512sig0l x31, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x7, 0x76868f7c # initialize rs1
li x0, 0x7f225061 # initialize rs2
sha512sig0l x0, x7, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x5, 0x23f24209 # initialize rs1
li x1, 0x70f81444 # initialize rs2
sha512sig0l x1, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x29, 0x56debdfc # initialize rs1
li x2, 0x9e6a4ad5 # initialize rs2
sha512sig0l x2, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x12, 0xe184314a # initialize rs1
li x3, 0x4d23c39c # initialize rs2
sha512sig0l x3, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x13a450e0 # initialize rs1
li x4, 0x25b93bb6 # initialize rs2
sha512sig0l x4, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0xba667757 # initialize rs1
li x5, 0x047111f0 # initialize rs2
sha512sig0l x5, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0x68964f24 # initialize rs1
li x6, 0x7e61a467 # initialize rs2
sha512sig0l x6, x26, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xf239aebb # initialize rs1
li x7, 0xb01726a6 # initialize rs2
sha512sig0l x7, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x20, 0x02ae505d # initialize rs1
li x8, 0xb3efacce # initialize rs2
sha512sig0l x8, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x18, 0x368964a4 # initialize rs1
li x9, 0xf104a7ed # initialize rs2
sha512sig0l x9, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x6, 0x6417d6b1 # initialize rs1
li x10, 0x24731772 # initialize rs2
sha512sig0l x10, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x29, 0x25585329 # initialize rs1
li x11, 0x53d5629f # initialize rs2
sha512sig0l x11, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x7, 0x59e73298 # initialize rs1
li x12, 0x43a178d7 # initialize rs2
sha512sig0l x12, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x11, 0x282de112 # initialize rs1
li x13, 0xf99ef7e6 # initialize rs2
sha512sig0l x13, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x31, 0x8d01f5dc # initialize rs1
li x14, 0x4cccb3dd # initialize rs2
sha512sig0l x14, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x11, 0x1c9fe645 # initialize rs1
li x15, 0xc144d2f4 # initialize rs2
sha512sig0l x15, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xc87e4730 # initialize rs1
li x16, 0xdda3998e # initialize rs2
sha512sig0l x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x5, 0xea8e476a # initialize rs1
li x17, 0x55ddc780 # initialize rs2
sha512sig0l x17, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x21, 0xada15ccc # initialize rs1
li x18, 0xba3ee9d6 # initialize rs2
sha512sig0l x18, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x04add516 # initialize rs1
li x19, 0x895d5aa3 # initialize rs2
sha512sig0l x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x24, 0x29904431 # initialize rs1
li x20, 0xdb948c5c # initialize rs2
sha512sig0l x20, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x8b07caa8 # initialize rs1
li x21, 0x244ceaaf # initialize rs2
sha512sig0l x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x11, 0x83f3f590 # initialize rs1
li x22, 0x0b47a7b5 # initialize rs2
sha512sig0l x22, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x9, 0xbeabe12b # initialize rs1
li x23, 0x49fcc5db # initialize rs2
sha512sig0l x23, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x27, 0xc30bb621 # initialize rs1
li x24, 0xcd0f1984 # initialize rs2
sha512sig0l x24, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x11, 0x5d99e909 # initialize rs1
li x25, 0x9705b523 # initialize rs2
sha512sig0l x25, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x8, 0x012265e6 # initialize rs1
li x26, 0x29597be6 # initialize rs2
sha512sig0l x26, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x5, 0x4884640b # initialize rs1
li x27, 0xb2fb12a0 # initialize rs2
sha512sig0l x27, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x17, 0x66e65203 # initialize rs1
li x28, 0x6264e7b5 # initialize rs2
sha512sig0l x28, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x3, 0x0d306be8 # initialize rs1
li x29, 0x06668118 # initialize rs2
sha512sig0l x29, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x2, 0x62688279 # initialize rs1
li x30, 0x96080f14 # initialize rs2
sha512sig0l x30, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x16, 0xfdae9d6f # initialize rs1
li x31, 0x927c3189 # initialize rs2
sha512sig0l x31, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xa32347bf # initialize rs1
li x0, 0x41780fc8 # initialize rs2
sha512sig0l x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xcafeaa41 # initialize rs1
li x1, 0xe71c48af # initialize rs2
sha512sig0l x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x554fc34c # initialize rs1
li x2, 0x2fad2df1 # initialize rs2
sha512sig0l x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x47e3f098 # initialize rs1
li x3, 0x28f1c504 # initialize rs2
sha512sig0l x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x19172fc9 # initialize rs1
li x4, 0xaffa11cc # initialize rs2
sha512sig0l x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x04eff021 # initialize rs1
li x5, 0xdf881653 # initialize rs2
sha512sig0l x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe4e37ebb # initialize rs1
li x6, 0x15b5010c # initialize rs2
sha512sig0l x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xafe33b0a # initialize rs1
li x7, 0xfa477151 # initialize rs2
sha512sig0l x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x86119f1d # initialize rs1
li x8, 0x7d6140de # initialize rs2
sha512sig0l x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xb58f41a1 # initialize rs1
li x9, 0xbbeff44c # initialize rs2
sha512sig0l x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x3b80e5f0 # initialize rs1
li x10, 0x71519b21 # initialize rs2
sha512sig0l x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x747d18cb # initialize rs1
li x11, 0x968e7fe0 # initialize rs2
sha512sig0l x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x7507f6c5 # initialize rs1
li x12, 0xb075cf89 # initialize rs2
sha512sig0l x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xce6beab7 # initialize rs1
li x13, 0xda8e9359 # initialize rs2
sha512sig0l x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xc97b3e45 # initialize rs1
li x14, 0x5984e468 # initialize rs2
sha512sig0l x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xe9d8fe98 # initialize rs1
li x15, 0x8a774c11 # initialize rs2
sha512sig0l x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xefb1c36a # initialize rs1
li x16, 0xfdbc1bf1 # initialize rs2
sha512sig0l x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x93ce1caa # initialize rs1
li x17, 0xbfe42942 # initialize rs2
sha512sig0l x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x59d5bb9b # initialize rs1
li x18, 0xf4cd7422 # initialize rs2
sha512sig0l x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x551044b9 # initialize rs1
li x19, 0x0a32aa98 # initialize rs2
sha512sig0l x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xbe675aa4 # initialize rs1
li x20, 0xe3c161d5 # initialize rs2
sha512sig0l x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc5ec46f0 # initialize rs1
li x21, 0xe1ad29c8 # initialize rs2
sha512sig0l x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xab1749b4 # initialize rs1
li x22, 0x9d5b4ccc # initialize rs2
sha512sig0l x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xfe9c57ff # initialize rs1
li x23, 0x6875c45b # initialize rs2
sha512sig0l x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x4981d195 # initialize rs1
li x24, 0x3abb4d54 # initialize rs2
sha512sig0l x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x59790d8e # initialize rs1
li x25, 0x2671ce73 # initialize rs2
sha512sig0l x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x88217f80 # initialize rs1
li x26, 0xca145e64 # initialize rs2
sha512sig0l x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x232018e2 # initialize rs1
li x27, 0x9c93189e # initialize rs2
sha512sig0l x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x13255edd # initialize rs1
li x28, 0x7332cee0 # initialize rs2
sha512sig0l x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x4ef1ceec # initialize rs1
li x29, 0x53d6d597 # initialize rs2
sha512sig0l x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x8b4ed06d # initialize rs1
li x30, 0xee1e7890 # initialize rs2
sha512sig0l x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x709dab29 # initialize rs1
li x31, 0x8077194b # initialize rs2
sha512sig0l x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x17, x13 # perform first operation
sha512sig0l x12, x21, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x9, x7 # perform first operation
sha512sig0l x5, x29, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x19, x8 # perform first operation
sha512sig0l x26, x15, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x24, x15 # perform first operation
sha512sig0l x15, x11, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x2, x26 # perform first operation
sha512sig0l x2, x1, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x5, x22 # perform first operation
sha512sig0l x24, x12, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x20, x6 # perform first operation
sha512sig0l x8, x2, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x7, x22 # perform first operation
sha512sig0l x17, x30, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x26, x11 # perform first operation
sha512sig0l x13, x27, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x19, x29 # perform first operation
sha512sig0l x19, x22, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x16, x15 # perform first operation
sha512sig0l x15, x24, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x5, x6 # perform first operation
sha512sig0l x10, x28, x7 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-sha512sig0h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x15cabfa2 # initialize rs1
li x23, 0xb142fc49 # initialize rs2
sha512sig0h x12, x0, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x9f51fff6 # initialize rs1
li x24, 0x080b135d # initialize rs2
sha512sig0h x3, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb977a597 # initialize rs1
li x17, 0xb93b0eca # initialize rs2
sha512sig0h x16, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xffe6b5f7 # initialize rs1
li x13, 0x82f503ec # initialize rs2
sha512sig0h x24, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xacb396ba # initialize rs1
li x27, 0x7203962a # initialize rs2
sha512sig0h x22, x4, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x637647b2 # initialize rs1
li x30, 0x3edfd70b # initialize rs2
sha512sig0h x18, x5, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x366669e4 # initialize rs1
li x28, 0xd11cdbcf # initialize rs2
sha512sig0h x26, x6, x28 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x15189938 # initialize rs1
li x26, 0x7ebaafbe # initialize rs2
sha512sig0h x25, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xb0c3a3e8 # initialize rs1
li x6, 0xaef1d516 # initialize rs2
sha512sig0h x13, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc0549175 # initialize rs1
li x22, 0x4544e831 # initialize rs2
sha512sig0h x25, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x87e1487a # initialize rs1
li x20, 0xfc53bc6c # initialize rs2
sha512sig0h x27, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x22b10301 # initialize rs1
li x19, 0x51fe0529 # initialize rs2
sha512sig0h x29, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xa8f70995 # initialize rs1
li x24, 0x6d1082e3 # initialize rs2
sha512sig0h x29, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xfac6a30e # initialize rs1
li x8, 0x5d52e278 # initialize rs2
sha512sig0h x24, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x2ef6fead # initialize rs1
li x15, 0x780df6b4 # initialize rs2
sha512sig0h x20, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x8ad68d99 # initialize rs1
li x3, 0xe651130c # initialize rs2
sha512sig0h x20, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xe37f489e # initialize rs1
li x29, 0x9c4ec2d8 # initialize rs2
sha512sig0h x21, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x32bcd86d # initialize rs1
li x23, 0x8f662fb2 # initialize rs2
sha512sig0h x18, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x41f8e26d # initialize rs1
li x5, 0xc05283f1 # initialize rs2
sha512sig0h x20, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x395de3c1 # initialize rs1
li x30, 0xee90070b # initialize rs2
sha512sig0h x24, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x032c3443 # initialize rs1
li x7, 0x3b84fe1d # initialize rs2
sha512sig0h x23, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xca475f9b # initialize rs1
li x22, 0x8fc26312 # initialize rs2
sha512sig0h x14, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x08de2c0e # initialize rs1
li x6, 0xb5bfdff4 # initialize rs2
sha512sig0h x24, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb108fea2 # initialize rs1
li x27, 0x0e6e1c7b # initialize rs2
sha512sig0h x30, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x5c618613 # initialize rs1
li x22, 0xf40d3f86 # initialize rs2
sha512sig0h x3, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x576ef1d5 # initialize rs1
li x28, 0x03d7fc22 # initialize rs2
sha512sig0h x22, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x1b4671ee # initialize rs1
li x12, 0xe2231aec # initialize rs2
sha512sig0h x15, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x4a2e4561 # initialize rs1
li x15, 0xe7770ed4 # initialize rs2
sha512sig0h x5, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xa3439478 # initialize rs1
li x11, 0x324dcf9b # initialize rs2
sha512sig0h x12, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x9da978fb # initialize rs1
li x18, 0x3f69bfc8 # initialize rs2
sha512sig0h x17, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xa6518779 # initialize rs1
li x16, 0x3512fa8b # initialize rs2
sha512sig0h x23, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x928f9c10 # initialize rs1
li x6, 0xeaee8352 # initialize rs2
sha512sig0h x25, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x26, 0xd3393f1b # initialize rs1
li x0, 0xb611e076 # initialize rs2
sha512sig0h x20, x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x25, 0xe63f7249 # initialize rs1
li x1, 0xcbf8f445 # initialize rs2
sha512sig0h x5, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x6, 0x43876a42 # initialize rs1
li x2, 0xa01ab606 # initialize rs2
sha512sig0h x10, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x9, 0x4afbe9c6 # initialize rs1
li x3, 0xafe417c6 # initialize rs2
sha512sig0h x8, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0xc8de6ab4 # initialize rs1
li x4, 0x5bd4b299 # initialize rs2
sha512sig0h x2, x25, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0xca33f912 # initialize rs1
li x5, 0x8289ed68 # initialize rs2
sha512sig0h x18, x3, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x2ebe0883 # initialize rs1
li x6, 0x86ad58fb # initialize rs2
sha512sig0h x14, x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0x37471546 # initialize rs1
li x7, 0xe117a27f # initialize rs2
sha512sig0h x14, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x28, 0x04d9eec2 # initialize rs1
li x8, 0x08832ca1 # initialize rs2
sha512sig0h x18, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x1, 0x54ee2058 # initialize rs1
li x9, 0xaf60341b # initialize rs2
sha512sig0h x12, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x2, 0x43ef3d76 # initialize rs1
li x10, 0xec25ef09 # initialize rs2
sha512sig0h x22, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x23, 0x29698103 # initialize rs1
li x11, 0x83058a4c # initialize rs2
sha512sig0h x2, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x31, 0x40115654 # initialize rs1
li x12, 0x3b02fcf5 # initialize rs2
sha512sig0h x9, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x20, 0x6c6ec663 # initialize rs1
li x13, 0xb62b67bb # initialize rs2
sha512sig0h x15, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x2, 0xa814b8eb # initialize rs1
li x14, 0xe17b36a0 # initialize rs2
sha512sig0h x17, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x24, 0xa2ce1a8b # initialize rs1
li x15, 0x6cb3058d # initialize rs2
sha512sig0h x14, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x23, 0xdbbf5c48 # initialize rs1
li x16, 0xdaa6d887 # initialize rs2
sha512sig0h x28, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x26, 0xfdda9d00 # initialize rs1
li x17, 0x34981932 # initialize rs2
sha512sig0h x3, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x29, 0x9de17197 # initialize rs1
li x18, 0x5dbd907c # initialize rs2
sha512sig0h x3, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x9, 0x550b93a7 # initialize rs1
li x19, 0x88c09206 # initialize rs2
sha512sig0h x26, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x22, 0xc82abd53 # initialize rs1
li x20, 0x3e97ffdd # initialize rs2
sha512sig0h x12, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x13, 0xf6381e4c # initialize rs1
li x21, 0x5785723a # initialize rs2
sha512sig0h x27, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x28, 0x9564f47c # initialize rs1
li x22, 0xdfffd1d5 # initialize rs2
sha512sig0h x27, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x10, 0x9d978d74 # initialize rs1
li x23, 0x4766b1d5 # initialize rs2
sha512sig0h x19, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x31, 0x9ac1799f # initialize rs1
li x24, 0xe84ddc6f # initialize rs2
sha512sig0h x5, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x8, 0xcf3562fa # initialize rs1
li x25, 0xb659bc3a # initialize rs2
sha512sig0h x18, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x18, 0x7a9143ad # initialize rs1
li x26, 0x15237b95 # initialize rs2
sha512sig0h x3, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x13, 0x67d0f0be # initialize rs1
li x27, 0x5e64bb20 # initialize rs2
sha512sig0h x18, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x5, 0x8d0fcf73 # initialize rs1
li x28, 0x9d90810a # initialize rs2
sha512sig0h x30, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x30, 0x704afefb # initialize rs1
li x29, 0x17f89fc2 # initialize rs2
sha512sig0h x13, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x13, 0x6f36c404 # initialize rs1
li x30, 0xbda2176e # initialize rs2
sha512sig0h x27, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x29, 0x1eac0167 # initialize rs1
li x31, 0x9bc9dc9e # initialize rs2
sha512sig0h x30, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 252)

# Testcase cp_rd (Test destination rd = x0)
li x6, 0x45f2aa60 # initialize rs1
li x3, 0xa4062e9b # initialize rs2
sha512sig0h x0, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x6, 0x0458fe3d # initialize rs1
li x25, 0x32686e70 # initialize rs2
sha512sig0h x1, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0x532f0a87 # initialize rs1
li x31, 0x655a7007 # initialize rs2
sha512sig0h x2, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x31, 0xd8efc76f # initialize rs1
li x8, 0xef637f2a # initialize rs2
sha512sig0h x3, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0x65a76c21 # initialize rs1
li x13, 0xe3812910 # initialize rs2
sha512sig0h x4, x23, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0x8256ea38 # initialize rs1
li x3, 0x6a9c3bc2 # initialize rs2
sha512sig0h x5, x2, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x7f10005c # initialize rs1
li x22, 0x9865da5f # initialize rs2
sha512sig0h x6, x17, x22 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x28, 0x501da6f5 # initialize rs1
li x8, 0x12ecce4a # initialize rs2
sha512sig0h x7, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x12, 0x165e3f2e # initialize rs1
li x25, 0x9ab2e967 # initialize rs2
sha512sig0h x8, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x5, 0x779c351e # initialize rs1
li x29, 0x17c2062b # initialize rs2
sha512sig0h x9, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0x39158b5d # initialize rs1
li x16, 0x5fbdc7d6 # initialize rs2
sha512sig0h x10, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x19, 0x31b24a05 # initialize rs1
li x29, 0x1a67fbac # initialize rs2
sha512sig0h x11, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0xe6de3a30 # initialize rs1
li x19, 0x96346797 # initialize rs2
sha512sig0h x12, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x29, 0xbb3d6f0b # initialize rs1
li x17, 0x26b99697 # initialize rs2
sha512sig0h x13, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x15, 0x2257d73f # initialize rs1
li x28, 0xefc3bbe2 # initialize rs2
sha512sig0h x14, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x31, 0xee25a65b # initialize rs1
li x20, 0xcaaf5f9b # initialize rs2
sha512sig0h x15, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x27, 0x67eeade0 # initialize rs1
li x30, 0x22c66adf # initialize rs2
sha512sig0h x16, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x19, 0x50624aab # initialize rs1
li x1, 0x16d6295e # initialize rs2
sha512sig0h x17, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x28, 0x29ac2ba7 # initialize rs1
li x10, 0xf06eceff # initialize rs2
sha512sig0h x18, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x17, 0x4303fdc3 # initialize rs1
li x11, 0xdd4b0046 # initialize rs2
sha512sig0h x19, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xca0a76f0 # initialize rs1
li x28, 0xe1833c7f # initialize rs2
sha512sig0h x20, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x28, 0x9058efad # initialize rs1
li x19, 0x7ce330e0 # initialize rs2
sha512sig0h x21, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x18, 0xab4d495f # initialize rs1
li x10, 0xb476d32d # initialize rs2
sha512sig0h x22, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x5, 0x6bf4ff59 # initialize rs1
li x17, 0x1ed3d5c6 # initialize rs2
sha512sig0h x23, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x20, 0x8be85964 # initialize rs1
li x28, 0xa72dca75 # initialize rs2
sha512sig0h x24, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0x3db108db # initialize rs1
li x3, 0xa4f841ac # initialize rs2
sha512sig0h x25, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x24, 0xa3795bc6 # initialize rs1
li x28, 0x84d5ed94 # initialize rs2
sha512sig0h x26, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0x8ec171f2 # initialize rs1
li x30, 0x7d2601f7 # initialize rs2
sha512sig0h x27, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x17, 0xb494dee0 # initialize rs1
li x19, 0x81d6b2ca # initialize rs2
sha512sig0h x28, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x21, 0x6a864df8 # initialize rs1
li x7, 0x2e50a63a # initialize rs2
sha512sig0h x29, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x5, 0x74ba3be8 # initialize rs1
li x29, 0x53a48e18 # initialize rs2
sha512sig0h x30, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x18, 0x509e1490 # initialize rs1
li x27, 0x71907d05 # initialize rs2
sha512sig0h x31, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x00000000 # initialize rs1
li x3, 0xb7046049 # initialize rs2
sha512sig0h x2, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x7, 0x00000001 # initialize rs1
li x11, 0x23787e86 # initialize rs2
sha512sig0h x6, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x27, 0x00000002 # initialize rs1
li x20, 0xd18e3d12 # initialize rs2
sha512sig0h x5, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x30, 0x80000000 # initialize rs1
li x16, 0xc0f84815 # initialize rs2
sha512sig0h x21, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x20, 0x80000001 # initialize rs1
li x5, 0xb5ad13d1 # initialize rs2
sha512sig0h x19, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x27, 0x7fffffff # initialize rs1
li x19, 0x83298661 # initialize rs2
sha512sig0h x17, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x21, 0x7ffffffe # initialize rs1
li x10, 0x1d7263b6 # initialize rs2
sha512sig0h x24, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0xffffffff # initialize rs1
li x16, 0xccc85369 # initialize rs2
sha512sig0h x22, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0xfffffffe # initialize rs1
li x1, 0xe53a014c # initialize rs2
sha512sig0h x9, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x19, 0x5bbc8872 # initialize rs1
li x8, 0x390702b2 # initialize rs2
sha512sig0h x6, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x1, 0xaaaaaaaa # initialize rs1
li x17, 0x279f4a0d # initialize rs2
sha512sig0h x8, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x11, 0x55555555 # initialize rs1
li x21, 0x3d8cddad # initialize rs2
sha512sig0h x9, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x8, 0xa6e81cc1 # initialize rs1
li x21, 0x00000000 # initialize rs2
sha512sig0h x19, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x18, 0x9a897a02 # initialize rs1
li x5, 0x00000001 # initialize rs2
sha512sig0h x19, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x31, 0x509cb713 # initialize rs1
li x12, 0x00000002 # initialize rs2
sha512sig0h x23, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x25, 0x04ff9e2c # initialize rs1
li x15, 0x80000000 # initialize rs2
sha512sig0h x14, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x15, 0x550b71d8 # initialize rs1
li x20, 0x80000001 # initialize rs2
sha512sig0h x21, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x5, 0x120d5d9c # initialize rs1
li x21, 0x7fffffff # initialize rs2
sha512sig0h x9, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x31, 0xdc7b08d3 # initialize rs1
li x25, 0x7ffffffe # initialize rs2
sha512sig0h x26, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x26, 0xc100e496 # initialize rs1
li x11, 0xffffffff # initialize rs2
sha512sig0h x3, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x29, 0xa10def12 # initialize rs1
li x31, 0xfffffffe # initialize rs2
sha512sig0h x7, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x22, 0x4c9e3c34 # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
sha512sig0h x18, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x19, 0x3473ff6c # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
sha512sig0h x22, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x19, 0x365a7ead # initialize rs1
li x26, 0x55555555 # initialize rs2
sha512sig0h x13, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0x00000000 # initialize rs1
li x27, 0x00000000 # initialize rs2
sha512sig0h x5, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x22, 0x00000000 # initialize rs1
li x13, 0x00000001 # initialize rs2
sha512sig0h x3, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x12, 0x00000000 # initialize rs1
li x13, 0x00000002 # initialize rs2
sha512sig0h x29, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x1, 0x00000000 # initialize rs1
li x2, 0x80000000 # initialize rs2
sha512sig0h x23, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x22, 0x00000000 # initialize rs1
li x24, 0x80000001 # initialize rs2
sha512sig0h x15, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x11, 0x00000000 # initialize rs1
li x12, 0x7fffffff # initialize rs2
sha512sig0h x21, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x24, 0x00000000 # initialize rs1
li x23, 0x7ffffffe # initialize rs2
sha512sig0h x15, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x6, 0x00000000 # initialize rs1
li x31, 0xffffffff # initialize rs2
sha512sig0h x2, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x21, 0x00000000 # initialize rs1
li x1, 0xfffffffe # initialize rs2
sha512sig0h x26, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x28, 0x00000000 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
sha512sig0h x14, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x5, 0x00000000 # initialize rs1
li x2, 0xaaaaaaaa # initialize rs2
sha512sig0h x27, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x29, 0x00000000 # initialize rs1
li x1, 0x55555555 # initialize rs2
sha512sig0h x30, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x9, 0x00000001 # initialize rs1
li x20, 0x00000000 # initialize rs2
sha512sig0h x17, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x30, 0x00000001 # initialize rs1
li x11, 0x00000001 # initialize rs2
sha512sig0h x19, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x5, 0x00000001 # initialize rs1
li x18, 0x00000002 # initialize rs2
sha512sig0h x17, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x27, 0x00000001 # initialize rs1
li x24, 0x80000000 # initialize rs2
sha512sig0h x1, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x1, 0x00000001 # initialize rs1
li x11, 0x80000001 # initialize rs2
sha512sig0h x29, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x26, 0x00000001 # initialize rs1
li x31, 0x7fffffff # initialize rs2
sha512sig0h x21, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x5, 0x00000001 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
sha512sig0h x9, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x27, 0x00000001 # initialize rs1
li x16, 0xffffffff # initialize rs2
sha512sig0h x13, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x9, 0x00000001 # initialize rs1
li x21, 0xfffffffe # initialize rs2
sha512sig0h x2, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x5, 0x00000001 # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
sha512sig0h x21, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x16, 0x00000001 # initialize rs1
li x25, 0xaaaaaaaa # initialize rs2
sha512sig0h x23, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x30, 0x00000001 # initialize rs1
li x1, 0x55555555 # initialize rs2
sha512sig0h x12, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x14, 0x00000002 # initialize rs1
li x23, 0x00000000 # initialize rs2
sha512sig0h x8, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x27, 0x00000002 # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sig0h x11, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x17, 0x00000002 # initialize rs1
li x26, 0x00000002 # initialize rs2
sha512sig0h x28, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x12, 0x00000002 # initialize rs1
li x13, 0x80000000 # initialize rs2
sha512sig0h x3, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x26, 0x00000002 # initialize rs1
li x18, 0x80000001 # initialize rs2
sha512sig0h x6, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x30, 0x00000002 # initialize rs1
li x21, 0x7fffffff # initialize rs2
sha512sig0h x5, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x12, 0x00000002 # initialize rs1
li x30, 0x7ffffffe # initialize rs2
sha512sig0h x13, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x15, 0x00000002 # initialize rs1
li x19, 0xffffffff # initialize rs2
sha512sig0h x31, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x18, 0x00000002 # initialize rs1
li x16, 0xfffffffe # initialize rs2
sha512sig0h x11, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x23, 0x00000002 # initialize rs1
li x14, 0x5bbc8872 # initialize rs2
sha512sig0h x31, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x29, 0x00000002 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
sha512sig0h x2, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x11, 0x00000002 # initialize rs1
li x31, 0x55555555 # initialize rs2
sha512sig0h x19, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x30, 0x80000000 # initialize rs1
li x18, 0x00000000 # initialize rs2
sha512sig0h x24, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x25, 0x80000000 # initialize rs1
li x14, 0x00000001 # initialize rs2
sha512sig0h x15, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x8, 0x80000000 # initialize rs1
li x2, 0x00000002 # initialize rs2
sha512sig0h x7, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x27, 0x80000000 # initialize rs1
li x7, 0x80000000 # initialize rs2
sha512sig0h x11, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x29, 0x80000000 # initialize rs1
li x27, 0x80000001 # initialize rs2
sha512sig0h x16, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x21, 0x80000000 # initialize rs1
li x14, 0x7fffffff # initialize rs2
sha512sig0h x17, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x11, 0x80000000 # initialize rs1
li x20, 0x7ffffffe # initialize rs2
sha512sig0h x9, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x10, 0x80000000 # initialize rs1
li x14, 0xffffffff # initialize rs2
sha512sig0h x16, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x2, 0x80000000 # initialize rs1
li x15, 0xfffffffe # initialize rs2
sha512sig0h x11, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x25, 0x80000000 # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
sha512sig0h x8, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x14, 0x80000000 # initialize rs1
li x17, 0xaaaaaaaa # initialize rs2
sha512sig0h x30, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x19, 0x80000000 # initialize rs1
li x10, 0x55555555 # initialize rs2
sha512sig0h x11, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x25, 0x80000001 # initialize rs1
li x8, 0x00000000 # initialize rs2
sha512sig0h x29, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x5, 0x80000001 # initialize rs1
li x1, 0x00000001 # initialize rs2
sha512sig0h x8, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x3, 0x80000001 # initialize rs1
li x24, 0x00000002 # initialize rs2
sha512sig0h x23, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x19, 0x80000001 # initialize rs1
li x14, 0x80000000 # initialize rs2
sha512sig0h x26, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x23, 0x80000001 # initialize rs1
li x27, 0x80000001 # initialize rs2
sha512sig0h x9, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x23, 0x80000001 # initialize rs1
li x12, 0x7fffffff # initialize rs2
sha512sig0h x8, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x13, 0x80000001 # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sha512sig0h x5, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x11, 0x80000001 # initialize rs1
li x24, 0xffffffff # initialize rs2
sha512sig0h x31, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x24, 0x80000001 # initialize rs1
li x10, 0xfffffffe # initialize rs2
sha512sig0h x26, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x31, 0x80000001 # initialize rs1
li x9, 0x5bbc8872 # initialize rs2
sha512sig0h x11, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x20, 0x80000001 # initialize rs1
li x22, 0xaaaaaaaa # initialize rs2
sha512sig0h x3, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x23, 0x80000001 # initialize rs1
li x1, 0x55555555 # initialize rs2
sha512sig0h x27, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x8, 0x7fffffff # initialize rs1
li x31, 0x00000000 # initialize rs2
sha512sig0h x5, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x10, 0x7fffffff # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sig0h x25, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x30, 0x7fffffff # initialize rs1
li x5, 0x00000002 # initialize rs2
sha512sig0h x11, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x24, 0x7fffffff # initialize rs1
li x15, 0x80000000 # initialize rs2
sha512sig0h x2, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x16, 0x7fffffff # initialize rs1
li x22, 0x80000001 # initialize rs2
sha512sig0h x8, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x11, 0x7fffffff # initialize rs1
li x2, 0x7fffffff # initialize rs2
sha512sig0h x22, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x26, 0x7fffffff # initialize rs1
li x10, 0x7ffffffe # initialize rs2
sha512sig0h x7, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x24, 0x7fffffff # initialize rs1
li x20, 0xffffffff # initialize rs2
sha512sig0h x11, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x6, 0x7fffffff # initialize rs1
li x24, 0xfffffffe # initialize rs2
sha512sig0h x28, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x18, 0x7fffffff # initialize rs1
li x19, 0x5bbc8872 # initialize rs2
sha512sig0h x30, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x15, 0x7fffffff # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
sha512sig0h x6, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x29, 0x7fffffff # initialize rs1
li x30, 0x55555555 # initialize rs2
sha512sig0h x28, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x19, 0x7ffffffe # initialize rs1
li x5, 0x00000000 # initialize rs2
sha512sig0h x23, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x6, 0x7ffffffe # initialize rs1
li x23, 0x00000001 # initialize rs2
sha512sig0h x13, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x29, 0x7ffffffe # initialize rs1
li x25, 0x00000002 # initialize rs2
sha512sig0h x10, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x18, 0x7ffffffe # initialize rs1
li x16, 0x80000000 # initialize rs2
sha512sig0h x23, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x1, 0x7ffffffe # initialize rs1
li x29, 0x80000001 # initialize rs2
sha512sig0h x27, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x25, 0x7ffffffe # initialize rs1
li x27, 0x7fffffff # initialize rs2
sha512sig0h x6, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x1, 0x7ffffffe # initialize rs1
li x15, 0x7ffffffe # initialize rs2
sha512sig0h x11, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x21, 0x7ffffffe # initialize rs1
li x25, 0xffffffff # initialize rs2
sha512sig0h x29, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x25, 0x7ffffffe # initialize rs1
li x6, 0xfffffffe # initialize rs2
sha512sig0h x11, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x22, 0x7ffffffe # initialize rs1
li x6, 0x5bbc8872 # initialize rs2
sha512sig0h x7, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x15, 0x7ffffffe # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
sha512sig0h x29, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x3, 0x7ffffffe # initialize rs1
li x24, 0x55555555 # initialize rs2
sha512sig0h x5, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x8, 0xffffffff # initialize rs1
li x22, 0x00000000 # initialize rs2
sha512sig0h x6, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x30, 0xffffffff # initialize rs1
li x22, 0x00000001 # initialize rs2
sha512sig0h x8, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x31, 0xffffffff # initialize rs1
li x10, 0x00000002 # initialize rs2
sha512sig0h x11, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x13, 0xffffffff # initialize rs1
li x11, 0x80000000 # initialize rs2
sha512sig0h x18, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x13, 0xffffffff # initialize rs1
li x8, 0x80000001 # initialize rs2
sha512sig0h x28, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x14, 0xffffffff # initialize rs1
li x28, 0x7fffffff # initialize rs2
sha512sig0h x17, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x16, 0xffffffff # initialize rs1
li x10, 0x7ffffffe # initialize rs2
sha512sig0h x6, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x14, 0xffffffff # initialize rs1
li x28, 0xffffffff # initialize rs2
sha512sig0h x23, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x3, 0xffffffff # initialize rs1
li x13, 0xfffffffe # initialize rs2
sha512sig0h x23, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x11, 0xffffffff # initialize rs1
li x25, 0x5bbc8872 # initialize rs2
sha512sig0h x27, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x15, 0xffffffff # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sha512sig0h x19, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x22, 0xffffffff # initialize rs1
li x19, 0x55555555 # initialize rs2
sha512sig0h x5, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x2, 0xfffffffe # initialize rs1
li x21, 0x00000000 # initialize rs2
sha512sig0h x24, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x20, 0xfffffffe # initialize rs1
li x27, 0x00000001 # initialize rs2
sha512sig0h x29, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x5, 0xfffffffe # initialize rs1
li x7, 0x00000002 # initialize rs2
sha512sig0h x6, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x12, 0xfffffffe # initialize rs1
li x2, 0x80000000 # initialize rs2
sha512sig0h x28, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x30, 0xfffffffe # initialize rs1
li x3, 0x80000001 # initialize rs2
sha512sig0h x11, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x30, 0xfffffffe # initialize rs1
li x11, 0x7fffffff # initialize rs2
sha512sig0h x31, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x12, 0xfffffffe # initialize rs1
li x11, 0x7ffffffe # initialize rs2
sha512sig0h x2, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x16, 0xfffffffe # initialize rs1
li x26, 0xffffffff # initialize rs2
sha512sig0h x18, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x9, 0xfffffffe # initialize rs1
li x12, 0xfffffffe # initialize rs2
sha512sig0h x31, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x9, 0xfffffffe # initialize rs1
li x26, 0x5bbc8872 # initialize rs2
sha512sig0h x10, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x17, 0xfffffffe # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
sha512sig0h x10, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x31, 0xfffffffe # initialize rs1
li x5, 0x55555555 # initialize rs2
sha512sig0h x1, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x7, 0x5bbc8872 # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sig0h x14, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x16, 0x5bbc8872 # initialize rs1
li x15, 0x00000001 # initialize rs2
sha512sig0h x12, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x19, 0x5bbc8872 # initialize rs1
li x9, 0x00000002 # initialize rs2
sha512sig0h x22, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x10, 0x5bbc8872 # initialize rs1
li x13, 0x80000000 # initialize rs2
sha512sig0h x5, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x5, 0x5bbc8872 # initialize rs1
li x8, 0x80000001 # initialize rs2
sha512sig0h x11, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x16, 0x5bbc8872 # initialize rs1
li x18, 0x7fffffff # initialize rs2
sha512sig0h x6, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x28, 0x5bbc8872 # initialize rs1
li x11, 0x7ffffffe # initialize rs2
sha512sig0h x25, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x11, 0x5bbc8872 # initialize rs1
li x25, 0xffffffff # initialize rs2
sha512sig0h x29, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x28, 0x5bbc8872 # initialize rs1
li x3, 0xfffffffe # initialize rs2
sha512sig0h x29, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x3, 0x5bbc8872 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
sha512sig0h x27, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x25, 0x5bbc8872 # initialize rs1
li x20, 0xaaaaaaaa # initialize rs2
sha512sig0h x28, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x5, 0x5bbc8872 # initialize rs1
li x31, 0x55555555 # initialize rs2
sha512sig0h x30, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x1, 0xaaaaaaaa # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sig0h x9, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x12, 0xaaaaaaaa # initialize rs1
li x9, 0x00000001 # initialize rs2
sha512sig0h x10, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x16, 0xaaaaaaaa # initialize rs1
li x8, 0x00000002 # initialize rs2
sha512sig0h x15, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x6, 0xaaaaaaaa # initialize rs1
li x15, 0x80000000 # initialize rs2
sha512sig0h x17, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x5, 0xaaaaaaaa # initialize rs1
li x30, 0x80000001 # initialize rs2
sha512sig0h x19, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x19, 0xaaaaaaaa # initialize rs1
li x6, 0x7fffffff # initialize rs2
sha512sig0h x23, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x24, 0xaaaaaaaa # initialize rs1
li x19, 0x7ffffffe # initialize rs2
sha512sig0h x20, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x8, 0xaaaaaaaa # initialize rs1
li x25, 0xffffffff # initialize rs2
sha512sig0h x28, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x28, 0xaaaaaaaa # initialize rs1
li x27, 0xfffffffe # initialize rs2
sha512sig0h x10, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x10, 0xaaaaaaaa # initialize rs1
li x17, 0x5bbc8872 # initialize rs2
sha512sig0h x26, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x10, 0xaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
sha512sig0h x7, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x12, 0xaaaaaaaa # initialize rs1
li x28, 0x55555555 # initialize rs2
sha512sig0h x22, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x31, 0x55555555 # initialize rs1
li x17, 0x00000000 # initialize rs2
sha512sig0h x19, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x23, 0x55555555 # initialize rs1
li x2, 0x00000001 # initialize rs2
sha512sig0h x20, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x25, 0x55555555 # initialize rs1
li x3, 0x00000002 # initialize rs2
sha512sig0h x23, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x2, 0x55555555 # initialize rs1
li x18, 0x80000000 # initialize rs2
sha512sig0h x8, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x9, 0x55555555 # initialize rs1
li x11, 0x80000001 # initialize rs2
sha512sig0h x6, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x29, 0x55555555 # initialize rs1
li x20, 0x7fffffff # initialize rs2
sha512sig0h x5, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x22, 0x55555555 # initialize rs1
li x2, 0x7ffffffe # initialize rs2
sha512sig0h x12, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x17, 0x55555555 # initialize rs1
li x3, 0xffffffff # initialize rs2
sha512sig0h x25, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x20, 0x55555555 # initialize rs1
li x19, 0xfffffffe # initialize rs2
sha512sig0h x15, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x2, 0x55555555 # initialize rs1
li x29, 0x5bbc8872 # initialize rs2
sha512sig0h x31, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x11, 0x55555555 # initialize rs1
li x6, 0xaaaaaaaa # initialize rs2
sha512sig0h x23, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x29, 0x55555555 # initialize rs1
li x23, 0x55555555 # initialize rs2
sha512sig0h x19, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x28f03b55 # initialize rs1
li x0, 0xb9311e01 # initialize rs2
sha512sig0h x3, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x67b6365f # initialize rs1
li x1, 0x5fec166c # initialize rs2
sha512sig0h x2, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x20ec3abb # initialize rs1
li x2, 0xa7ff1ad8 # initialize rs2
sha512sig0h x30, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x31bb137c # initialize rs1
li x3, 0x76edb6ed # initialize rs2
sha512sig0h x28, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x794cb145 # initialize rs1
li x4, 0x7577c9f1 # initialize rs2
sha512sig0h x7, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0719af3e # initialize rs1
li x5, 0x9f5023b0 # initialize rs2
sha512sig0h x31, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4ad94a91 # initialize rs1
li x6, 0x31e9edf2 # initialize rs2
sha512sig0h x11, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x899f71b7 # initialize rs1
li x7, 0xab33f8a7 # initialize rs2
sha512sig0h x18, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x70ff9268 # initialize rs1
li x8, 0xdf76739a # initialize rs2
sha512sig0h x12, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x6e5e343a # initialize rs1
li x9, 0x4f2abf91 # initialize rs2
sha512sig0h x6, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x7ea15015 # initialize rs1
li x10, 0xd5cb9246 # initialize rs2
sha512sig0h x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x00c24827 # initialize rs1
li x11, 0xbc319052 # initialize rs2
sha512sig0h x22, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x4dc6f946 # initialize rs1
li x12, 0x002aa94e # initialize rs2
sha512sig0h x31, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xe0c6162b # initialize rs1
li x13, 0x72c94021 # initialize rs2
sha512sig0h x24, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xd9e3f448 # initialize rs1
li x14, 0xd6677424 # initialize rs2
sha512sig0h x19, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x9eef226d # initialize rs1
li x15, 0x5eb457ca # initialize rs2
sha512sig0h x26, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x6f77384c # initialize rs1
li x16, 0x7dff1e61 # initialize rs2
sha512sig0h x17, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x4d017deb # initialize rs1
li x17, 0x061f6483 # initialize rs2
sha512sig0h x3, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x7de7d785 # initialize rs1
li x18, 0x147b1660 # initialize rs2
sha512sig0h x2, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x4e19de61 # initialize rs1
li x19, 0x0d253928 # initialize rs2
sha512sig0h x18, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xcbcdcbd1 # initialize rs1
li x20, 0xcee6e6ec # initialize rs2
sha512sig0h x10, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xc05da057 # initialize rs1
li x21, 0x9df00261 # initialize rs2
sha512sig0h x6, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x703ca893 # initialize rs1
li x22, 0x8b5075aa # initialize rs2
sha512sig0h x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x219b3605 # initialize rs1
li x23, 0x4fb09003 # initialize rs2
sha512sig0h x30, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xc76075ea # initialize rs1
li x24, 0xcbe496bb # initialize rs2
sha512sig0h x27, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x4e7064af # initialize rs1
li x25, 0x3198199c # initialize rs2
sha512sig0h x9, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xfd07a452 # initialize rs1
li x26, 0xa58aaeae # initialize rs2
sha512sig0h x6, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x9fa7e205 # initialize rs1
li x27, 0xff0f20de # initialize rs2
sha512sig0h x15, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x9a202e74 # initialize rs1
li x28, 0xaef0d618 # initialize rs2
sha512sig0h x25, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x2876e7e9 # initialize rs1
li x29, 0x65dafd81 # initialize rs2
sha512sig0h x21, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x9c2f7f81 # initialize rs1
li x30, 0xf3a646cc # initialize rs2
sha512sig0h x22, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xe568769d # initialize rs1
li x31, 0xeae27623 # initialize rs2
sha512sig0h x21, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x11ba0c2b # initialize rs1
li x15, 0x5ee98e91 # initialize rs2
sha512sig0h x0, x0, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xfa8531c2 # initialize rs1
li x31, 0xd4d38c9a # initialize rs2
sha512sig0h x1, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xbafec56a # initialize rs1
li x18, 0x3b584478 # initialize rs2
sha512sig0h x2, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6f4bd16d # initialize rs1
li x16, 0x575c2273 # initialize rs2
sha512sig0h x3, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0d0739b7 # initialize rs1
li x5, 0x645d7ae1 # initialize rs2
sha512sig0h x4, x4, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xff6264de # initialize rs1
li x8, 0xdde3aecc # initialize rs2
sha512sig0h x5, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd7c2f18e # initialize rs1
li x26, 0x37f6affd # initialize rs2
sha512sig0h x6, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x998f87e8 # initialize rs1
li x4, 0x57b5442e # initialize rs2
sha512sig0h x7, x7, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xa51a1052 # initialize rs1
li x22, 0x23c1cb4d # initialize rs2
sha512sig0h x8, x8, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0e52e093 # initialize rs1
li x16, 0x1e8431e0 # initialize rs2
sha512sig0h x9, x9, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xd7dd0ff2 # initialize rs1
li x28, 0x324f0017 # initialize rs2
sha512sig0h x10, x10, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x3a61ff60 # initialize rs1
li x10, 0x115548b0 # initialize rs2
sha512sig0h x11, x11, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x47a43750 # initialize rs1
li x8, 0x423b25a7 # initialize rs2
sha512sig0h x12, x12, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd6c09f67 # initialize rs1
li x20, 0xa3635e57 # initialize rs2
sha512sig0h x13, x13, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbe098c0b # initialize rs1
li x7, 0x958c6d58 # initialize rs2
sha512sig0h x14, x14, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2db4a901 # initialize rs1
li x7, 0x9b7acf45 # initialize rs2
sha512sig0h x15, x15, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x1438cf32 # initialize rs1
li x9, 0xf24aae0e # initialize rs2
sha512sig0h x16, x16, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc0f64a38 # initialize rs1
li x26, 0x8fe1217a # initialize rs2
sha512sig0h x17, x17, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xff69354d # initialize rs1
li x28, 0xbc5db04e # initialize rs2
sha512sig0h x18, x18, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xed83aedb # initialize rs1
li x9, 0x67f39c63 # initialize rs2
sha512sig0h x19, x19, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x8095169f # initialize rs1
li x6, 0x7975f2fa # initialize rs2
sha512sig0h x20, x20, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x75483064 # initialize rs1
li x3, 0xb920847d # initialize rs2
sha512sig0h x21, x21, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x7e5d7804 # initialize rs1
li x10, 0x4730cf15 # initialize rs2
sha512sig0h x22, x22, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x5b40d2be # initialize rs1
li x11, 0xcee89e98 # initialize rs2
sha512sig0h x23, x23, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x8516fd8a # initialize rs1
li x22, 0xb06ea58e # initialize rs2
sha512sig0h x24, x24, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x874143d2 # initialize rs1
li x9, 0x323099f5 # initialize rs2
sha512sig0h x25, x25, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x1e9559d0 # initialize rs1
li x29, 0x186b7b4f # initialize rs2
sha512sig0h x26, x26, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x1e9a03ed # initialize rs1
li x6, 0x5e882bfb # initialize rs2
sha512sig0h x27, x27, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xc92fb893 # initialize rs1
li x27, 0x74a3bf9f # initialize rs2
sha512sig0h x28, x28, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x098a6d5b # initialize rs1
li x27, 0x5a60044f # initialize rs2
sha512sig0h x29, x29, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x480d7538 # initialize rs1
li x6, 0x93899a0e # initialize rs2
sha512sig0h x30, x30, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x4e8b3cab # initialize rs1
li x12, 0x83e81ab7 # initialize rs2
sha512sig0h x31, x31, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x14, 0xf756d83a # initialize rs1
li x0, 0xe3b2a4ca # initialize rs2
sha512sig0h x0, x14, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x31, 0x4ecad548 # initialize rs1
li x1, 0xa6b64891 # initialize rs2
sha512sig0h x1, x31, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x25, 0x0ccf8efa # initialize rs1
li x2, 0x6371d1b0 # initialize rs2
sha512sig0h x2, x25, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x9, 0x522b110f # initialize rs1
li x3, 0x4732e023 # initialize rs2
sha512sig0h x3, x9, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
li x20, 0x306f7608 # initialize rs1
li x4, 0x4cb46b3c # initialize rs2
sha512sig0h x4, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x458f5e81 # initialize rs1
li x5, 0x3e0acc61 # initialize rs2
sha512sig0h x5, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x3af5fbad # initialize rs1
li x6, 0x1ebb0c23 # initialize rs2
sha512sig0h x6, x29, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0xaa3de19c # initialize rs1
li x7, 0x7e8ed44b # initialize rs2
sha512sig0h x7, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x11, 0x282c144f # initialize rs1
li x8, 0x4b5aed12 # initialize rs2
sha512sig0h x8, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x7, 0x27355aa3 # initialize rs1
li x9, 0x4674f31a # initialize rs2
sha512sig0h x9, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x19, 0x29bf67f9 # initialize rs1
li x10, 0xb7da7941 # initialize rs2
sha512sig0h x10, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x28, 0x5c635086 # initialize rs1
li x11, 0x07e1e46b # initialize rs2
sha512sig0h x11, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x24, 0x679b043d # initialize rs1
li x12, 0x1266a803 # initialize rs2
sha512sig0h x12, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x6, 0xd57f9d01 # initialize rs1
li x13, 0x721c2e22 # initialize rs2
sha512sig0h x13, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x17, 0x25efbf65 # initialize rs1
li x14, 0x2f50a839 # initialize rs2
sha512sig0h x14, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x14, 0x98253657 # initialize rs1
li x15, 0xec489169 # initialize rs2
sha512sig0h x15, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x13, 0x00f0a025 # initialize rs1
li x16, 0x4fc18d48 # initialize rs2
sha512sig0h x16, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x9, 0xe98486f2 # initialize rs1
li x17, 0x2a1df3cb # initialize rs2
sha512sig0h x17, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x15, 0x7e6be51c # initialize rs1
li x18, 0xb658f778 # initialize rs2
sha512sig0h x18, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x3, 0x70ecfe3a # initialize rs1
li x19, 0x6cc7d98d # initialize rs2
sha512sig0h x19, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x19, 0xba26185a # initialize rs1
li x20, 0xed9ba848 # initialize rs2
sha512sig0h x20, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x25, 0x36b98198 # initialize rs1
li x21, 0x54bb850f # initialize rs2
sha512sig0h x21, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x25, 0x20431778 # initialize rs1
li x22, 0x81f9ca52 # initialize rs2
sha512sig0h x22, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x1, 0xca87d0e8 # initialize rs1
li x23, 0x5bd752d6 # initialize rs2
sha512sig0h x23, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x9, 0x395c0b71 # initialize rs1
li x24, 0xf076c3a8 # initialize rs2
sha512sig0h x24, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x20, 0x890da164 # initialize rs1
li x25, 0x2a686b8f # initialize rs2
sha512sig0h x25, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x7, 0x880568cd # initialize rs1
li x26, 0xd7ebb165 # initialize rs2
sha512sig0h x26, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x10, 0x4ac224bb # initialize rs1
li x27, 0xbfbe3439 # initialize rs2
sha512sig0h x27, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x22, 0x7987ffd1 # initialize rs1
li x28, 0x2be4a21a # initialize rs2
sha512sig0h x28, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x1, 0x1f3de585 # initialize rs1
li x29, 0x18194319 # initialize rs2
sha512sig0h x29, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x26, 0x7442b8d8 # initialize rs1
li x30, 0xe0b3c13c # initialize rs2
sha512sig0h x30, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x26, 0x901059a6 # initialize rs1
li x31, 0x5a767bcd # initialize rs2
sha512sig0h x31, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xb70c8f55 # initialize rs1
li x0, 0x64cacc48 # initialize rs2
sha512sig0h x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xfb5ea1d3 # initialize rs1
li x1, 0xff310d1b # initialize rs2
sha512sig0h x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x52347312 # initialize rs1
li x2, 0x3292f49c # initialize rs2
sha512sig0h x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x32d2cfca # initialize rs1
li x3, 0xa7e8f245 # initialize rs2
sha512sig0h x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x07fc7b13 # initialize rs1
li x4, 0x1554fc49 # initialize rs2
sha512sig0h x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x53d7b0fa # initialize rs1
li x5, 0xdf899b8e # initialize rs2
sha512sig0h x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb4a0ce5a # initialize rs1
li x6, 0x58126405 # initialize rs2
sha512sig0h x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf16894a5 # initialize rs1
li x7, 0xbbcd5fa7 # initialize rs2
sha512sig0h x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x65d6a088 # initialize rs1
li x8, 0x28fe78c3 # initialize rs2
sha512sig0h x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x09de4471 # initialize rs1
li x9, 0xe55efce6 # initialize rs2
sha512sig0h x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x4d4e5c03 # initialize rs1
li x10, 0x95d45b31 # initialize rs2
sha512sig0h x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x3193456e # initialize rs1
li x11, 0x39d01066 # initialize rs2
sha512sig0h x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x9cb98973 # initialize rs1
li x12, 0x8117b26e # initialize rs2
sha512sig0h x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x3802fad6 # initialize rs1
li x13, 0x24a74c40 # initialize rs2
sha512sig0h x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x54951b83 # initialize rs1
li x14, 0x5cca98cc # initialize rs2
sha512sig0h x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x15bee37e # initialize rs1
li x15, 0xdca7beee # initialize rs2
sha512sig0h x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xa5b3edef # initialize rs1
li x16, 0xaf4e6c50 # initialize rs2
sha512sig0h x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x2a17da9e # initialize rs1
li x17, 0x739c7a45 # initialize rs2
sha512sig0h x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x50fbc357 # initialize rs1
li x18, 0x0d86f430 # initialize rs2
sha512sig0h x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x39df54b2 # initialize rs1
li x19, 0x74a00fe3 # initialize rs2
sha512sig0h x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x4f8b6752 # initialize rs1
li x20, 0xe22afa28 # initialize rs2
sha512sig0h x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xac88d314 # initialize rs1
li x21, 0x827e1724 # initialize rs2
sha512sig0h x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x15e43a6e # initialize rs1
li x22, 0x7f6f8e37 # initialize rs2
sha512sig0h x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x4071105f # initialize rs1
li x23, 0x83ac868a # initialize rs2
sha512sig0h x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xbb8edeae # initialize rs1
li x24, 0xa4413112 # initialize rs2
sha512sig0h x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xd89b588d # initialize rs1
li x25, 0xddf3a96c # initialize rs2
sha512sig0h x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x185c509b # initialize rs1
li x26, 0x76f3ced1 # initialize rs2
sha512sig0h x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xa3eca41f # initialize rs1
li x27, 0x70d31c4a # initialize rs2
sha512sig0h x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xe08555b5 # initialize rs1
li x28, 0x2968a2cc # initialize rs2
sha512sig0h x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x3e0e4aa5 # initialize rs1
li x29, 0x880c26ec # initialize rs2
sha512sig0h x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x27476a03 # initialize rs1
li x30, 0x8d17d387 # initialize rs2
sha512sig0h x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x3d8fbe04 # initialize rs1
li x31, 0xd9aef5e8 # initialize rs2
sha512sig0h x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x2, x12 # perform first operation
sha512sig0h x21, x5, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x3, x15 # perform first operation
sha512sig0h x19, x6, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x28, x20 # perform first operation
sha512sig0h x11, x1, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x15, x3 # perform first operation
sha512sig0h x2, x29, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x22, x23 # perform first operation
sha512sig0h x23, x29, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x21, x11 # perform first operation
sha512sig0h x11, x13, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x31, x17 # perform first operation
sha512sig0h x11, x16, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x25, x23 # perform first operation
sha512sig0h x31, x14, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x5, x3 # perform first operation
sha512sig0h x22, x24, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x5, x30 # perform first operation
sha512sig0h x5, x12, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x26, x13, x6 # perform first operation
sha512sig0h x6, x31, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x24, x6 # perform first operation
sha512sig0h x7, x19, x26 # perform second (triggering) operation

#.EQU SIGSIZE,1568


// ******************
// Tests from: WALLY-COV-sha256sum1.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xaefbcc24 # initialize rs1
sha256sum1 x9, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xce4ad971 # initialize rs1
sha256sum1 x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb58582cd # initialize rs1
sha256sum1 x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xc41c0684 # initialize rs1
sha256sum1 x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x663f0a2a # initialize rs1
sha256sum1 x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8a26e7cc # initialize rs1
sha256sum1 x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb7dada0b # initialize rs1
sha256sum1 x23, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x59293862 # initialize rs1
sha256sum1 x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x968034ed # initialize rs1
sha256sum1 x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x80d1ef03 # initialize rs1
sha256sum1 x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x569d6315 # initialize rs1
sha256sum1 x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x9138f018 # initialize rs1
sha256sum1 x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6dc62f32 # initialize rs1
sha256sum1 x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xac55ff2d # initialize rs1
sha256sum1 x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x0db01c38 # initialize rs1
sha256sum1 x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x0e9ff120 # initialize rs1
sha256sum1 x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xbc62b69d # initialize rs1
sha256sum1 x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xd508d21e # initialize rs1
sha256sum1 x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xa910e7bf # initialize rs1
sha256sum1 x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xe4393482 # initialize rs1
sha256sum1 x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xac09b111 # initialize rs1
sha256sum1 x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x8361acc5 # initialize rs1
sha256sum1 x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x0845d4d1 # initialize rs1
sha256sum1 x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xdb357131 # initialize rs1
sha256sum1 x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xe9ac0381 # initialize rs1
sha256sum1 x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x6047e50d # initialize rs1
sha256sum1 x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xfe567368 # initialize rs1
sha256sum1 x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x277bb7dc # initialize rs1
sha256sum1 x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xe8924745 # initialize rs1
sha256sum1 x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xe2a07c1b # initialize rs1
sha256sum1 x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x1fbe09c4 # initialize rs1
sha256sum1 x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x15106393 # initialize rs1
sha256sum1 x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 124)

# Testcase cp_rd (Test destination rd = x0)
li x12, 0xfef577c5 # initialize rs1
sha256sum1 x0, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x16, 0x7c132047 # initialize rs1
sha256sum1 x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x26, 0xcacc26b0 # initialize rs1
sha256sum1 x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x11, 0x7620eb95 # initialize rs1
sha256sum1 x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x875d492b # initialize rs1
sha256sum1 x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0xc943211f # initialize rs1
sha256sum1 x5, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0xc7112497 # initialize rs1
sha256sum1 x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0xe181231e # initialize rs1
sha256sum1 x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x17, 0x86f0b3d1 # initialize rs1
sha256sum1 x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0x8ebb3447 # initialize rs1
sha256sum1 x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x15, 0x202a6532 # initialize rs1
sha256sum1 x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x23, 0x6501d73d # initialize rs1
sha256sum1 x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x14, 0x797d3ed2 # initialize rs1
sha256sum1 x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0x7883ab4c # initialize rs1
sha256sum1 x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0x95cedfa2 # initialize rs1
sha256sum1 x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x7, 0x1d81d953 # initialize rs1
sha256sum1 x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0xc514750b # initialize rs1
sha256sum1 x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x16, 0x6c40c252 # initialize rs1
sha256sum1 x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x6, 0x3d10a5d1 # initialize rs1
sha256sum1 x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x25, 0x4c9a55b2 # initialize rs1
sha256sum1 x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x31, 0x2ba1e698 # initialize rs1
sha256sum1 x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x13, 0x7461fefa # initialize rs1
sha256sum1 x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x15, 0x7af24b75 # initialize rs1
sha256sum1 x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x25, 0xdeb74e98 # initialize rs1
sha256sum1 x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x16, 0xa8ca45a1 # initialize rs1
sha256sum1 x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x8, 0xbe42f58e # initialize rs1
sha256sum1 x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x31, 0xb13dabf4 # initialize rs1
sha256sum1 x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x10, 0x7b608642 # initialize rs1
sha256sum1 x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x14, 0xa8125058 # initialize rs1
sha256sum1 x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x19, 0x0238d5d2 # initialize rs1
sha256sum1 x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x7, 0x820101a6 # initialize rs1
sha256sum1 x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x30, 0x4feb294d # initialize rs1
sha256sum1 x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x25, 0x00000000 # initialize rs1
sha256sum1 x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0x00000001 # initialize rs1
sha256sum1 x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x17, 0x00000002 # initialize rs1
sha256sum1 x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x9, 0x80000000 # initialize rs1
sha256sum1 x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x21, 0x80000001 # initialize rs1
sha256sum1 x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x29, 0x7fffffff # initialize rs1
sha256sum1 x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x11, 0x7ffffffe # initialize rs1
sha256sum1 x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x6, 0xffffffff # initialize rs1
sha256sum1 x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0xfffffffe # initialize rs1
sha256sum1 x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x21, 0x5bbc8872 # initialize rs1
sha256sum1 x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x3, 0xaaaaaaaa # initialize rs1
sha256sum1 x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x25, 0x55555555 # initialize rs1
sha256sum1 x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x36e26366 # initialize rs1
sha256sum1 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xaca4bdef # initialize rs1
sha256sum1 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x6f307d91 # initialize rs1
sha256sum1 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x335b0ccd # initialize rs1
sha256sum1 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb04a1fde # initialize rs1
sha256sum1 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb9a395e2 # initialize rs1
sha256sum1 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc20b0c45 # initialize rs1
sha256sum1 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8635ff6d # initialize rs1
sha256sum1 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xcc77a8f5 # initialize rs1
sha256sum1 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x99827908 # initialize rs1
sha256sum1 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xcfd3cdce # initialize rs1
sha256sum1 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x66f42a48 # initialize rs1
sha256sum1 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x8f2930ea # initialize rs1
sha256sum1 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x863f5146 # initialize rs1
sha256sum1 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc49ac067 # initialize rs1
sha256sum1 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x466f1091 # initialize rs1
sha256sum1 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x35da0de1 # initialize rs1
sha256sum1 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x1930ecbe # initialize rs1
sha256sum1 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xcc0a607b # initialize rs1
sha256sum1 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xc8a4860b # initialize rs1
sha256sum1 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xba7ae206 # initialize rs1
sha256sum1 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x12dbdcc9 # initialize rs1
sha256sum1 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xdd45325d # initialize rs1
sha256sum1 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xaa71d386 # initialize rs1
sha256sum1 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe1eb8e35 # initialize rs1
sha256sum1 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x4741a82c # initialize rs1
sha256sum1 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x2b4fae84 # initialize rs1
sha256sum1 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x58ec0ea6 # initialize rs1
sha256sum1 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xc66801d2 # initialize rs1
sha256sum1 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xdf3537fa # initialize rs1
sha256sum1 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xe20862d4 # initialize rs1
sha256sum1 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xc07f2f9c # initialize rs1
sha256sum1 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x9, x30 # perform first operation
sha256sum1 x13, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x25, x16 # perform first operation
sha256sum1 x8, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x11, x7 # perform first operation
sha256sum1 x12, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x1, x14 # perform first operation
sha256sum1 x1, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x10, x29 # perform first operation
sha256sum1 x10, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x18, x26 # perform first operation
sha256sum1 x18, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x3, x30 # perform first operation
sha256sum1 x18, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x16, x5 # perform first operation
sha256sum1 x3, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x21, x22 # perform first operation
sha256sum1 x2, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x10, x25 # perform first operation
sha256sum1 x10, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x22, x28 # perform first operation
sha256sum1 x28, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x12, x31 # perform first operation
sha256sum1 x19, x10 # perform second (triggering) operation

#.EQU SIGSIZE,432


// ******************
// Tests from: WALLY-COV-sha512sig1h.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x9f45fbfb # initialize rs1
li x11, 0x445ec84b # initialize rs2
sha512sig1h x8, x0, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x0401da61 # initialize rs1
li x11, 0xaa4a4c4e # initialize rs2
sha512sig1h x10, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x0c259aed # initialize rs1
li x23, 0x9ae83589 # initialize rs2
sha512sig1h x10, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x9e5d1252 # initialize rs1
li x29, 0x444a3805 # initialize rs2
sha512sig1h x8, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc901acf0 # initialize rs1
li x6, 0x9a0093c0 # initialize rs2
sha512sig1h x9, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x43396d9b # initialize rs1
li x13, 0xc29fadaf # initialize rs2
sha512sig1h x25, x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1e55d843 # initialize rs1
li x24, 0x0c4601b3 # initialize rs2
sha512sig1h x13, x6, x24 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf8641ef5 # initialize rs1
li x23, 0x3307156e # initialize rs2
sha512sig1h x17, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x59bc87ef # initialize rs1
li x22, 0x8edf9438 # initialize rs2
sha512sig1h x5, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x40851197 # initialize rs1
li x26, 0x42e7f5f2 # initialize rs2
sha512sig1h x10, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x234211b6 # initialize rs1
li x21, 0xc53baee8 # initialize rs2
sha512sig1h x25, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xd22eb620 # initialize rs1
li x25, 0xd7a50d88 # initialize rs2
sha512sig1h x30, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x7f77cea5 # initialize rs1
li x24, 0xa3cb90f7 # initialize rs2
sha512sig1h x3, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xd632a332 # initialize rs1
li x18, 0x4904540e # initialize rs2
sha512sig1h x24, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc813aff1 # initialize rs1
li x30, 0x15b469ad # initialize rs2
sha512sig1h x6, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x374c5a7a # initialize rs1
li x24, 0xbfb9c436 # initialize rs2
sha512sig1h x10, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x26b66e94 # initialize rs1
li x7, 0x3bf5cf82 # initialize rs2
sha512sig1h x23, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x68eefef3 # initialize rs1
li x8, 0x07fe7716 # initialize rs2
sha512sig1h x9, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x3438542b # initialize rs1
li x3, 0x546f04f0 # initialize rs2
sha512sig1h x7, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x72c98a31 # initialize rs1
li x24, 0xe02a0946 # initialize rs2
sha512sig1h x16, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x4a42363c # initialize rs1
li x7, 0xba90fa6c # initialize rs2
sha512sig1h x16, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x1d5c3341 # initialize rs1
li x8, 0x4d5dc38b # initialize rs2
sha512sig1h x12, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x774221da # initialize rs1
li x17, 0x098a4327 # initialize rs2
sha512sig1h x2, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xe85eb445 # initialize rs1
li x29, 0xc11443c6 # initialize rs2
sha512sig1h x22, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x1178c1c0 # initialize rs1
li x21, 0x33e1b621 # initialize rs2
sha512sig1h x2, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x69c5d66f # initialize rs1
li x24, 0x94ea3748 # initialize rs2
sha512sig1h x23, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x593598c1 # initialize rs1
li x24, 0xdc7fbdfc # initialize rs2
sha512sig1h x19, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x4ccdc2ed # initialize rs1
li x13, 0x8324138c # initialize rs2
sha512sig1h x6, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xed05c5ff # initialize rs1
li x31, 0xe0c066e9 # initialize rs2
sha512sig1h x27, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x81fd653a # initialize rs1
li x22, 0x4d4b36f6 # initialize rs2
sha512sig1h x27, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x26910bfd # initialize rs1
li x27, 0x1e8c9478 # initialize rs2
sha512sig1h x7, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x2a7ca2d8 # initialize rs1
li x22, 0x90177a09 # initialize rs2
sha512sig1h x10, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 124)

# Testcase cp_rs2 (Test source rs2 = x0)
li x14, 0x914c8a3a # initialize rs1
li x0, 0x5357e9f6 # initialize rs2
sha512sig1h x18, x14, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cp_rs2 (Test source rs2 = x1)
li x29, 0x494aea2f # initialize rs1
li x1, 0xe46a6dd8 # initialize rs2
sha512sig1h x17, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 132)

# Testcase cp_rs2 (Test source rs2 = x2)
li x3, 0x03774d04 # initialize rs1
li x2, 0xb6d5d10e # initialize rs2
sha512sig1h x28, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 136)

# Testcase cp_rs2 (Test source rs2 = x3)
li x22, 0x6c37a8ed # initialize rs1
li x3, 0x7df527dc # initialize rs2
sha512sig1h x19, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 140)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x101e84fc # initialize rs1
li x4, 0x8359ea21 # initialize rs2
sha512sig1h x5, x11, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 144)

# Testcase cp_rs2 (Test source rs2 = x5)
li x22, 0x031682d7 # initialize rs1
li x5, 0x5094d63e # initialize rs2
sha512sig1h x26, x22, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 148)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x3fe4cb2b # initialize rs1
li x6, 0x891eadd9 # initialize rs2
sha512sig1h x4, x29, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 152)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0x6661108d # initialize rs1
li x7, 0x4ddc15c6 # initialize rs2
sha512sig1h x17, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 156)

# Testcase cp_rs2 (Test source rs2 = x8)
li x13, 0x8f441793 # initialize rs1
li x8, 0x169301c5 # initialize rs2
sha512sig1h x3, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 160)

# Testcase cp_rs2 (Test source rs2 = x9)
li x10, 0x83449118 # initialize rs1
li x9, 0xe0309357 # initialize rs2
sha512sig1h x15, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 164)

# Testcase cp_rs2 (Test source rs2 = x10)
li x22, 0x3164639f # initialize rs1
li x10, 0x6d9cbd5c # initialize rs2
sha512sig1h x20, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cp_rs2 (Test source rs2 = x11)
li x9, 0x9300ce20 # initialize rs1
li x11, 0xc4cb0ad6 # initialize rs2
sha512sig1h x20, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 172)

# Testcase cp_rs2 (Test source rs2 = x12)
li x19, 0x36f9e080 # initialize rs1
li x12, 0x31351912 # initialize rs2
sha512sig1h x13, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 176)

# Testcase cp_rs2 (Test source rs2 = x13)
li x16, 0xcd15fa91 # initialize rs1
li x13, 0x346075f5 # initialize rs2
sha512sig1h x30, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 180)

# Testcase cp_rs2 (Test source rs2 = x14)
li x24, 0x8d8502db # initialize rs1
li x14, 0x375e87db # initialize rs2
sha512sig1h x5, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cp_rs2 (Test source rs2 = x15)
li x30, 0x572ef046 # initialize rs1
li x15, 0x51b1b671 # initialize rs2
sha512sig1h x26, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 188)

# Testcase cp_rs2 (Test source rs2 = x16)
li x31, 0xec08fadb # initialize rs1
li x16, 0x3caaad95 # initialize rs2
sha512sig1h x17, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rs2 (Test source rs2 = x17)
li x10, 0x03e9f314 # initialize rs1
li x17, 0x7e2d157b # initialize rs2
sha512sig1h x18, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 196)

# Testcase cp_rs2 (Test source rs2 = x18)
li x28, 0x29cb9a22 # initialize rs1
li x18, 0x55df1f40 # initialize rs2
sha512sig1h x12, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cp_rs2 (Test source rs2 = x19)
li x31, 0xa5c8172d # initialize rs1
li x19, 0x8d6e3d8e # initialize rs2
sha512sig1h x3, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 204)

# Testcase cp_rs2 (Test source rs2 = x20)
li x6, 0xdc1d4ec3 # initialize rs1
li x20, 0xd165d77d # initialize rs2
sha512sig1h x16, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cp_rs2 (Test source rs2 = x21)
li x29, 0x7190e058 # initialize rs1
li x21, 0x15c4c932 # initialize rs2
sha512sig1h x18, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 212)

# Testcase cp_rs2 (Test source rs2 = x22)
li x1, 0x8b4c730e # initialize rs1
li x22, 0xaca1ff2a # initialize rs2
sha512sig1h x24, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 216)

# Testcase cp_rs2 (Test source rs2 = x23)
li x8, 0x00285555 # initialize rs1
li x23, 0xfe3930da # initialize rs2
sha512sig1h x18, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 220)

# Testcase cp_rs2 (Test source rs2 = x24)
li x29, 0xdc23004b # initialize rs1
li x24, 0xc63e99ac # initialize rs2
sha512sig1h x6, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_rs2 (Test source rs2 = x25)
li x26, 0x18e0ea0c # initialize rs1
li x25, 0xf740b62e # initialize rs2
sha512sig1h x30, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 228)

# Testcase cp_rs2 (Test source rs2 = x26)
li x10, 0x7f935b8c # initialize rs1
li x26, 0x74335e56 # initialize rs2
sha512sig1h x28, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cp_rs2 (Test source rs2 = x27)
li x26, 0x979f742d # initialize rs1
li x27, 0x7079ba9b # initialize rs2
sha512sig1h x18, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 236)

# Testcase cp_rs2 (Test source rs2 = x28)
li x19, 0x040fe3d2 # initialize rs1
li x28, 0x6821c2c6 # initialize rs2
sha512sig1h x10, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cp_rs2 (Test source rs2 = x29)
li x15, 0x5005b051 # initialize rs1
li x29, 0x056bee5c # initialize rs2
sha512sig1h x27, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 244)

# Testcase cp_rs2 (Test source rs2 = x30)
li x27, 0x37fd8961 # initialize rs1
li x30, 0x83b0c00a # initialize rs2
sha512sig1h x14, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cp_rs2 (Test source rs2 = x31)
li x19, 0x64d9ae5c # initialize rs1
li x31, 0x887ce19a # initialize rs2
sha512sig1h x23, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 252)

# Testcase cp_rd (Test destination rd = x0)
li x21, 0x0c8b9aba # initialize rs1
li x20, 0xa0151719 # initialize rs2
sha512sig1h x0, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x26, 0x6854971e # initialize rs1
li x9, 0xc8f4fec8 # initialize rs2
sha512sig1h x1, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 260)

# Testcase cp_rd (Test destination rd = x2)
li x14, 0x3b9e2607 # initialize rs1
li x24, 0xe11f5cfc # initialize rs2
sha512sig1h x2, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rd (Test destination rd = x3)
li x29, 0x3acaed4e # initialize rs1
li x27, 0x3a39e247 # initialize rs2
sha512sig1h x3, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 268)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x9ef7b9d5 # initialize rs1
li x3, 0x61d8c8db # initialize rs2
sha512sig1h x4, x11, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0x2468f683 # initialize rs1
li x26, 0xe64d20c5 # initialize rs2
sha512sig1h x5, x21, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 276)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0x3d16b811 # initialize rs1
li x23, 0xc0bd79f6 # initialize rs2
sha512sig1h x6, x20, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 280)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0x615293a5 # initialize rs1
li x20, 0xbf4c6922 # initialize rs2
sha512sig1h x7, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 284)

# Testcase cp_rd (Test destination rd = x8)
li x5, 0xbbcdbed4 # initialize rs1
li x16, 0xb998a564 # initialize rs2
sha512sig1h x8, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cp_rd (Test destination rd = x9)
li x8, 0x3e6784dd # initialize rs1
li x1, 0x528049e8 # initialize rs2
sha512sig1h x9, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 292)

# Testcase cp_rd (Test destination rd = x10)
li x27, 0x2e847084 # initialize rs1
li x25, 0xadd25f5a # initialize rs2
sha512sig1h x10, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 296)

# Testcase cp_rd (Test destination rd = x11)
li x19, 0xaf167581 # initialize rs1
li x29, 0x908686f4 # initialize rs2
sha512sig1h x11, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 300)

# Testcase cp_rd (Test destination rd = x12)
li x5, 0x466ee6c6 # initialize rs1
li x19, 0x3280e47c # initialize rs2
sha512sig1h x12, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_rd (Test destination rd = x13)
li x21, 0x26ca5fbc # initialize rs1
li x1, 0x0adc938d # initialize rs2
sha512sig1h x13, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 308)

# Testcase cp_rd (Test destination rd = x14)
li x23, 0x13d0a810 # initialize rs1
li x14, 0x887b79d4 # initialize rs2
sha512sig1h x14, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 312)

# Testcase cp_rd (Test destination rd = x15)
li x26, 0x2b1e01d8 # initialize rs1
li x11, 0x517f0cb6 # initialize rs2
sha512sig1h x15, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 316)

# Testcase cp_rd (Test destination rd = x16)
li x5, 0xa67fa7b9 # initialize rs1
li x7, 0x12314e05 # initialize rs2
sha512sig1h x16, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cp_rd (Test destination rd = x17)
li x21, 0xe52ff5d2 # initialize rs1
li x29, 0x91efec3b # initialize rs2
sha512sig1h x17, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 324)

# Testcase cp_rd (Test destination rd = x18)
li x20, 0x9c5ff2f7 # initialize rs1
li x16, 0x14963720 # initialize rs2
sha512sig1h x18, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 328)

# Testcase cp_rd (Test destination rd = x19)
li x22, 0xa66febad # initialize rs1
li x28, 0x2edee096 # initialize rs2
sha512sig1h x19, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 332)

# Testcase cp_rd (Test destination rd = x20)
li x17, 0x0323bd90 # initialize rs1
li x18, 0x472cd468 # initialize rs2
sha512sig1h x20, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rd (Test destination rd = x21)
li x26, 0x7417fe82 # initialize rs1
li x29, 0x217db1c2 # initialize rs2
sha512sig1h x21, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 340)

# Testcase cp_rd (Test destination rd = x22)
li x21, 0x6fe5d4c7 # initialize rs1
li x27, 0x193a35c8 # initialize rs2
sha512sig1h x22, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rd (Test destination rd = x23)
li x8, 0xc2399f02 # initialize rs1
li x18, 0x86367c71 # initialize rs2
sha512sig1h x23, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 348)

# Testcase cp_rd (Test destination rd = x24)
li x27, 0x0b2955ed # initialize rs1
li x19, 0x0eb48aec # initialize rs2
sha512sig1h x24, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0xbbb08607 # initialize rs1
li x13, 0xef8f0591 # initialize rs2
sha512sig1h x25, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 356)

# Testcase cp_rd (Test destination rd = x26)
li x7, 0x2f0e3b0a # initialize rs1
li x24, 0xcdac41eb # initialize rs2
sha512sig1h x26, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rd (Test destination rd = x27)
li x30, 0x6780d784 # initialize rs1
li x15, 0x1fa48674 # initialize rs2
sha512sig1h x27, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 364)

# Testcase cp_rd (Test destination rd = x28)
li x18, 0x46c627fa # initialize rs1
li x24, 0xc989f344 # initialize rs2
sha512sig1h x28, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cp_rd (Test destination rd = x29)
li x13, 0x0a1c87fd # initialize rs1
li x23, 0x78d29254 # initialize rs2
sha512sig1h x29, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 372)

# Testcase cp_rd (Test destination rd = x30)
li x12, 0x51c0c48d # initialize rs1
li x10, 0x220ca888 # initialize rs2
sha512sig1h x30, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cp_rd (Test destination rd = x31)
li x23, 0x51bf471e # initialize rs1
li x27, 0x7829d2b2 # initialize rs2
sha512sig1h x31, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 380)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x31, 0x00000000 # initialize rs1
li x8, 0x7a25507f # initialize rs2
sha512sig1h x12, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 384)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x00000001 # initialize rs1
li x27, 0x87a263e8 # initialize rs2
sha512sig1h x21, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x00000002 # initialize rs1
li x21, 0xc362fe11 # initialize rs2
sha512sig1h x2, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 392)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x30, 0x80000000 # initialize rs1
li x3, 0xd702ea93 # initialize rs2
sha512sig1h x31, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 396)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x21, 0x80000001 # initialize rs1
li x3, 0x9e52e4f6 # initialize rs2
sha512sig1h x30, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 400)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x14, 0x7fffffff # initialize rs1
li x25, 0xd1f47bf2 # initialize rs2
sha512sig1h x7, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 404)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x21, 0x7ffffffe # initialize rs1
li x5, 0xa9832d51 # initialize rs2
sha512sig1h x24, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 408)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x10, 0xffffffff # initialize rs1
li x9, 0xd2f97c5b # initialize rs2
sha512sig1h x31, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 412)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0xfffffffe # initialize rs1
li x17, 0xaa3c410b # initialize rs2
sha512sig1h x29, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 416)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x9, 0x5bbc8872 # initialize rs1
li x23, 0xcc45fe89 # initialize rs2
sha512sig1h x14, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 420)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x29, 0xaaaaaaaa # initialize rs1
li x1, 0x51e1f408 # initialize rs2
sha512sig1h x31, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x13, 0x55555555 # initialize rs1
li x23, 0xa54a6999 # initialize rs2
sha512sig1h x2, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 428)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x26, 0x579af01e # initialize rs1
li x30, 0x00000000 # initialize rs2
sha512sig1h x18, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 432)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x23, 0x50acbe78 # initialize rs1
li x13, 0x00000001 # initialize rs2
sha512sig1h x20, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 436)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x31, 0x5c07c977 # initialize rs1
li x26, 0x00000002 # initialize rs2
sha512sig1h x12, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 440)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000000)
li x12, 0x369c9f4c # initialize rs1
li x31, 0x80000000 # initialize rs2
sha512sig1h x23, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 444)

# Testcase cp_rs2_corners (Test source rs2 value = 0x80000001)
li x26, 0x181b872b # initialize rs1
li x14, 0x80000001 # initialize rs2
sha512sig1h x9, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 448)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffff)
li x12, 0x6751edf5 # initialize rs1
li x15, 0x7fffffff # initialize rs2
sha512sig1h x21, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 452)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffe)
li x24, 0x78ab7478 # initialize rs1
li x29, 0x7ffffffe # initialize rs2
sha512sig1h x10, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x26, 0xa26f29e8 # initialize rs1
li x14, 0xffffffff # initialize rs2
sha512sig1h x22, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 460)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x21, 0x599749c1 # initialize rs1
li x1, 0xfffffffe # initialize rs2
sha512sig1h x9, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc8872)
li x19, 0xbc78843a # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
sha512sig1h x24, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 468)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaa)
li x23, 0xf9961a56 # initialize rs1
li x26, 0xaaaaaaaa # initialize rs2
sha512sig1h x15, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 472)

# Testcase cp_rs2_corners (Test source rs2 value = 0x55555555)
li x16, 0xbc42fab2 # initialize rs1
li x21, 0x55555555 # initialize rs2
sha512sig1h x1, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 476)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x25, 0x00000000 # initialize rs1
li x5, 0x00000000 # initialize rs2
sha512sig1h x19, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x16, 0x00000000 # initialize rs1
li x31, 0x00000001 # initialize rs2
sha512sig1h x26, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 484)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x28, 0x00000000 # initialize rs1
li x19, 0x00000002 # initialize rs2
sha512sig1h x13, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000000)
li x9, 0x00000000 # initialize rs1
li x3, 0x80000000 # initialize rs2
sha512sig1h x1, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 492)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x80000001)
li x27, 0x00000000 # initialize rs1
li x15, 0x80000001 # initialize rs2
sha512sig1h x22, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffff)
li x9, 0x00000000 # initialize rs1
li x1, 0x7fffffff # initialize rs2
sha512sig1h x28, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 500)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffe)
li x15, 0x00000000 # initialize rs1
li x8, 0x7ffffffe # initialize rs2
sha512sig1h x12, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x16, 0x00000000 # initialize rs1
li x11, 0xffffffff # initialize rs2
sha512sig1h x12, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 508)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x19, 0x00000000 # initialize rs1
li x3, 0xfffffffe # initialize rs2
sha512sig1h x1, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc8872)
li x18, 0x00000000 # initialize rs1
li x16, 0x5bbc8872 # initialize rs2
sha512sig1h x1, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 516)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaa)
li x18, 0x00000000 # initialize rs1
li x19, 0xaaaaaaaa # initialize rs2
sha512sig1h x28, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x55555555)
li x27, 0x00000000 # initialize rs1
li x21, 0x55555555 # initialize rs2
sha512sig1h x30, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 524)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x24, 0x00000001 # initialize rs1
li x30, 0x00000000 # initialize rs2
sha512sig1h x8, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x14, 0x00000001 # initialize rs1
li x16, 0x00000001 # initialize rs2
sha512sig1h x2, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 532)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x14, 0x00000001 # initialize rs1
li x2, 0x00000002 # initialize rs2
sha512sig1h x3, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000000)
li x21, 0x00000001 # initialize rs1
li x8, 0x80000000 # initialize rs2
sha512sig1h x15, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 540)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x80000001)
li x1, 0x00000001 # initialize rs1
li x10, 0x80000001 # initialize rs2
sha512sig1h x28, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffff)
li x30, 0x00000001 # initialize rs1
li x12, 0x7fffffff # initialize rs2
sha512sig1h x6, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 548)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffe)
li x14, 0x00000001 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
sha512sig1h x12, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x3, 0x00000001 # initialize rs1
li x16, 0xffffffff # initialize rs2
sha512sig1h x24, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 556)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x28, 0x00000001 # initialize rs1
li x5, 0xfffffffe # initialize rs2
sha512sig1h x15, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc8872)
li x6, 0x00000001 # initialize rs1
li x15, 0x5bbc8872 # initialize rs2
sha512sig1h x9, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 564)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaa)
li x27, 0x00000001 # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
sha512sig1h x17, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x55555555)
li x7, 0x00000001 # initialize rs1
li x19, 0x55555555 # initialize rs2
sha512sig1h x23, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 572)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x26, 0x00000002 # initialize rs1
li x10, 0x00000000 # initialize rs2
sha512sig1h x7, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x24, 0x00000002 # initialize rs1
li x18, 0x00000001 # initialize rs2
sha512sig1h x11, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 580)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x15, 0x00000002 # initialize rs1
li x21, 0x00000002 # initialize rs2
sha512sig1h x6, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000000)
li x15, 0x00000002 # initialize rs1
li x6, 0x80000000 # initialize rs2
sha512sig1h x1, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 588)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x80000001)
li x16, 0x00000002 # initialize rs1
li x1, 0x80000001 # initialize rs2
sha512sig1h x7, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffff)
li x14, 0x00000002 # initialize rs1
li x11, 0x7fffffff # initialize rs2
sha512sig1h x17, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 596)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffe)
li x25, 0x00000002 # initialize rs1
li x26, 0x7ffffffe # initialize rs2
sha512sig1h x14, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x24, 0x00000002 # initialize rs1
li x29, 0xffffffff # initialize rs2
sha512sig1h x31, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 604)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x2, 0x00000002 # initialize rs1
li x13, 0xfffffffe # initialize rs2
sha512sig1h x8, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc8872)
li x30, 0x00000002 # initialize rs1
li x12, 0x5bbc8872 # initialize rs2
sha512sig1h x1, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 612)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaa)
li x22, 0x00000002 # initialize rs1
li x28, 0xaaaaaaaa # initialize rs2
sha512sig1h x21, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x55555555)
li x6, 0x00000002 # initialize rs1
li x21, 0x55555555 # initialize rs2
sha512sig1h x19, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 620)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x0)
li x26, 0x80000000 # initialize rs1
li x19, 0x00000000 # initialize rs2
sha512sig1h x17, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x1)
li x10, 0x80000000 # initialize rs1
li x27, 0x00000001 # initialize rs2
sha512sig1h x7, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 628)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x2)
li x10, 0x80000000 # initialize rs1
li x8, 0x00000002 # initialize rs2
sha512sig1h x3, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000000)
li x28, 0x80000000 # initialize rs1
li x13, 0x80000000 # initialize rs2
sha512sig1h x21, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 636)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x80000001)
li x19, 0x80000000 # initialize rs1
li x27, 0x80000001 # initialize rs2
sha512sig1h x10, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7fffffff)
li x12, 0x80000000 # initialize rs1
li x10, 0x7fffffff # initialize rs2
sha512sig1h x16, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 644)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x7ffffffe)
li x6, 0x80000000 # initialize rs1
li x18, 0x7ffffffe # initialize rs2
sha512sig1h x24, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xffffffff)
li x27, 0x80000000 # initialize rs1
li x12, 0xffffffff # initialize rs2
sha512sig1h x18, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 652)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xfffffffe)
li x16, 0x80000000 # initialize rs1
li x14, 0xfffffffe # initialize rs2
sha512sig1h x28, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x5bbc8872)
li x12, 0x80000000 # initialize rs1
li x2, 0x5bbc8872 # initialize rs2
sha512sig1h x5, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 660)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0xaaaaaaaa)
li x7, 0x80000000 # initialize rs1
li x29, 0xaaaaaaaa # initialize rs2
sha512sig1h x19, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000000 rs2 = 0x55555555)
li x24, 0x80000000 # initialize rs1
li x30, 0x55555555 # initialize rs2
sha512sig1h x27, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 668)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x0)
li x14, 0x80000001 # initialize rs1
li x27, 0x00000000 # initialize rs2
sha512sig1h x2, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x1)
li x6, 0x80000001 # initialize rs1
li x3, 0x00000001 # initialize rs2
sha512sig1h x12, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 676)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x2)
li x3, 0x80000001 # initialize rs1
li x28, 0x00000002 # initialize rs2
sha512sig1h x9, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000000)
li x16, 0x80000001 # initialize rs1
li x8, 0x80000000 # initialize rs2
sha512sig1h x7, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 684)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x80000001)
li x12, 0x80000001 # initialize rs1
li x7, 0x80000001 # initialize rs2
sha512sig1h x21, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7fffffff)
li x18, 0x80000001 # initialize rs1
li x2, 0x7fffffff # initialize rs2
sha512sig1h x17, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 692)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x7ffffffe)
li x23, 0x80000001 # initialize rs1
li x21, 0x7ffffffe # initialize rs2
sha512sig1h x13, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xffffffff)
li x15, 0x80000001 # initialize rs1
li x22, 0xffffffff # initialize rs2
sha512sig1h x12, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 700)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xfffffffe)
li x16, 0x80000001 # initialize rs1
li x10, 0xfffffffe # initialize rs2
sha512sig1h x9, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x5bbc8872)
li x6, 0x80000001 # initialize rs1
li x23, 0x5bbc8872 # initialize rs2
sha512sig1h x13, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 708)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0xaaaaaaaa)
li x31, 0x80000001 # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
sha512sig1h x22, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x80000001 rs2 = 0x55555555)
li x17, 0x80000001 # initialize rs1
li x6, 0x55555555 # initialize rs2
sha512sig1h x8, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 716)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x0)
li x26, 0x7fffffff # initialize rs1
li x8, 0x00000000 # initialize rs2
sha512sig1h x24, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x1)
li x5, 0x7fffffff # initialize rs1
li x13, 0x00000001 # initialize rs2
sha512sig1h x1, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 724)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x2)
li x6, 0x7fffffff # initialize rs1
li x27, 0x00000002 # initialize rs2
sha512sig1h x1, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000000)
li x26, 0x7fffffff # initialize rs1
li x24, 0x80000000 # initialize rs2
sha512sig1h x9, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 732)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x80000001)
li x6, 0x7fffffff # initialize rs1
li x20, 0x80000001 # initialize rs2
sha512sig1h x27, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7fffffff)
li x22, 0x7fffffff # initialize rs1
li x13, 0x7fffffff # initialize rs2
sha512sig1h x5, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 740)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x7ffffffe)
li x1, 0x7fffffff # initialize rs1
li x30, 0x7ffffffe # initialize rs2
sha512sig1h x21, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xffffffff)
li x6, 0x7fffffff # initialize rs1
li x17, 0xffffffff # initialize rs2
sha512sig1h x27, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 748)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xfffffffe)
li x6, 0x7fffffff # initialize rs1
li x15, 0xfffffffe # initialize rs2
sha512sig1h x17, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x5bbc8872)
li x15, 0x7fffffff # initialize rs1
li x13, 0x5bbc8872 # initialize rs2
sha512sig1h x26, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 756)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0xaaaaaaaa)
li x1, 0x7fffffff # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
sha512sig1h x13, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffff rs2 = 0x55555555)
li x18, 0x7fffffff # initialize rs1
li x25, 0x55555555 # initialize rs2
sha512sig1h x2, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 764)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x0)
li x30, 0x7ffffffe # initialize rs1
li x12, 0x00000000 # initialize rs2
sha512sig1h x31, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x1)
li x6, 0x7ffffffe # initialize rs1
li x10, 0x00000001 # initialize rs2
sha512sig1h x14, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 772)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x2)
li x24, 0x7ffffffe # initialize rs1
li x30, 0x00000002 # initialize rs2
sha512sig1h x6, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000000)
li x2, 0x7ffffffe # initialize rs1
li x8, 0x80000000 # initialize rs2
sha512sig1h x16, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 780)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x80000001)
li x21, 0x7ffffffe # initialize rs1
li x2, 0x80000001 # initialize rs2
sha512sig1h x12, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7fffffff)
li x3, 0x7ffffffe # initialize rs1
li x18, 0x7fffffff # initialize rs2
sha512sig1h x26, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 788)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x7ffffffe)
li x30, 0x7ffffffe # initialize rs1
li x26, 0x7ffffffe # initialize rs2
sha512sig1h x17, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xffffffff)
li x16, 0x7ffffffe # initialize rs1
li x29, 0xffffffff # initialize rs2
sha512sig1h x8, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 796)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xfffffffe)
li x13, 0x7ffffffe # initialize rs1
li x23, 0xfffffffe # initialize rs2
sha512sig1h x22, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x5bbc8872)
li x5, 0x7ffffffe # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
sha512sig1h x26, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 804)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0xaaaaaaaa)
li x22, 0x7ffffffe # initialize rs1
li x16, 0xaaaaaaaa # initialize rs2
sha512sig1h x9, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffe rs2 = 0x55555555)
li x10, 0x7ffffffe # initialize rs1
li x12, 0x55555555 # initialize rs2
sha512sig1h x9, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 812)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x22, 0xffffffff # initialize rs1
li x31, 0x00000000 # initialize rs2
sha512sig1h x15, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x2, 0xffffffff # initialize rs1
li x24, 0x00000001 # initialize rs2
sha512sig1h x7, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 820)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x3, 0xffffffff # initialize rs1
li x18, 0x00000002 # initialize rs2
sha512sig1h x31, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000000)
li x23, 0xffffffff # initialize rs1
li x12, 0x80000000 # initialize rs2
sha512sig1h x3, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 828)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x80000001)
li x17, 0xffffffff # initialize rs1
li x23, 0x80000001 # initialize rs2
sha512sig1h x28, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffff)
li x11, 0xffffffff # initialize rs1
li x25, 0x7fffffff # initialize rs2
sha512sig1h x18, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 836)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffe)
li x5, 0xffffffff # initialize rs1
li x13, 0x7ffffffe # initialize rs2
sha512sig1h x30, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x1, 0xffffffff # initialize rs1
li x26, 0xffffffff # initialize rs2
sha512sig1h x24, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 844)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x23, 0xffffffff # initialize rs1
li x5, 0xfffffffe # initialize rs2
sha512sig1h x31, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc8872)
li x20, 0xffffffff # initialize rs1
li x21, 0x5bbc8872 # initialize rs2
sha512sig1h x27, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 852)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaa)
li x17, 0xffffffff # initialize rs1
li x8, 0xaaaaaaaa # initialize rs2
sha512sig1h x13, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x55555555)
li x24, 0xffffffff # initialize rs1
li x12, 0x55555555 # initialize rs2
sha512sig1h x17, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 860)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x9, 0xfffffffe # initialize rs1
li x20, 0x00000000 # initialize rs2
sha512sig1h x26, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x18, 0xfffffffe # initialize rs1
li x17, 0x00000001 # initialize rs2
sha512sig1h x31, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 868)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x1, 0xfffffffe # initialize rs1
li x13, 0x00000002 # initialize rs2
sha512sig1h x14, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000000)
li x23, 0xfffffffe # initialize rs1
li x5, 0x80000000 # initialize rs2
sha512sig1h x18, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 876)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x80000001)
li x27, 0xfffffffe # initialize rs1
li x25, 0x80000001 # initialize rs2
sha512sig1h x26, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffff)
li x5, 0xfffffffe # initialize rs1
li x3, 0x7fffffff # initialize rs2
sha512sig1h x26, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 884)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffe)
li x16, 0xfffffffe # initialize rs1
li x28, 0x7ffffffe # initialize rs2
sha512sig1h x8, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x27, 0xfffffffe # initialize rs1
li x7, 0xffffffff # initialize rs2
sha512sig1h x15, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 892)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x9, 0xfffffffe # initialize rs1
li x15, 0xfffffffe # initialize rs2
sha512sig1h x8, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc8872)
li x22, 0xfffffffe # initialize rs1
li x27, 0x5bbc8872 # initialize rs2
sha512sig1h x2, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 900)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaa)
li x8, 0xfffffffe # initialize rs1
li x9, 0xaaaaaaaa # initialize rs2
sha512sig1h x17, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x55555555)
li x15, 0xfffffffe # initialize rs1
li x9, 0x55555555 # initialize rs2
sha512sig1h x1, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 908)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x0)
li x26, 0x5bbc8872 # initialize rs1
li x28, 0x00000000 # initialize rs2
sha512sig1h x2, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x1)
li x27, 0x5bbc8872 # initialize rs1
li x23, 0x00000001 # initialize rs2
sha512sig1h x14, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 916)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x2)
li x7, 0x5bbc8872 # initialize rs1
li x21, 0x00000002 # initialize rs2
sha512sig1h x16, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000000)
li x19, 0x5bbc8872 # initialize rs1
li x12, 0x80000000 # initialize rs2
sha512sig1h x5, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 924)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x80000001)
li x24, 0x5bbc8872 # initialize rs1
li x20, 0x80000001 # initialize rs2
sha512sig1h x5, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7fffffff)
li x12, 0x5bbc8872 # initialize rs1
li x22, 0x7fffffff # initialize rs2
sha512sig1h x29, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 932)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x7ffffffe)
li x14, 0x5bbc8872 # initialize rs1
li x17, 0x7ffffffe # initialize rs2
sha512sig1h x31, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xffffffff)
li x13, 0x5bbc8872 # initialize rs1
li x20, 0xffffffff # initialize rs2
sha512sig1h x14, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 940)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xfffffffe)
li x22, 0x5bbc8872 # initialize rs1
li x25, 0xfffffffe # initialize rs2
sha512sig1h x30, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x5bbc8872)
li x27, 0x5bbc8872 # initialize rs1
li x10, 0x5bbc8872 # initialize rs2
sha512sig1h x25, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 948)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0xaaaaaaaa)
li x7, 0x5bbc8872 # initialize rs1
li x3, 0xaaaaaaaa # initialize rs2
sha512sig1h x29, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc8872 rs2 = 0x55555555)
li x17, 0x5bbc8872 # initialize rs1
li x7, 0x55555555 # initialize rs2
sha512sig1h x22, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 956)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x0)
li x16, 0xaaaaaaaa # initialize rs1
li x26, 0x00000000 # initialize rs2
sha512sig1h x7, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x1)
li x12, 0xaaaaaaaa # initialize rs1
li x20, 0x00000001 # initialize rs2
sha512sig1h x10, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 964)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x2)
li x27, 0xaaaaaaaa # initialize rs1
li x17, 0x00000002 # initialize rs2
sha512sig1h x31, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000000)
li x2, 0xaaaaaaaa # initialize rs1
li x30, 0x80000000 # initialize rs2
sha512sig1h x22, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 972)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x80000001)
li x10, 0xaaaaaaaa # initialize rs1
li x6, 0x80000001 # initialize rs2
sha512sig1h x12, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7fffffff)
li x29, 0xaaaaaaaa # initialize rs1
li x10, 0x7fffffff # initialize rs2
sha512sig1h x14, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 980)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x7ffffffe)
li x12, 0xaaaaaaaa # initialize rs1
li x5, 0x7ffffffe # initialize rs2
sha512sig1h x22, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xffffffff)
li x23, 0xaaaaaaaa # initialize rs1
li x5, 0xffffffff # initialize rs2
sha512sig1h x31, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 988)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xfffffffe)
li x1, 0xaaaaaaaa # initialize rs1
li x21, 0xfffffffe # initialize rs2
sha512sig1h x27, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x5bbc8872)
li x5, 0xaaaaaaaa # initialize rs1
li x20, 0x5bbc8872 # initialize rs2
sha512sig1h x15, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 996)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0xaaaaaaaa)
li x2, 0xaaaaaaaa # initialize rs1
li x31, 0xaaaaaaaa # initialize rs2
sha512sig1h x10, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaa rs2 = 0x55555555)
li x3, 0xaaaaaaaa # initialize rs1
li x2, 0x55555555 # initialize rs2
sha512sig1h x15, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1004)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x0)
li x20, 0x55555555 # initialize rs1
li x1, 0x00000000 # initialize rs2
sha512sig1h x31, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x1)
li x12, 0x55555555 # initialize rs1
li x6, 0x00000001 # initialize rs2
sha512sig1h x14, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1012)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x2)
li x6, 0x55555555 # initialize rs1
li x13, 0x00000002 # initialize rs2
sha512sig1h x27, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000000)
li x22, 0x55555555 # initialize rs1
li x2, 0x80000000 # initialize rs2
sha512sig1h x19, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1020)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x80000001)
li x19, 0x55555555 # initialize rs1
li x30, 0x80000001 # initialize rs2
sha512sig1h x11, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7fffffff)
li x23, 0x55555555 # initialize rs1
li x7, 0x7fffffff # initialize rs2
sha512sig1h x14, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1028)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x7ffffffe)
li x29, 0x55555555 # initialize rs1
li x24, 0x7ffffffe # initialize rs2
sha512sig1h x5, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xffffffff)
li x22, 0x55555555 # initialize rs1
li x17, 0xffffffff # initialize rs2
sha512sig1h x10, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1036)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xfffffffe)
li x21, 0x55555555 # initialize rs1
li x22, 0xfffffffe # initialize rs2
sha512sig1h x26, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x5bbc8872)
li x12, 0x55555555 # initialize rs1
li x31, 0x5bbc8872 # initialize rs2
sha512sig1h x14, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1044)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0xaaaaaaaa)
li x10, 0x55555555 # initialize rs1
li x21, 0xaaaaaaaa # initialize rs2
sha512sig1h x1, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x55555555 rs2 = 0x55555555)
li x1, 0x55555555 # initialize rs1
li x18, 0x55555555 # initialize rs2
sha512sig1h x14, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1052)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x55989b31 # initialize rs1
li x0, 0x4457b61f # initialize rs2
sha512sig1h x27, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1056)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xb622da0a # initialize rs1
li x1, 0x22f07337 # initialize rs2
sha512sig1h x11, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1060)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x4372f97d # initialize rs1
li x2, 0xc3f2f55b # initialize rs2
sha512sig1h x29, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1064)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2b739b9f # initialize rs1
li x3, 0x04075853 # initialize rs2
sha512sig1h x5, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1068)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5bc8dc4e # initialize rs1
li x4, 0x655bcd7e # initialize rs2
sha512sig1h x13, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1072)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0ea5752d # initialize rs1
li x5, 0xf65c6291 # initialize rs2
sha512sig1h x14, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1076)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x36b1fe4f # initialize rs1
li x6, 0xff87fe16 # initialize rs2
sha512sig1h x27, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x27, 1080)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa9bc84a2 # initialize rs1
li x7, 0xef7927b2 # initialize rs2
sha512sig1h x5, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1084)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x39c74efd # initialize rs1
li x8, 0x3d47065f # initialize rs2
sha512sig1h x27, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1088)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x35a12f86 # initialize rs1
li x9, 0x8183904a # initialize rs2
sha512sig1h x23, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1092)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xcff531b5 # initialize rs1
li x10, 0x161df162 # initialize rs2
sha512sig1h x7, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1096)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xbfc21f7e # initialize rs1
li x11, 0x5847c06a # initialize rs2
sha512sig1h x1, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1100)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xd585a2ff # initialize rs1
li x12, 0x067a90e9 # initialize rs2
sha512sig1h x30, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1104)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xde23774c # initialize rs1
li x13, 0x06c33a95 # initialize rs2
sha512sig1h x10, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1108)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x1ccde1ae # initialize rs1
li x14, 0x274d4703 # initialize rs2
sha512sig1h x3, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1112)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x5c2085f7 # initialize rs1
li x15, 0x0ce56167 # initialize rs2
sha512sig1h x6, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1116)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x610cc87a # initialize rs1
li x16, 0xef89de3d # initialize rs2
sha512sig1h x24, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1120)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x1a5140a7 # initialize rs1
li x17, 0x2c65bace # initialize rs2
sha512sig1h x8, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1124)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x0777b153 # initialize rs1
li x18, 0xe9ccc01e # initialize rs2
sha512sig1h x27, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1128)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xf48123f2 # initialize rs1
li x19, 0x0bce0032 # initialize rs2
sha512sig1h x9, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1132)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x9ffa6c75 # initialize rs1
li x20, 0x86672f98 # initialize rs2
sha512sig1h x9, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1136)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xf4173b63 # initialize rs1
li x21, 0xda58f7d7 # initialize rs2
sha512sig1h x12, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1140)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x87676fff # initialize rs1
li x22, 0x6533bb92 # initialize rs2
sha512sig1h x15, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1144)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xc0639ce0 # initialize rs1
li x23, 0x49d9ec64 # initialize rs2
sha512sig1h x18, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1148)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x4ff7826e # initialize rs1
li x24, 0x221c31f1 # initialize rs2
sha512sig1h x31, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1152)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xe79c2846 # initialize rs1
li x25, 0xb58e4695 # initialize rs2
sha512sig1h x8, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1156)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x773d3868 # initialize rs1
li x26, 0xb801e5d2 # initialize rs2
sha512sig1h x19, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1160)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x86cfc9e6 # initialize rs1
li x27, 0xff8e7127 # initialize rs2
sha512sig1h x10, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1164)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x95955e0d # initialize rs1
li x28, 0x9e18f6e5 # initialize rs2
sha512sig1h x27, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1168)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xc0474e6d # initialize rs1
li x29, 0x2d4f8562 # initialize rs2
sha512sig1h x12, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1172)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x2bab9df2 # initialize rs1
li x30, 0x31f63248 # initialize rs2
sha512sig1h x19, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1176)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x20dfb8b9 # initialize rs1
li x31, 0xa51676d3 # initialize rs2
sha512sig1h x6, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1180)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x526b8036 # initialize rs1
li x18, 0xed6e2646 # initialize rs2
sha512sig1h x0, x0, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1184)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xd7ba1c91 # initialize rs1
li x2, 0x3dd5dd2b # initialize rs2
sha512sig1h x1, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1188)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8bbe6706 # initialize rs1
li x2, 0x6e8aeadd # initialize rs2
sha512sig1h x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x811cee20 # initialize rs1
li x24, 0xd31ec4dc # initialize rs2
sha512sig1h x3, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1196)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1a38dbac # initialize rs1
li x27, 0x637d1eec # initialize rs2
sha512sig1h x4, x4, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1200)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf50b9e64 # initialize rs1
li x17, 0x89721121 # initialize rs2
sha512sig1h x5, x5, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1204)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa2f48923 # initialize rs1
li x1, 0xd181bc69 # initialize rs2
sha512sig1h x6, x6, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1208)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf8bb2fb8 # initialize rs1
li x25, 0xdccc23c8 # initialize rs2
sha512sig1h x7, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1212)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8c79bbcb # initialize rs1
li x20, 0xa73867be # initialize rs2
sha512sig1h x8, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1216)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0566b326 # initialize rs1
li x2, 0x982f7591 # initialize rs2
sha512sig1h x9, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1220)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xb06778a9 # initialize rs1
li x25, 0x2de10870 # initialize rs2
sha512sig1h x10, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x6944be9d # initialize rs1
li x9, 0xe27a07f8 # initialize rs2
sha512sig1h x11, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1228)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x82ecac80 # initialize rs1
li x24, 0x8595c1b2 # initialize rs2
sha512sig1h x12, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x7200e2b3 # initialize rs1
li x30, 0xb5410d8d # initialize rs2
sha512sig1h x13, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1236)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x4306d226 # initialize rs1
li x15, 0x62acd8a8 # initialize rs2
sha512sig1h x14, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1240)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xe968ab3c # initialize rs1
li x1, 0x0da418fc # initialize rs2
sha512sig1h x15, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1244)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xdcd879be # initialize rs1
li x21, 0x37befdf4 # initialize rs2
sha512sig1h x16, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xe63d9f41 # initialize rs1
li x12, 0x6cd54669 # initialize rs2
sha512sig1h x17, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1252)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x929ddb8a # initialize rs1
li x5, 0x878a4843 # initialize rs2
sha512sig1h x18, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x6c7c5fc8 # initialize rs1
li x5, 0xb543e006 # initialize rs2
sha512sig1h x19, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1260)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa3aaf532 # initialize rs1
li x14, 0x4887c9d4 # initialize rs2
sha512sig1h x20, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1264)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x6dbbd7d6 # initialize rs1
li x16, 0x7f6078e6 # initialize rs2
sha512sig1h x21, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1268)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x26ab0aec # initialize rs1
li x25, 0x37fa9eda # initialize rs2
sha512sig1h x22, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1272)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x12f20ea4 # initialize rs1
li x8, 0x581b393e # initialize rs2
sha512sig1h x23, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1276)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xf3036c76 # initialize rs1
li x21, 0x9713424f # initialize rs2
sha512sig1h x24, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xf5f7aba0 # initialize rs1
li x28, 0xd1888d72 # initialize rs2
sha512sig1h x25, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1284)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xe3b05a46 # initialize rs1
li x24, 0x1e3630ce # initialize rs2
sha512sig1h x26, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x60b62f9e # initialize rs1
li x20, 0x47dd3aae # initialize rs2
sha512sig1h x27, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1292)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x714a438c # initialize rs1
li x12, 0x2643e3c7 # initialize rs2
sha512sig1h x28, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf438ba3a # initialize rs1
li x30, 0x2cad0f8a # initialize rs2
sha512sig1h x29, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x6dda85c3 # initialize rs1
li x2, 0x80f15341 # initialize rs2
sha512sig1h x30, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x44362ce7 # initialize rs1
li x30, 0x47699a92 # initialize rs2
sha512sig1h x31, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1308)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x16, 0xa9f388e2 # initialize rs1
li x0, 0xb33c41df # initialize rs2
sha512sig1h x0, x16, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1312)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x19, 0xc065d8d7 # initialize rs1
li x1, 0x859ac655 # initialize rs2
sha512sig1h x1, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1316)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x26, 0x80d894d0 # initialize rs1
li x2, 0x4e17df12 # initialize rs2
sha512sig1h x2, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x13, 0x3d7c4746 # initialize rs1
li x3, 0x3d4ecc2b # initialize rs2
sha512sig1h x3, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1324)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x4e206e8a # initialize rs1
li x4, 0x419cde92 # initialize rs2
sha512sig1h x4, x6, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x76122f88 # initialize rs1
li x5, 0x5c66bc2f # initialize rs2
sha512sig1h x5, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1332)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0xb3dee504 # initialize rs1
li x6, 0x78a045ad # initialize rs2
sha512sig1h x6, x31, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1336)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x5f3cc315 # initialize rs1
li x7, 0x584c16d1 # initialize rs2
sha512sig1h x7, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1340)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x2, 0x647673fb # initialize rs1
li x8, 0xaae2212e # initialize rs2
sha512sig1h x8, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1344)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x7, 0x92b661c7 # initialize rs1
li x9, 0x40698d49 # initialize rs2
sha512sig1h x9, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1348)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x2, 0xc34fe71c # initialize rs1
li x10, 0xfecf8982 # initialize rs2
sha512sig1h x10, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1352)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x22, 0x9f047e8c # initialize rs1
li x11, 0xf6fb07a2 # initialize rs2
sha512sig1h x11, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1356)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x9, 0xb29359a7 # initialize rs1
li x12, 0x5249cf37 # initialize rs2
sha512sig1h x12, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x9, 0xcb9133b0 # initialize rs1
li x13, 0xbe14d759 # initialize rs2
sha512sig1h x13, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1364)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x20, 0x8e045cc8 # initialize rs1
li x14, 0xd9631c1f # initialize rs2
sha512sig1h x14, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x1, 0x002de876 # initialize rs1
li x15, 0xc7f8b55b # initialize rs2
sha512sig1h x15, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1372)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x29, 0x7ea28374 # initialize rs1
li x16, 0xb6e0627a # initialize rs2
sha512sig1h x16, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x1, 0x885030fe # initialize rs1
li x17, 0x39aa0b52 # initialize rs2
sha512sig1h x17, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1380)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x31, 0xde2a201f # initialize rs1
li x18, 0x59f1548c # initialize rs2
sha512sig1h x18, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x461e184f # initialize rs1
li x19, 0x6ed362b4 # initialize rs2
sha512sig1h x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1388)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x6, 0xd08fb364 # initialize rs1
li x20, 0xc089e9b5 # initialize rs2
sha512sig1h x20, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x15, 0xa78844e2 # initialize rs1
li x21, 0x643c155b # initialize rs2
sha512sig1h x21, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1396)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x14, 0x97935bd8 # initialize rs1
li x22, 0x9f1c4e65 # initialize rs2
sha512sig1h x22, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x15, 0x5e8839d6 # initialize rs1
li x23, 0x3e403203 # initialize rs2
sha512sig1h x23, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1404)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x7, 0xf1e9c89f # initialize rs1
li x24, 0xac96d24e # initialize rs2
sha512sig1h x24, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x1, 0x107262b8 # initialize rs1
li x25, 0x6a9d28b7 # initialize rs2
sha512sig1h x25, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1412)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x8, 0x6ed2a456 # initialize rs1
li x26, 0xddd7083e # initialize rs2
sha512sig1h x26, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x20, 0x4b3b915a # initialize rs1
li x27, 0x9c596cd6 # initialize rs2
sha512sig1h x27, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1420)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x13, 0xd33fa407 # initialize rs1
li x28, 0x36aad22e # initialize rs2
sha512sig1h x28, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x30, 0xdecfd197 # initialize rs1
li x29, 0x81b491be # initialize rs2
sha512sig1h x29, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1428)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x7, 0x02b8a43e # initialize rs1
li x30, 0x1ffe559e # initialize rs2
sha512sig1h x30, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x7, 0x8a4feb39 # initialize rs1
li x31, 0x086d3cb5 # initialize rs2
sha512sig1h x31, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1436)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x5df46ec1 # initialize rs1
li x0, 0x6b7b6d53 # initialize rs2
sha512sig1h x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xe184aa7d # initialize rs1
li x1, 0x1557fc05 # initialize rs2
sha512sig1h x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1444)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x8f081235 # initialize rs1
li x2, 0x0a25fa1f # initialize rs2
sha512sig1h x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xaedea2c7 # initialize rs1
li x3, 0x0cedc0c4 # initialize rs2
sha512sig1h x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1452)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xef1eade8 # initialize rs1
li x4, 0x2170ee09 # initialize rs2
sha512sig1h x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x381e1f12 # initialize rs1
li x5, 0x8a50e171 # initialize rs2
sha512sig1h x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1460)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa051b5b2 # initialize rs1
li x6, 0x63745e6e # initialize rs2
sha512sig1h x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf15961b6 # initialize rs1
li x7, 0x2ef0615e # initialize rs2
sha512sig1h x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1468)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x25450ae9 # initialize rs1
li x8, 0x63e8e3b9 # initialize rs2
sha512sig1h x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xba299a57 # initialize rs1
li x9, 0x410d5b8a # initialize rs2
sha512sig1h x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1476)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x0a177ef8 # initialize rs1
li x10, 0x5520677f # initialize rs2
sha512sig1h x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x4e8319e9 # initialize rs1
li x11, 0xf2f234d2 # initialize rs2
sha512sig1h x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1484)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xe83e9a45 # initialize rs1
li x12, 0xf69767a5 # initialize rs2
sha512sig1h x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x4947f256 # initialize rs1
li x13, 0x5ae4ce5f # initialize rs2
sha512sig1h x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1492)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xeb50ee67 # initialize rs1
li x14, 0xf5f9a0d7 # initialize rs2
sha512sig1h x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1496)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x4fba0d35 # initialize rs1
li x15, 0xbb67e141 # initialize rs2
sha512sig1h x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1500)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xfbcc24dc # initialize rs1
li x16, 0x890fd435 # initialize rs2
sha512sig1h x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x492059de # initialize rs1
li x17, 0x9f4174d7 # initialize rs2
sha512sig1h x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1508)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x40887145 # initialize rs1
li x18, 0xfe8b8ba7 # initialize rs2
sha512sig1h x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1512)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x8a951bc2 # initialize rs1
li x19, 0x67f9472e # initialize rs2
sha512sig1h x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1516)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x3bedd8dc # initialize rs1
li x20, 0xd6f1df6d # initialize rs2
sha512sig1h x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1520)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x0fb22e10 # initialize rs1
li x21, 0xe2df1fb3 # initialize rs2
sha512sig1h x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1524)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x9c9a4f81 # initialize rs1
li x22, 0xb7aeab53 # initialize rs2
sha512sig1h x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1528)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xceb2d08b # initialize rs1
li x23, 0x298d2b53 # initialize rs2
sha512sig1h x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1532)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x04edf5b3 # initialize rs1
li x24, 0xe66e8b34 # initialize rs2
sha512sig1h x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1536)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x92006f9e # initialize rs1
li x25, 0xa9945473 # initialize rs2
sha512sig1h x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1540)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x82a2f9f6 # initialize rs1
li x26, 0x3a268af6 # initialize rs2
sha512sig1h x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xca00697e # initialize rs1
li x27, 0x5a80d038 # initialize rs2
sha512sig1h x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1548)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xb2d605b6 # initialize rs1
li x28, 0x9d701a71 # initialize rs2
sha512sig1h x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1552)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xc73df127 # initialize rs1
li x29, 0x5fd936bb # initialize rs2
sha512sig1h x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1556)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x88c441eb # initialize rs1
li x30, 0xe807b768 # initialize rs2
sha512sig1h x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1560)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xcf4bba44 # initialize rs1
li x31, 0x02916c45 # initialize rs2
sha512sig1h x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1564)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x26, x16 # perform first operation
sha512sig1h x29, x9, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x18, x16 # perform first operation
sha512sig1h x9, x3, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x28, x25 # perform first operation
sha512sig1h x12, x16, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x7, x8 # perform first operation
sha512sig1h x31, x31, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x30, x14 # perform first operation
sha512sig1h x17, x23, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x12, x11 # perform first operation
sha512sig1h x24, x9, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x5, x22 # perform first operation
sha512sig1h x17, x14, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x8, x10 # perform first operation
sha512sig1h x11, x14, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x1, x7 # perform first operation
sha512sig1h x19, x8, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x2, x6 # perform first operation
sha512sig1h x2, x3, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x18, x30 # perform first operation
sha512sig1h x30, x15, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x8, x2 # perform first operation
sha512sig1h x6, x14, x23 # perform second (triggering) operation

#.EQU SIGSIZE,1568
.EQU SIGSIZE,11136 #combined


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
