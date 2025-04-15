///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-rori.S
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
li x0, 0x6adf7c1edc3eeb32 # initialize rs1
rori x22, x0, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x2694ab0fae43a90d # initialize rs1
rori x14, x1, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x4a9fd4394759be11 # initialize rs1
rori x10, x2, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x864b59e6fd21717b # initialize rs1
rori x29, x3, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5ba437a467693c93 # initialize rs1
rori x3, x4, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x13e4ae47a5ca6db1 # initialize rs1
rori x12, x5, 38 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x20c64779f3d3c0a4 # initialize rs1
rori x22, x6, 56 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x695f4971de3875f2 # initialize rs1
rori x4, x7, 58 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9552f34fc4e76769 # initialize rs1
rori x20, x8, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x4f937986e81225c8 # initialize rs1
rori x11, x9, 21 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x923c8bcc0a4f7b04 # initialize rs1
rori x8, x10, 28 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc08ca471785f403e # initialize rs1
rori x9, x11, 37 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6e034b3eafddca88 # initialize rs1
rori x29, x12, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x24e37dc845ca4f9f # initialize rs1
rori x25, x13, 39 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xda2e39b403ece6ef # initialize rs1
rori x2, x14, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x01c070fbd3587460 # initialize rs1
rori x25, x15, 35 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xa04d717654c748dc # initialize rs1
rori x11, x16, 22 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8c9d8cd51976c0ce # initialize rs1
rori x12, x17, 47 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xf3d65a88003ba424 # initialize rs1
rori x11, x18, 33 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xeac1c7419602416c # initialize rs1
rori x29, x19, 10 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x5ae0b2aee3b2fb37 # initialize rs1
rori x7, x20, 28 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x015140ba701ebe08 # initialize rs1
rori x22, x21, 44 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x07596c3d742493d3 # initialize rs1
rori x27, x22, 43 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb4c446b24768ffb2 # initialize rs1
rori x25, x23, 27 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x810b984f2313039c # initialize rs1
rori x16, x24, 5 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x9d0a9842aa9ad75b # initialize rs1
rori x1, x25, 22 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x2515f1395675f61c # initialize rs1
rori x11, x26, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xdb633a4ecce471b9 # initialize rs1
rori x7, x27, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xda97e42415fe340f # initialize rs1
rori x14, x28, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x0b688c082c3a606f # initialize rs1
rori x23, x29, 41 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x145953be2f558181 # initialize rs1
rori x25, x30, 21 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x001673d2440691b0 # initialize rs1
rori x30, x31, 35 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x0)
li x4, 0x2a34df351dff7d03 # initialize rs1
rori x0, x4, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x12, 0xf2c32b4b3aa267ac # initialize rs1
rori x1, x12, 45 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x4, 0x92bdc795fb0207b3 # initialize rs1
rori x2, x4, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x30, 0x4cc2c552736f8361 # initialize rs1
rori x3, x30, 11 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
li x8, 0x3dbd19919e5fb210 # initialize rs1
rori x4, x8, 7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x498dde952c4a2be1 # initialize rs1
rori x5, x29, 4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0xbba7c31fbd19ad1e # initialize rs1
rori x6, x23, 42 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0xcb45b3c1b750cf75 # initialize rs1
rori x7, x23, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0x08a28d70911dd46f # initialize rs1
rori x8, x13, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x28, 0x0a35f22e20d8a4ff # initialize rs1
rori x9, x28, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x31, 0xb63ffaff03fc3c7f # initialize rs1
rori x10, x31, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x3, 0x1254415ae99c2e26 # initialize rs1
rori x11, x3, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x5, 0xaeb7053cef8ab89e # initialize rs1
rori x12, x5, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x3, 0xcb6a8ecba18df7ac # initialize rs1
rori x13, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x21, 0x3a82a15924a11599 # initialize rs1
rori x14, x21, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0xdc3831e0b4fe65f7 # initialize rs1
rori x15, x12, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x21, 0xe83dd08411dff7a1 # initialize rs1
rori x16, x21, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x10, 0xb2a377302916b425 # initialize rs1
rori x17, x10, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x2, 0xd6c221c2a63c8473 # initialize rs1
rori x18, x2, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x8, 0xa9427f155426c6d7 # initialize rs1
rori x19, x8, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x30, 0xdfae320df83c870f # initialize rs1
rori x20, x30, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x11, 0xd8345d343a1a6456 # initialize rs1
rori x21, x11, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x11, 0xd7b4c9c7a8e12a17 # initialize rs1
rori x22, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x9, 0x4f9e368117594c05 # initialize rs1
rori x23, x9, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0x551fa16d0203f384 # initialize rs1
rori x24, x13, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x6, 0x29518994994e9932 # initialize rs1
rori x25, x6, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x20, 0x0b06b274611fb91f # initialize rs1
rori x26, x20, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x1, 0xaa9896d41460f3b5 # initialize rs1
rori x27, x1, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x1, 0x61a83736ef387566 # initialize rs1
rori x28, x1, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x28, 0x04bdcade835a0ad3 # initialize rs1
rori x29, x28, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0x75a855f01ef78ae9 # initialize rs1
rori x30, x18, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x21, 0xfef5c18c56726d2d # initialize rs1
rori x31, x21, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x0000000000000000 # initialize rs1
rori x28, x3, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0x0000000000000001 # initialize rs1
rori x26, x17, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x0000000000000002 # initialize rs1
rori x15, x16, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs1
rori x11, x12, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x31, 0x8000000000000001 # initialize rs1
rori x15, x31, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
rori x25, x31, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
rori x12, x25, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
rori x1, x21, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rs1
rori x30, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x31, 0x5bbc887763ae86f2 # initialize rs1
rori x12, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
rori x14, x23, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x13, 0x5555555555555555 # initialize rs1
rori x24, x13, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
rori x26, x18, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0x00000000fffffffe # initialize rs1
rori x18, x3, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x21, 0x0000000100000000 # initialize rs1
rori x3, x21, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x17, 0x0000000100000001 # initialize rs1
rori x24, x17, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xafccc1378cc5f0f4 # initialize rs1
rori x0, x0, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xc69f6b250424b4cd # initialize rs1
rori x1, x1, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xea6bd4ea04499fa6 # initialize rs1
rori x2, x2, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x536c498944b4bf71 # initialize rs1
rori x3, x3, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb5c32a7bb763bb53 # initialize rs1
rori x4, x4, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd2478bbff3a20a78 # initialize rs1
rori x5, x5, 29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa7d8a3f76089fa5c # initialize rs1
rori x6, x6, 23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc7cf39e56d06a0c8 # initialize rs1
rori x7, x7, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xcadd9e7dacdbc348 # initialize rs1
rori x8, x8, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x175a993ed1e04372 # initialize rs1
rori x9, x9, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xf236ce2a5857dd25 # initialize rs1
rori x10, x10, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x4b9bb266d103574c # initialize rs1
rori x11, x11, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x5c5a805142d5eeaf # initialize rs1
rori x12, x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x60933c65b84729f8 # initialize rs1
rori x13, x13, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x33326956325e02f3 # initialize rs1
rori x14, x14, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x6c097d2458d887e4 # initialize rs1
rori x15, x15, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xe8ed2bab5691c80d # initialize rs1
rori x16, x16, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xfdca88224fb260b6 # initialize rs1
rori x17, x17, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xd9ad8ff009ff638f # initialize rs1
rori x18, x18, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xd31cc36c4254356f # initialize rs1
rori x19, x19, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x8a94c194ca6211de # initialize rs1
rori x20, x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x00c66c383ed8dd83 # initialize rs1
rori x21, x21, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xe55766cc341ca22b # initialize rs1
rori x22, x22, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x0e9f37f5da20bfb5 # initialize rs1
rori x23, x23, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xa5907ce88fcbbf66 # initialize rs1
rori x24, x24, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x915febad775f9b79 # initialize rs1
rori x25, x25, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x3fcefbc0a5feb08a # initialize rs1
rori x26, x26, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x1bcdeca1ee5fc538 # initialize rs1
rori x27, x27, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x4bf8efe429c8f11a # initialize rs1
rori x28, x28, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1d65b1c831b83088 # initialize rs1
rori x29, x29, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x6a43e1f25583c492 # initialize rs1
rori x30, x30, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xa28562489fb76c9a # initialize rs1
rori x31, x31, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm (Test bit = 0)
li x28, 0x159809464c473c80 # initialize rs1
rori x8, x28, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 896)

# Testcase cp_uimm (Test bit = 1)
li x1, 0xcf26035e7fc4b360 # initialize rs1
rori x19, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 904)

# Testcase cp_uimm (Test bit = 2)
li x14, 0x461494d08949a1a5 # initialize rs1
rori x16, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 912)

# Testcase cp_uimm (Test bit = 3)
li x21, 0x791246b44a2fe6d4 # initialize rs1
rori x6, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 920)

# Testcase cp_uimm (Test bit = 4)
li x19, 0xdcd168ba3fd68058 # initialize rs1
rori x15, x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 928)

# Testcase cp_uimm (Test bit = 5)
li x2, 0x7df72db3396b69a4 # initialize rs1
rori x20, x2, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 936)

# Testcase cp_uimm (Test bit = 6)
li x21, 0x8e13f8555db826b5 # initialize rs1
rori x15, x21, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 944)

# Testcase cp_uimm (Test bit = 7)
li x14, 0x1ee18bd89c1dd822 # initialize rs1
rori x16, x14, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 952)

# Testcase cp_uimm (Test bit = 8)
li x23, 0xd4d8bd8208dfb90e # initialize rs1
rori x7, x23, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 960)

# Testcase cp_uimm (Test bit = 9)
li x20, 0xe502f3c57f5ccbbb # initialize rs1
rori x6, x20, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 968)

# Testcase cp_uimm (Test bit = 10)
li x27, 0xb219e544f2dfa696 # initialize rs1
rori x15, x27, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 976)

# Testcase cp_uimm (Test bit = 11)
li x26, 0x8e7217fe4b6f3a38 # initialize rs1
rori x5, x26, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 984)

# Testcase cp_uimm (Test bit = 12)
li x16, 0x3ca7c33c7aa3f2c0 # initialize rs1
rori x7, x16, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 992)

# Testcase cp_uimm (Test bit = 13)
li x15, 0x63178ecdfc8cb06c # initialize rs1
rori x11, x15, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cp_uimm (Test bit = 14)
li x29, 0xe79c2716ed731cf7 # initialize rs1
rori x22, x29, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cp_uimm (Test bit = 15)
li x10, 0x1a36820f186a295f # initialize rs1
rori x2, x10, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1016)

# Testcase cp_uimm (Test bit = 16)
li x2, 0x847e7a4366b42ec0 # initialize rs1
rori x25, x2, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1024)

# Testcase cp_uimm (Test bit = 17)
li x28, 0x8b79d551050e0cef # initialize rs1
rori x10, x28, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1032)

# Testcase cp_uimm (Test bit = 18)
li x30, 0x2d9d5be03d8d7c82 # initialize rs1
rori x24, x30, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1040)

# Testcase cp_uimm (Test bit = 19)
li x31, 0xaab0c7677b46ae01 # initialize rs1
rori x10, x31, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1048)

# Testcase cp_uimm (Test bit = 20)
li x3, 0xecf1b194241b42ed # initialize rs1
rori x10, x3, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1056)

# Testcase cp_uimm (Test bit = 21)
li x27, 0x313f909c95d64750 # initialize rs1
rori x11, x27, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1064)

# Testcase cp_uimm (Test bit = 22)
li x31, 0xccb07d3c326e7b23 # initialize rs1
rori x6, x31, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1072)

# Testcase cp_uimm (Test bit = 23)
li x6, 0x97707b33c90be31d # initialize rs1
rori x18, x6, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1080)

# Testcase cp_uimm (Test bit = 24)
li x18, 0xa8cc712ffb396777 # initialize rs1
rori x15, x18, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1088)

# Testcase cp_uimm (Test bit = 25)
li x29, 0x265aef0f5cc47be4 # initialize rs1
rori x24, x29, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1096)

# Testcase cp_uimm (Test bit = 26)
li x23, 0x358cfde6703ef245 # initialize rs1
rori x14, x23, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cp_uimm (Test bit = 27)
li x19, 0xf48d5293954f67ac # initialize rs1
rori x12, x19, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1112)

# Testcase cp_uimm (Test bit = 28)
li x26, 0x6cf8e667571792ea # initialize rs1
rori x1, x26, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cp_uimm (Test bit = 29)
li x12, 0x34335c08075d53d5 # initialize rs1
rori x15, x12, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1128)

# Testcase cp_uimm (Test bit = 30)
li x16, 0x4a3dd500100c0ff7 # initialize rs1
rori x13, x16, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1136)

# Testcase cp_uimm (Test bit = 31)
li x15, 0xceb0df92017b835c # initialize rs1
rori x2, x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

# Testcase cp_uimm (Test bit = 32)
li x15, 0x8d09b8d5d3eeb740 # initialize rs1
rori x13, x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1152)

# Testcase cp_uimm (Test bit = 33)
li x3, 0xad6ee2fa284ab67d # initialize rs1
rori x30, x3, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1160)

# Testcase cp_uimm (Test bit = 34)
li x1, 0x0c75ed9fd7981caa # initialize rs1
rori x11, x1, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1168)

# Testcase cp_uimm (Test bit = 35)
li x20, 0x6b3997d9fbf4759f # initialize rs1
rori x15, x20, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1176)

# Testcase cp_uimm (Test bit = 36)
li x7, 0xb7f4b08bfef0891e # initialize rs1
rori x1, x7, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1184)

# Testcase cp_uimm (Test bit = 37)
li x8, 0x878968c71e8747b4 # initialize rs1
rori x24, x8, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1192)

# Testcase cp_uimm (Test bit = 38)
li x22, 0x174a63a5d28f674b # initialize rs1
rori x5, x22, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1200)

# Testcase cp_uimm (Test bit = 39)
li x14, 0x89a0abc01c6e1f09 # initialize rs1
rori x27, x14, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1208)

# Testcase cp_uimm (Test bit = 40)
li x18, 0x5d0e844efa35bc06 # initialize rs1
rori x22, x18, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1216)

# Testcase cp_uimm (Test bit = 41)
li x26, 0x66eb0a451c38634b # initialize rs1
rori x17, x26, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1224)

# Testcase cp_uimm (Test bit = 42)
li x30, 0x2f253993b15ba446 # initialize rs1
rori x29, x30, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1232)

# Testcase cp_uimm (Test bit = 43)
li x18, 0x5334728cbbaeb00e # initialize rs1
rori x11, x18, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1240)

# Testcase cp_uimm (Test bit = 44)
li x22, 0xb7bf5f91b2d402c4 # initialize rs1
rori x23, x22, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1248)

# Testcase cp_uimm (Test bit = 45)
li x31, 0x76b9b7d0551afba1 # initialize rs1
rori x6, x31, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1256)

# Testcase cp_uimm (Test bit = 46)
li x30, 0x126b61e04b5a08a0 # initialize rs1
rori x18, x30, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1264)

# Testcase cp_uimm (Test bit = 47)
li x26, 0xd1d75a1b1fe6f9a9 # initialize rs1
rori x16, x26, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1272)

# Testcase cp_uimm (Test bit = 48)
li x23, 0xcbfab8214bab9308 # initialize rs1
rori x12, x23, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1280)

# Testcase cp_uimm (Test bit = 49)
li x16, 0x02cb7c3f62ac97c4 # initialize rs1
rori x14, x16, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1288)

# Testcase cp_uimm (Test bit = 50)
li x14, 0x06f35a73a4dd3232 # initialize rs1
rori x20, x14, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1296)

# Testcase cp_uimm (Test bit = 51)
li x28, 0xf0de176b68febe79 # initialize rs1
rori x9, x28, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1304)

# Testcase cp_uimm (Test bit = 52)
li x17, 0xe1b3d3516828a84b # initialize rs1
rori x18, x17, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1312)

# Testcase cp_uimm (Test bit = 53)
li x26, 0xb00b0a4a75cac4ab # initialize rs1
rori x27, x26, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1320)

# Testcase cp_uimm (Test bit = 54)
li x14, 0x345b8b375e392eaa # initialize rs1
rori x13, x14, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1328)

# Testcase cp_uimm (Test bit = 55)
li x8, 0x15c55119d186d277 # initialize rs1
rori x7, x8, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1336)

# Testcase cp_uimm (Test bit = 56)
li x27, 0x50961a4186e21e00 # initialize rs1
rori x7, x27, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1344)

# Testcase cp_uimm (Test bit = 57)
li x18, 0x6177ce8e049fcd59 # initialize rs1
rori x26, x18, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1352)

# Testcase cp_uimm (Test bit = 58)
li x18, 0x09619b454d6f9dbc # initialize rs1
rori x10, x18, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1360)

# Testcase cp_uimm (Test bit = 59)
li x25, 0xf4266c111760c7df # initialize rs1
rori x19, x25, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1368)

# Testcase cp_uimm (Test bit = 60)
li x24, 0x68e0fec6ad2a4a20 # initialize rs1
rori x19, x24, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1376)

# Testcase cp_uimm (Test bit = 61)
li x27, 0x6f376577d40930c4 # initialize rs1
rori x8, x27, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1384)

# Testcase cp_uimm (Test bit = 62)
li x3, 0x757f7bcdc11f29d0 # initialize rs1
rori x26, x3, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1392)

# Testcase cp_uimm (Test bit = 63)
li x1, 0x66bbcf6cc3aa9d70 # initialize rs1
rori x13, x1, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1400)

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x10, x21 # perform first operation
rori x5, x20, 54 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x22, x8 # perform first operation
rori x10, x30, 53 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x14, x8 # perform first operation
rori x9, x20, 56 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x18, x15 # perform first operation
rori x18, x6, 57 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x28, x13 # perform first operation
rori x9, x28, 13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x19, x5 # perform first operation
rori x1, x29, 51 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x24, x5 # perform first operation
rori x2, x22, 59 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x6, x1 # perform first operation
rori x13, x19, 53 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x27, x24 # perform first operation
rori x6, x2, 50 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x14, x13 # perform first operation
rori x14, x3, 28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x17, x26 # perform first operation
rori x26, x3, 58 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x8, x27 # perform first operation
rori x20, x6, 36 # perform second (triggering) operation

.EQU SIGSIZE,1408


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
