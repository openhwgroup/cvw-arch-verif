///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbkb/WALLY-COV-rev8.S
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
li x0, 0x585893bb # initialize rs1
rev8 x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xfc7e64c8 # initialize rs1
rev8 x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xab605e64 # initialize rs1
rev8 x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb279f2d3 # initialize rs1
rev8 x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2118d8e3 # initialize rs1
rev8 x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x31a5aeca # initialize rs1
rev8 x7, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x984da619 # initialize rs1
rev8 x19, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x03457489 # initialize rs1
rev8 x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x42c3e1c4 # initialize rs1
rev8 x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x57e4929a # initialize rs1
rev8 x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xeeb6f070 # initialize rs1
rev8 x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc0cf1013 # initialize rs1
rev8 x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x72957d3d # initialize rs1
rev8 x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xacc7a061 # initialize rs1
rev8 x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x786cdb2a # initialize rs1
rev8 x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x69024472 # initialize rs1
rev8 x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x7419b8a0 # initialize rs1
rev8 x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xb7255683 # initialize rs1
rev8 x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x92709f00 # initialize rs1
rev8 x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xe1ff7bdb # initialize rs1
rev8 x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x4dfe1f95 # initialize rs1
rev8 x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xf3da119a # initialize rs1
rev8 x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xc4183a72 # initialize rs1
rev8 x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xd417352c # initialize rs1
rev8 x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x82164485 # initialize rs1
rev8 x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x78bf2d0e # initialize rs1
rev8 x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x2f891f0f # initialize rs1
rev8 x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x78a0036d # initialize rs1
rev8 x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x989d8ebb # initialize rs1
rev8 x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xf375b9b8 # initialize rs1
rev8 x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x2137f460 # initialize rs1
rev8 x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xab41c1f5 # initialize rs1
rev8 x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 124)

# Testcase cp_rd (Test destination rd = x0)
li x11, 0x25746840 # initialize rs1
rev8 x0, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x8, 0x8da9254d # initialize rs1
rev8 x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x30, 0x95ef563c # initialize rs1
rev8 x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x19, 0x151cbd43 # initialize rs1
rev8 x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0xd871e966 # initialize rs1
rev8 x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x1b9c7dd6 # initialize rs1
rev8 x5, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x7bd579ca # initialize rs1
rev8 x6, x24 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x73652f33 # initialize rs1
rev8 x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x31, 0x2a2249d3 # initialize rs1
rev8 x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0x53e567d1 # initialize rs1
rev8 x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x9, 0xcb0516a9 # initialize rs1
rev8 x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0x5bbf20c6 # initialize rs1
rev8 x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0xe0746894 # initialize rs1
rev8 x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x24, 0xc8e72747 # initialize rs1
rev8 x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x21, 0xa3fafa36 # initialize rs1
rev8 x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x29, 0xa5a64f0e # initialize rs1
rev8 x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x7, 0xb8a8460b # initialize rs1
rev8 x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x12, 0x3fcef15c # initialize rs1
rev8 x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x17, 0xd83f2df8 # initialize rs1
rev8 x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x27, 0x53732abd # initialize rs1
rev8 x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x31, 0x0da54e68 # initialize rs1
rev8 x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x20, 0x75e4abec # initialize rs1
rev8 x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x31, 0x1896b933 # initialize rs1
rev8 x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x10, 0xb524a7d7 # initialize rs1
rev8 x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x30, 0x7a19c217 # initialize rs1
rev8 x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x7, 0x629324db # initialize rs1
rev8 x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x16, 0x88452d22 # initialize rs1
rev8 x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0xd0c50470 # initialize rs1
rev8 x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x3, 0x91ad6675 # initialize rs1
rev8 x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x23, 0xc875655d # initialize rs1
rev8 x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x13, 0x97acf361 # initialize rs1
rev8 x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x28, 0x2a31155c # initialize rs1
rev8 x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x00000000 # initialize rs1
rev8 x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0x00000001 # initialize rs1
rev8 x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x00000002 # initialize rs1
rev8 x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x15, 0x80000000 # initialize rs1
rev8 x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x3, 0x80000001 # initialize rs1
rev8 x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x13, 0x7fffffff # initialize rs1
rev8 x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x7, 0x7ffffffe # initialize rs1
rev8 x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0xffffffff # initialize rs1
rev8 x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x7, 0xfffffffe # initialize rs1
rev8 x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x13, 0x5bbc8872 # initialize rs1
rev8 x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x29, 0xaaaaaaaa # initialize rs1
rev8 x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x10, 0x55555555 # initialize rs1
rev8 x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xab830935 # initialize rs1
rev8 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xc0e45790 # initialize rs1
rev8 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x15547bef # initialize rs1
rev8 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x79f68e17 # initialize rs1
rev8 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe2245f4c # initialize rs1
rev8 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe53e67d8 # initialize rs1
rev8 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4fc3346c # initialize rs1
rev8 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x75ff8e2d # initialize rs1
rev8 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x73d5fcc3 # initialize rs1
rev8 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0f7c9e83 # initialize rs1
rev8 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x9d554f27 # initialize rs1
rev8 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x5a06e0a0 # initialize rs1
rev8 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xfb955f57 # initialize rs1
rev8 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd872cab0 # initialize rs1
rev8 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xeb128b7d # initialize rs1
rev8 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x893b70a4 # initialize rs1
rev8 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x49329474 # initialize rs1
rev8 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x9d40cc70 # initialize rs1
rev8 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6c8e0602 # initialize rs1
rev8 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x8552b20f # initialize rs1
rev8 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x98012c87 # initialize rs1
rev8 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xebaa060d # initialize rs1
rev8 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6f2da04e # initialize rs1
rev8 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xce614517 # initialize rs1
rev8 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc777c2bb # initialize rs1
rev8 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x22d29352 # initialize rs1
rev8 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x64cc1d6b # initialize rs1
rev8 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x8d584d8e # initialize rs1
rev8 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xfe8298dd # initialize rs1
rev8 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xc1548464 # initialize rs1
rev8 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x6020907f # initialize rs1
rev8 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x04487bc1 # initialize rs1
rev8 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x29, x6 # perform first operation
rev8 x16, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x20, x2 # perform first operation
rev8 x14, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x20, x26 # perform first operation
rev8 x19, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x23, x12 # perform first operation
rev8 x12, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x3, x13 # perform first operation
rev8 x13, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x24, x19 # perform first operation
rev8 x24, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x10, x18 # perform first operation
rev8 x26, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x15, x2 # perform first operation
rev8 x11, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x19, x9 # perform first operation
rev8 x10, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x21, x7 # perform first operation
rev8 x21, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x24, x1 # perform first operation
rev8 x1, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x25, x14 # perform first operation
rev8 x17, x19 # perform second (triggering) operation

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
