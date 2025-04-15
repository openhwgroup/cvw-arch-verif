///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-zext.h.S
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
li x0, 0x2d6157277c3b05f2 # initialize rs1
zext.h x12, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xfede9323f4d28813 # initialize rs1
zext.h x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xfd23f73b80ad1bf2 # initialize rs1
zext.h x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xdf1797a69e69bc2f # initialize rs1
zext.h x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9403326d698ece47 # initialize rs1
zext.h x28, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9743b4d9fac6b4c3 # initialize rs1
zext.h x23, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x63e8159faf64c6e3 # initialize rs1
zext.h x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0x6e52889e433dc7d9 # initialize rs1
zext.h x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x8b8fcae7ce890638 # initialize rs1
zext.h x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xdbc369e3e857dbee # initialize rs1
zext.h x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xd19b6b16adf0cb27 # initialize rs1
zext.h x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc872548f41e379c7 # initialize rs1
zext.h x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xa98d78019e0ae9c2 # initialize rs1
zext.h x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xd91d39ba788fc110 # initialize rs1
zext.h x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x22a67a957a1f22c1 # initialize rs1
zext.h x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x9440133911e6bb3c # initialize rs1
zext.h x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xea1fead4cbcebb5d # initialize rs1
zext.h x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xb7e593bbf246b8a5 # initialize rs1
zext.h x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x288f9b077d8d59c6 # initialize rs1
zext.h x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x69f74d5be6d81230 # initialize rs1
zext.h x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x8cb16a06bc1df08a # initialize rs1
zext.h x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x11d6213734198900 # initialize rs1
zext.h x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x3baa1884c64dac8a # initialize rs1
zext.h x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x6c13141e2a0c8c64 # initialize rs1
zext.h x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x1eb6480b06c4943a # initialize rs1
zext.h x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x27b73b755e9eafa0 # initialize rs1
zext.h x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x6c288a54d951911e # initialize rs1
zext.h x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xde5a0d92f3150703 # initialize rs1
zext.h x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x6c7d63dfe7b3cf56 # initialize rs1
zext.h x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x14d230804a1f09a4 # initialize rs1
zext.h x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xcb229a6d5632bcdc # initialize rs1
zext.h x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x735487b2fb6435bb # initialize rs1
zext.h x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 248)

# Testcase cp_rd (Test destination rd = x0)
li x20, 0x808046d9c205b5a7 # initialize rs1
zext.h x0, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0xd975994da9d94fdf # initialize rs1
zext.h x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x23, 0xdc653975472c24d7 # initialize rs1
zext.h x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x8, 0x92574a597cd26fc0 # initialize rs1
zext.h x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x5, 0xb3779779904f72d0 # initialize rs1
zext.h x4, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
li x23, 0xc7b20b8bf29cc8b5 # initialize rs1
zext.h x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0x4b0b8144780fc453 # initialize rs1
zext.h x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0x101cef645b09b905 # initialize rs1
zext.h x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x24, 0xf1128af3a3b2273f # initialize rs1
zext.h x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x24, 0xa5c44acc826f5d46 # initialize rs1
zext.h x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x25, 0xcb9819f073927f0c # initialize rs1
zext.h x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x10, 0x846ad6300515701e # initialize rs1
zext.h x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x6, 0x6334a949b3b04063 # initialize rs1
zext.h x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x6, 0x1d078e12cf04f72f # initialize rs1
zext.h x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0x1656244d84c76455 # initialize rs1
zext.h x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x20, 0xcede1eb59e0d52e1 # initialize rs1
zext.h x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x29, 0xc5216acc85e0e6ca # initialize rs1
zext.h x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x15, 0xc53ef4bd77e6395b # initialize rs1
zext.h x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x8, 0xd2fb65c7df00d7ef # initialize rs1
zext.h x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x16, 0x9fd62ea9259e9769 # initialize rs1
zext.h x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x22, 0x81e32f4dcd3717d8 # initialize rs1
zext.h x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x3, 0x82508201ca1e173a # initialize rs1
zext.h x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x10, 0x235fff0038d1a544 # initialize rs1
zext.h x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x2, 0xb2f1e880a4d3256a # initialize rs1
zext.h x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x6, 0x1be6e2d4c1c1432f # initialize rs1
zext.h x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x21, 0x368fccc65bc6d39c # initialize rs1
zext.h x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x833ff55795d4a43b # initialize rs1
zext.h x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x9, 0x8670a50d90a2333b # initialize rs1
zext.h x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x7, 0x6329478d34de06a7 # initialize rs1
zext.h x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0x956e8a84bbbbd59e # initialize rs1
zext.h x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x17, 0xa3e46d8da4060ccd # initialize rs1
zext.h x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x5, 0x7b8851ebb064a970 # initialize rs1
zext.h x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x6, 0x0000000000000000 # initialize rs1
zext.h x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x27, 0x0000000000000001 # initialize rs1
zext.h x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x2, 0x0000000000000002 # initialize rs1
zext.h x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x20, 0x8000000000000000 # initialize rs1
zext.h x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x24, 0x8000000000000001 # initialize rs1
zext.h x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x2, 0x7fffffffffffffff # initialize rs1
zext.h x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x3, 0x7ffffffffffffffe # initialize rs1
zext.h x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x16, 0xffffffffffffffff # initialize rs1
zext.h x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x5, 0xfffffffffffffffe # initialize rs1
zext.h x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x25, 0x5bbc887763ae86f2 # initialize rs1
zext.h x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
zext.h x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x29, 0x5555555555555555 # initialize rs1
zext.h x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x29, 0x00000000ffffffff # initialize rs1
zext.h x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0x00000000fffffffe # initialize rs1
zext.h x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x31, 0x0000000100000000 # initialize rs1
zext.h x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x5, 0x0000000100000001 # initialize rs1
zext.h x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa814bcde0bd46cfb # initialize rs1
zext.h x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x47e72d6278968a44 # initialize rs1
zext.h x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xf527ad5ac1b43b5e # initialize rs1
zext.h x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0a6abb7a3a0268c3 # initialize rs1
zext.h x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x915f1f55011bd51b # initialize rs1
zext.h x4, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0xecfed081d0e9f3c4 # initialize rs1
zext.h x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xddeca29051e149f0 # initialize rs1
zext.h x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb942cc45d0b29284 # initialize rs1
zext.h x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8535c5969fef8407 # initialize rs1
zext.h x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x8651e6ec3ec4c97f # initialize rs1
zext.h x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xffcf523965262dc2 # initialize rs1
zext.h x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x4aaace6fdfe90b1c # initialize rs1
zext.h x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xfadc4d9f5967e15e # initialize rs1
zext.h x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x7fbd356371f29e20 # initialize rs1
zext.h x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x19ca226754f3295a # initialize rs1
zext.h x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb89187e5a182e7a0 # initialize rs1
zext.h x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xc3d449f9eb5b2ebc # initialize rs1
zext.h x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x2a0d0d1b9aef5b16 # initialize rs1
zext.h x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xa19697cdafc7653a # initialize rs1
zext.h x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x1cbafcab02b7a97e # initialize rs1
zext.h x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x4529e77d5c133dea # initialize rs1
zext.h x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x9eed3cfeb72250a3 # initialize rs1
zext.h x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x8f994c597813c4b8 # initialize rs1
zext.h x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xe790181d925d9d56 # initialize rs1
zext.h x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x8e59274f81ca1539 # initialize rs1
zext.h x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x7ccfe74e242fe247 # initialize rs1
zext.h x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x28c274e7203ae0cb # initialize rs1
zext.h x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x44ae091e7db35423 # initialize rs1
zext.h x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x5ce663b278bed823 # initialize rs1
zext.h x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xa82458b8e4166e76 # initialize rs1
zext.h x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xdec208a001e56e92 # initialize rs1
zext.h x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x35d531b721ab20a5 # initialize rs1
zext.h x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x17, x22 # perform first operation
zext.h x20, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x22, x6 # perform first operation
zext.h x8, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x11, x23 # perform first operation
zext.h x18, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x28, x27 # perform first operation
zext.h x28, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x8, x18 # perform first operation
zext.h x18, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x12, x3 # perform first operation
zext.h x3, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x29, x25 # perform first operation
zext.h x22, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x2, x19 # perform first operation
zext.h x12, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x16, x7 # perform first operation
zext.h x17, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x22, x26 # perform first operation
zext.h x22, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x31, x12 # perform first operation
zext.h x12, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x13, x6 # perform first operation
zext.h x17, x20 # perform second (triggering) operation

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
