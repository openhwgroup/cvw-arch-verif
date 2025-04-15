///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbb/WALLY-COV-cpop.S
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
li x0, 0xd38ca53e # initialize rs1
cpop x17, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x41a586c2 # initialize rs1
cpop x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xa08bdfca # initialize rs1
cpop x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x8b594ef6 # initialize rs1
cpop x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x398f5b53 # initialize rs1
cpop x24, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xccdc58c8 # initialize rs1
cpop x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x49bfa276 # initialize rs1
cpop x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb666ca75 # initialize rs1
cpop x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x2e2f3df0 # initialize rs1
cpop x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x39df68f9 # initialize rs1
cpop x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x1085cd1d # initialize rs1
cpop x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xae562ae2 # initialize rs1
cpop x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x1ea18046 # initialize rs1
cpop x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x6e0940b4 # initialize rs1
cpop x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x0acfcfd6 # initialize rs1
cpop x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xa6545513 # initialize rs1
cpop x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x2dd53f61 # initialize rs1
cpop x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x3a36d9b9 # initialize rs1
cpop x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xaa51e06b # initialize rs1
cpop x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x95d4017c # initialize rs1
cpop x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x29654593 # initialize rs1
cpop x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xe19c1c56 # initialize rs1
cpop x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xd660a578 # initialize rs1
cpop x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xa3607abb # initialize rs1
cpop x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x69480a9e # initialize rs1
cpop x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x75c2fb72 # initialize rs1
cpop x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x758308f3 # initialize rs1
cpop x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x0024e836 # initialize rs1
cpop x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x06c30c5a # initialize rs1
cpop x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x68f41432 # initialize rs1
cpop x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xa4549a52 # initialize rs1
cpop x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xae998a4a # initialize rs1
cpop x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 124)

# Testcase cp_rd (Test destination rd = x0)
li x18, 0xe28ee28c # initialize rs1
cpop x0, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x28, 0xc7f381d5 # initialize rs1
cpop x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x23, 0xf44a5ce2 # initialize rs1
cpop x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x29, 0xf42c333e # initialize rs1
cpop x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0x8aced10a # initialize rs1
cpop x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0xc76373b8 # initialize rs1
cpop x5, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0xf1b677d8 # initialize rs1
cpop x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x5161611e # initialize rs1
cpop x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x29, 0xe64d027f # initialize rs1
cpop x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x23, 0x9716beaa # initialize rs1
cpop x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x31, 0xee4af9de # initialize rs1
cpop x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x23, 0x28cdf31b # initialize rs1
cpop x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x7, 0x70d36f9b # initialize rs1
cpop x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0xafe31678 # initialize rs1
cpop x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x18, 0x3dd08f81 # initialize rs1
cpop x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x22, 0xb7770bb6 # initialize rs1
cpop x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x5, 0x018d5506 # initialize rs1
cpop x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x5169c7b3 # initialize rs1
cpop x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x9, 0x6395117d # initialize rs1
cpop x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x8, 0x1e49d716 # initialize rs1
cpop x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x21, 0x48c93dd8 # initialize rs1
cpop x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x5, 0x416928bf # initialize rs1
cpop x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x5, 0x9a1cffd9 # initialize rs1
cpop x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x9, 0x4749c721 # initialize rs1
cpop x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x23, 0xd7ac9f20 # initialize rs1
cpop x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x30, 0x7bc793fc # initialize rs1
cpop x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x19, 0x59be9b73 # initialize rs1
cpop x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0xc9eb71c6 # initialize rs1
cpop x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x21, 0x7c454440 # initialize rs1
cpop x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x16, 0x9e1dd940 # initialize rs1
cpop x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0xdf14a6d2 # initialize rs1
cpop x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x24, 0x9af05ea7 # initialize rs1
cpop x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x00000000 # initialize rs1
cpop x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x00000001 # initialize rs1
cpop x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x19, 0x00000002 # initialize rs1
cpop x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x23, 0x80000000 # initialize rs1
cpop x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x16, 0x80000001 # initialize rs1
cpop x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x3, 0x7fffffff # initialize rs1
cpop x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x21, 0x7ffffffe # initialize rs1
cpop x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0xffffffff # initialize rs1
cpop x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0xfffffffe # initialize rs1
cpop x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x13, 0x5bbc8872 # initialize rs1
cpop x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x25, 0xaaaaaaaa # initialize rs1
cpop x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x10, 0x55555555 # initialize rs1
cpop x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x8bf50351 # initialize rs1
cpop x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x18e6c295 # initialize rs1
cpop x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x4bea50cc # initialize rs1
cpop x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x65c18b09 # initialize rs1
cpop x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x86a3cec1 # initialize rs1
cpop x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe87a8423 # initialize rs1
cpop x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd918a36b # initialize rs1
cpop x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x425e2ea5 # initialize rs1
cpop x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xa871d894 # initialize rs1
cpop x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa4b73e55 # initialize rs1
cpop x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xadfae92f # initialize rs1
cpop x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xffa2f97c # initialize rs1
cpop x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x57308b0b # initialize rs1
cpop x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xfe776ed9 # initialize rs1
cpop x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xef14d30f # initialize rs1
cpop x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xfc588edd # initialize rs1
cpop x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x1691e232 # initialize rs1
cpop x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x7baacbf4 # initialize rs1
cpop x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x2ee890eb # initialize rs1
cpop x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xbbf86c2a # initialize rs1
cpop x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x25fe6c1d # initialize rs1
cpop x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd0988a66 # initialize rs1
cpop x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x5b7d375a # initialize rs1
cpop x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x0e8d4e18 # initialize rs1
cpop x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x5c8729d3 # initialize rs1
cpop x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x23552057 # initialize rs1
cpop x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x018c01c1 # initialize rs1
cpop x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x0df04581 # initialize rs1
cpop x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xde7cecb0 # initialize rs1
cpop x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x536e5531 # initialize rs1
cpop x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x414f0506 # initialize rs1
cpop x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x7625b63f # initialize rs1
cpop x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x29, x13 # perform first operation
cpop x24, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x24, x9 # perform first operation
cpop x23, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x3, x29 # perform first operation
cpop x31, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x9, x31 # perform first operation
cpop x9, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x8, x28 # perform first operation
cpop x19, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x9, x16 # perform first operation
cpop x16, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x14, x12 # perform first operation
cpop x28, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x29, x1 # perform first operation
cpop x20, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x17, x3 # perform first operation
cpop x12, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x2, x27 # perform first operation
cpop x2, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x18, x29 # perform first operation
cpop x29, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x21, x6 # perform first operation
cpop x19, x3 # perform second (triggering) operation

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
