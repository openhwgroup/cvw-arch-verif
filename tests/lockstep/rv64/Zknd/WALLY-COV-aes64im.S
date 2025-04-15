///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zknd/WALLY-COV-aes64im.S
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
li x0, 0xac31970da3122023 # initialize rs1
aes64im x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x12f83743ff6a04f8 # initialize rs1
aes64im x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x108188dd3c8eedef # initialize rs1
aes64im x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x8a34253625868820 # initialize rs1
aes64im x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xedca039151b8dfd0 # initialize rs1
aes64im x6, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1963dcc6c0c4369d # initialize rs1
aes64im x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3ce2bc7fac47cd9b # initialize rs1
aes64im x21, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc9955075896c9b3b # initialize rs1
aes64im x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xbd31903ed9889f8c # initialize rs1
aes64im x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x8ccc3a7daaf13cc0 # initialize rs1
aes64im x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x50f21d92815ed0eb # initialize rs1
aes64im x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x523eb4b213505dad # initialize rs1
aes64im x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xe50911a4f36865d6 # initialize rs1
aes64im x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xe9878884e8a1968c # initialize rs1
aes64im x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x4d5050724e5208fd # initialize rs1
aes64im x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x4458c4289ec1f02f # initialize rs1
aes64im x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xb40853c4ad7fc34d # initialize rs1
aes64im x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe9ee81b7a3938ab5 # initialize rs1
aes64im x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x414179a988720109 # initialize rs1
aes64im x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x65923957c93062f8 # initialize rs1
aes64im x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x1aa560b01e49ef0b # initialize rs1
aes64im x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x3eb75c26b2e22744 # initialize rs1
aes64im x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xb4c26b1393817030 # initialize rs1
aes64im x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x8c116b7fce56107b # initialize rs1
aes64im x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xa0b9a818870ec5f6 # initialize rs1
aes64im x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xd933ee5e47a53a81 # initialize rs1
aes64im x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xa2d3e01c12c84cfa # initialize rs1
aes64im x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x968a09a23dc3488e # initialize rs1
aes64im x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x6e45da1c055dad7f # initialize rs1
aes64im x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x5adbbdd248941f1b # initialize rs1
aes64im x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xb8e5f55b102a5350 # initialize rs1
aes64im x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x59df0444a3c3062c # initialize rs1
aes64im x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 248)

# Testcase cp_rd (Test destination rd = x0)
li x5, 0x59e277ce10a14cbb # initialize rs1
aes64im x0, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x17, 0xbdd737348f3cac7b # initialize rs1
aes64im x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x6, 0x8fc4a31fbe9e18ba # initialize rs1
aes64im x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x13, 0x851736e4e6d99333 # initialize rs1
aes64im x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0xcc5d8c8b14d6abd5 # initialize rs1
aes64im x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0xb1faddc872179afc # initialize rs1
aes64im x5, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x8599591e99d10509 # initialize rs1
aes64im x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x2ad4d754052b5a5b # initialize rs1
aes64im x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x26, 0x77a0cf3687f5a814 # initialize rs1
aes64im x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x25, 0x7b883a58c2f6c879 # initialize rs1
aes64im x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x3, 0x994c49652740e956 # initialize rs1
aes64im x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x21, 0xb556b0242327bd92 # initialize rs1
aes64im x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x11, 0xe2c37911acd91f0d # initialize rs1
aes64im x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x31, 0x2fe6fbdbd98a4089 # initialize rs1
aes64im x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x5958fdec749a0741 # initialize rs1
aes64im x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0x9c8bf25fd8a89daf # initialize rs1
aes64im x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x7, 0x3f8dc8b601f9bd32 # initialize rs1
aes64im x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x21, 0xf0fb0d64cd50780b # initialize rs1
aes64im x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x25, 0x9e990ee380424fb9 # initialize rs1
aes64im x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x10, 0x05bee6b2269a8676 # initialize rs1
aes64im x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x3, 0x38e8572626a34127 # initialize rs1
aes64im x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x6, 0x4b353bd6523e97bf # initialize rs1
aes64im x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x2, 0xc84665fa4e4db449 # initialize rs1
aes64im x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x1, 0x34f2d1e0e328eeb3 # initialize rs1
aes64im x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x6, 0xbc5ce462fb564920 # initialize rs1
aes64im x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0xea56b4b7754f9029 # initialize rs1
aes64im x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x15, 0x8df47ccc8fe4442d # initialize rs1
aes64im x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0x4e83ce9530111af6 # initialize rs1
aes64im x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x29, 0xc395b6a28df12868 # initialize rs1
aes64im x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x30, 0x17f09cc0951f0e11 # initialize rs1
aes64im x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x22, 0x7ab8cd9b0f4d8be7 # initialize rs1
aes64im x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x23, 0x8bd8de27f596f926 # initialize rs1
aes64im x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x0000000000000000 # initialize rs1
aes64im x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0x0000000000000001 # initialize rs1
aes64im x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x27, 0x0000000000000002 # initialize rs1
aes64im x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x29, 0x8000000000000000 # initialize rs1
aes64im x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs1
aes64im x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
aes64im x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
aes64im x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x15, 0xffffffffffffffff # initialize rs1
aes64im x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x20, 0xfffffffffffffffe # initialize rs1
aes64im x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
aes64im x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
aes64im x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x25, 0x5555555555555555 # initialize rs1
aes64im x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x5, 0x00000000ffffffff # initialize rs1
aes64im x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x20, 0x00000000fffffffe # initialize rs1
aes64im x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x8, 0x0000000100000000 # initialize rs1
aes64im x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x8, 0x0000000100000001 # initialize rs1
aes64im x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc7043785e7576202 # initialize rs1
aes64im x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xd7d305ff0d37a87c # initialize rs1
aes64im x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x474663917ea7658e # initialize rs1
aes64im x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x4e0b8a03730edc8b # initialize rs1
aes64im x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x44035435e26a2ba3 # initialize rs1
aes64im x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x63c622b867bf528a # initialize rs1
aes64im x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x644bdec8f7bfc443 # initialize rs1
aes64im x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8b16ee7c29abb485 # initialize rs1
aes64im x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xc70d97f8add7f244 # initialize rs1
aes64im x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa4131577505948e5 # initialize rs1
aes64im x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x0f68d340c5a3c94b # initialize rs1
aes64im x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x7ad10d89b23010d0 # initialize rs1
aes64im x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xe49ac7d30fbe93df # initialize rs1
aes64im x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1f085e3c51103fb9 # initialize rs1
aes64im x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x159f6f1f1955a6c8 # initialize rs1
aes64im x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x5ab61e8cb0b13509 # initialize rs1
aes64im x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x22dca9643c13df79 # initialize rs1
aes64im x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc6ea3828b029d5df # initialize rs1
aes64im x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6b22d60bc7a3fb4a # initialize rs1
aes64im x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xff0716c025939ffb # initialize rs1
aes64im x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xb43942fc36990ff7 # initialize rs1
aes64im x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x55630d7d9120d15f # initialize rs1
aes64im x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3c4318b09425520f # initialize rs1
aes64im x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa298fd81a117a845 # initialize rs1
aes64im x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xcad0f51f87933ba1 # initialize rs1
aes64im x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xc6669951d48ff949 # initialize rs1
aes64im x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xbab26ba81bcd3f9e # initialize rs1
aes64im x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x20684911f63a9ccf # initialize rs1
aes64im x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xf8e89191415773b5 # initialize rs1
aes64im x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x737544f0001111ac # initialize rs1
aes64im x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x7a702b6c9bcb9fe8 # initialize rs1
aes64im x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x9aa6cde1aa1ef91a # initialize rs1
aes64im x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x11, x29 # perform first operation
aes64im x17, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x31, x1 # perform first operation
aes64im x5, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x13, x18 # perform first operation
aes64im x12, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x30, x31 # perform first operation
aes64im x6, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x30, x8 # perform first operation
aes64im x5, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x21, x25 # perform first operation
aes64im x7, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x25, x13 # perform first operation
aes64im x21, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x13, x24 # perform first operation
aes64im x28, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x15, x23 # perform first operation
aes64im x19, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x1, x15 # perform first operation
aes64im x1, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x26, x1 # perform first operation
aes64im x1, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x25, x30 # perform first operation
aes64im x5, x29 # perform second (triggering) operation

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
