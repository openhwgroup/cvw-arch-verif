///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/I/WALLY-COV-srai.S
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
li x0, 0x407ea0d9 # initialize rs1
srai x10, x0, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xbb420572 # initialize rs1
srai x18, x1, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x33d2686c # initialize rs1
srai x15, x2, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x899f4877 # initialize rs1
srai x15, x3, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x577a9954 # initialize rs1
srai x11, x4, 21 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa4c6efa4 # initialize rs1
srai x29, x5, 24 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf4cb95a3 # initialize rs1
srai x13, x6, 24 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf1cd9ccd # initialize rs1
srai x15, x7, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x0d1cd9e4 # initialize rs1
srai x23, x8, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x8ab51a5e # initialize rs1
srai x18, x9, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x5e883109 # initialize rs1
srai x16, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xf79fb90d # initialize rs1
srai x15, x11, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x97364d82 # initialize rs1
srai x7, x12, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x3920ca51 # initialize rs1
srai x7, x13, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x40c9a47b # initialize rs1
srai x20, x14, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xa926d535 # initialize rs1
srai x16, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x02f23684 # initialize rs1
srai x27, x16, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x9261f739 # initialize rs1
srai x31, x17, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x929fe481 # initialize rs1
srai x11, x18, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x69b0584c # initialize rs1
srai x31, x19, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x29d7c876 # initialize rs1
srai x5, x20, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xe7d7f73a # initialize rs1
srai x24, x21, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x86a7d8c9 # initialize rs1
srai x18, x22, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x19cbf445 # initialize rs1
srai x14, x23, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x7f9d9deb # initialize rs1
srai x9, x24, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x9c7061ac # initialize rs1
srai x20, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x31bb661e # initialize rs1
srai x14, x26, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x679d1842 # initialize rs1
srai x8, x27, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x6464f28d # initialize rs1
srai x24, x28, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xdc1ff7c6 # initialize rs1
srai x10, x29, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xae094de5 # initialize rs1
srai x16, x30, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x57a5dc68 # initialize rs1
srai x20, x31, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 124)

# Testcase cp_rd (Test destination rd = x0)
li x23, 0x9c8a6ffc # initialize rs1
srai x0, x23, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x17, 0x712f67d3 # initialize rs1
srai x1, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x27, 0xa3f175eb # initialize rs1
srai x2, x27, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x27, 0x808b6440 # initialize rs1
srai x3, x27, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0xd4957ecd # initialize rs1
srai x4, x28, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0x613697bc # initialize rs1
srai x5, x9, 13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x8bfc5a92 # initialize rs1
srai x6, x29, 10 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0x8f554106 # initialize rs1
srai x7, x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x27, 0xc6d63049 # initialize rs1
srai x8, x27, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x13, 0x489bd199 # initialize rs1
srai x9, x13, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x9, 0x47014162 # initialize rs1
srai x10, x9, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xced2c0ef # initialize rs1
srai x11, x11, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x16, 0x8b49e3d2 # initialize rs1
srai x12, x16, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x14, 0xd1c583ed # initialize rs1
srai x13, x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x12, 0xeaf773a8 # initialize rs1
srai x14, x12, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x27, 0x2f445f78 # initialize rs1
srai x15, x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0x45f49bd6 # initialize rs1
srai x16, x3, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x29, 0x34b98870 # initialize rs1
srai x17, x29, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x7, 0x0bd18bdf # initialize rs1
srai x18, x7, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x28, 0x8e3f9493 # initialize rs1
srai x19, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x1fb7a9df # initialize rs1
srai x20, x20, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x09c21c2b # initialize rs1
srai x21, x21, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x3, 0x23169391 # initialize rs1
srai x22, x3, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x26, 0xc006b973 # initialize rs1
srai x23, x26, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x17, 0x6042e617 # initialize rs1
srai x24, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x24, 0x29e30c86 # initialize rs1
srai x25, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x13, 0xb747863c # initialize rs1
srai x26, x13, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x3, 0x664b8f9f # initialize rs1
srai x27, x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x17, 0xc6f3d24c # initialize rs1
srai x28, x17, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0x0d697cdc # initialize rs1
srai x29, x24, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x9, 0xa8226607 # initialize rs1
srai x30, x9, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x5, 0xc177c231 # initialize rs1
srai x31, x5, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x00000000 # initialize rs1
srai x26, x30, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x00000001 # initialize rs1
srai x22, x21, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x00000002 # initialize rs1
srai x13, x23, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x20, 0x80000000 # initialize rs1
srai x28, x20, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x12, 0x80000001 # initialize rs1
srai x13, x12, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x28, 0x7fffffff # initialize rs1
srai x2, x28, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x27, 0x7ffffffe # initialize rs1
srai x20, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x29, 0xffffffff # initialize rs1
srai x25, x29, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x22, 0xfffffffe # initialize rs1
srai x5, x22, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x21, 0x5bbc8872 # initialize rs1
srai x7, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rs1
srai x14, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x11, 0x55555555 # initialize rs1
srai x20, x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xe0734f2d # initialize rs1
srai x0, x0, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xd457434c # initialize rs1
srai x1, x1, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x1742d9c0 # initialize rs1
srai x2, x2, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6f18e119 # initialize rs1
srai x3, x3, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x30bbfc30 # initialize rs1
srai x4, x4, 18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc22b4bf3 # initialize rs1
srai x5, x5, 24 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x53a56fd6 # initialize rs1
srai x6, x6, 11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x342971c9 # initialize rs1
srai x7, x7, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x58e37135 # initialize rs1
srai x8, x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x4acad0ef # initialize rs1
srai x9, x9, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x56b42e76 # initialize rs1
srai x10, x10, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xe6dca663 # initialize rs1
srai x11, x11, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x965e2358 # initialize rs1
srai x12, x12, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x9adfdc44 # initialize rs1
srai x13, x13, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xb8be240f # initialize rs1
srai x14, x14, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xe6b05fec # initialize rs1
srai x15, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x0e96002b # initialize rs1
srai x16, x16, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x5a77e005 # initialize rs1
srai x17, x17, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xc7f726bf # initialize rs1
srai x18, x18, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa392ca6c # initialize rs1
srai x19, x19, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xd3752ae6 # initialize rs1
srai x20, x20, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xaf1b4695 # initialize rs1
srai x21, x21, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb011c63e # initialize rs1
srai x22, x22, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xff13a4ea # initialize rs1
srai x23, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x735421c0 # initialize rs1
srai x24, x24, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xc8902ca6 # initialize rs1
srai x25, x25, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x7b26ccb6 # initialize rs1
srai x26, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xd3343739 # initialize rs1
srai x27, x27, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xf90c8ccb # initialize rs1
srai x28, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xb2f3902c # initialize rs1
srai x29, x29, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x86917b2b # initialize rs1
srai x30, x30, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xb4b3f3ca # initialize rs1
srai x31, x31, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_uimm (Test bit = 0)
li x11, 0xad9238ae # initialize rs1
srai x18, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 432)

# Testcase cp_uimm (Test bit = 1)
li x28, 0x22349669 # initialize rs1
srai x6, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 436)

# Testcase cp_uimm (Test bit = 2)
li x9, 0x349eb4ed # initialize rs1
srai x19, x9, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 440)

# Testcase cp_uimm (Test bit = 3)
li x1, 0xe8a3b595 # initialize rs1
srai x14, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 444)

# Testcase cp_uimm (Test bit = 4)
li x24, 0x751a5943 # initialize rs1
srai x29, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 448)

# Testcase cp_uimm (Test bit = 5)
li x7, 0x0cf8489a # initialize rs1
srai x22, x7, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 452)

# Testcase cp_uimm (Test bit = 6)
li x28, 0xe80d2cbb # initialize rs1
srai x29, x28, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 456)

# Testcase cp_uimm (Test bit = 7)
li x26, 0x8653fc9a # initialize rs1
srai x21, x26, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 460)

# Testcase cp_uimm (Test bit = 8)
li x5, 0x097b316a # initialize rs1
srai x12, x5, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 464)

# Testcase cp_uimm (Test bit = 9)
li x11, 0x7741671b # initialize rs1
srai x23, x11, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 468)

# Testcase cp_uimm (Test bit = 10)
li x2, 0x91ff8e34 # initialize rs1
srai x25, x2, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 472)

# Testcase cp_uimm (Test bit = 11)
li x26, 0xefa7c489 # initialize rs1
srai x8, x26, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 476)

# Testcase cp_uimm (Test bit = 12)
li x6, 0xb45d3cd2 # initialize rs1
srai x8, x6, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 480)

# Testcase cp_uimm (Test bit = 13)
li x12, 0xe0c45f10 # initialize rs1
srai x21, x12, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 484)

# Testcase cp_uimm (Test bit = 14)
li x13, 0xfc82e758 # initialize rs1
srai x29, x13, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_uimm (Test bit = 15)
li x3, 0xf20a3f6c # initialize rs1
srai x22, x3, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 492)

# Testcase cp_uimm (Test bit = 16)
li x29, 0xcc0e587e # initialize rs1
srai x3, x29, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 496)

# Testcase cp_uimm (Test bit = 17)
li x30, 0xcd54f53e # initialize rs1
srai x24, x30, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 500)

# Testcase cp_uimm (Test bit = 18)
li x8, 0xef5e3793 # initialize rs1
srai x14, x8, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 504)

# Testcase cp_uimm (Test bit = 19)
li x7, 0x4dea8c38 # initialize rs1
srai x5, x7, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 508)

# Testcase cp_uimm (Test bit = 20)
li x11, 0x32963308 # initialize rs1
srai x26, x11, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 512)

# Testcase cp_uimm (Test bit = 21)
li x6, 0x6e13fc2d # initialize rs1
srai x9, x6, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 516)

# Testcase cp_uimm (Test bit = 22)
li x24, 0x0e0c491f # initialize rs1
srai x27, x24, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 520)

# Testcase cp_uimm (Test bit = 23)
li x9, 0x1125a2c5 # initialize rs1
srai x19, x9, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 524)

# Testcase cp_uimm (Test bit = 24)
li x14, 0x4b539d8a # initialize rs1
srai x10, x14, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_uimm (Test bit = 25)
li x19, 0x89d24baf # initialize rs1
srai x30, x19, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 532)

# Testcase cp_uimm (Test bit = 26)
li x12, 0x80fd2cbb # initialize rs1
srai x28, x12, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 536)

# Testcase cp_uimm (Test bit = 27)
li x15, 0xc202d068 # initialize rs1
srai x14, x15, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 540)

# Testcase cp_uimm (Test bit = 28)
li x27, 0x9d5c87a8 # initialize rs1
srai x1, x27, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 544)

# Testcase cp_uimm (Test bit = 29)
li x8, 0x475d9815 # initialize rs1
srai x24, x8, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 548)

# Testcase cp_uimm (Test bit = 30)
li x8, 0xb3b7db94 # initialize rs1
srai x22, x8, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 552)

# Testcase cp_uimm (Test bit = 31)
li x29, 0x48966efe # initialize rs1
srai x1, x29, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 556)

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x20, x10 # perform first operation
srai x14, x23, 17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x8, x5 # perform first operation
srai x29, x18, 7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x27, x13 # perform first operation
srai x11, x3, 28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x14, x7 # perform first operation
srai x31, x31, 31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x18, x12 # perform first operation
srai x18, x13, 4 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x30, x22 # perform first operation
srai x22, x7, 11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x26, x24 # perform first operation
srai x21, x22, 28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x15, x20 # perform first operation
srai x23, x7, 10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x1, x11 # perform first operation
srai x24, x2, 18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x24, x29 # perform first operation
srai x24, x19, 27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x15, x10 # perform first operation
srai x10, x8, 20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x29, x14 # perform first operation
srai x12, x25, 12 # perform second (triggering) operation

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
