///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbb/WALLY-COV-ctz.S
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
li x0, 0xbb4e1287 # initialize rs1
ctz x21, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xf2b29b0a # initialize rs1
ctz x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb0b398c4 # initialize rs1
ctz x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x54758662 # initialize rs1
ctz x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xfdc3b5a0 # initialize rs1
ctz x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1558a3dc # initialize rs1
ctz x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa7c3892c # initialize rs1
ctz x31, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x94b4ed27 # initialize rs1
ctz x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xbc2bd3fc # initialize rs1
ctz x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x8b351c13 # initialize rs1
ctz x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x8a27d52f # initialize rs1
ctz x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xb755cca8 # initialize rs1
ctz x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x26fb9674 # initialize rs1
ctz x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x3ddfef17 # initialize rs1
ctz x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x2d7cb7cd # initialize rs1
ctz x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xa88fc625 # initialize rs1
ctz x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x04dccec3 # initialize rs1
ctz x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xae7fe0a1 # initialize rs1
ctz x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x7a852e84 # initialize rs1
ctz x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x6b12f69a # initialize rs1
ctz x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x8ce22b58 # initialize rs1
ctz x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x23df5912 # initialize rs1
ctz x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x59467031 # initialize rs1
ctz x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x2b26a630 # initialize rs1
ctz x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x7e741fef # initialize rs1
ctz x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xa4422141 # initialize rs1
ctz x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xed52ba21 # initialize rs1
ctz x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x437b8632 # initialize rs1
ctz x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xb28280e4 # initialize rs1
ctz x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x2fe1ed95 # initialize rs1
ctz x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xa6f457d8 # initialize rs1
ctz x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x0cb5478c # initialize rs1
ctz x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 124)

# Testcase cp_rd (Test destination rd = x0)
li x31, 0xc61682f9 # initialize rs1
ctz x0, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x8, 0x2be876ab # initialize rs1
ctz x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x5, 0x868bc4be # initialize rs1
ctz x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x25, 0xd74ca9b2 # initialize rs1
ctz x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0xeaf65085 # initialize rs1
ctz x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x2f7a8d4f # initialize rs1
ctz x5, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x26f13c63 # initialize rs1
ctz x6, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x2607bd77 # initialize rs1
ctz x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x23, 0x9d036ffd # initialize rs1
ctz x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x3, 0x88170be2 # initialize rs1
ctz x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x6, 0x71c02329 # initialize rs1
ctz x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x14, 0x663d7030 # initialize rs1
ctz x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0xe57c4470 # initialize rs1
ctz x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x1, 0xdf1ce524 # initialize rs1
ctz x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0xbad9cb93 # initialize rs1
ctz x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x18, 0x8083398a # initialize rs1
ctz x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x9, 0xf878c8c2 # initialize rs1
ctz x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x26, 0xe241f1f2 # initialize rs1
ctz x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x17, 0xacb0b2cb # initialize rs1
ctz x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x16, 0x1834adbf # initialize rs1
ctz x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x9, 0x87af5fb0 # initialize rs1
ctz x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x19, 0xec37088d # initialize rs1
ctz x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x26, 0x767ce9e6 # initialize rs1
ctz x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x16, 0x4afd6971 # initialize rs1
ctz x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x20, 0x7443fd5c # initialize rs1
ctz x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x22, 0x084c8b2a # initialize rs1
ctz x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x19, 0x08c4033d # initialize rs1
ctz x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x9, 0xed37c7e7 # initialize rs1
ctz x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x22, 0xabdbcf0c # initialize rs1
ctz x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x18, 0xb2a3b886 # initialize rs1
ctz x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x2, 0xbd14659a # initialize rs1
ctz x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x10, 0x0ebda2b7 # initialize rs1
ctz x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x00000000 # initialize rs1
ctz x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x00000001 # initialize rs1
ctz x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x10, 0x00000002 # initialize rs1
ctz x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x5, 0x80000000 # initialize rs1
ctz x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x30, 0x80000001 # initialize rs1
ctz x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x13, 0x7fffffff # initialize rs1
ctz x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x25, 0x7ffffffe # initialize rs1
ctz x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x21, 0xffffffff # initialize rs1
ctz x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x5, 0xfffffffe # initialize rs1
ctz x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x27, 0x5bbc8872 # initialize rs1
ctz x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
ctz x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x31, 0x55555555 # initialize rs1
ctz x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc24bf2a7 # initialize rs1
ctz x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x26acb555 # initialize rs1
ctz x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xa91463b6 # initialize rs1
ctz x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd52cde2a # initialize rs1
ctz x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3b231de2 # initialize rs1
ctz x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcd680635 # initialize rs1
ctz x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9f54a9b3 # initialize rs1
ctz x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaa464c93 # initialize rs1
ctz x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x4fb68ed3 # initialize rs1
ctz x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x51d7c296 # initialize rs1
ctz x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xe6526d14 # initialize rs1
ctz x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xb869d59c # initialize rs1
ctz x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x40511cf1 # initialize rs1
ctz x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x13e0247e # initialize rs1
ctz x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbe7fcd97 # initialize rs1
ctz x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7d9ce090 # initialize rs1
ctz x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x469dc435 # initialize rs1
ctz x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x9cc24cda # initialize rs1
ctz x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xea904c58 # initialize rs1
ctz x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf776664a # initialize rs1
ctz x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xe8cedcfb # initialize rs1
ctz x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf67231e0 # initialize rs1
ctz x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xc50e36a8 # initialize rs1
ctz x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x455faec4 # initialize rs1
ctz x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xd6db25f7 # initialize rs1
ctz x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x3242d5e6 # initialize rs1
ctz x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x4d3d11b5 # initialize rs1
ctz x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x4602853d # initialize rs1
ctz x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x741e8fe6 # initialize rs1
ctz x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xea99c98f # initialize rs1
ctz x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x818af38b # initialize rs1
ctz x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xa5f6c670 # initialize rs1
ctz x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x11, x30 # perform first operation
ctz x5, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x6, x17 # perform first operation
ctz x9, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x2, x26 # perform first operation
ctz x11, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x10, x9 # perform first operation
ctz x5, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x7, x21 # perform first operation
ctz x25, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x30, x10 # perform first operation
ctz x10, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x9, x23 # perform first operation
ctz x5, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x1, x25 # perform first operation
ctz x15, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x2, x30 # perform first operation
ctz x31, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x15, x26 # perform first operation
ctz x15, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x29, x6 # perform first operation
ctz x6, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x13, x9 # perform first operation
ctz x20, x11 # perform second (triggering) operation

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
