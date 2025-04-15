///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbs/WALLY-COV-binvi.S
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
li x0, 0x2866552b # initialize rs1
binvi x17, x0, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8d87c64d # initialize rs1
binvi x3, x1, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x99607f9a # initialize rs1
binvi x16, x2, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x0ec37666 # initialize rs1
binvi x12, x3, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1e97a6c3 # initialize rs1
binvi x27, x4, 19 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3a42bf4a # initialize rs1
binvi x26, x5, 21 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdfed156f # initialize rs1
binvi x23, x6, 6 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5b0c12f6 # initialize rs1
binvi x1, x7, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xbbac3507 # initialize rs1
binvi x9, x8, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xaef830eb # initialize rs1
binvi x23, x9, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xe39860ad # initialize rs1
binvi x12, x10, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x76a62d98 # initialize rs1
binvi x29, x11, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x0a92f150 # initialize rs1
binvi x24, x12, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x7042b941 # initialize rs1
binvi x5, x13, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x0e8eaf1e # initialize rs1
binvi x10, x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x8213591d # initialize rs1
binvi x21, x15, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xc21f6236 # initialize rs1
binvi x28, x16, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xc353a5c0 # initialize rs1
binvi x8, x17, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x9ad82f39 # initialize rs1
binvi x28, x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x224267ff # initialize rs1
binvi x18, x19, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x71951ab6 # initialize rs1
binvi x23, x20, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xf1b89bd6 # initialize rs1
binvi x10, x21, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x2abab493 # initialize rs1
binvi x21, x22, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x70024f0a # initialize rs1
binvi x15, x23, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x43f2e501 # initialize rs1
binvi x18, x24, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xa26dacf3 # initialize rs1
binvi x19, x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xbfb1456c # initialize rs1
binvi x15, x26, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf1d70712 # initialize rs1
binvi x17, x27, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x4dc2c429 # initialize rs1
binvi x23, x28, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xdc076045 # initialize rs1
binvi x2, x29, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xd1503cdb # initialize rs1
binvi x14, x30, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x083a992b # initialize rs1
binvi x13, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 124)

# Testcase cp_rd (Test destination rd = x0)
li x15, 0x406a7799 # initialize rs1
binvi x0, x15, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x21, 0xd57ed240 # initialize rs1
binvi x1, x21, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x27, 0x1c1dd487 # initialize rs1
binvi x2, x27, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x14, 0x3db1d972 # initialize rs1
binvi x3, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x2442e29b # initialize rs1
binvi x4, x6, 27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0xe764cfa9 # initialize rs1
binvi x5, x16, 6 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0x87d5d448 # initialize rs1
binvi x6, x12, 17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0x462ed80a # initialize rs1
binvi x7, x15, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x1, 0xfbb5e5ef # initialize rs1
binvi x8, x1, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0x0556529b # initialize rs1
binvi x9, x10, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x11, 0x05898e18 # initialize rs1
binvi x10, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x25, 0x353273b4 # initialize rs1
binvi x11, x25, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x7, 0x58bc626a # initialize rs1
binvi x12, x7, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0x24849241 # initialize rs1
binvi x13, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0xc7bb3068 # initialize rs1
binvi x14, x9, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0x0aa1d022 # initialize rs1
binvi x15, x24, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x29, 0x91e47966 # initialize rs1
binvi x16, x29, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x14, 0x1255bdd6 # initialize rs1
binvi x17, x14, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x11, 0x3a576a60 # initialize rs1
binvi x18, x11, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x16, 0x84276411 # initialize rs1
binvi x19, x16, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x21, 0x8054e68e # initialize rs1
binvi x20, x21, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x27, 0x370a213b # initialize rs1
binvi x21, x27, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0x0cfc0833 # initialize rs1
binvi x22, x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x27, 0x39643357 # initialize rs1
binvi x23, x27, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x1, 0xc7effcb6 # initialize rs1
binvi x24, x1, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x24, 0x2655288d # initialize rs1
binvi x25, x24, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x13, 0x3076b933 # initialize rs1
binvi x26, x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x22, 0xd73bd2fe # initialize rs1
binvi x27, x22, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x9, 0x4b63ad37 # initialize rs1
binvi x28, x9, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0xb73c6714 # initialize rs1
binvi x29, x12, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x5, 0x0268804f # initialize rs1
binvi x30, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x15, 0x5d180d79 # initialize rs1
binvi x31, x15, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x27, 0x00000000 # initialize rs1
binvi x14, x27, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x00000001 # initialize rs1
binvi x20, x10, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x00000002 # initialize rs1
binvi x10, x23, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x2, 0x80000000 # initialize rs1
binvi x17, x2, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x12, 0x80000001 # initialize rs1
binvi x11, x12, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x7, 0x7fffffff # initialize rs1
binvi x6, x7, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x9, 0x7ffffffe # initialize rs1
binvi x25, x9, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x29, 0xffffffff # initialize rs1
binvi x2, x29, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0xfffffffe # initialize rs1
binvi x28, x19, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x11, 0x5bbc8872 # initialize rs1
binvi x22, x11, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x13, 0xaaaaaaaa # initialize rs1
binvi x11, x13, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x5, 0x55555555 # initialize rs1
binvi x24, x5, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x26263f6b # initialize rs1
binvi x0, x0, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x6d6f7d57 # initialize rs1
binvi x1, x1, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x2723358f # initialize rs1
binvi x2, x2, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x2736cde9 # initialize rs1
binvi x3, x3, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x705f615b # initialize rs1
binvi x4, x4, 8 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x6997be1e # initialize rs1
binvi x5, x5, 2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4bbbd993 # initialize rs1
binvi x6, x6, 18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xae37d690 # initialize rs1
binvi x7, x7, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x326808ce # initialize rs1
binvi x8, x8, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x07473805 # initialize rs1
binvi x9, x9, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xe9f1a64c # initialize rs1
binvi x10, x10, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x43b66855 # initialize rs1
binvi x11, x11, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x77aec8c3 # initialize rs1
binvi x12, x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xf322ccc3 # initialize rs1
binvi x13, x13, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbb56619b # initialize rs1
binvi x14, x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x338b52c4 # initialize rs1
binvi x15, x15, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xbe8492fe # initialize rs1
binvi x16, x16, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x799472dc # initialize rs1
binvi x17, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xd90f86f9 # initialize rs1
binvi x18, x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x4565045c # initialize rs1
binvi x19, x19, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xee742407 # initialize rs1
binvi x20, x20, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x431c30e2 # initialize rs1
binvi x21, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x0bb4bd75 # initialize rs1
binvi x22, x22, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x22cf3413 # initialize rs1
binvi x23, x23, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x79ba1460 # initialize rs1
binvi x24, x24, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x4c991b76 # initialize rs1
binvi x25, x25, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x521d8107 # initialize rs1
binvi x26, x26, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xcc672564 # initialize rs1
binvi x27, x27, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x8ebb004e # initialize rs1
binvi x28, x28, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x8f23e3d6 # initialize rs1
binvi x29, x29, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x006470a0 # initialize rs1
binvi x30, x30, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xd8f3a672 # initialize rs1
binvi x31, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_uimm (Test bit = 0)
li x8, 0x57f09ac4 # initialize rs1
binvi x21, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 432)

# Testcase cp_uimm (Test bit = 1)
li x21, 0xe4d12825 # initialize rs1
binvi x3, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 436)

# Testcase cp_uimm (Test bit = 2)
li x20, 0x99711333 # initialize rs1
binvi x5, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 440)

# Testcase cp_uimm (Test bit = 3)
li x19, 0x436f0f5a # initialize rs1
binvi x24, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 444)

# Testcase cp_uimm (Test bit = 4)
li x15, 0xc2fc75ed # initialize rs1
binvi x2, x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 448)

# Testcase cp_uimm (Test bit = 5)
li x22, 0xb99c870c # initialize rs1
binvi x18, x22, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 452)

# Testcase cp_uimm (Test bit = 6)
li x22, 0xd4ce9ba6 # initialize rs1
binvi x31, x22, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 456)

# Testcase cp_uimm (Test bit = 7)
li x13, 0xa146ff6a # initialize rs1
binvi x11, x13, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 460)

# Testcase cp_uimm (Test bit = 8)
li x29, 0x2cb23de2 # initialize rs1
binvi x14, x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 464)

# Testcase cp_uimm (Test bit = 9)
li x20, 0xabef02a7 # initialize rs1
binvi x9, x20, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 468)

# Testcase cp_uimm (Test bit = 10)
li x3, 0x60188573 # initialize rs1
binvi x10, x3, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cp_uimm (Test bit = 11)
li x25, 0xd5d658af # initialize rs1
binvi x1, x25, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 476)

# Testcase cp_uimm (Test bit = 12)
li x7, 0xcec3014d # initialize rs1
binvi x19, x7, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 480)

# Testcase cp_uimm (Test bit = 13)
li x17, 0x62589fd5 # initialize rs1
binvi x9, x17, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 484)

# Testcase cp_uimm (Test bit = 14)
li x29, 0x4be67886 # initialize rs1
binvi x28, x29, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 488)

# Testcase cp_uimm (Test bit = 15)
li x9, 0xc9ee1c78 # initialize rs1
binvi x27, x9, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 492)

# Testcase cp_uimm (Test bit = 16)
li x19, 0x36c91946 # initialize rs1
binvi x12, x19, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 496)

# Testcase cp_uimm (Test bit = 17)
li x6, 0x5d875770 # initialize rs1
binvi x23, x6, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 500)

# Testcase cp_uimm (Test bit = 18)
li x26, 0x8d41efb5 # initialize rs1
binvi x18, x26, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 504)

# Testcase cp_uimm (Test bit = 19)
li x26, 0x4305cc11 # initialize rs1
binvi x20, x26, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 508)

# Testcase cp_uimm (Test bit = 20)
li x2, 0xfda57e22 # initialize rs1
binvi x31, x2, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 512)

# Testcase cp_uimm (Test bit = 21)
li x20, 0xa1e9caf2 # initialize rs1
binvi x23, x20, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 516)

# Testcase cp_uimm (Test bit = 22)
li x23, 0x6387148c # initialize rs1
binvi x21, x23, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cp_uimm (Test bit = 23)
li x20, 0x38f69f7e # initialize rs1
binvi x10, x20, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 524)

# Testcase cp_uimm (Test bit = 24)
li x2, 0xa1729f55 # initialize rs1
binvi x9, x2, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cp_uimm (Test bit = 25)
li x6, 0x50f506d3 # initialize rs1
binvi x7, x6, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 532)

# Testcase cp_uimm (Test bit = 26)
li x17, 0x32734a90 # initialize rs1
binvi x19, x17, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 536)

# Testcase cp_uimm (Test bit = 27)
li x21, 0x89be2d0a # initialize rs1
binvi x20, x21, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 540)

# Testcase cp_uimm (Test bit = 28)
li x19, 0x4dd88f51 # initialize rs1
binvi x28, x19, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cp_uimm (Test bit = 29)
li x27, 0x10560415 # initialize rs1
binvi x18, x27, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 548)

# Testcase cp_uimm (Test bit = 30)
li x21, 0x8ae13287 # initialize rs1
binvi x16, x21, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 552)

# Testcase cp_uimm (Test bit = 31)
li x7, 0xc355d752 # initialize rs1
binvi x1, x7, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 556)

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x31, x6 # perform first operation
binvi x17, x28, 8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x22, x9 # perform first operation
binvi x23, x24, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x11, x7 # perform first operation
binvi x23, x13, 6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x22, x3 # perform first operation
binvi x22, x17, 13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x5, x19 # perform first operation
binvi x19, x15, 23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x15, x22 # perform first operation
binvi x22, x16, 27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x24, x31 # perform first operation
binvi x8, x26, 25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x9, x7 # perform first operation
binvi x13, x22, 13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x21, x3 # perform first operation
binvi x7, x19, 28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x13, x22 # perform first operation
binvi x13, x19, 14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x31, x19 # perform first operation
binvi x19, x25, 13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x26, x12 # perform first operation
binvi x15, x10, 26 # perform second (triggering) operation

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
