///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-rev8.S
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
li x0, 0xc8f8e77c7492caa3 # initialize rs1
rev8 x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8fa4c0b6cdbd3651 # initialize rs1
rev8 x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb279f2d3938795aa # initialize rs1
rev8 x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x57de5f49ff4680cf # initialize rs1
rev8 x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x65ec6fe6dc8668e5 # initialize rs1
rev8 x26, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x87b4127b8ee567e3 # initialize rs1
rev8 x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf480d032ef0b87f6 # initialize rs1
rev8 x13, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7d0f93cbee7445cc # initialize rs1
rev8 x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xd39c313f6b0ce6bd # initialize rs1
rev8 x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xc18dbc553c339514 # initialize rs1
rev8 x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xda5d6843b7dc1b69 # initialize rs1
rev8 x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc42e02018ebdc717 # initialize rs1
rev8 x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x0713d836c41ae045 # initialize rs1
rev8 x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x19b3902fe1ff7bdb # initialize rs1
rev8 x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x4dfe1f95ec782126 # initialize rs1
rev8 x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x105a51b00d0b37be # initialize rs1
rev8 x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x203a230f38c86cfd # initialize rs1
rev8 x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xcd3e92e6c22d8f96 # initialize rs1
rev8 x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x5192c307e504f053 # initialize rs1
rev8 x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x41c87355bcfb1d44 # initialize rs1
rev8 x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xbacfb07de5f1ea64 # initialize rs1
rev8 x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x9601a8f9d0d48f22 # initialize rs1
rev8 x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x6e967132170213bf # initialize rs1
rev8 x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x545514ca89f8ccf7 # initialize rs1
rev8 x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xdb86d101c7b2390e # initialize rs1
rev8 x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x1a13d08250492c54 # initialize rs1
rev8 x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x57ca57294b265978 # initialize rs1
rev8 x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x9ce0ac1e37726f6b # initialize rs1
rev8 x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x3db648cedff80278 # initialize rs1
rev8 x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x83196f421855fa9e # initialize rs1
rev8 x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x25910460fbb86d2d # initialize rs1
rev8 x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xf12cb0070edb7d84 # initialize rs1
rev8 x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 248)

# Testcase cp_rd (Test destination rd = x0)
li x11, 0xd7f3ca901cf94273 # initialize rs1
rev8 x0, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x14, 0xb05ec906fb6065b3 # initialize rs1
rev8 x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x16, 0x151cbd4368539e57 # initialize rs1
rev8 x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x29, 0x7db88350b452e60e # initialize rs1
rev8 x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x7bd579ca08060bda # initialize rs1
rev8 x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0x73652f33d259176b # initialize rs1
rev8 x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0xfd031bdc02521ce8 # initialize rs1
rev8 x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0x53e567d1b1814abb # initialize rs1
rev8 x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x22, 0x5bbf20c612fb8132 # initialize rs1
rev8 x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0x3990b0d39746cafa # initialize rs1
rev8 x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x2, 0x49a5998f2bf4e193 # initialize rs1
rev8 x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x7, 0xdc99c5d64bef85d5 # initialize rs1
rev8 x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0x467209a6e555c818 # initialize rs1
rev8 x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x28, 0x185ff1f3a1912af0 # initialize rs1
rev8 x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x11, 0x153d19d0525a8679 # initialize rs1
rev8 x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x20, 0xc42795b06a23b6ea # initialize rs1
rev8 x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x11, 0x8db39887345c456f # initialize rs1
rev8 x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x30, 0xc8e79694a7e875b8 # initialize rs1
rev8 x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x1, 0xcd415e74d69156ce # initialize rs1
rev8 x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x17, 0x84f6b6744e826a51 # initialize rs1
rev8 x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x3, 0x3605f91991ad6675 # initialize rs1
rev8 x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x27, 0x6f7e7661970295e7 # initialize rs1
rev8 x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x24, 0x59d2474f4c7505da # initialize rs1
rev8 x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x31, 0x4d1654ab586d87b9 # initialize rs1
rev8 x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x7, 0x8924ef5176bd0ff5 # initialize rs1
rev8 x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x6, 0xe5951ba2bcfe92d8 # initialize rs1
rev8 x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x1, 0x1a86de213c8284b5 # initialize rs1
rev8 x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0xbd2c14a71e32831c # initialize rs1
rev8 x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x18, 0x2c3ebc9d822f967a # initialize rs1
rev8 x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x26, 0xa43bcabd85ba645e # initialize rs1
rev8 x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0xe23c05156c172f0e # initialize rs1
rev8 x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x3, 0x8260f56ef5e341e7 # initialize rs1
rev8 x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x0000000000000000 # initialize rs1
rev8 x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x0000000000000001 # initialize rs1
rev8 x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x23, 0x0000000000000002 # initialize rs1
rev8 x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x10, 0x8000000000000000 # initialize rs1
rev8 x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x13, 0x8000000000000001 # initialize rs1
rev8 x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
rev8 x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
rev8 x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x3, 0xffffffffffffffff # initialize rs1
rev8 x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x22, 0xfffffffffffffffe # initialize rs1
rev8 x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x16, 0x5bbc887763ae86f2 # initialize rs1
rev8 x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
rev8 x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x31, 0x5555555555555555 # initialize rs1
rev8 x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x1, 0x00000000ffffffff # initialize rs1
rev8 x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x28, 0x00000000fffffffe # initialize rs1
rev8 x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x20, 0x0000000100000000 # initialize rs1
rev8 x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x21, 0x0000000100000001 # initialize rs1
rev8 x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x594defced976f0ff # initialize rs1
rev8 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x5a207e22f6ffb14e # initialize rs1
rev8 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x4f752906b50b52c5 # initialize rs1
rev8 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x8b9f3c384e9d44b1 # initialize rs1
rev8 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xddbf298055caf8fb # initialize rs1
rev8 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x179b0c1373d5fcc3 # initialize rs1
rev8 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe05aad1746f92cb9 # initialize rs1
rev8 x6, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0x2534941157940e70 # initialize rs1
rev8 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x6525dddc3a5a95e2 # initialize rs1
rev8 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x61f251a552880e73 # initialize rs1
rev8 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x71acc993893b70a4 # initialize rs1
rev8 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xf5ba1e0ed5094af1 # initialize rs1
rev8 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x4dad240528351516 # initialize rs1
rev8 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x69410b097743e7a9 # initialize rs1
rev8 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x54b5c641bce270b6 # initialize rs1
rev8 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x77664a6a0238982a # initialize rs1
rev8 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x8a0f71cee739a8f5 # initialize rs1
rev8 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x03fd08ca2a74e14b # initialize rs1
rev8 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x22d293529c8ca904 # initialize rs1
rev8 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xecd76e0d2b314062 # initialize rs1
rev8 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3974dd5dd923fd26 # initialize rs1
rev8 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x04487bc1019ce16c # initialize rs1
rev8 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x83941e89c35586fb # initialize rs1
rev8 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x9898d6408f51c1e1 # initialize rs1
rev8 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x9c62dd4a853acb60 # initialize rs1
rev8 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xa7757656bcd7ed9c # initialize rs1
rev8 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x5e14cd6d0b102e5e # initialize rs1
rev8 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x3ad3085377cbeb93 # initialize rs1
rev8 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x64f22da5c3ee99ee # initialize rs1
rev8 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x7f8047e4645412df # initialize rs1
rev8 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xf0d476f960ec1077 # initialize rs1
rev8 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x92964167131dd4b9 # initialize rs1
rev8 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x29, x6 # perform first operation
rev8 x21, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x11, x24 # perform first operation
rev8 x8, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x16, x8 # perform first operation
rev8 x17, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x29, x6 # perform first operation
rev8 x29, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x2, x30 # perform first operation
rev8 x11, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x28, x2 # perform first operation
rev8 x2, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x7, x25 # perform first operation
rev8 x12, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x17, x13, x21 # perform first operation
rev8 x17, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x26, x23 # perform first operation
rev8 x12, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x26, x12 # perform first operation
rev8 x26, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x2, x1 # perform first operation
rev8 x1, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x7, x2 # perform first operation
rev8 x31, x10 # perform second (triggering) operation

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
