///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-ctzw.S
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
li x0, 0xbfb882676de0f55c # initialize rs1
ctzw x12, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb40172b0ed9f002b # initialize rs1
ctzw x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xddec668239043b89 # initialize rs1
ctzw x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb14ba10f31616de6 # initialize rs1
ctzw x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe6d2c36fa50d7080 # initialize rs1
ctzw x24, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3875c5014615e4fd # initialize rs1
ctzw x10, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x14a3916361176f37 # initialize rs1
ctzw x17, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x17, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb0a3905c6906fc49 # initialize rs1
ctzw x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xb8794762732d3aaf # initialize rs1
ctzw x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x46679692c9f37930 # initialize rs1
ctzw x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xf8a300eb79ee3294 # initialize rs1
ctzw x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x0d3a835a083ba0f9 # initialize rs1
ctzw x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6d7cf25fc9940569 # initialize rs1
ctzw x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x2880629cab134d76 # initialize rs1
ctzw x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc5b461b6e1a31adf # initialize rs1
ctzw x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x082a62a6f4d301fa # initialize rs1
ctzw x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xcb14a419e7915bd3 # initialize rs1
ctzw x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xd112b8cacf507b86 # initialize rs1
ctzw x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xe9b4258ba570e3d4 # initialize rs1
ctzw x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xe70a9c5c6023e438 # initialize rs1
ctzw x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x662ba64a32cb9cab # initialize rs1
ctzw x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x6c49086aa69a9b32 # initialize rs1
ctzw x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xf2d9d39ec90f951d # initialize rs1
ctzw x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x6c3381611d8d3cbb # initialize rs1
ctzw x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x2a9229ec85f6220c # initialize rs1
ctzw x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xb7900b742bb3b1c0 # initialize rs1
ctzw x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x82f0f5d1e62a52d7 # initialize rs1
ctzw x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xb47848514c2e961d # initialize rs1
ctzw x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x2bf8cb4e308de6ea # initialize rs1
ctzw x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xd77e2b87219fe11a # initialize rs1
ctzw x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xeed2b9ac30ee0dd2 # initialize rs1
ctzw x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x09ba4bbb05023880 # initialize rs1
ctzw x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 248)

# Testcase cp_rd (Test destination rd = x0)
li x26, 0x24d01aea6f0bfac4 # initialize rs1
ctzw x0, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x19, 0xb80e4acb57a82702 # initialize rs1
ctzw x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x24, 0xb00f4101966537f2 # initialize rs1
ctzw x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x23, 0x07da921ddc0b9f25 # initialize rs1
ctzw x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x172d3edd2672da70 # initialize rs1
ctzw x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0xede939da7c3d971d # initialize rs1
ctzw x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0xfc2a8e11e4b8d599 # initialize rs1
ctzw x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
li x29, 0x736a9321574c1f00 # initialize rs1
ctzw x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x18, 0x2e0582f06c714884 # initialize rs1
ctzw x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x17, 0x4bb749b812225ce1 # initialize rs1
ctzw x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x31, 0x5cc4e465947e6db6 # initialize rs1
ctzw x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0xb7f565f62420babb # initialize rs1
ctzw x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0xe8740270771997eb # initialize rs1
ctzw x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x3, 0xa626200eaa916149 # initialize rs1
ctzw x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x29, 0x08ea62e0e0d8283a # initialize rs1
ctzw x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x5, 0x0a68e27f91850c88 # initialize rs1
ctzw x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0xcfe23c218036ddae # initialize rs1
ctzw x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x15, 0xa0dc618abde54843 # initialize rs1
ctzw x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x20, 0x1f3dda5ab6948fcf # initialize rs1
ctzw x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x11, 0x4ba7a3aff53492b6 # initialize rs1
ctzw x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0x3e620b3237693e4a # initialize rs1
ctzw x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x53ee87dcb911b696 # initialize rs1
ctzw x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x13, 0x76451d8894e51a37 # initialize rs1
ctzw x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x12, 0x8d5eb902e712f6d8 # initialize rs1
ctzw x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x16, 0xa2504c3afe1850e2 # initialize rs1
ctzw x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x30, 0x826b514f04680223 # initialize rs1
ctzw x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x7, 0xfe8a8a93942f8448 # initialize rs1
ctzw x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x26, 0xdb0b8fd39be94a3a # initialize rs1
ctzw x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x8, 0x713d2977e476566b # initialize rs1
ctzw x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x30, 0x5b79aec5e0a548f7 # initialize rs1
ctzw x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0x4a87116f3a4fbdd7 # initialize rs1
ctzw x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x17, 0xe179dffd86b1fa53 # initialize rs1
ctzw x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x0000000000000000 # initialize rs1
ctzw x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x7, 0x0000000000000001 # initialize rs1
ctzw x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x6, 0x0000000000000002 # initialize rs1
ctzw x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x2, 0x8000000000000000 # initialize rs1
ctzw x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x26, 0x8000000000000001 # initialize rs1
ctzw x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
ctzw x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
ctzw x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x22, 0xffffffffffffffff # initialize rs1
ctzw x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
ctzw x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x16, 0x5bbc887763ae86f2 # initialize rs1
ctzw x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
ctzw x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x20, 0x5555555555555555 # initialize rs1
ctzw x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x16, 0x00000000ffffffff # initialize rs1
ctzw x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0x00000000fffffffe # initialize rs1
ctzw x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x26, 0x0000000100000000 # initialize rs1
ctzw x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x7, 0x0000000100000001 # initialize rs1
ctzw x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa2e308188790c024 # initialize rs1
ctzw x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb6afa06c4d30fe7c # initialize rs1
ctzw x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7c712a38819e4a72 # initialize rs1
ctzw x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x2f1274c6a45d927c # initialize rs1
ctzw x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x76c6ff9a205bbdbf # initialize rs1
ctzw x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x69bfb4224d2d6a5b # initialize rs1
ctzw x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1fe7cc9de38f29af # initialize rs1
ctzw x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4458ba9392751e73 # initialize rs1
ctzw x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd78249047bf56221 # initialize rs1
ctzw x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x12c7359775373017 # initialize rs1
ctzw x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xca858806efe1c024 # initialize rs1
ctzw x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x9d84ba361c16a8ef # initialize rs1
ctzw x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x1d159638e9615a14 # initialize rs1
ctzw x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x4b07aa8b15325c43 # initialize rs1
ctzw x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x1705e498b00a4d7a # initialize rs1
ctzw x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x4249d2256f22e8b9 # initialize rs1
ctzw x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x3592333c791c0757 # initialize rs1
ctzw x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x12da7a289d16e476 # initialize rs1
ctzw x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x5549da809ee10f1b # initialize rs1
ctzw x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xc5e447df0c25703b # initialize rs1
ctzw x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x1f1bcae3643eb927 # initialize rs1
ctzw x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x5d7da732fe46249d # initialize rs1
ctzw x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x57c81c44e3314d26 # initialize rs1
ctzw x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x3bba914236e26e0c # initialize rs1
ctzw x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x7023c06ab7455213 # initialize rs1
ctzw x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xaf876978f2bf456d # initialize rs1
ctzw x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xcd3f6b418020b705 # initialize rs1
ctzw x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xe860bd64005465fd # initialize rs1
ctzw x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x061fa38c350be2e9 # initialize rs1
ctzw x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xbcaf9c6c4476c1ef # initialize rs1
ctzw x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x036c3d6ab9d3505d # initialize rs1
ctzw x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xde66a6fc177fd975 # initialize rs1
ctzw x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x19, x15 # perform first operation
ctzw x21, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x9, x18 # perform first operation
ctzw x15, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x5, x11 # perform first operation
ctzw x21, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x13, x8 # perform first operation
ctzw x20, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x1, x21 # perform first operation
ctzw x13, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x20, x25 # perform first operation
ctzw x21, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x30, x31 # perform first operation
ctzw x27, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x18, x30 # perform first operation
ctzw x12, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x30, x23 # perform first operation
ctzw x7, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x30, x29 # perform first operation
ctzw x30, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x24, x2 # perform first operation
ctzw x2, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x9, x22 # perform first operation
ctzw x11, x24 # perform second (triggering) operation

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
