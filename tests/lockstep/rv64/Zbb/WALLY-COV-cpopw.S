///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-cpopw.S
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
li x0, 0x1527207a4baf0c56 # initialize rs1
cpopw x20, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x5d8ac365e043e315 # initialize rs1
cpopw x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x11a8c2dabcaa98b3 # initialize rs1
cpopw x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xc1c20d52b28332a3 # initialize rs1
cpopw x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xaed3735c7484a700 # initialize rs1
cpopw x26, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcee1aac6dd2e3ca3 # initialize rs1
cpopw x20, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9357e85776240f7b # initialize rs1
cpopw x2, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x256dc891c2b56873 # initialize rs1
cpopw x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x03890f6b26a13db7 # initialize rs1
cpopw x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x8a910ff5ff8cfee6 # initialize rs1
cpopw x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x6cf01d39ec4fbbb5 # initialize rs1
cpopw x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xfb6204da0918df01 # initialize rs1
cpopw x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x33c7e1452bfc30b3 # initialize rs1
cpopw x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xb2806fe570efb558 # initialize rs1
cpopw x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x06112b01061b9ace # initialize rs1
cpopw x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xfd362356b1a0421f # initialize rs1
cpopw x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x263cfd0c5a2dd349 # initialize rs1
cpopw x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x297e928584aabfca # initialize rs1
cpopw x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x5ebdbda8f8bd46e1 # initialize rs1
cpopw x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xf6724b41dea4c97c # initialize rs1
cpopw x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x214ec2186fa69a0c # initialize rs1
cpopw x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xcf8e7e69b525d748 # initialize rs1
cpopw x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x202de18cf116c9dc # initialize rs1
cpopw x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x7d96ddf9bf057cf6 # initialize rs1
cpopw x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x5d1765d01e251db9 # initialize rs1
cpopw x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x6d5f27a92e7197c4 # initialize rs1
cpopw x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x25e8457532fb455d # initialize rs1
cpopw x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x961600d557aa7996 # initialize rs1
cpopw x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x8589f9835a776bcf # initialize rs1
cpopw x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x3bc56ee47357f8a0 # initialize rs1
cpopw x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x1767be6d7cadd413 # initialize rs1
cpopw x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xadbe7d3436af5b05 # initialize rs1
cpopw x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 248)

# Testcase cp_rd (Test destination rd = x0)
li x15, 0x83af2d0e9207c367 # initialize rs1
cpopw x0, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x17, 0xb74afab5840e75df # initialize rs1
cpopw x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x16, 0x6ff98795238b6f58 # initialize rs1
cpopw x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x8f3bdae7b46bdb2b # initialize rs1
cpopw x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x7, 0xd201e133cb34d1da # initialize rs1
cpopw x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0xbf7db0c9833560f0 # initialize rs1
cpopw x5, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x31, 0xebfd6097ff2d5643 # initialize rs1
cpopw x6, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0xe406a487a5b03e16 # initialize rs1
cpopw x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x1, 0x660601fddcec7872 # initialize rs1
cpopw x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x5, 0x165921b632146a58 # initialize rs1
cpopw x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x5, 0xdf0cbbcfaca7b848 # initialize rs1
cpopw x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x19, 0x5d90f3e589febffd # initialize rs1
cpopw x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0x80e753a5acef0a15 # initialize rs1
cpopw x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x15, 0x5e6cdf37bfb2f4b6 # initialize rs1
cpopw x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x2, 0x35cba7280de4ab20 # initialize rs1
cpopw x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0x34b24df591de9583 # initialize rs1
cpopw x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0x38221231019009d7 # initialize rs1
cpopw x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x7, 0xb5d4f0ef01494d24 # initialize rs1
cpopw x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x14, 0x25ee541224566517 # initialize rs1
cpopw x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x20, 0x41bc1714a4b363d6 # initialize rs1
cpopw x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x23, 0x46de8980da1efb63 # initialize rs1
cpopw x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0x14529f1be55fdea3 # initialize rs1
cpopw x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x21, 0x442552572753b05e # initialize rs1
cpopw x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x21, 0x535fedce80918bed # initialize rs1
cpopw x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x13, 0xd2d9e4205ac3b376 # initialize rs1
cpopw x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x9, 0xbc83587a821d2c29 # initialize rs1
cpopw x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x10, 0x46fecedcc15ea41d # initialize rs1
cpopw x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x26, 0x492aa3733b1d397f # initialize rs1
cpopw x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x19, 0x2a13043b07ee5a40 # initialize rs1
cpopw x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x13, 0xc69b9dbdda9a0f72 # initialize rs1
cpopw x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x19, 0x1c933bf682136449 # initialize rs1
cpopw x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x10, 0x74aad14f008846c6 # initialize rs1
cpopw x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x19, 0x0000000000000000 # initialize rs1
cpopw x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x22, 0x0000000000000001 # initialize rs1
cpopw x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x0000000000000002 # initialize rs1
cpopw x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x26, 0x8000000000000000 # initialize rs1
cpopw x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x16, 0x8000000000000001 # initialize rs1
cpopw x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
cpopw x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x5, 0x7ffffffffffffffe # initialize rs1
cpopw x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x28, 0xffffffffffffffff # initialize rs1
cpopw x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs1
cpopw x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x10, 0x5bbc887763ae86f2 # initialize rs1
cpopw x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
cpopw x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x19, 0x5555555555555555 # initialize rs1
cpopw x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0x00000000ffffffff # initialize rs1
cpopw x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x13, 0x00000000fffffffe # initialize rs1
cpopw x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x28, 0x0000000100000000 # initialize rs1
cpopw x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x22, 0x0000000100000001 # initialize rs1
cpopw x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa191b8d98bfe4371 # initialize rs1
cpopw x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb0f8e9bf188f1851 # initialize rs1
cpopw x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xc2072ed25394d2e8 # initialize rs1
cpopw x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x015499fce13e122d # initialize rs1
cpopw x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa75c4c01ce3a7483 # initialize rs1
cpopw x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdf0ef2d73acf3741 # initialize rs1
cpopw x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x63f7d948e7e9a7d9 # initialize rs1
cpopw x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x37fa523c15ce6e75 # initialize rs1
cpopw x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xbfed7f987b6ec02b # initialize rs1
cpopw x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x09633f22ed33e906 # initialize rs1
cpopw x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xb6d3f5efb12b6eaa # initialize rs1
cpopw x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x3e97ffbc293efc1b # initialize rs1
cpopw x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x0296849e61b57939 # initialize rs1
cpopw x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x2f826afece68c831 # initialize rs1
cpopw x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x0dd59fecebd93c6d # initialize rs1
cpopw x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x907d1fca7c453da0 # initialize rs1
cpopw x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xb2daf88b42b79bfe # initialize rs1
cpopw x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x9ecac4c2f9ce6d21 # initialize rs1
cpopw x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xb28d2c5acf728713 # initialize rs1
cpopw x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xc1cf86cf412b1472 # initialize rs1
cpopw x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x25a1d94e848662fe # initialize rs1
cpopw x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x7b2a87f520c4d8f6 # initialize rs1
cpopw x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x2a7e33f908ed8972 # initialize rs1
cpopw x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x244e48b49670a308 # initialize rs1
cpopw x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x95d096d35bf95ea0 # initialize rs1
cpopw x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xa52960347a0e65ac # initialize rs1
cpopw x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x636049086c5418a6 # initialize rs1
cpopw x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x1d0af407e6ccd621 # initialize rs1
cpopw x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x2de88bae18e40503 # initialize rs1
cpopw x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xcd46edb729b16148 # initialize rs1
cpopw x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xfaaa196299bba362 # initialize rs1
cpopw x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x5c0a3bf331574b07 # initialize rs1
cpopw x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x16, x23 # perform first operation
cpopw x25, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x21, x9 # perform first operation
cpopw x2, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x2, x17 # perform first operation
cpopw x6, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x18, x20, x9 # perform first operation
cpopw x5, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x5, x29 # perform first operation
cpopw x29, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x17, x2 # perform first operation
cpopw x20, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x11, x29 # perform first operation
cpopw x24, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x12, x17 # perform first operation
cpopw x1, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x30, x15 # perform first operation
cpopw x13, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x22, x20 # perform first operation
cpopw x22, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x21, x14 # perform first operation
cpopw x14, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x19, x10 # perform first operation
cpopw x11, x29 # perform second (triggering) operation

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
