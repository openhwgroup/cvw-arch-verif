///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbb/WALLY-COV-orc.b.S
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
li x0, 0xd99236f3 # initialize rs1
orc.b x12, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb7fbec0e # initialize rs1
orc.b x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x146ee233 # initialize rs1
orc.b x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x2fd0f93e # initialize rs1
orc.b x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5dbe50a1 # initialize rs1
orc.b x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb8ac1db9 # initialize rs1
orc.b x22, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8e763e0a # initialize rs1
orc.b x31, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf6f367f8 # initialize rs1
orc.b x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xcfd3e520 # initialize rs1
orc.b x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xe37ed915 # initialize rs1
orc.b x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x349e685d # initialize rs1
orc.b x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x108dbe1e # initialize rs1
orc.b x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x95368b6d # initialize rs1
orc.b x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x7ef38271 # initialize rs1
orc.b x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe643ec91 # initialize rs1
orc.b x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x7e73042e # initialize rs1
orc.b x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x054fada6 # initialize rs1
orc.b x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x013da0de # initialize rs1
orc.b x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x74f69df6 # initialize rs1
orc.b x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xa814951b # initialize rs1
orc.b x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x585549d0 # initialize rs1
orc.b x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x0774239e # initialize rs1
orc.b x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xda94b19f # initialize rs1
orc.b x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xe6f60f39 # initialize rs1
orc.b x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x4daa3da3 # initialize rs1
orc.b x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xbf237c7d # initialize rs1
orc.b x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x44c73a5e # initialize rs1
orc.b x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x5b34b863 # initialize rs1
orc.b x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xf50d3783 # initialize rs1
orc.b x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x802a02a4 # initialize rs1
orc.b x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xccc17200 # initialize rs1
orc.b x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x90630e7f # initialize rs1
orc.b x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 124)

# Testcase cp_rd (Test destination rd = x0)
li x18, 0x9f64af0c # initialize rs1
orc.b x0, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x3, 0x2160fe96 # initialize rs1
orc.b x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x12, 0x5f2e21df # initialize rs1
orc.b x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x30, 0x8b3a271f # initialize rs1
orc.b x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x966587b2 # initialize rs1
orc.b x4, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0x5c68d985 # initialize rs1
orc.b x5, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0x89d8faf9 # initialize rs1
orc.b x6, x12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xcd31cc8c # initialize rs1
orc.b x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x10, 0xf32824a2 # initialize rs1
orc.b x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0x301c505e # initialize rs1
orc.b x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x27, 0x2b505c6f # initialize rs1
orc.b x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x28, 0xb1e22f83 # initialize rs1
orc.b x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x77f04841 # initialize rs1
orc.b x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x16, 0x49fd637c # initialize rs1
orc.b x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0xd94bb236 # initialize rs1
orc.b x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0xf4c2641b # initialize rs1
orc.b x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0x9899b156 # initialize rs1
orc.b x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x18, 0x189d491c # initialize rs1
orc.b x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x13, 0x69b476a5 # initialize rs1
orc.b x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x6, 0x2baec52b # initialize rs1
orc.b x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x1, 0x568a2d75 # initialize rs1
orc.b x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0x1c0fbe25 # initialize rs1
orc.b x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x15, 0xa22a322f # initialize rs1
orc.b x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x22, 0x7a88b743 # initialize rs1
orc.b x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x22, 0xcfd8cc9b # initialize rs1
orc.b x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0xb16f901c # initialize rs1
orc.b x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x1, 0x66485198 # initialize rs1
orc.b x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x10, 0x25689bb0 # initialize rs1
orc.b x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x24, 0xdb1b0293 # initialize rs1
orc.b x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x10, 0x294a958d # initialize rs1
orc.b x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x7, 0xaa31e88a # initialize rs1
orc.b x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x2, 0xd19f6960 # initialize rs1
orc.b x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x00000000 # initialize rs1
orc.b x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x7, 0x00000001 # initialize rs1
orc.b x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x18, 0x00000002 # initialize rs1
orc.b x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x9, 0x80000000 # initialize rs1
orc.b x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x13, 0x80000001 # initialize rs1
orc.b x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x11, 0x7fffffff # initialize rs1
orc.b x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x22, 0x7ffffffe # initialize rs1
orc.b x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0xffffffff # initialize rs1
orc.b x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0xfffffffe # initialize rs1
orc.b x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x2, 0x5bbc8872 # initialize rs1
orc.b x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x20, 0xaaaaaaaa # initialize rs1
orc.b x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x2, 0x55555555 # initialize rs1
orc.b x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa50b66f4 # initialize rs1
orc.b x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x595a2226 # initialize rs1
orc.b x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xf266a7e2 # initialize rs1
orc.b x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x00ee1267 # initialize rs1
orc.b x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x64d5f4c0 # initialize rs1
orc.b x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdf860c56 # initialize rs1
orc.b x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7515343e # initialize rs1
orc.b x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xef35a5f6 # initialize rs1
orc.b x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x43f965e5 # initialize rs1
orc.b x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x4e0d3a53 # initialize rs1
orc.b x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x0fbda4c0 # initialize rs1
orc.b x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x046f9c2a # initialize rs1
orc.b x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x403f1e21 # initialize rs1
orc.b x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x669c8695 # initialize rs1
orc.b x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x5c423335 # initialize rs1
orc.b x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd0c85770 # initialize rs1
orc.b x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x1aa18eb3 # initialize rs1
orc.b x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x861ef781 # initialize rs1
orc.b x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x01648df4 # initialize rs1
orc.b x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xff46bb5c # initialize rs1
orc.b x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x8791b426 # initialize rs1
orc.b x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xebe23978 # initialize rs1
orc.b x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x09c08bc9 # initialize rs1
orc.b x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x2fc6f20d # initialize rs1
orc.b x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xd5fd4153 # initialize rs1
orc.b x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x182538a3 # initialize rs1
orc.b x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x03d8be1c # initialize rs1
orc.b x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x8065da47 # initialize rs1
orc.b x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x94fb3725 # initialize rs1
orc.b x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xed71dd4a # initialize rs1
orc.b x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x7f573a35 # initialize rs1
orc.b x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x4a351d09 # initialize rs1
orc.b x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x20, x22 # perform first operation
orc.b x6, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x10, x13 # perform first operation
orc.b x29, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x1, x30 # perform first operation
orc.b x11, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x21, x16 # perform first operation
orc.b x18, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x26, x31 # perform first operation
orc.b x2, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x7, x15 # perform first operation
orc.b x7, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x23, x19 # perform first operation
orc.b x15, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x10, x18 # perform first operation
orc.b x3, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x3, x1 # perform first operation
orc.b x18, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x21, x23 # perform first operation
orc.b x21, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x3, x6 # perform first operation
orc.b x6, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x16, x10 # perform first operation
orc.b x26, x21 # perform second (triggering) operation

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
