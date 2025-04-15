///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zknh/WALLY-COV-sha512sig0.S
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
li x0, 0xe907a28e405d4e10 # initialize rs1
sha512sig0 x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x4961fb9ba503fd81 # initialize rs1
sha512sig0 x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x7512247023749c51 # initialize rs1
sha512sig0 x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x3ae38c27d96555ca # initialize rs1
sha512sig0 x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x22b1b99c17c94052 # initialize rs1
sha512sig0 x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xda45c39efa1fc5ea # initialize rs1
sha512sig0 x20, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4f0f8cdf6eb7ace3 # initialize rs1
sha512sig0 x12, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaab262aa1b98e74c # initialize rs1
sha512sig0 x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xf0cca9ae0769fe32 # initialize rs1
sha512sig0 x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x3c0793196fcaae37 # initialize rs1
sha512sig0 x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x8dbca7732b025680 # initialize rs1
sha512sig0 x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x260808afc6fcb206 # initialize rs1
sha512sig0 x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x8db551750fb9e135 # initialize rs1
sha512sig0 x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xb7b90cc23e240fac # initialize rs1
sha512sig0 x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xcd55d75d2c5a17ed # initialize rs1
sha512sig0 x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xb322f31af3b8ff19 # initialize rs1
sha512sig0 x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x5489957b2a3270f3 # initialize rs1
sha512sig0 x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xf4c6e0a85e875dce # initialize rs1
sha512sig0 x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xd9a64c088db48494 # initialize rs1
sha512sig0 x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x268833f532e0d1f5 # initialize rs1
sha512sig0 x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x63dfe4fc2c2d92a2 # initialize rs1
sha512sig0 x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xb8ec9e02adce8dc5 # initialize rs1
sha512sig0 x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xda80a0a65bc418d1 # initialize rs1
sha512sig0 x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x38e801b5eeaaca3c # initialize rs1
sha512sig0 x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x955876ebd02fcb4e # initialize rs1
sha512sig0 x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xe5abbbfccfec6b89 # initialize rs1
sha512sig0 x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x7877a14903059658 # initialize rs1
sha512sig0 x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd04f05ea9c58660e # initialize rs1
sha512sig0 x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x45d9a9bdb5c2d9bc # initialize rs1
sha512sig0 x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xd43a32d6f8d6579c # initialize rs1
sha512sig0 x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x02955129af03eb8a # initialize rs1
sha512sig0 x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x7c1f1f2ff72a19fb # initialize rs1
sha512sig0 x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cp_rd (Test destination rd = x0)
li x13, 0x590fcd71148eb94c # initialize rs1
sha512sig0 x0, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x9, 0xe81af3a971488db0 # initialize rs1
sha512sig0 x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x9, 0x1eead749199d2a9d # initialize rs1
sha512sig0 x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x26, 0x482d15c8937161b4 # initialize rs1
sha512sig0 x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x59c50736dc83c6d8 # initialize rs1
sha512sig0 x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x1e82bfce01b53228 # initialize rs1
sha512sig0 x5, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0x051b266945f2b0f9 # initialize rs1
sha512sig0 x6, x25 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xea4c53eb2c426bc8 # initialize rs1
sha512sig0 x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x66a598d33d1f061f # initialize rs1
sha512sig0 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x21, 0xa42d011b9d570032 # initialize rs1
sha512sig0 x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x8, 0xc9f9b49990cf536a # initialize rs1
sha512sig0 x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x27, 0x062620ce487ac17e # initialize rs1
sha512sig0 x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x18, 0x5caadb6257c07c1c # initialize rs1
sha512sig0 x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x26, 0x07c9088e1292d114 # initialize rs1
sha512sig0 x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0xb2c08350819e57ab # initialize rs1
sha512sig0 x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0x67b0ece8a302aff0 # initialize rs1
sha512sig0 x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x15, 0x45dfaa50bfd095d1 # initialize rs1
sha512sig0 x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x7, 0x73d4a1d25f3d3f2b # initialize rs1
sha512sig0 x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x12, 0xae73f4fe8206eb37 # initialize rs1
sha512sig0 x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x6, 0x909d8d8ba31e20dd # initialize rs1
sha512sig0 x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x23, 0x6ea86115e87a063f # initialize rs1
sha512sig0 x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x24, 0xbf63b6dee8996fc0 # initialize rs1
sha512sig0 x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x27, 0x6319dcd69de2c150 # initialize rs1
sha512sig0 x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x13, 0xc66e379aa9291399 # initialize rs1
sha512sig0 x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x12, 0xf6a437c9d98cbbde # initialize rs1
sha512sig0 x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0x09f191b40834a658 # initialize rs1
sha512sig0 x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x21, 0x93415567b2f175a7 # initialize rs1
sha512sig0 x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x28, 0xf28b08a048ea21f1 # initialize rs1
sha512sig0 x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x14, 0x83708aa0fc3cd043 # initialize rs1
sha512sig0 x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x10, 0x18e5e4a1c7b3753f # initialize rs1
sha512sig0 x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xde5a06fed929b07a # initialize rs1
sha512sig0 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x21, 0x258f379b39f2ea62 # initialize rs1
sha512sig0 x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0x0000000000000000 # initialize rs1
sha512sig0 x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x0000000000000001 # initialize rs1
sha512sig0 x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x0000000000000002 # initialize rs1
sha512sig0 x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x27, 0x8000000000000000 # initialize rs1
sha512sig0 x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs1
sha512sig0 x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
sha512sig0 x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x29, 0x7ffffffffffffffe # initialize rs1
sha512sig0 x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x29, 0xffffffffffffffff # initialize rs1
sha512sig0 x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x8, 0xfffffffffffffffe # initialize rs1
sha512sig0 x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
sha512sig0 x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
sha512sig0 x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x5555555555555555 # initialize rs1
sha512sig0 x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x00000000ffffffff # initialize rs1
sha512sig0 x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x27, 0x00000000fffffffe # initialize rs1
sha512sig0 x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x22, 0x0000000100000000 # initialize rs1
sha512sig0 x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x24, 0x0000000100000001 # initialize rs1
sha512sig0 x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x189d3a54a4e5096c # initialize rs1
sha512sig0 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xee44064a7d82459e # initialize rs1
sha512sig0 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xbf3cd3a58a4c84e7 # initialize rs1
sha512sig0 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x3d91aa3c0ce13200 # initialize rs1
sha512sig0 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2c559472a1be57b0 # initialize rs1
sha512sig0 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9fb35b0e392b2888 # initialize rs1
sha512sig0 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0d5283aad647cb1f # initialize rs1
sha512sig0 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4eece42a8a08c030 # initialize rs1
sha512sig0 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x0b24c6e295e0882a # initialize rs1
sha512sig0 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x214199c2521a6cc0 # initialize rs1
sha512sig0 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x6b9abd966ecaa9f6 # initialize rs1
sha512sig0 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x17a86b5df469410d # initialize rs1
sha512sig0 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x62780be91ab64e3a # initialize rs1
sha512sig0 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe16e1db2d79791b4 # initialize rs1
sha512sig0 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x5ae20848041d280e # initialize rs1
sha512sig0 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd44d5a901a1660f7 # initialize rs1
sha512sig0 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x8e6c6d31ef766c3a # initialize rs1
sha512sig0 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x3875008210c9f318 # initialize rs1
sha512sig0 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6c553150b075caab # initialize rs1
sha512sig0 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x60aa0c4a3db86f11 # initialize rs1
sha512sig0 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x1d72625ca0e86f94 # initialize rs1
sha512sig0 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf8e5c5e3d8df9c20 # initialize rs1
sha512sig0 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xee6266d76c72676b # initialize rs1
sha512sig0 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x4c7e1cee7dcdd09d # initialize rs1
sha512sig0 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x867e7302794917ab # initialize rs1
sha512sig0 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xb6633e66d9dc1fd5 # initialize rs1
sha512sig0 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xddf2dbdbb223460a # initialize rs1
sha512sig0 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb3305e53233bb5e1 # initialize rs1
sha512sig0 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x9a3423a0bee26b6b # initialize rs1
sha512sig0 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x41c519fa662b1e2c # initialize rs1
sha512sig0 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xe2272465bf4fc840 # initialize rs1
sha512sig0 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xdec62ed0ca2d5163 # initialize rs1
sha512sig0 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x31, x27 # perform first operation
sha512sig0 x3, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x24, x21 # perform first operation
sha512sig0 x13, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x3, x22 # perform first operation
sha512sig0 x10, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x28, x27 # perform first operation
sha512sig0 x28, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x30, x6 # perform first operation
sha512sig0 x6, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x16, x31 # perform first operation
sha512sig0 x24, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x1, x15 # perform first operation
sha512sig0 x12, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x20, x15 # perform first operation
sha512sig0 x27, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x18, x10 # perform first operation
sha512sig0 x12, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x25, x31 # perform first operation
sha512sig0 x25, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x14, x15 # perform first operation
sha512sig0 x15, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x19, x31 # perform first operation
sha512sig0 x23, x26 # perform second (triggering) operation

.EQU SIGSIZE,896


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
