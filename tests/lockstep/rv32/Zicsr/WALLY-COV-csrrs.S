///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zicsr/WALLY-COV-csrrs.S
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
li x0, 0x55991566 # initialize rs1
csrrs x27, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xfa6d2a83 # initialize rs1
csrrs x11, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x18eb1c07 # initialize rs1
csrrs x18, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xba50d11a # initialize rs1
csrrs x26, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9ede7366 # initialize rs1
csrrs x23, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x79d3f811 # initialize rs1
csrrs x28, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1a750277 # initialize rs1
csrrs x25, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xcbd8573b # initialize rs1
csrrs x14, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xfaa983f7 # initialize rs1
csrrs x15, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x4f919dd8 # initialize rs1
csrrs x30, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb0668e21 # initialize rs1
csrrs x27, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x59a3845b # initialize rs1
csrrs x22, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xc2e19f4e # initialize rs1
csrrs x16, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xe9bf357b # initialize rs1
csrrs x18, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x7fe1d929 # initialize rs1
csrrs x1, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x90e8a2da # initialize rs1
csrrs x24, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x9d392996 # initialize rs1
csrrs x21, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xbaa38d89 # initialize rs1
csrrs x22, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xc7293e58 # initialize rs1
csrrs x12, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x809d81a1 # initialize rs1
csrrs x23, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x1f01dd45 # initialize rs1
csrrs x1, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xd6f1602b # initialize rs1
csrrs x7, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xd49e5970 # initialize rs1
csrrs x9, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x66a2eb46 # initialize rs1
csrrs x20, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x1e1e41ff # initialize rs1
csrrs x2, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xa7a55f71 # initialize rs1
csrrs x29, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xb1df44aa # initialize rs1
csrrs x5, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x88baf7d0 # initialize rs1
csrrs x16, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x6b9f8182 # initialize rs1
csrrs x27, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x675187cc # initialize rs1
csrrs x26, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x5bedf03e # initialize rs1
csrrs x5, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xff738384 # initialize rs1
csrrs x7, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 124)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0x2cc1a0ba # initialize rs1
csrrs x0, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x15, 0xa5bba332 # initialize rs1
csrrs x1, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x11, 0x33f25e4a # initialize rs1
csrrs x2, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x26, 0x0cb93835 # initialize rs1
csrrs x3, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0x68efedc4 # initialize rs1
csrrs x4, mscratch, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0x0c8227f6 # initialize rs1
csrrs x5, mscratch, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0x8f85f876 # initialize rs1
csrrs x6, mscratch, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x20, 0x5e563049 # initialize rs1
csrrs x7, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x18, 0x2122c146 # initialize rs1
csrrs x8, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0x3f77e315 # initialize rs1
csrrs x9, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x625e3e8b # initialize rs1
csrrs x10, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x30, 0xa23441d1 # initialize rs1
csrrs x11, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x11, 0x958ced03 # initialize rs1
csrrs x12, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x7, 0x81aff04e # initialize rs1
csrrs x13, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x15, 0x73fa8262 # initialize rs1
csrrs x14, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x27, 0x3a4ac237 # initialize rs1
csrrs x15, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x23, 0x59d100f6 # initialize rs1
csrrs x16, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x25, 0xb2370cf7 # initialize rs1
csrrs x17, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x15, 0xb57a8a68 # initialize rs1
csrrs x18, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x15, 0x96851e63 # initialize rs1
csrrs x19, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x25, 0x70c562e7 # initialize rs1
csrrs x20, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x15, 0x8fed9375 # initialize rs1
csrrs x21, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x28, 0xb253546a # initialize rs1
csrrs x22, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x5, 0xbea88e1f # initialize rs1
csrrs x23, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x31, 0xa9c785c1 # initialize rs1
csrrs x24, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0xfdefd006 # initialize rs1
csrrs x25, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x19, 0xdf62efa0 # initialize rs1
csrrs x26, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0xd97f731e # initialize rs1
csrrs x27, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x8, 0x3df1add4 # initialize rs1
csrrs x28, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x27, 0x0abf2988 # initialize rs1
csrrs x29, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0xdfc0b9f1 # initialize rs1
csrrs x30, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x15, 0x5b3c1877 # initialize rs1
csrrs x31, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0x00000000 # initialize rs1
csrrs x12, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x3, 0x00000001 # initialize rs1
csrrs x10, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x17, 0x00000002 # initialize rs1
csrrs x28, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x19, 0x80000000 # initialize rs1
csrrs x8, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x27, 0x80000001 # initialize rs1
csrrs x3, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x1, 0x7fffffff # initialize rs1
csrrs x5, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x31, 0x7ffffffe # initialize rs1
csrrs x7, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0xffffffff # initialize rs1
csrrs x8, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0xfffffffe # initialize rs1
csrrs x26, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x5, 0x5bbc8872 # initialize rs1
csrrs x10, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x9, 0xaaaaaaaa # initialize rs1
csrrs x21, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x3, 0x55555555 # initialize rs1
csrrs x25, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x6b5c2bb7 # initialize rs1
csrrs x0, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xdcc226d1 # initialize rs1
csrrs x1, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x6376f4e4 # initialize rs1
csrrs x2, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x255d8946 # initialize rs1
csrrs x3, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x58fbe9be # initialize rs1
csrrs x4, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc0cfe81d # initialize rs1
csrrs x5, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa5aec0cd # initialize rs1
csrrs x6, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf176182d # initialize rs1
csrrs x7, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9e922a04 # initialize rs1
csrrs x8, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf00ba521 # initialize rs1
csrrs x9, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x2aa24a43 # initialize rs1
csrrs x10, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x0a02bfaa # initialize rs1
csrrs x11, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xeff4b02d # initialize rs1
csrrs x12, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe2d9f1db # initialize rs1
csrrs x13, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xcd884ffc # initialize rs1
csrrs x14, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xbd25719b # initialize rs1
csrrs x15, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x083ddad8 # initialize rs1
csrrs x16, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x606b6caf # initialize rs1
csrrs x17, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xbd51c8a7 # initialize rs1
csrrs x18, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xff2c2347 # initialize rs1
csrrs x19, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x5efe187b # initialize rs1
csrrs x20, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x6f6a9c10 # initialize rs1
csrrs x21, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x2545476e # initialize rs1
csrrs x22, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x7361184c # initialize rs1
csrrs x23, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x96cbc62a # initialize rs1
csrrs x24, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xe04e5735 # initialize rs1
csrrs x25, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x5ed630fd # initialize rs1
csrrs x26, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x4d907517 # initialize rs1
csrrs x27, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x8acf4e83 # initialize rs1
csrrs x28, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x122df66d # initialize rs1
csrrs x29, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xfc620e81 # initialize rs1
csrrs x30, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x3a755d75 # initialize rs1
csrrs x31, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x20, x21 # perform first operation
csrrs x2, mscratch, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x18, x7 # perform first operation
csrrs x24, mscratch, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x13, x31 # perform first operation
csrrs x20, mscratch, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x13, x30 # perform first operation
csrrs x13, mscratch, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x21, x30 # perform first operation
csrrs x21, mscratch, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x9, x2 # perform first operation
csrrs x9, mscratch, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x13, x15 # perform first operation
csrrs x25, mscratch, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x19, x12 # perform first operation
csrrs x8, mscratch, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x14, x11 # perform first operation
csrrs x25, mscratch, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x26, x5, x27 # perform first operation
csrrs x5, mscratch, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x24, x8 # perform first operation
csrrs x8, mscratch, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x21, x2 # perform first operation
csrrs x25, mscratch, x28 # perform second (triggering) operation

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
