///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zba/WALLY-COV-slli.uw.S
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
li x0, 0x816d0baaa90b69c5 # initialize rs1
slli.uw x27, x0, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x431d07d450b3c14a # initialize rs1
slli.uw x5, x1, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xa96fa1ecf4b8cdef # initialize rs1
slli.uw x18, x2, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x9a95584e70c863c9 # initialize rs1
slli.uw x2, x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7fb8e05f235f5054 # initialize rs1
slli.uw x25, x4, 48 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
li x5, 0x9b891afdd8b1bbb0 # initialize rs1
slli.uw x27, x5, 13 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9356bb270ff371c9 # initialize rs1
slli.uw x24, x6, 62 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3fcf6fe033d212cf # initialize rs1
slli.uw x22, x7, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x2147554f93d60a6b # initialize rs1
slli.uw x24, x8, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xae63fa31e0b3b2ba # initialize rs1
slli.uw x13, x9, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x2b29e01cb16af802 # initialize rs1
slli.uw x27, x10, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x0f0ddf62a91510d4 # initialize rs1
slli.uw x19, x11, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xeac2b318a8c44970 # initialize rs1
slli.uw x23, x12, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x42b27d806c9d8019 # initialize rs1
slli.uw x31, x13, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe09d78292a6e47e8 # initialize rs1
slli.uw x29, x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xf4b0fca8d9ed2ba2 # initialize rs1
slli.uw x3, x15, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xedf53aff420ebb6a # initialize rs1
slli.uw x14, x16, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xc249a2f5451e8dc2 # initialize rs1
slli.uw x10, x17, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x5c76db54bac94e2f # initialize rs1
slli.uw x19, x18, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x1abff99d999206e3 # initialize rs1
slli.uw x3, x19, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x88f0cf814247b62c # initialize rs1
slli.uw x25, x20, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x7f624b23015b6b1f # initialize rs1
slli.uw x29, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x39b3bdba8d332326 # initialize rs1
slli.uw x26, x22, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xaef6153a6d0cc41d # initialize rs1
slli.uw x5, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xc69a7a49192a11a4 # initialize rs1
slli.uw x20, x24, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x3e887a40762c8e35 # initialize rs1
slli.uw x8, x25, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x99d54dda480e7c14 # initialize rs1
slli.uw x9, x26, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x40be1c767dcedb86 # initialize rs1
slli.uw x14, x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x836313c82165d35d # initialize rs1
slli.uw x5, x28, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xb7d6ea36314de275 # initialize rs1
slli.uw x24, x29, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x318c6ad7974789b0 # initialize rs1
slli.uw x29, x30, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x248598d8f54f961e # initialize rs1
slli.uw x2, x31, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 248)

# Testcase cp_rd (Test destination rd = x0)
li x18, 0xa9ba315d54f3be47 # initialize rs1
slli.uw x0, x18, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x17, 0xdd56f4512754e6e0 # initialize rs1
slli.uw x1, x17, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0xc915119b3b54dfa7 # initialize rs1
slli.uw x2, x19, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x13, 0x2057c2b192d500fe # initialize rs1
slli.uw x3, x13, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0xde2077ed263bd9af # initialize rs1
slli.uw x4, x6, 41 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0xfe56d1aa5cda6113 # initialize rs1
slli.uw x5, x30, 36 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x594d8b48ea54cf21 # initialize rs1
slli.uw x6, x27, 36 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0x6daf6fd768dfeef6 # initialize rs1
slli.uw x7, x23, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x1, 0x875e18ef3fd343e1 # initialize rs1
slli.uw x8, x1, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x30, 0xfe60a0184df057bc # initialize rs1
slli.uw x9, x30, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x2, 0x1a0dea7d74f4ea32 # initialize rs1
slli.uw x10, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x16, 0xb7deea11c8657cc0 # initialize rs1
slli.uw x11, x16, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0xb6b1f79d4f512f47 # initialize rs1
slli.uw x12, x10, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0xba68dd42d644b5f1 # initialize rs1
slli.uw x13, x10, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x15, 0x5e004973175b9832 # initialize rs1
slli.uw x14, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x21, 0xe22cc26590e30cdd # initialize rs1
slli.uw x15, x21, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x24, 0x54e738cf2846bc58 # initialize rs1
slli.uw x16, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x14, 0x96a9fce3d5e33d31 # initialize rs1
slli.uw x17, x14, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x21, 0x871e1c3272ea0d85 # initialize rs1
slli.uw x18, x21, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x31, 0x564edf4a662f3287 # initialize rs1
slli.uw x19, x31, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x17, 0x6104232ae5338e83 # initialize rs1
slli.uw x20, x17, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x31, 0xea366b98371d1e9a # initialize rs1
slli.uw x21, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x23, 0x4c533f80f51c61a9 # initialize rs1
slli.uw x22, x23, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0x723378396022d839 # initialize rs1
slli.uw x23, x18, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x2, 0x582d1352134ae5a8 # initialize rs1
slli.uw x24, x2, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x14, 0x32d8374d8281961e # initialize rs1
slli.uw x25, x14, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x22, 0xd595dd9fd7b93b9b # initialize rs1
slli.uw x26, x22, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0xbebe186231f9353d # initialize rs1
slli.uw x27, x5, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x20, 0x82ebf26ee051e14f # initialize rs1
slli.uw x28, x20, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x11, 0x2094f344314fa376 # initialize rs1
slli.uw x29, x11, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x31, 0x86875ce427729611 # initialize rs1
slli.uw x30, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x28, 0xf0cfac14db5ea9f0 # initialize rs1
slli.uw x31, x28, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x19, 0x0000000000000000 # initialize rs1
slli.uw x27, x19, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x0000000000000001 # initialize rs1
slli.uw x1, x18, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x0000000000000002 # initialize rs1
slli.uw x10, x29, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x31, 0x8000000000000000 # initialize rs1
slli.uw x29, x31, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x3, 0x8000000000000001 # initialize rs1
slli.uw x2, x3, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x6, 0x7fffffffffffffff # initialize rs1
slli.uw x7, x6, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
slli.uw x23, x25, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs1
slli.uw x23, x10, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
slli.uw x30, x13, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x22, 0x5bbc887763ae86f2 # initialize rs1
slli.uw x8, x22, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
slli.uw x1, x16, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x13, 0x5555555555555555 # initialize rs1
slli.uw x31, x13, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x29, 0x00000000ffffffff # initialize rs1
slli.uw x2, x29, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0x00000000fffffffe # initialize rs1
slli.uw x8, x6, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x30, 0x0000000100000000 # initialize rs1
slli.uw x31, x30, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x31, 0x0000000100000001 # initialize rs1
slli.uw x10, x31, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x4cc0fec3568bc4cf # initialize rs1
slli.uw x0, x0, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb8e837e3a1774e9a # initialize rs1
slli.uw x1, x1, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x954ff4b1eb954a60 # initialize rs1
slli.uw x2, x2, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xee42de9f3a074215 # initialize rs1
slli.uw x3, x3, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x61e9a2799ef33de5 # initialize rs1
slli.uw x4, x4, 5 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x14ccf83ac88cf1da # initialize rs1
slli.uw x5, x5, 6 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7ca4da5bf0bbde48 # initialize rs1
slli.uw x6, x6, 45 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc7ad1035f6023103 # initialize rs1
slli.uw x7, x7, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xcfae4dc1111e5d12 # initialize rs1
slli.uw x8, x8, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x8ef4657dae05fb8b # initialize rs1
slli.uw x9, x9, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x01e67f8f86858cbc # initialize rs1
slli.uw x10, x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x3055caf3ab272d06 # initialize rs1
slli.uw x11, x11, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xd01d06a343c6839a # initialize rs1
slli.uw x12, x12, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x5dd4c0f435c9b30a # initialize rs1
slli.uw x13, x13, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbfc112cf279f423a # initialize rs1
slli.uw x14, x14, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa0bceb42630d04cb # initialize rs1
slli.uw x15, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xba683793ae8931ab # initialize rs1
slli.uw x16, x16, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x9a5cdfcd12a3790d # initialize rs1
slli.uw x17, x17, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xa31d36edd5e4bd36 # initialize rs1
slli.uw x18, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf854403ac4608434 # initialize rs1
slli.uw x19, x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x9b37fd8a062aa342 # initialize rs1
slli.uw x20, x20, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xdfc9e968aa5e0c45 # initialize rs1
slli.uw x21, x21, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x800cdd06b40ae738 # initialize rs1
slli.uw x22, x22, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x049b632cca6c4859 # initialize rs1
slli.uw x23, x23, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe6df5a76576e16e9 # initialize rs1
slli.uw x24, x24, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x42fcc6842cef7c17 # initialize rs1
slli.uw x25, x25, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0d973773a94c384e # initialize rs1
slli.uw x26, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x2f09da025b56cc45 # initialize rs1
slli.uw x27, x27, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x34899cd2262eb839 # initialize rs1
slli.uw x28, x28, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xd7b66e58e503635f # initialize rs1
slli.uw x29, x29, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xc3ec1c56b90d2037 # initialize rs1
slli.uw x30, x30, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x8a9ebe2beee75698 # initialize rs1
slli.uw x31, x31, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm (Test bit = 0)
li x27, 0xe5003e5816b65527 # initialize rs1
slli.uw x21, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 896)

# Testcase cp_uimm (Test bit = 1)
li x15, 0xbcb7fb69cf51c15e # initialize rs1
slli.uw x25, x15, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 904)

# Testcase cp_uimm (Test bit = 2)
li x22, 0x5fd7681e7acbbe26 # initialize rs1
slli.uw x11, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 912)

# Testcase cp_uimm (Test bit = 3)
li x16, 0xa3547917cfcfd275 # initialize rs1
slli.uw x12, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 920)

# Testcase cp_uimm (Test bit = 4)
li x17, 0x552ed78780c750bb # initialize rs1
slli.uw x20, x17, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 928)

# Testcase cp_uimm (Test bit = 5)
li x9, 0x10eed149ab598238 # initialize rs1
slli.uw x27, x9, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cp_uimm (Test bit = 6)
li x3, 0xd260277746317b3b # initialize rs1
slli.uw x12, x3, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 944)

# Testcase cp_uimm (Test bit = 7)
li x9, 0xf281aa2fe49b71d7 # initialize rs1
slli.uw x17, x9, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 952)

# Testcase cp_uimm (Test bit = 8)
li x15, 0x38011237cee227b3 # initialize rs1
slli.uw x1, x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 960)

# Testcase cp_uimm (Test bit = 9)
li x16, 0xb4770601d1ef0b8d # initialize rs1
slli.uw x11, x16, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 968)

# Testcase cp_uimm (Test bit = 10)
li x1, 0x250a05ea5919c7f0 # initialize rs1
slli.uw x20, x1, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 976)

# Testcase cp_uimm (Test bit = 11)
li x26, 0x0cc658d41e7aa6e7 # initialize rs1
slli.uw x17, x26, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 984)

# Testcase cp_uimm (Test bit = 12)
li x17, 0x2c40b5c7c00ca1c6 # initialize rs1
slli.uw x30, x17, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 992)

# Testcase cp_uimm (Test bit = 13)
li x31, 0x42a950556594ae30 # initialize rs1
slli.uw x13, x31, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1000)

# Testcase cp_uimm (Test bit = 14)
li x22, 0xc1dd82db089fc6e8 # initialize rs1
slli.uw x30, x22, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1008)

# Testcase cp_uimm (Test bit = 15)
li x8, 0x26addb00d216dc24 # initialize rs1
slli.uw x5, x8, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1016)

# Testcase cp_uimm (Test bit = 16)
li x22, 0x8fa59bdf77cd82fd # initialize rs1
slli.uw x3, x22, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1024)

# Testcase cp_uimm (Test bit = 17)
li x1, 0x391743b6dba5481f # initialize rs1
slli.uw x29, x1, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1032)

# Testcase cp_uimm (Test bit = 18)
li x17, 0xfebe975fe27a3d52 # initialize rs1
slli.uw x11, x17, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cp_uimm (Test bit = 19)
li x14, 0x9817faf3f7baaf4b # initialize rs1
slli.uw x15, x14, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1048)

# Testcase cp_uimm (Test bit = 20)
li x24, 0xec5298950cb742ec # initialize rs1
slli.uw x11, x24, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1056)

# Testcase cp_uimm (Test bit = 21)
li x25, 0xee958677770516c9 # initialize rs1
slli.uw x24, x25, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1064)

# Testcase cp_uimm (Test bit = 22)
li x10, 0xbe610d0c1a954cdb # initialize rs1
slli.uw x20, x10, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1072)

# Testcase cp_uimm (Test bit = 23)
li x11, 0xcc4cb44921fe2c33 # initialize rs1
slli.uw x18, x11, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1080)

# Testcase cp_uimm (Test bit = 24)
li x9, 0xffaad60d40b1192f # initialize rs1
slli.uw x5, x9, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1088)

# Testcase cp_uimm (Test bit = 25)
li x27, 0xec81bb661f2ac526 # initialize rs1
slli.uw x23, x27, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1096)

# Testcase cp_uimm (Test bit = 26)
li x23, 0xbdce32dccb1b5dbd # initialize rs1
slli.uw x29, x23, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cp_uimm (Test bit = 27)
li x8, 0x850604c928eb490b # initialize rs1
slli.uw x20, x8, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1112)

# Testcase cp_uimm (Test bit = 28)
li x26, 0x2fb430105646b9b7 # initialize rs1
slli.uw x16, x26, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cp_uimm (Test bit = 29)
li x13, 0xab1aff780a28d04a # initialize rs1
slli.uw x11, x13, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cp_uimm (Test bit = 30)
li x17, 0x1728bbe32b3c55a4 # initialize rs1
slli.uw x2, x17, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1136)

# Testcase cp_uimm (Test bit = 31)
li x2, 0x76a3ccfcecaf78b7 # initialize rs1
slli.uw x28, x2, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1144)

# Testcase cp_uimm (Test bit = 32)
li x20, 0x3bb1e760a2b63960 # initialize rs1
slli.uw x31, x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1152)

# Testcase cp_uimm (Test bit = 33)
li x19, 0x9ca73846b36593cb # initialize rs1
slli.uw x28, x19, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1160)

# Testcase cp_uimm (Test bit = 34)
li x9, 0xcf4fc6d50b4186fb # initialize rs1
slli.uw x25, x9, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1168)

# Testcase cp_uimm (Test bit = 35)
li x30, 0x09e10d34cda29263 # initialize rs1
slli.uw x3, x30, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1176)

# Testcase cp_uimm (Test bit = 36)
li x24, 0xbc2a0bc85c4b8f1d # initialize rs1
slli.uw x8, x24, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1184)

# Testcase cp_uimm (Test bit = 37)
li x8, 0x2f7260e9ffd78525 # initialize rs1
slli.uw x21, x8, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1192)

# Testcase cp_uimm (Test bit = 38)
li x8, 0x11c870e6d0f164f8 # initialize rs1
slli.uw x29, x8, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1200)

# Testcase cp_uimm (Test bit = 39)
li x19, 0x2ec48d8e84f4e236 # initialize rs1
slli.uw x29, x19, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1208)

# Testcase cp_uimm (Test bit = 40)
li x10, 0x07aadd0b1a946a1f # initialize rs1
slli.uw x11, x10, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1216)

# Testcase cp_uimm (Test bit = 41)
li x16, 0xef83f778f727e1ae # initialize rs1
slli.uw x2, x16, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1224)

# Testcase cp_uimm (Test bit = 42)
li x16, 0xe5c575ab2d9886ab # initialize rs1
slli.uw x24, x16, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1232)

# Testcase cp_uimm (Test bit = 43)
li x28, 0x2a05aa36f225df60 # initialize rs1
slli.uw x25, x28, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1240)

# Testcase cp_uimm (Test bit = 44)
li x19, 0x4932a244d7e234c4 # initialize rs1
slli.uw x9, x19, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1248)

# Testcase cp_uimm (Test bit = 45)
li x31, 0x3f5ce97abcd215ac # initialize rs1
slli.uw x2, x31, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1256)

# Testcase cp_uimm (Test bit = 46)
li x14, 0xb53d96e84ff71e56 # initialize rs1
slli.uw x26, x14, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1264)

# Testcase cp_uimm (Test bit = 47)
li x31, 0x8e21ed2a1f638328 # initialize rs1
slli.uw x28, x31, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1272)

# Testcase cp_uimm (Test bit = 48)
li x15, 0x94b2706bbbe3e9b6 # initialize rs1
slli.uw x31, x15, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1280)

# Testcase cp_uimm (Test bit = 49)
li x2, 0xe831140fd007cb66 # initialize rs1
slli.uw x5, x2, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1288)

# Testcase cp_uimm (Test bit = 50)
li x13, 0xa3f031bd4dc703e3 # initialize rs1
slli.uw x24, x13, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1296)

# Testcase cp_uimm (Test bit = 51)
li x1, 0x402cdb718f52c981 # initialize rs1
slli.uw x6, x1, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1304)

# Testcase cp_uimm (Test bit = 52)
li x30, 0xc316150ad04c54b8 # initialize rs1
slli.uw x13, x30, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1312)

# Testcase cp_uimm (Test bit = 53)
li x6, 0x92c95327d876c4b0 # initialize rs1
slli.uw x22, x6, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1320)

# Testcase cp_uimm (Test bit = 54)
li x15, 0x1945bcf28825d8d0 # initialize rs1
slli.uw x6, x15, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1328)

# Testcase cp_uimm (Test bit = 55)
li x19, 0x11e6222d4b32ca69 # initialize rs1
slli.uw x23, x19, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1336)

# Testcase cp_uimm (Test bit = 56)
li x13, 0x5afce2fb27aa93c1 # initialize rs1
slli.uw x30, x13, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1344)

# Testcase cp_uimm (Test bit = 57)
li x28, 0x215467bdf3d8a81a # initialize rs1
slli.uw x5, x28, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1352)

# Testcase cp_uimm (Test bit = 58)
li x8, 0xfb5711d5c8eddedd # initialize rs1
slli.uw x25, x8, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1360)

# Testcase cp_uimm (Test bit = 59)
li x9, 0xa4b92f6880a7b5c1 # initialize rs1
slli.uw x12, x9, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1368)

# Testcase cp_uimm (Test bit = 60)
li x17, 0x73ee37beb4c3e852 # initialize rs1
slli.uw x15, x17, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1376)

# Testcase cp_uimm (Test bit = 61)
li x26, 0x0e88b4cc53ff2c36 # initialize rs1
slli.uw x13, x26, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1384)

# Testcase cp_uimm (Test bit = 62)
li x6, 0xa89f874bcd7d2dc6 # initialize rs1
slli.uw x25, x6, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1392)

# Testcase cp_uimm (Test bit = 63)
li x9, 0xba1ae07c822f0a2d # initialize rs1
slli.uw x13, x9, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1400)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x6, x11 # perform first operation
slli.uw x9, x1, 47 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x6, x24 # perform first operation
slli.uw x14, x8, 18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x16, x19 # perform first operation
slli.uw x2, x24, 36 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x11, x12 # perform first operation
slli.uw x13, x13, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x24, x2 # perform first operation
slli.uw x24, x5, 51 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x1, x29 # perform first operation
slli.uw x3, x5, 44 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x14, x1 # perform first operation
slli.uw x12, x19, 46 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x13, x31 # perform first operation
slli.uw x19, x10, 55 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x27, x31 # perform first operation
slli.uw x9, x5, 52 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x10, x9 # perform first operation
slli.uw x10, x5, 32 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x31, x10 # perform first operation
slli.uw x10, x21, 34 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x29, x15 # perform first operation
slli.uw x16, x6, 21 # perform second (triggering) operation

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
