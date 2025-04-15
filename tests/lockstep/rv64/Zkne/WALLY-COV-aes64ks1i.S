///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zkne/WALLY-COV-aes64ks1i.S
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
li x0, 0x72788cf51df39568 # initialize rs1
aes64ks1i x1, x0, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xf674fdf5aab5a255 # initialize rs1
aes64ks1i x31, x1, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x636816979b53c787 # initialize rs1
aes64ks1i x13, x2, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x65ef2ddf367eb7db # initialize rs1
aes64ks1i x25, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xab3ce4fc49085a8e # initialize rs1
aes64ks1i x21, x4, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x03bc50e0880cd0b5 # initialize rs1
aes64ks1i x12, x5, 10 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd89a5e628ee04825 # initialize rs1
aes64ks1i x20, x6, 4 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa03dbeea2f558b86 # initialize rs1
aes64ks1i x22, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xe5a490dc76c3fd0d # initialize rs1
aes64ks1i x18, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x96d97d480035b08f # initialize rs1
aes64ks1i x1, x9, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x0b8ea52d0a521e00 # initialize rs1
aes64ks1i x28, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xeb772c097817bb37 # initialize rs1
aes64ks1i x23, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xe8c39dce1f19a27b # initialize rs1
aes64ks1i x11, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x714d5deca4c01eb2 # initialize rs1
aes64ks1i x16, x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x30d12856bb6d747c # initialize rs1
aes64ks1i x28, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x27648abafcbb97cb # initialize rs1
aes64ks1i x14, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xf3813d96f30dd68e # initialize rs1
aes64ks1i x6, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x204a9c4e2969fd8b # initialize rs1
aes64ks1i x11, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xb44381a009b88639 # initialize rs1
aes64ks1i x21, x18, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x307af7bff5a787e9 # initialize rs1
aes64ks1i x25, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xb2b39c0e4401966f # initialize rs1
aes64ks1i x15, x20, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x7fc4fc3c28f851e8 # initialize rs1
aes64ks1i x2, x21, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x88fc50febb4b79cc # initialize rs1
aes64ks1i x19, x22, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x4fb70fc0f6ccddaf # initialize rs1
aes64ks1i x24, x23, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x74435e5fa7de6291 # initialize rs1
aes64ks1i x14, x24, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x27cef3e8114f986b # initialize rs1
aes64ks1i x18, x25, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x14e9d34a238826c3 # initialize rs1
aes64ks1i x13, x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf16747526a22a17e # initialize rs1
aes64ks1i x17, x27, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x1c51651670affb8e # initialize rs1
aes64ks1i x6, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x95bbd11ce7058380 # initialize rs1
aes64ks1i x31, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x8ede95c5ee31b7bf # initialize rs1
aes64ks1i x3, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x3bbdfa1e7fcdbb41 # initialize rs1
aes64ks1i x22, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 248)

# Testcase cp_rd (Test destination rd = x0)
li x18, 0xf41e5a32eaada409 # initialize rs1
aes64ks1i x0, x18, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x29, 0x56799cd3fa1e7082 # initialize rs1
aes64ks1i x1, x29, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x25, 0x8b3d667afc395bec # initialize rs1
aes64ks1i x2, x25, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x23, 0x93b6fb6973fad08d # initialize rs1
aes64ks1i x3, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0xb0a321309cad0859 # initialize rs1
aes64ks1i x4, x2, 5 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0xe1ac25f421c264cd # initialize rs1
aes64ks1i x5, x28, 2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0xba024e3893c8132b # initialize rs1
aes64ks1i x6, x2, 10 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x2f0042498f993ad1 # initialize rs1
aes64ks1i x7, x16, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x28, 0xf55e5b842b8b324d # initialize rs1
aes64ks1i x8, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x8, 0x77024144deda7ab1 # initialize rs1
aes64ks1i x9, x8, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x24, 0x880a96643cdf2365 # initialize rs1
aes64ks1i x10, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x16, 0xf6844a12ccb83744 # initialize rs1
aes64ks1i x11, x16, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0x6ddfa9a7c053a03d # initialize rs1
aes64ks1i x12, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x29, 0x8b9217084eb3928e # initialize rs1
aes64ks1i x13, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x29, 0x1bc6131c03512a5a # initialize rs1
aes64ks1i x14, x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x17, 0x22e315705a874cf3 # initialize rs1
aes64ks1i x15, x17, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x10, 0x2601e2ed636796fb # initialize rs1
aes64ks1i x16, x10, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x19, 0x25bd4d25928b11bb # initialize rs1
aes64ks1i x17, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x21, 0x6d54fdc9d40c47f8 # initialize rs1
aes64ks1i x18, x21, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x12, 0x82c46bdb7775adef # initialize rs1
aes64ks1i x19, x12, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x25, 0x1bb1decf314441cb # initialize rs1
aes64ks1i x20, x25, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x20, 0xc4abd7efae089ac7 # initialize rs1
aes64ks1i x21, x20, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x17, 0x63ef0c1b7f397824 # initialize rs1
aes64ks1i x22, x17, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x8, 0x8a3cc9a89c3f15f6 # initialize rs1
aes64ks1i x23, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x3, 0x41cbe0c8de123947 # initialize rs1
aes64ks1i x24, x3, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0xd6845d3fb4c86436 # initialize rs1
aes64ks1i x25, x19, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x28, 0xa43632a8ea76e07d # initialize rs1
aes64ks1i x26, x28, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x152bac35ad867c5a # initialize rs1
aes64ks1i x27, x27, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x14, 0x47c0833990595981 # initialize rs1
aes64ks1i x28, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x26, 0x596fb50f4c79b3a1 # initialize rs1
aes64ks1i x29, x26, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x16, 0x7ea7f2e175a34167 # initialize rs1
aes64ks1i x30, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0xacc2d66a50bef575 # initialize rs1
aes64ks1i x31, x7, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x0000000000000000 # initialize rs1
aes64ks1i x22, x20, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x0000000000000001 # initialize rs1
aes64ks1i x6, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x5, 0x0000000000000002 # initialize rs1
aes64ks1i x9, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x27, 0x8000000000000000 # initialize rs1
aes64ks1i x13, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x30, 0x8000000000000001 # initialize rs1
aes64ks1i x25, x30, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs1
aes64ks1i x23, x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
aes64ks1i x6, x17, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
aes64ks1i x31, x19, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
aes64ks1i x31, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x8, 0x5bbc887763ae86f2 # initialize rs1
aes64ks1i x29, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
aes64ks1i x9, x20, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x6, 0x5555555555555555 # initialize rs1
aes64ks1i x28, x6, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x3, 0x00000000ffffffff # initialize rs1
aes64ks1i x11, x3, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0x00000000fffffffe # initialize rs1
aes64ks1i x5, x19, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x12, 0x0000000100000000 # initialize rs1
aes64ks1i x11, x12, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x28, 0x0000000100000001 # initialize rs1
aes64ks1i x20, x28, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xdaaea48c12c4bfb2 # initialize rs1
aes64ks1i x0, x0, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x3856b71190835fdf # initialize rs1
aes64ks1i x1, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xefc81614e759bba8 # initialize rs1
aes64ks1i x2, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x256a8fde6377c8e2 # initialize rs1
aes64ks1i x3, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa84e6e643ca1b6a6 # initialize rs1
aes64ks1i x4, x4, 10 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x2e7ea92743d97cb5 # initialize rs1
aes64ks1i x5, x5, 3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x21bf7f76da3ddf6f # initialize rs1
aes64ks1i x6, x6, 6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xde5885264a5d09c2 # initialize rs1
aes64ks1i x7, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x82dc3ff769372467 # initialize rs1
aes64ks1i x8, x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x75f86504efece84f # initialize rs1
aes64ks1i x9, x9, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x79541a24c1557bcc # initialize rs1
aes64ks1i x10, x10, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x1fcfbf158f27ce26 # initialize rs1
aes64ks1i x11, x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xbaaed46f390ff3b3 # initialize rs1
aes64ks1i x12, x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x5deb62f5700ddd94 # initialize rs1
aes64ks1i x13, x13, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xf63b66c062e35580 # initialize rs1
aes64ks1i x14, x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x15d305bd8ee069d8 # initialize rs1
aes64ks1i x15, x15, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x64d1511eddadd59f # initialize rs1
aes64ks1i x16, x16, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x00bcf207ab75645b # initialize rs1
aes64ks1i x17, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x623b801a628999e5 # initialize rs1
aes64ks1i x18, x18, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xfad3ff85bfe7b1bc # initialize rs1
aes64ks1i x19, x19, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x12d4d0272ed2296f # initialize rs1
aes64ks1i x20, x20, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x2fe6beda4ae26e37 # initialize rs1
aes64ks1i x21, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb1bb8686e79c67b1 # initialize rs1
aes64ks1i x22, x22, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x0718b6bfd4ff9643 # initialize rs1
aes64ks1i x23, x23, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x49df9e4a1ac6fcaf # initialize rs1
aes64ks1i x24, x24, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xa6f15c94096450dd # initialize rs1
aes64ks1i x25, x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xa1ea16d69ccbaf4e # initialize rs1
aes64ks1i x26, x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xa0b604437944bd69 # initialize rs1
aes64ks1i x27, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xb359795931d12410 # initialize rs1
aes64ks1i x28, x28, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xfeb8988a66d01b6e # initialize rs1
aes64ks1i x29, x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x00321590edbbfa7e # initialize rs1
aes64ks1i x30, x30, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xcfa9a8fbc9c8e410 # initialize rs1
aes64ks1i x31, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_rnum = 0
li x26, 0x8b6c3dc06229b417 # initialize rs1
aes64ks1i x31, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 896)

# Testcase cp_rnum = 1
li x10, 0xe27a06faa93a2abb # initialize rs1
aes64ks1i x14, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 904)

# Testcase cp_rnum = 2
li x22, 0x39309fe67b753356 # initialize rs1
aes64ks1i x12, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 912)

# Testcase cp_rnum = 3
li x15, 0xd92e812d26ddfa08 # initialize rs1
aes64ks1i x1, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 920)

# Testcase cp_rnum = 4
li x9, 0xb1682087b3585055 # initialize rs1
aes64ks1i x16, x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 928)

# Testcase cp_rnum = 5
li x29, 0xb99bcbe17c4e61ee # initialize rs1
aes64ks1i x12, x29, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 936)

# Testcase cp_rnum = 6
li x18, 0xfcafd5f15d3bde1c # initialize rs1
aes64ks1i x17, x18, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 944)

# Testcase cp_rnum = 7
li x23, 0x9ddde43e8e50b1aa # initialize rs1
aes64ks1i x10, x23, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 952)

# Testcase cp_rnum = 8
li x16, 0xafdc95d80c0746df # initialize rs1
aes64ks1i x2, x16, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 960)

# Testcase cp_rnum = 9
li x12, 0xf6bf9b426130cc30 # initialize rs1
aes64ks1i x31, x12, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cp_rnum = 10
li x23, 0xdb942966a4b2c7d9 # initialize rs1
aes64ks1i x26, x23, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 976)

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x14, x25 # perform first operation
aes64ks1i x7, x8, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x26, x13 # perform first operation
aes64ks1i x29, x19, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x3, x10 # perform first operation
aes64ks1i x24, x25, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x25, x21 # perform first operation
aes64ks1i x7, x17, 6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x3, x28 # perform first operation
aes64ks1i x3, x15, 9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x2, x22 # perform first operation
aes64ks1i x22, x13, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x14, x6 # perform first operation
aes64ks1i x1, x25, 9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x14, x21 # perform first operation
aes64ks1i x30, x3, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x20, x31 # perform first operation
aes64ks1i x10, x2, 10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x26, x11 # perform first operation
aes64ks1i x26, x31, 9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x12, x30 # perform first operation
aes64ks1i x30, x17, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x15, x8 # perform first operation
aes64ks1i x17, x18, 7 # perform second (triggering) operation

.EQU SIGSIZE,984


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
