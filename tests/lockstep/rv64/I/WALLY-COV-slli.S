///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-slli.S
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
li x0, 0xf13a5d149023a4bb # initialize rs1
slli x14, x0, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xff1c20826c4bdac7 # initialize rs1
slli x31, x1, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x67e43f6a914ded87 # initialize rs1
slli x6, x2, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb2a7ce35a0e9d4fb # initialize rs1
slli x29, x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4e1cdd1e8baf74a8 # initialize rs1
slli x8, x4, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdb822e80368a0e70 # initialize rs1
slli x13, x5, 6 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x40a982b15994780c # initialize rs1
slli x9, x6, 16 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb278b556e0659dec # initialize rs1
slli x10, x7, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x93be91f04f89e52c # initialize rs1
slli x13, x8, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x6e7440df280755c9 # initialize rs1
slli x17, x9, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x240bca27be36c4a9 # initialize rs1
slli x28, x10, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xd50bf4fa4313c028 # initialize rs1
slli x9, x11, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x7ac60d06823b27dc # initialize rs1
slli x19, x12, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa8de93f4df44d8c9 # initialize rs1
slli x25, x13, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x3d641141d6294065 # initialize rs1
slli x1, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xbbe328384af70017 # initialize rs1
slli x25, x15, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xf226f6c48facd6a4 # initialize rs1
slli x30, x16, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xf694d1adf6284619 # initialize rs1
slli x7, x17, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x036dc63a5eb32d8a # initialize rs1
slli x27, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x793ba1046389db85 # initialize rs1
slli x6, x19, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x7b8afad6747f9a6c # initialize rs1
slli x11, x20, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x08b861897677ef71 # initialize rs1
slli x19, x21, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x730cb58b8853c509 # initialize rs1
slli x2, x22, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x4636c0107dd4d99c # initialize rs1
slli x30, x23, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xbf2181afc5b458c4 # initialize rs1
slli x15, x24, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xa8c998d1986ae52f # initialize rs1
slli x9, x25, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x0f28a723a94277a7 # initialize rs1
slli x29, x26, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x8f8c67fa07e85404 # initialize rs1
slli x25, x27, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xcc27a01bc515b9f2 # initialize rs1
slli x7, x28, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xd9ad33bf3e2dd0d7 # initialize rs1
slli x7, x29, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x97bbffd747694273 # initialize rs1
slli x18, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x67526cac1e167a1c # initialize rs1
slli x6, x31, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0x178f02374f421b4a # initialize rs1
slli x0, x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x28, 0x9dca073461c99d50 # initialize rs1
slli x1, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x24, 0x40dbb7f1fe211206 # initialize rs1
slli x2, x24, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x7, 0x1eb96b2a0aa126bc # initialize rs1
slli x3, x7, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0x5102b64b57c8d21b # initialize rs1
slli x4, x3, 37 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x8, 0xf1c556f3d94d66f3 # initialize rs1
slli x5, x8, 10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0x8b19460afba5d655 # initialize rs1
slli x6, x26, 44 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x27, 0xe661298be0d45d91 # initialize rs1
slli x7, x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x17, 0xa352c835f57fde5c # initialize rs1
slli x8, x17, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0xf3ef8397e452e1dd # initialize rs1
slli x9, x10, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x16, 0xc00dc8018ea86e5b # initialize rs1
slli x10, x16, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x18, 0x906aa68af6dd9c51 # initialize rs1
slli x11, x18, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x14, 0x52cf44a92edd69d2 # initialize rs1
slli x12, x14, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x30, 0xdd8447c3a8a1a262 # initialize rs1
slli x13, x30, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0x3bfe830ec9c05e53 # initialize rs1
slli x14, x10, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x7, 0x81f89c8b5a540c32 # initialize rs1
slli x15, x7, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x22, 0x625e9cf787e2ce60 # initialize rs1
slli x16, x22, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x13, 0x8050b78b9a8ab1b2 # initialize rs1
slli x17, x13, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x30, 0x077d35a5f90b9420 # initialize rs1
slli x18, x30, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x6, 0x91a785da90772429 # initialize rs1
slli x19, x6, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x15, 0xd9679db1ad5655c1 # initialize rs1
slli x20, x15, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x9, 0xc465e507e305b00f # initialize rs1
slli x21, x9, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x7, 0x7e6422748ddc6549 # initialize rs1
slli x22, x7, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x2, 0xbcf2ef3f7f630bdf # initialize rs1
slli x23, x2, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xa4bfe68d23b338e1 # initialize rs1
slli x24, x24, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x7, 0x81c60fd3a5ab7676 # initialize rs1
slli x25, x7, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x31, 0xc40ba6c55f898dca # initialize rs1
slli x26, x31, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x16, 0x2db90cf23de89de0 # initialize rs1
slli x27, x16, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x31, 0xd74d4b6cc92e0572 # initialize rs1
slli x28, x31, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x26, 0xa0cabe4edfb1db34 # initialize rs1
slli x29, x26, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x11, 0xcb9cd81fe191234f # initialize rs1
slli x30, x11, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0xc3f5bdbfacf634e1 # initialize rs1
slli x31, x13, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x19, 0x0000000000000000 # initialize rs1
slli x9, x19, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x3, 0x0000000000000001 # initialize rs1
slli x11, x3, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x7, 0x0000000000000002 # initialize rs1
slli x23, x7, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x23, 0x8000000000000000 # initialize rs1
slli x21, x23, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x17, 0x8000000000000001 # initialize rs1
slli x2, x17, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
slli x26, x27, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
slli x16, x27, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x22, 0xffffffffffffffff # initialize rs1
slli x27, x22, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x24, 0xfffffffffffffffe # initialize rs1
slli x3, x24, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x2, 0x5bbc887763ae86f2 # initialize rs1
slli x21, x2, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
slli x31, x12, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x28, 0x5555555555555555 # initialize rs1
slli x20, x28, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0x00000000ffffffff # initialize rs1
slli x26, x8, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x26, 0x00000000fffffffe # initialize rs1
slli x29, x26, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x27, 0x0000000100000000 # initialize rs1
slli x1, x27, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x12, 0x0000000100000001 # initialize rs1
slli x20, x12, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x5c00ca18829588b4 # initialize rs1
slli x0, x0, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xe5012c567722478b # initialize rs1
slli x1, x1, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x80008a1a053a4f36 # initialize rs1
slli x2, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xec141f5bfe6bb0b4 # initialize rs1
slli x3, x3, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x22ada0ff9310269c # initialize rs1
slli x4, x4, 33 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xe6d8016080fd2c11 # initialize rs1
slli x5, x5, 18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x205b13a2253d2f43 # initialize rs1
slli x6, x6, 16 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x73b6f7f56ba2e72d # initialize rs1
slli x7, x7, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x1509db2c81fb5d7c # initialize rs1
slli x8, x8, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x42aa5f95791fa9ac # initialize rs1
slli x9, x9, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x2f919f6657d787d0 # initialize rs1
slli x10, x10, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x1246bb5cedcb52e8 # initialize rs1
slli x11, x11, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x5401dd99d1172ae4 # initialize rs1
slli x12, x12, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xb04b804d9ec226c2 # initialize rs1
slli x13, x13, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xb5edd1fbaf8b368a # initialize rs1
slli x14, x14, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xed98d89f204b0375 # initialize rs1
slli x15, x15, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x994802d61e2fec08 # initialize rs1
slli x16, x16, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x3e50488194351950 # initialize rs1
slli x17, x17, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xfc28ca6c19ef5f9b # initialize rs1
slli x18, x18, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x6f817ff8c378d575 # initialize rs1
slli x19, x19, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x6d1637d3a9e107fa # initialize rs1
slli x20, x20, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x2b1eb951c31f3551 # initialize rs1
slli x21, x21, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x06b46405b9c104d6 # initialize rs1
slli x22, x22, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x6fd6a6442c6e0097 # initialize rs1
slli x23, x23, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x26d503138b8406c9 # initialize rs1
slli x24, x24, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x3a07c36324f1e70f # initialize rs1
slli x25, x25, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xd393a00e23b68f25 # initialize rs1
slli x26, x26, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xf1a178ce593e4955 # initialize rs1
slli x27, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x119cd6f2a5088472 # initialize rs1
slli x28, x28, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x8b13a201ec636f56 # initialize rs1
slli x29, x29, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x7e8ee8217cd5db0a # initialize rs1
slli x30, x30, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xf5209ee2a8ff7fd4 # initialize rs1
slli x31, x31, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm (Test bit = 0)
li x20, 0x0e0df9aac25747f7 # initialize rs1
slli x2, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cp_uimm (Test bit = 1)
li x5, 0x8369447ea8c96a02 # initialize rs1
slli x14, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 904)

# Testcase cp_uimm (Test bit = 2)
li x24, 0x15f09d17bd01beca # initialize rs1
slli x10, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 912)

# Testcase cp_uimm (Test bit = 3)
li x25, 0xf267492a3d530580 # initialize rs1
slli x26, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 920)

# Testcase cp_uimm (Test bit = 4)
li x2, 0x53e6958998ffd9d7 # initialize rs1
slli x9, x2, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cp_uimm (Test bit = 5)
li x24, 0xe294ed199e7e2404 # initialize rs1
slli x28, x24, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 936)

# Testcase cp_uimm (Test bit = 6)
li x16, 0x1659423d795ab8e4 # initialize rs1
slli x22, x16, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 944)

# Testcase cp_uimm (Test bit = 7)
li x11, 0x06ce8777b7dc2f17 # initialize rs1
slli x8, x11, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cp_uimm (Test bit = 8)
li x16, 0x5cdc78fb63ce311f # initialize rs1
slli x7, x16, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 960)

# Testcase cp_uimm (Test bit = 9)
li x12, 0x84404148b4ed98c5 # initialize rs1
slli x13, x12, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 968)

# Testcase cp_uimm (Test bit = 10)
li x25, 0xb2e214226f3f9dd4 # initialize rs1
slli x26, x25, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 976)

# Testcase cp_uimm (Test bit = 11)
li x12, 0x6ae9ecb65c58cf6f # initialize rs1
slli x28, x12, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 984)

# Testcase cp_uimm (Test bit = 12)
li x27, 0xdf6bb91a3754c796 # initialize rs1
slli x20, x27, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 992)

# Testcase cp_uimm (Test bit = 13)
li x10, 0xa115182c3b5a4426 # initialize rs1
slli x16, x10, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1000)

# Testcase cp_uimm (Test bit = 14)
li x7, 0xd2efddfd769378a5 # initialize rs1
slli x16, x7, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1008)

# Testcase cp_uimm (Test bit = 15)
li x10, 0xbdd276a8eb49f031 # initialize rs1
slli x16, x10, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1016)

# Testcase cp_uimm (Test bit = 16)
li x6, 0x0713492125a17cae # initialize rs1
slli x5, x6, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1024)

# Testcase cp_uimm (Test bit = 17)
li x20, 0x8e88665e0daff7bf # initialize rs1
slli x5, x20, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1032)

# Testcase cp_uimm (Test bit = 18)
li x8, 0x85e92365b4fda442 # initialize rs1
slli x16, x8, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1040)

# Testcase cp_uimm (Test bit = 19)
li x18, 0xa60f41815d07956e # initialize rs1
slli x8, x18, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1048)

# Testcase cp_uimm (Test bit = 20)
li x2, 0xc35cbd5dac4c53de # initialize rs1
slli x6, x2, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1056)

# Testcase cp_uimm (Test bit = 21)
li x12, 0x26d00644ff0af99a # initialize rs1
slli x25, x12, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1064)

# Testcase cp_uimm (Test bit = 22)
li x5, 0x2f25f5fd6bd1d5a2 # initialize rs1
slli x16, x5, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1072)

# Testcase cp_uimm (Test bit = 23)
li x12, 0xf352723596ea3f19 # initialize rs1
slli x26, x12, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1080)

# Testcase cp_uimm (Test bit = 24)
li x28, 0x34209ffde4542ea6 # initialize rs1
slli x30, x28, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1088)

# Testcase cp_uimm (Test bit = 25)
li x3, 0x4b60a262b5933ec8 # initialize rs1
slli x20, x3, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1096)

# Testcase cp_uimm (Test bit = 26)
li x10, 0xc760219c7d0087ca # initialize rs1
slli x26, x10, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1104)

# Testcase cp_uimm (Test bit = 27)
li x14, 0x27b02d9d65c43723 # initialize rs1
slli x29, x14, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1112)

# Testcase cp_uimm (Test bit = 28)
li x7, 0x7c9c18d0e6bcd50b # initialize rs1
slli x25, x7, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1120)

# Testcase cp_uimm (Test bit = 29)
li x13, 0x16525a901e125aa0 # initialize rs1
slli x20, x13, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1128)

# Testcase cp_uimm (Test bit = 30)
li x15, 0x5dfc9edba60e448b # initialize rs1
slli x23, x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1136)

# Testcase cp_uimm (Test bit = 31)
li x3, 0x205f9ba4986340bd # initialize rs1
slli x14, x3, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1144)

# Testcase cp_uimm (Test bit = 32)
li x15, 0x938444380d69f1be # initialize rs1
slli x16, x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1152)

# Testcase cp_uimm (Test bit = 33)
li x26, 0xfcb488fd28c1e851 # initialize rs1
slli x24, x26, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1160)

# Testcase cp_uimm (Test bit = 34)
li x3, 0x3d0808db3961bbe2 # initialize rs1
slli x9, x3, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1168)

# Testcase cp_uimm (Test bit = 35)
li x30, 0x75646950b3d82044 # initialize rs1
slli x23, x30, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1176)

# Testcase cp_uimm (Test bit = 36)
li x16, 0x9943208690bee5a8 # initialize rs1
slli x22, x16, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1184)

# Testcase cp_uimm (Test bit = 37)
li x24, 0xe05ad07ce65a0fb4 # initialize rs1
slli x13, x24, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1192)

# Testcase cp_uimm (Test bit = 38)
li x6, 0xbba49b7c799ecea3 # initialize rs1
slli x17, x6, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1200)

# Testcase cp_uimm (Test bit = 39)
li x28, 0xd7f9732cb89b9f8a # initialize rs1
slli x10, x28, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1208)

# Testcase cp_uimm (Test bit = 40)
li x15, 0x9559f4064706a79c # initialize rs1
slli x24, x15, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1216)

# Testcase cp_uimm (Test bit = 41)
li x1, 0xad29c4757b075990 # initialize rs1
slli x13, x1, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1224)

# Testcase cp_uimm (Test bit = 42)
li x3, 0xdf84368b59d641f7 # initialize rs1
slli x12, x3, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cp_uimm (Test bit = 43)
li x17, 0x15137450c8da536f # initialize rs1
slli x3, x17, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1240)

# Testcase cp_uimm (Test bit = 44)
li x6, 0xf878025bc48cf214 # initialize rs1
slli x5, x6, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1248)

# Testcase cp_uimm (Test bit = 45)
li x12, 0x8af9389eec6ff01f # initialize rs1
slli x2, x12, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1256)

# Testcase cp_uimm (Test bit = 46)
li x13, 0xf178cc978538f64f # initialize rs1
slli x23, x13, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1264)

# Testcase cp_uimm (Test bit = 47)
li x7, 0x4cafeb808ccad9ef # initialize rs1
slli x31, x7, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1272)

# Testcase cp_uimm (Test bit = 48)
li x29, 0x6f60990077b6bbcf # initialize rs1
slli x23, x29, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1280)

# Testcase cp_uimm (Test bit = 49)
li x10, 0xb3daf23e098bb7ed # initialize rs1
slli x30, x10, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1288)

# Testcase cp_uimm (Test bit = 50)
li x31, 0xc35acf3e4864f257 # initialize rs1
slli x1, x31, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1296)

# Testcase cp_uimm (Test bit = 51)
li x27, 0xd3b99666d8a64e58 # initialize rs1
slli x12, x27, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1304)

# Testcase cp_uimm (Test bit = 52)
li x8, 0x0594ac4721bb80de # initialize rs1
slli x17, x8, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1312)

# Testcase cp_uimm (Test bit = 53)
li x15, 0x2021338f79fbeb6d # initialize rs1
slli x31, x15, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1320)

# Testcase cp_uimm (Test bit = 54)
li x27, 0x2501d8184d2d24ca # initialize rs1
slli x3, x27, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1328)

# Testcase cp_uimm (Test bit = 55)
li x16, 0xf6c4a754741d92c7 # initialize rs1
slli x20, x16, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1336)

# Testcase cp_uimm (Test bit = 56)
li x8, 0x1d473717ef917850 # initialize rs1
slli x3, x8, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1344)

# Testcase cp_uimm (Test bit = 57)
li x12, 0x10b7a3fde58abfb3 # initialize rs1
slli x17, x12, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1352)

# Testcase cp_uimm (Test bit = 58)
li x31, 0x10448b933a3af43e # initialize rs1
slli x3, x31, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1360)

# Testcase cp_uimm (Test bit = 59)
li x13, 0x7b11077690745c85 # initialize rs1
slli x23, x13, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1368)

# Testcase cp_uimm (Test bit = 60)
li x11, 0x48edee810cdd386a # initialize rs1
slli x18, x11, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1376)

# Testcase cp_uimm (Test bit = 61)
li x15, 0x88933eb9a47f9eaf # initialize rs1
slli x7, x15, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1384)

# Testcase cp_uimm (Test bit = 62)
li x15, 0x2ec47805608c2217 # initialize rs1
slli x8, x15, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1392)

# Testcase cp_uimm (Test bit = 63)
li x22, 0xf56fc86bf0bc5ec8 # initialize rs1
slli x8, x22, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1400)

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x22, x19 # perform first operation
slli x23, x7, 55 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x14, x7 # perform first operation
slli x21, x22, 51 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x16, x28 # perform first operation
slli x17, x2, 17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x13, x31 # perform first operation
slli x31, x12, 23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x26, x15 # perform first operation
slli x22, x23, 26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x6, x2 # perform first operation
slli x2, x9, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x26, x8 # perform first operation
slli x21, x29, 47 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x13, x6 # perform first operation
slli x22, x29, 21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x24, x8 # perform first operation
slli x22, x6, 15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x26, x22, x31 # perform first operation
slli x22, x19, 35 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x28, x2 # perform first operation
slli x2, x26, 46 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x17, x9 # perform first operation
slli x31, x22, 23 # perform second (triggering) operation

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
