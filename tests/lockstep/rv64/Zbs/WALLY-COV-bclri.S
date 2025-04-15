///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbs/WALLY-COV-bclri.S
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
li x0, 0xc9e1a71fccc49699 # initialize rs1
bclri x10, x0, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x351d35449aac39ce # initialize rs1
bclri x29, x1, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xe72cc0f6cae11cdc # initialize rs1
bclri x29, x2, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x66baa7abe5ca3197 # initialize rs1
bclri x13, x3, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1ea68101dcac6c9a # initialize rs1
bclri x29, x4, 31 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x48e4cd155ecb0fdb # initialize rs1
bclri x19, x5, 48 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x647c0c556db739c8 # initialize rs1
bclri x2, x6, 50 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xafd7131b0eb5b3cb # initialize rs1
bclri x4, x7, 58 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x05ca230e842e7653 # initialize rs1
bclri x21, x8, 62 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xd36d7614ebc56fa4 # initialize rs1
bclri x17, x9, 58 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x999ed7220bf898ef # initialize rs1
bclri x6, x10, 50 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x3a3a8200cacc0927 # initialize rs1
bclri x21, x11, 61 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x08f1434104e5e234 # initialize rs1
bclri x31, x12, 34 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xd18446278e66dd02 # initialize rs1
bclri x4, x13, 10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe8ae7d51a865a498 # initialize rs1
bclri x13, x14, 18 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc2cafe62ec0192fb # initialize rs1
bclri x8, x15, 44 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xdec821274b34fe8c # initialize rs1
bclri x14, x16, 56 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xa02495ffad4a3d39 # initialize rs1
bclri x25, x17, 42 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x2437696c2fae122a # initialize rs1
bclri x15, x18, 9 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x12cec00d280ece47 # initialize rs1
bclri x2, x19, 48 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x7f094586f99ab516 # initialize rs1
bclri x3, x20, 24 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xe32199b7e44bb646 # initialize rs1
bclri x10, x21, 48 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xc4b43a87ecd902bc # initialize rs1
bclri x18, x22, 26 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xedd9796806b1a03c # initialize rs1
bclri x26, x23, 50 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x6df711e25f40faf0 # initialize rs1
bclri x8, x24, 63 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xebc8e0b6b627339c # initialize rs1
bclri x2, x25, 27 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x376d80b2f8f247ee # initialize rs1
bclri x8, x26, 37 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x30444c193f564dfb # initialize rs1
bclri x11, x27, 23 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x0cc12778ded7a80f # initialize rs1
bclri x18, x28, 36 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x8b4a434e747d8e1a # initialize rs1
bclri x30, x29, 13 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xd4d6ef5012261c9a # initialize rs1
bclri x11, x30, 23 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x9e4406643646e140 # initialize rs1
bclri x28, x31, 53 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 248)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0x645be5226d3f2ca3 # initialize rs1
bclri x0, x3, 19 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x23, 0x3e21b7367073578e # initialize rs1
bclri x1, x23, 36 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x4, 0x033769dfa0c0a1b1 # initialize rs1
bclri x2, x4, 50 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x30, 0xd24bc848dedf5b34 # initialize rs1
bclri x3, x30, 59 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
li x3, 0x9370a6f51cc5ad6c # initialize rs1
bclri x4, x3, 59 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0xf0ea35d3d75b11c8 # initialize rs1
bclri x5, x6, 47 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
li x27, 0x4ede56b467ee8ca0 # initialize rs1
bclri x6, x27, 27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0x5b29ef4553739e4e # initialize rs1
bclri x7, x5, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x22, 0xbd9b8ae8cadb521c # initialize rs1
bclri x8, x22, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x23, 0x4a9ed89b9eb4c160 # initialize rs1
bclri x9, x23, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0xb48108d6841add6c # initialize rs1
bclri x10, x21, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x13, 0x0a9de78d91bd648d # initialize rs1
bclri x11, x13, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x13, 0x201b350c3df7fe81 # initialize rs1
bclri x12, x13, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x28, 0xe883ac2059d7a140 # initialize rs1
bclri x13, x28, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x25, 0x1c1fcd122917fe22 # initialize rs1
bclri x14, x25, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x17, 0x542365ce7617c26f # initialize rs1
bclri x15, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0xa5914393876548c8 # initialize rs1
bclri x16, x1, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x7, 0x018850e6a6ed4075 # initialize rs1
bclri x17, x7, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x25, 0x0404835373c3bd4f # initialize rs1
bclri x18, x25, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x15, 0x9b19c5ba238d75cc # initialize rs1
bclri x19, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0xa8e7fafa49a56c7c # initialize rs1
bclri x20, x2, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x7, 0xf85d48658a8a4a6e # initialize rs1
bclri x21, x7, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x25, 0x7545215474f66b68 # initialize rs1
bclri x22, x25, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x16, 0x94f625fa6f1049a9 # initialize rs1
bclri x23, x16, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x3, 0x04970550ef0a590f # initialize rs1
bclri x24, x3, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x13, 0x2b31b8d9e51b4e6b # initialize rs1
bclri x25, x13, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x7, 0xe47f7fa44ccb4270 # initialize rs1
bclri x26, x7, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x3, 0x806e32d34213515f # initialize rs1
bclri x27, x3, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x6, 0xb83072a96cfb4929 # initialize rs1
bclri x28, x6, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x16, 0x7a88e7f5ef850413 # initialize rs1
bclri x29, x16, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x25, 0x161410cb6a14eb53 # initialize rs1
bclri x30, x25, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x23, 0x3d7c2970cafc2143 # initialize rs1
bclri x31, x23, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x0000000000000000 # initialize rs1
bclri x12, x3, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0x0000000000000001 # initialize rs1
bclri x7, x29, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x9, 0x0000000000000002 # initialize rs1
bclri x11, x9, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x6, 0x8000000000000000 # initialize rs1
bclri x30, x6, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x26, 0x8000000000000001 # initialize rs1
bclri x19, x26, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
bclri x25, x27, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
bclri x10, x6, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x29, 0xffffffffffffffff # initialize rs1
bclri x17, x29, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
bclri x11, x26, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x25, 0x5bbc887763ae86f2 # initialize rs1
bclri x31, x25, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
bclri x26, x2, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x31, 0x5555555555555555 # initialize rs1
bclri x11, x31, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x31, 0x00000000ffffffff # initialize rs1
bclri x6, x31, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0x00000000fffffffe # initialize rs1
bclri x25, x2, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x10, 0x0000000100000000 # initialize rs1
bclri x23, x10, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x12, 0x0000000100000001 # initialize rs1
bclri x6, x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x808d035938c68c77 # initialize rs1
bclri x0, x0, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x4a65f1e654717a82 # initialize rs1
bclri x1, x1, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x5bf166dec3880497 # initialize rs1
bclri x2, x2, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x7fce77c2fdcc92d4 # initialize rs1
bclri x3, x3, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xda75b80c565daf6a # initialize rs1
bclri x4, x4, 60 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3f5af3e482c60890 # initialize rs1
bclri x5, x5, 3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8bd1a675fcb4d932 # initialize rs1
bclri x6, x6, 26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1a105af689fa8e9d # initialize rs1
bclri x7, x7, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x1bde14454a98b0c7 # initialize rs1
bclri x8, x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf0d8f60d78a27f52 # initialize rs1
bclri x9, x9, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xad2d55f55ac5d2af # initialize rs1
bclri x10, x10, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa3536393ccff1279 # initialize rs1
bclri x11, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x50993d3481777b54 # initialize rs1
bclri x12, x12, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xb1cd327d15c52a0d # initialize rs1
bclri x13, x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x328edb89fc615699 # initialize rs1
bclri x14, x14, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd5de9c29ceb4bb28 # initialize rs1
bclri x15, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x7e7d0cce90515eab # initialize rs1
bclri x16, x16, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x540e5f0204000ec4 # initialize rs1
bclri x17, x17, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xcdcfd859eb2582d7 # initialize rs1
bclri x18, x18, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa1f94b8b8537aca6 # initialize rs1
bclri x19, x19, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x6c0cce243b80cf88 # initialize rs1
bclri x20, x20, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x9eda6683f8b45979 # initialize rs1
bclri x21, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6d8959111fb852ad # initialize rs1
bclri x22, x22, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd053da975c891a33 # initialize rs1
bclri x23, x23, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x8b806f2d17f525d9 # initialize rs1
bclri x24, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x079a6c25a7d4c9f8 # initialize rs1
bclri x25, x25, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x3ce5dd44b12ccf8c # initialize rs1
bclri x26, x26, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x55c44cf201acb81f # initialize rs1
bclri x27, x27, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x96101e1940c77a3a # initialize rs1
bclri x28, x28, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xe75946ea4995c020 # initialize rs1
bclri x29, x29, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x6734b82198bb9412 # initialize rs1
bclri x30, x30, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x765a1545001ffbe3 # initialize rs1
bclri x31, x31, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm (Test bit = 0)
li x11, 0x9571c2ff032ea524 # initialize rs1
bclri x19, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 896)

# Testcase cp_uimm (Test bit = 1)
li x7, 0x93a1f1b613012cbf # initialize rs1
bclri x5, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 904)

# Testcase cp_uimm (Test bit = 2)
li x13, 0xa05d42a36f02f0f6 # initialize rs1
bclri x11, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 912)

# Testcase cp_uimm (Test bit = 3)
li x26, 0x8edccf94dd478d61 # initialize rs1
bclri x5, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 920)

# Testcase cp_uimm (Test bit = 4)
li x17, 0x2d5a78b07ace81ab # initialize rs1
bclri x1, x17, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 928)

# Testcase cp_uimm (Test bit = 5)
li x23, 0xdd6450fccede54b7 # initialize rs1
bclri x31, x23, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 936)

# Testcase cp_uimm (Test bit = 6)
li x28, 0xa12156a7243903f1 # initialize rs1
bclri x29, x28, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 944)

# Testcase cp_uimm (Test bit = 7)
li x1, 0x603e29090bdabae2 # initialize rs1
bclri x10, x1, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 952)

# Testcase cp_uimm (Test bit = 8)
li x2, 0x04dafce467aaae4a # initialize rs1
bclri x13, x2, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 960)

# Testcase cp_uimm (Test bit = 9)
li x29, 0x4eb5d4c1e44f3f9b # initialize rs1
bclri x17, x29, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 968)

# Testcase cp_uimm (Test bit = 10)
li x8, 0xf220a7d0d002ddc7 # initialize rs1
bclri x10, x8, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 976)

# Testcase cp_uimm (Test bit = 11)
li x6, 0x7eb2a1685754dbdb # initialize rs1
bclri x30, x6, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 984)

# Testcase cp_uimm (Test bit = 12)
li x21, 0x7241944e9acc28da # initialize rs1
bclri x15, x21, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 992)

# Testcase cp_uimm (Test bit = 13)
li x14, 0x48e6f73ecaca9eb1 # initialize rs1
bclri x16, x14, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1000)

# Testcase cp_uimm (Test bit = 14)
li x21, 0xd4bb5d6c48c1ad62 # initialize rs1
bclri x27, x21, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1008)

# Testcase cp_uimm (Test bit = 15)
li x18, 0x597cb55f79dbe7fc # initialize rs1
bclri x26, x18, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1016)

# Testcase cp_uimm (Test bit = 16)
li x3, 0x18f1681dde58ae40 # initialize rs1
bclri x11, x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1024)

# Testcase cp_uimm (Test bit = 17)
li x14, 0x39b5a6bc46efb9c0 # initialize rs1
bclri x25, x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1032)

# Testcase cp_uimm (Test bit = 18)
li x17, 0x5e3ac83e00ffa296 # initialize rs1
bclri x22, x17, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1040)

# Testcase cp_uimm (Test bit = 19)
li x14, 0x9632f45e407a07a8 # initialize rs1
bclri x12, x14, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)

# Testcase cp_uimm (Test bit = 20)
li x20, 0x2302b6a7dd142fd9 # initialize rs1
bclri x29, x20, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1056)

# Testcase cp_uimm (Test bit = 21)
li x28, 0x7a2b676f3d2b2bf8 # initialize rs1
bclri x8, x28, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cp_uimm (Test bit = 22)
li x23, 0x4c7527f8ac171d2a # initialize rs1
bclri x28, x23, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1072)

# Testcase cp_uimm (Test bit = 23)
li x25, 0xc87d1b16956b6a21 # initialize rs1
bclri x29, x25, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1080)

# Testcase cp_uimm (Test bit = 24)
li x22, 0xb1b9499906e59eda # initialize rs1
bclri x24, x22, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1088)

# Testcase cp_uimm (Test bit = 25)
li x28, 0xbb59e43927a01c2a # initialize rs1
bclri x22, x28, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1096)

# Testcase cp_uimm (Test bit = 26)
li x16, 0x5c34b5fbbdecd284 # initialize rs1
bclri x21, x16, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1104)

# Testcase cp_uimm (Test bit = 27)
li x8, 0x53c98a77280bd0ec # initialize rs1
bclri x12, x8, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1112)

# Testcase cp_uimm (Test bit = 28)
li x25, 0x4e2a41ac6c37b9ad # initialize rs1
bclri x1, x25, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cp_uimm (Test bit = 29)
li x15, 0x9f59c144f66db1eb # initialize rs1
bclri x28, x15, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1128)

# Testcase cp_uimm (Test bit = 30)
li x7, 0x36fd682a5089815a # initialize rs1
bclri x28, x7, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cp_uimm (Test bit = 31)
li x15, 0x53718957902d44c7 # initialize rs1
bclri x2, x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

# Testcase cp_uimm (Test bit = 32)
li x20, 0x0afa0d93577b3769 # initialize rs1
bclri x24, x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1152)

# Testcase cp_uimm (Test bit = 33)
li x31, 0xd9e9817ef71793c5 # initialize rs1
bclri x1, x31, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1160)

# Testcase cp_uimm (Test bit = 34)
li x12, 0x064c032a1e454075 # initialize rs1
bclri x23, x12, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1168)

# Testcase cp_uimm (Test bit = 35)
li x14, 0xd13816211d711a62 # initialize rs1
bclri x1, x14, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1176)

# Testcase cp_uimm (Test bit = 36)
li x24, 0xd6a5cdec337b21c5 # initialize rs1
bclri x25, x24, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1184)

# Testcase cp_uimm (Test bit = 37)
li x10, 0x8100f691ecdbce36 # initialize rs1
bclri x18, x10, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1192)

# Testcase cp_uimm (Test bit = 38)
li x30, 0xfbf799c8bad99c05 # initialize rs1
bclri x19, x30, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1200)

# Testcase cp_uimm (Test bit = 39)
li x1, 0x5e4dad8de02643ca # initialize rs1
bclri x11, x1, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1208)

# Testcase cp_uimm (Test bit = 40)
li x13, 0x91186372ae2001e2 # initialize rs1
bclri x7, x13, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1216)

# Testcase cp_uimm (Test bit = 41)
li x1, 0x687d0945d8e01b01 # initialize rs1
bclri x13, x1, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1224)

# Testcase cp_uimm (Test bit = 42)
li x30, 0xd3f1b0bc66d2ccc9 # initialize rs1
bclri x25, x30, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1232)

# Testcase cp_uimm (Test bit = 43)
li x1, 0x6d6f4bbb411b4a7a # initialize rs1
bclri x17, x1, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1240)

# Testcase cp_uimm (Test bit = 44)
li x26, 0x46be39f0cc034021 # initialize rs1
bclri x8, x26, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1248)

# Testcase cp_uimm (Test bit = 45)
li x19, 0xbe5700f061c54ab1 # initialize rs1
bclri x7, x19, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1256)

# Testcase cp_uimm (Test bit = 46)
li x31, 0x1d427c64487f21c6 # initialize rs1
bclri x19, x31, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1264)

# Testcase cp_uimm (Test bit = 47)
li x8, 0x71b98e6930eb2ee8 # initialize rs1
bclri x30, x8, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1272)

# Testcase cp_uimm (Test bit = 48)
li x28, 0xf7cf1ae9f61a3306 # initialize rs1
bclri x10, x28, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1280)

# Testcase cp_uimm (Test bit = 49)
li x6, 0x5e22dffee7b40247 # initialize rs1
bclri x9, x6, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1288)

# Testcase cp_uimm (Test bit = 50)
li x25, 0x690f5a6bac833c3d # initialize rs1
bclri x12, x25, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1296)

# Testcase cp_uimm (Test bit = 51)
li x6, 0x4f32d1b20772161f # initialize rs1
bclri x7, x6, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1304)

# Testcase cp_uimm (Test bit = 52)
li x7, 0x231240aec012b1ec # initialize rs1
bclri x19, x7, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1312)

# Testcase cp_uimm (Test bit = 53)
li x11, 0x72d9626f00123a41 # initialize rs1
bclri x2, x11, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cp_uimm (Test bit = 54)
li x15, 0x0e32bd83b30a85fe # initialize rs1
bclri x1, x15, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1328)

# Testcase cp_uimm (Test bit = 55)
li x20, 0xbe9a3842d38bb1d0 # initialize rs1
bclri x23, x20, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1336)

# Testcase cp_uimm (Test bit = 56)
li x22, 0x3081fd72df3df9b8 # initialize rs1
bclri x11, x22, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1344)

# Testcase cp_uimm (Test bit = 57)
li x26, 0xeb788e4dfc6e7ba0 # initialize rs1
bclri x22, x26, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1352)

# Testcase cp_uimm (Test bit = 58)
li x17, 0xfa1b5fa5585fc467 # initialize rs1
bclri x21, x17, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1360)

# Testcase cp_uimm (Test bit = 59)
li x21, 0x40f67e41657dfad6 # initialize rs1
bclri x17, x21, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1368)

# Testcase cp_uimm (Test bit = 60)
li x14, 0x62c935c68fe35476 # initialize rs1
bclri x8, x14, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1376)

# Testcase cp_uimm (Test bit = 61)
li x16, 0xd3a7af3d776ee061 # initialize rs1
bclri x8, x16, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1384)

# Testcase cp_uimm (Test bit = 62)
li x12, 0x59666850b2868061 # initialize rs1
bclri x9, x12, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1392)

# Testcase cp_uimm (Test bit = 63)
li x29, 0x6b1e3e91fd4c6ee0 # initialize rs1
bclri x3, x29, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1400)

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x6, x25 # perform first operation
bclri x16, x3, 57 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x17, x7 # perform first operation
bclri x13, x12, 38 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x19, x17 # perform first operation
bclri x18, x15, 58 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x7, x21 # perform first operation
bclri x21, x6, 49 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x7, x17 # perform first operation
bclri x21, x27, 52 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x28, x15 # perform first operation
bclri x25, x7, 41 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x13, x22 # perform first operation
bclri x27, x16, 40 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x25, x13 # perform first operation
bclri x6, x5, 61 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x25, x26 # perform first operation
bclri x18, x8, 39 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x20, x10 # perform first operation
bclri x20, x5, 19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x15, x2 # perform first operation
bclri x2, x19, 55 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x15, x30 # perform first operation
bclri x5, x11, 5 # perform second (triggering) operation

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
