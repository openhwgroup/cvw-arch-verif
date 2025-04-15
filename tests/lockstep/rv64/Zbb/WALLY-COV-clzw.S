///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-clzw.S
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
li x0, 0xe5bdd3a9989950e1 # initialize rs1
clzw x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x78beb7e26dbbcf38 # initialize rs1
clzw x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x93d1f6456aca6615 # initialize rs1
clzw x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x3f51604551817868 # initialize rs1
clzw x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xbebf8b80d1cb4a61 # initialize rs1
clzw x30, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb028a9c2c6898ff2 # initialize rs1
clzw x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xdabd25ae94566f5e # initialize rs1
clzw x13, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4aa8fd32deba1115 # initialize rs1
clzw x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x6200f659add67514 # initialize rs1
clzw x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x6d59273a76c33000 # initialize rs1
clzw x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x56b90fbd5a9134e4 # initialize rs1
clzw x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x26b9b35384bd8b75 # initialize rs1
clzw x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x82db6501c4a681e8 # initialize rs1
clzw x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x97b98139b327130a # initialize rs1
clzw x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xb657fd79ed869421 # initialize rs1
clzw x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1aef64b39c4421c7 # initialize rs1
clzw x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x40560c5e02df6316 # initialize rs1
clzw x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xf824209c31921715 # initialize rs1
clzw x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xc7109c77d11663ac # initialize rs1
clzw x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xae6ea48fd5ed4bf8 # initialize rs1
clzw x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xcf2d9e093d5fbd84 # initialize rs1
clzw x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xc2561383117e6105 # initialize rs1
clzw x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x17988f7574dd50fa # initialize rs1
clzw x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb51993037bb739aa # initialize rs1
clzw x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xc83ead7a071534ff # initialize rs1
clzw x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x20f6e65ccd1f824d # initialize rs1
clzw x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x8178d528e27e9d19 # initialize rs1
clzw x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x3d9d733994219523 # initialize rs1
clzw x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x787f219f620e06c8 # initialize rs1
clzw x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x6e3d0f6517b5025b # initialize rs1
clzw x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xb3ec962d114f9bbe # initialize rs1
clzw x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xc025facb8945b2fb # initialize rs1
clzw x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 248)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0x451d8bd8ebfcd466 # initialize rs1
clzw x0, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x5, 0x533a983c96662e94 # initialize rs1
clzw x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0x539b390ef68e7b26 # initialize rs1
clzw x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0xc02f7249266b7700 # initialize rs1
clzw x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x2eab957761ce6afa # initialize rs1
clzw x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0xe3e7efc2ec602bb8 # initialize rs1
clzw x5, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x4dae66feea9eef7b # initialize rs1
clzw x6, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x643eee89c955b51d # initialize rs1
clzw x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x22, 0x4d36d10e1142d0d4 # initialize rs1
clzw x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x17, 0x092881945f88b482 # initialize rs1
clzw x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x16, 0x0f44ff5f92dfd496 # initialize rs1
clzw x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x2, 0x4a7dfce4fee1de7d # initialize rs1
clzw x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x6, 0x915effd475ccb4bb # initialize rs1
clzw x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x28, 0xdc9a56141d2c5f45 # initialize rs1
clzw x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x1, 0xcd8fd417e17466b3 # initialize rs1
clzw x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x18, 0x23e771744eca5530 # initialize rs1
clzw x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x6, 0x45bb0c1e0d245778 # initialize rs1
clzw x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x20, 0x12aacf74525c6a3c # initialize rs1
clzw x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x11, 0xd6442fa9b9f302ca # initialize rs1
clzw x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x22, 0x96bda632b1a7ab6f # initialize rs1
clzw x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x24, 0x6608211dbf7be474 # initialize rs1
clzw x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x16, 0x7f7d1763bac7566a # initialize rs1
clzw x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x5, 0xcedef668915cbdee # initialize rs1
clzw x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x1, 0x68a5f43bfe632823 # initialize rs1
clzw x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xc5b018c4ec93d82e # initialize rs1
clzw x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x9, 0x754ccd465020c3cd # initialize rs1
clzw x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x27, 0x7cff3c51f3b2997d # initialize rs1
clzw x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x2, 0x3829cae6f8a6b364 # initialize rs1
clzw x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x15, 0xc094472779b67cb7 # initialize rs1
clzw x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x22, 0xfea8ff2c735fb478 # initialize rs1
clzw x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x24, 0x473e72a0e5d41e91 # initialize rs1
clzw x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x27, 0x08ca525ffca0a903 # initialize rs1
clzw x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x25, 0x0000000000000000 # initialize rs1
clzw x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x10, 0x0000000000000001 # initialize rs1
clzw x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x25, 0x0000000000000002 # initialize rs1
clzw x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x22, 0x8000000000000000 # initialize rs1
clzw x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x16, 0x8000000000000001 # initialize rs1
clzw x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs1
clzw x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
clzw x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x25, 0xffffffffffffffff # initialize rs1
clzw x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
clzw x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x10, 0x5bbc887763ae86f2 # initialize rs1
clzw x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
clzw x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x29, 0x5555555555555555 # initialize rs1
clzw x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x5, 0x00000000ffffffff # initialize rs1
clzw x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0x00000000fffffffe # initialize rs1
clzw x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x18, 0x0000000100000000 # initialize rs1
clzw x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x10, 0x0000000100000001 # initialize rs1
clzw x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xca434861d6066d2a # initialize rs1
clzw x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x86f1e310430bc250 # initialize rs1
clzw x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x2fc745756be02ef5 # initialize rs1
clzw x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xbf60bcad02939c16 # initialize rs1
clzw x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1ecd70d2a4fc4887 # initialize rs1
clzw x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa2b6dad693ddbd5a # initialize rs1
clzw x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf9bbe86e96ceb67a # initialize rs1
clzw x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3c4fc2b878fd974c # initialize rs1
clzw x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x637ea2ad5d0a10b7 # initialize rs1
clzw x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x232cb5845713c665 # initialize rs1
clzw x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x0be52a447ace87e8 # initialize rs1
clzw x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x7f3fde88a56ea356 # initialize rs1
clzw x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x0815539151ee9cce # initialize rs1
clzw x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xb31bc4781a578cde # initialize rs1
clzw x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x9968ec41a1cdf840 # initialize rs1
clzw x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x58e7098b836242ba # initialize rs1
clzw x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xaae83b0190a6ae2d # initialize rs1
clzw x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x8d6577a2b4179483 # initialize rs1
clzw x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x570d8ff0f087f58e # initialize rs1
clzw x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xcc1c9931fe8cc643 # initialize rs1
clzw x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x5bbaacda1a92c7fd # initialize rs1
clzw x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x268f3d8b59af6b1d # initialize rs1
clzw x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x1f3c956f8c2658bc # initialize rs1
clzw x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x139629fe65c0214b # initialize rs1
clzw x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc3edf9cd726a8d47 # initialize rs1
clzw x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x9ecc37f0bd32d9b2 # initialize rs1
clzw x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x4d46d6efd90987d1 # initialize rs1
clzw x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xba398f87af1caea0 # initialize rs1
clzw x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x7688b36b621033f2 # initialize rs1
clzw x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x29d998233910adfc # initialize rs1
clzw x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x5a2b49ba974c9179 # initialize rs1
clzw x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xff1ec25ac2389926 # initialize rs1
clzw x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x9, x26 # perform first operation
clzw x13, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x13, x11 # perform first operation
clzw x19, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x25, x11 # perform first operation
clzw x26, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x15, x5 # perform first operation
clzw x23, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x14, x13 # perform first operation
clzw x14, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x16, x22 # perform first operation
clzw x16, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x1, x10 # perform first operation
clzw x13, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x8, x26 # perform first operation
clzw x16, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x19, x28 # perform first operation
clzw x6, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x27, x26 # perform first operation
clzw x27, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x25, x14 # perform first operation
clzw x14, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x26, x23 # perform first operation
clzw x1, x6 # perform second (triggering) operation

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
