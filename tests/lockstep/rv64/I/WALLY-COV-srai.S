///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-srai.S
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
li x0, 0xc979e6d57f243803 # initialize rs1
srai x10, x0, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x5b3bdbf710f85eeb # initialize rs1
srai x9, x1, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x3bb9b6f4653888bd # initialize rs1
srai x6, x2, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x76330535cb42479d # initialize rs1
srai x29, x3, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdb84d4cf56d86a2f # initialize rs1
srai x2, x4, 38 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2ffef9c7fca9864a # initialize rs1
srai x6, x5, 30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0x0b18846158a60d98 # initialize rs1
srai x12, x6, 61 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf2c78364e3b4c8de # initialize rs1
srai x14, x7, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xcc22bb1bc750bb91 # initialize rs1
srai x30, x8, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x51667714a926d535 # initialize rs1
srai x16, x9, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x09e774809261f739 # initialize rs1
srai x19, x10, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x421927cc3c6a44b9 # initialize rs1
srai x29, x11, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x45584fc49492e772 # initialize rs1
srai x16, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x7449d0c069f67e52 # initialize rs1
srai x7, x13, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x6e8228e192018252 # initialize rs1
srai x21, x14, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xca5542049e152225 # initialize rs1
srai x25, x15, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xe827f0da96e3ac19 # initialize rs1
srai x29, x16, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x6bb965167dbf6a8f # initialize rs1
srai x9, x17, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x05aeb88a98ce6704 # initialize rs1
srai x14, x18, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xa47dbc51a830c03d # initialize rs1
srai x20, x19, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xbe0b7f578d6bc69b # initialize rs1
srai x3, x20, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x7cb1131e1e5e77a9 # initialize rs1
srai x8, x21, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x2ab791863b1797bd # initialize rs1
srai x16, x22, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x5103ae4b7c6c0582 # initialize rs1
srai x5, x23, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x8c63126379254304 # initialize rs1
srai x26, x24, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x6e5d76987c74c1bf # initialize rs1
srai x22, x25, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x7a1804f5ec717a0c # initialize rs1
srai x16, x26, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xe559f3485f559207 # initialize rs1
srai x14, x27, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x1008c84f918eda0e # initialize rs1
srai x26, x28, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x5ce1e962551cc313 # initialize rs1
srai x17, x29, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xaeba544ac8560432 # initialize rs1
srai x1, x30, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x8bd34ed4f5a198bf # initialize rs1
srai x7, x31, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 248)

# Testcase cp_rd (Test destination rd = x0)
li x23, 0xdf89b99cc277c745 # initialize rs1
srai x0, x23, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x24, 0x6a672a44ebbd2ee1 # initialize rs1
srai x1, x24, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0x7a1065c56c4238ed # initialize rs1
srai x2, x13, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x13, 0x1065a37bd62f3431 # initialize rs1
srai x3, x13, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x19, 0xdce292b66aeb3594 # initialize rs1
srai x4, x19, 49 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0xb4d2792826f59bb7 # initialize rs1
srai x5, x14, 23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x3e513e6ce641603c # initialize rs1
srai x6, x27, 20 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0x2b82b9e75ae9c946 # initialize rs1
srai x7, x10, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x17, 0x54b5a8f037a02a47 # initialize rs1
srai x8, x17, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x30, 0x982832d07853f63d # initialize rs1
srai x9, x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x26, 0xde83817ca85bdb44 # initialize rs1
srai x10, x26, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x9, 0x5e6d43d4608d11a3 # initialize rs1
srai x11, x9, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0x450789b977c55ce8 # initialize rs1
srai x12, x3, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0xc49ef785e38c2dc9 # initialize rs1
srai x13, x18, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x25, 0xe56cc64f8f5b5f04 # initialize rs1
srai x14, x25, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x22, 0xf5a45aede0c08dd7 # initialize rs1
srai x15, x22, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x26, 0xe69005c53e63593f # initialize rs1
srai x16, x26, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x26, 0xc0d35d437ded4527 # initialize rs1
srai x17, x26, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x26, 0xcb7b3e8086c778bf # initialize rs1
srai x18, x26, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x17, 0xfbfae6792948e87f # initialize rs1
srai x19, x17, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x1, 0x680318cd8745c6ac # initialize rs1
srai x20, x1, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x9, 0xa8226607a4557209 # initialize rs1
srai x21, x9, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x15, 0x0731515c27903f4c # initialize rs1
srai x22, x15, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0x96c90aa71652c9b4 # initialize rs1
srai x23, x28, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0xd0e7093bd8a4a14d # initialize rs1
srai x24, x14, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x24, 0x4039ac32c7df57d8 # initialize rs1
srai x25, x24, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x3, 0x88b7d4b2cf4f9634 # initialize rs1
srai x26, x3, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x29, 0x6717b1b2bffb8463 # initialize rs1
srai x27, x29, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x10, 0x29d5164a7e752446 # initialize rs1
srai x28, x10, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x76138c784c772aca # initialize rs1
srai x29, x29, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x1, 0xaf9c4f57a83af37f # initialize rs1
srai x30, x1, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0xf21ceb7fecbd178c # initialize rs1
srai x31, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x0000000000000000 # initialize rs1
srai x26, x30, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x0000000000000001 # initialize rs1
srai x3, x13, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x28, 0x0000000000000002 # initialize rs1
srai x13, x28, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x13, 0x8000000000000000 # initialize rs1
srai x3, x13, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x13, 0x8000000000000001 # initialize rs1
srai x21, x13, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
srai x11, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x11, 0x7ffffffffffffffe # initialize rs1
srai x18, x11, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x17, 0xffffffffffffffff # initialize rs1
srai x29, x17, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
srai x16, x11, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x21, 0x5bbc887763ae86f2 # initialize rs1
srai x22, x21, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
srai x8, x28, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x9, 0x5555555555555555 # initialize rs1
srai x24, x9, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x2, 0x00000000ffffffff # initialize rs1
srai x28, x2, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x11, 0x00000000fffffffe # initialize rs1
srai x20, x11, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x26, 0x0000000100000000 # initialize rs1
srai x19, x26, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x6, 0x0000000100000001 # initialize rs1
srai x29, x6, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x6f79f0087ba70d59 # initialize rs1
srai x0, x0, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x09ab85a0bb1306f0 # initialize rs1
srai x1, x1, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x4aadf6e46f18e119 # initialize rs1
srai x2, x2, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xe174b81d070d0421 # initialize rs1
srai x3, x3, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xde9ccd2d57115be1 # initialize rs1
srai x4, x4, 33 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x58e37135f25efafd # initialize rs1
srai x5, x5, 9 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x60fd178cfb36c0d7 # initialize rs1
srai x6, x6, 12 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa4465565ad5fde8a # initialize rs1
srai x7, x7, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xbe96ae6aa347c5b3 # initialize rs1
srai x8, x8, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x2d4e4cbd9ed37c91 # initialize rs1
srai x9, x9, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x3845fd48063e3be3 # initialize rs1
srai x10, x10, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xae56461eb259ee92 # initialize rs1
srai x11, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x5958db65f3815aa6 # initialize rs1
srai x12, x12, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd41970d0617cb215 # initialize rs1
srai x13, x13, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x134a94072b6ba62e # initialize rs1
srai x14, x14, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xaf1b4695e794c492 # initialize rs1
srai x15, x15, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xfe7d3a072239e79a # initialize rs1
srai x16, x16, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xb5e16d0db83c4e7d # initialize rs1
srai x17, x17, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x0c8eaf425566a099 # initialize rs1
srai x18, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa9590786e52a0a9b # initialize rs1
srai x19, x19, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf90c8ccbeb10b6f2 # initialize rs1
srai x20, x20, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xc78c7ad8e51be523 # initialize rs1
srai x21, x21, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x2d66f56201fa21f6 # initialize rs1
srai x22, x22, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x42b84cbd38cf7d7b # initialize rs1
srai x23, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xbb7f2453d5c191cd # initialize rs1
srai x24, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xd82828fc6e06cc4b # initialize rs1
srai x25, x25, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x3d60887cd6e5b2e5 # initialize rs1
srai x26, x26, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xa839361e1b9ec47d # initialize rs1
srai x27, x27, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xdc50bdc29be93f6a # initialize rs1
srai x28, x28, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x6a548eec9b77b545 # initialize rs1
srai x29, x29, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x0e23fb7176102b82 # initialize rs1
srai x30, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xc33ab95bb99719a2 # initialize rs1
srai x31, x31, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm (Test bit = 0)
li x11, 0x31d321fb97ab25b7 # initialize rs1
srai x18, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 896)

# Testcase cp_uimm (Test bit = 1)
li x25, 0x349eb4edec796211 # initialize rs1
srai x17, x25, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 904)

# Testcase cp_uimm (Test bit = 2)
li x5, 0x537b8681316d845a # initialize rs1
srai x22, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 912)

# Testcase cp_uimm (Test bit = 3)
li x7, 0xb3f0498efe572fd5 # initialize rs1
srai x22, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 920)

# Testcase cp_uimm (Test bit = 4)
li x15, 0x8653fc9ae03d84b3 # initialize rs1
srai x9, x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 928)

# Testcase cp_uimm (Test bit = 5)
li x15, 0x503989c217ab8072 # initialize rs1
srai x29, x15, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 936)

# Testcase cp_uimm (Test bit = 6)
li x19, 0x1f42d4fcb5595a60 # initialize rs1
srai x23, x19, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 944)

# Testcase cp_uimm (Test bit = 7)
li x21, 0x5e16c638eb9746a3 # initialize rs1
srai x1, x21, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 952)

# Testcase cp_uimm (Test bit = 8)
li x11, 0x427395f151c50872 # initialize rs1
srai x23, x11, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 960)

# Testcase cp_uimm (Test bit = 9)
li x13, 0xcfad5041337d8fe4 # initialize rs1
srai x29, x13, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 968)

# Testcase cp_uimm (Test bit = 10)
li x3, 0x38b6b5be195e1944 # initialize rs1
srai x22, x3, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 976)

# Testcase cp_uimm (Test bit = 11)
li x10, 0xd2650be4ecdf36ee # initialize rs1
srai x6, x10, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 984)

# Testcase cp_uimm (Test bit = 12)
li x14, 0x461692a4c7e55d60 # initialize rs1
srai x7, x14, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 992)

# Testcase cp_uimm (Test bit = 13)
li x18, 0x7aa7e5f8de3ae31d # initialize rs1
srai x5, x18, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1000)

# Testcase cp_uimm (Test bit = 14)
li x18, 0x45cd51e460e5b72a # initialize rs1
srai x12, x18, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1008)

# Testcase cp_uimm (Test bit = 15)
li x10, 0x91e442fbba10785f # initialize rs1
srai x15, x10, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1016)

# Testcase cp_uimm (Test bit = 16)
li x19, 0x0f400e0f0276c5e6 # initialize rs1
srai x26, x19, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1024)

# Testcase cp_uimm (Test bit = 17)
li x5, 0x89d24bafe92788fc # initialize rs1
srai x13, x5, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

# Testcase cp_uimm (Test bit = 18)
li x28, 0xd83042489cba10d2 # initialize rs1
srai x7, x28, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1040)

# Testcase cp_uimm (Test bit = 19)
li x18, 0x27e3402922ca9ecd # initialize rs1
srai x21, x18, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1048)

# Testcase cp_uimm (Test bit = 20)
li x20, 0x34c944b8f19cd6db # initialize rs1
srai x18, x20, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1056)

# Testcase cp_uimm (Test bit = 21)
li x1, 0xda55e382c983ad6b # initialize rs1
srai x26, x1, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1064)

# Testcase cp_uimm (Test bit = 22)
li x20, 0xf773eae1345245ef # initialize rs1
srai x9, x20, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1072)

# Testcase cp_uimm (Test bit = 23)
li x5, 0x8f08e61061e494ff # initialize rs1
srai x19, x5, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1080)

# Testcase cp_uimm (Test bit = 24)
li x3, 0x43ed96f5445bbb2a # initialize rs1
srai x21, x3, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1088)

# Testcase cp_uimm (Test bit = 25)
li x25, 0xe5458ea0b2692234 # initialize rs1
srai x6, x25, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1096)

# Testcase cp_uimm (Test bit = 26)
li x30, 0xe22a8392209255fc # initialize rs1
srai x17, x30, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1104)

# Testcase cp_uimm (Test bit = 27)
li x22, 0x676f0e144b6f7c69 # initialize rs1
srai x2, x22, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1112)

# Testcase cp_uimm (Test bit = 28)
li x26, 0x6a0539d6531c3fc0 # initialize rs1
srai x14, x26, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1120)

# Testcase cp_uimm (Test bit = 29)
li x19, 0x89008421b019f152 # initialize rs1
srai x12, x19, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1128)

# Testcase cp_uimm (Test bit = 30)
li x15, 0xd887e4acb3a51687 # initialize rs1
srai x28, x15, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cp_uimm (Test bit = 31)
li x27, 0x64ca71bd1ad1867c # initialize rs1
srai x13, x27, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1144)

# Testcase cp_uimm (Test bit = 32)
li x3, 0xc7b35f2f379cd864 # initialize rs1
srai x29, x3, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1152)

# Testcase cp_uimm (Test bit = 33)
li x8, 0xc1db7109b337c200 # initialize rs1
srai x28, x8, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1160)

# Testcase cp_uimm (Test bit = 34)
li x12, 0xb20ea901c6ef4b26 # initialize rs1
srai x11, x12, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1168)

# Testcase cp_uimm (Test bit = 35)
li x31, 0x52ad22e31ae9f5ff # initialize rs1
srai x27, x31, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1176)

# Testcase cp_uimm (Test bit = 36)
li x3, 0x24f8a88a32040cc8 # initialize rs1
srai x19, x3, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1184)

# Testcase cp_uimm (Test bit = 37)
li x2, 0x1aff5816b4281b69 # initialize rs1
srai x30, x2, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1192)

# Testcase cp_uimm (Test bit = 38)
li x2, 0xa8d45d923bb26f18 # initialize rs1
srai x8, x2, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1200)

# Testcase cp_uimm (Test bit = 39)
li x9, 0xe10ccf1dd9c5be37 # initialize rs1
srai x2, x9, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1208)

# Testcase cp_uimm (Test bit = 40)
li x25, 0x8c8ffeaf47beabd9 # initialize rs1
srai x29, x25, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1216)

# Testcase cp_uimm (Test bit = 41)
li x21, 0xee839d99f923fbb6 # initialize rs1
srai x23, x21, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1224)

# Testcase cp_uimm (Test bit = 42)
li x14, 0x3921402d4826a758 # initialize rs1
srai x22, x14, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1232)

# Testcase cp_uimm (Test bit = 43)
li x17, 0xa93ae965d5dc1a32 # initialize rs1
srai x12, x17, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1240)

# Testcase cp_uimm (Test bit = 44)
li x5, 0x993cee39a4633234 # initialize rs1
srai x24, x5, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1248)

# Testcase cp_uimm (Test bit = 45)
li x25, 0xf1cca986aad8aa79 # initialize rs1
srai x5, x25, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1256)

# Testcase cp_uimm (Test bit = 46)
li x26, 0x9bf6881f2b65c04b # initialize rs1
srai x19, x26, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1264)

# Testcase cp_uimm (Test bit = 47)
li x23, 0xb4dd8751c5dc5e79 # initialize rs1
srai x2, x23, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1272)

# Testcase cp_uimm (Test bit = 48)
li x17, 0x0d6e384553b5e399 # initialize rs1
srai x3, x17, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1280)

# Testcase cp_uimm (Test bit = 49)
li x17, 0x1e5fb3018cf27cb2 # initialize rs1
srai x3, x17, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1288)

# Testcase cp_uimm (Test bit = 50)
li x7, 0x99cb084c1bf16e55 # initialize rs1
srai x19, x7, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1296)

# Testcase cp_uimm (Test bit = 51)
li x9, 0x6e9069b8da1718ff # initialize rs1
srai x7, x9, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1304)

# Testcase cp_uimm (Test bit = 52)
li x5, 0xfaa69a4016ec60cf # initialize rs1
srai x25, x5, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1312)

# Testcase cp_uimm (Test bit = 53)
li x8, 0x94f05de9e3d7660b # initialize rs1
srai x9, x8, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1320)

# Testcase cp_uimm (Test bit = 54)
li x25, 0xb2ab2f631690263f # initialize rs1
srai x6, x25, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1328)

# Testcase cp_uimm (Test bit = 55)
li x6, 0xbf2ced61490fc6de # initialize rs1
srai x17, x6, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1336)

# Testcase cp_uimm (Test bit = 56)
li x1, 0xb282fe17020e8fa0 # initialize rs1
srai x22, x1, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1344)

# Testcase cp_uimm (Test bit = 57)
li x9, 0x9389df4c443331cf # initialize rs1
srai x18, x9, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1352)

# Testcase cp_uimm (Test bit = 58)
li x17, 0xa1f71fa93a082115 # initialize rs1
srai x24, x17, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1360)

# Testcase cp_uimm (Test bit = 59)
li x3, 0x931336068595e423 # initialize rs1
srai x11, x3, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1368)

# Testcase cp_uimm (Test bit = 60)
li x3, 0x1584641f7a6417a8 # initialize rs1
srai x18, x3, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1376)

# Testcase cp_uimm (Test bit = 61)
li x7, 0x4779d38dda630ecd # initialize rs1
srai x28, x7, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1384)

# Testcase cp_uimm (Test bit = 62)
li x21, 0x37df8b3424b64b7a # initialize rs1
srai x9, x21, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1392)

# Testcase cp_uimm (Test bit = 63)
li x21, 0xe421b4d3773d99c4 # initialize rs1
srai x12, x21, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1400)

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x20, x10 # perform first operation
srai x5, x2, 15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x3, x10 # perform first operation
srai x21, x27, 49 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x12, x3 # perform first operation
srai x9, x7, 14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x3, x25 # perform first operation
srai x15, x15, 4 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x19, x23 # perform first operation
srai x17, x12, 48 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x9, x18 # perform first operation
srai x1, x9, 27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x28, x31 # perform first operation
srai x22, x27, 48 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x26, x31 # perform first operation
srai x23, x22, 45 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x26, x19 # perform first operation
srai x23, x16, 42 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x1, x24 # perform first operation
srai x1, x27, 6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x1, x24 # perform first operation
srai x24, x15, 32 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x31, x14 # perform first operation
srai x3, x5, 10 # perform second (triggering) operation

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
