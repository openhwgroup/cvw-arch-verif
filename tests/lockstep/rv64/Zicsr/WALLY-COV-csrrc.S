///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zicsr/WALLY-COV-csrrc.S
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
li x0, 0x71d8f5a071bef660 # initialize rs1
csrrc x22, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xc209f1484e2ab397 # initialize rs1
csrrc x21, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x243b3f3d65e050be # initialize rs1
csrrc x8, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xe86b97df6fe7f54c # initialize rs1
csrrc x23, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xed9fae384bd950ad # initialize rs1
csrrc x30, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x70e356b5f97e2d52 # initialize rs1
csrrc x27, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x15e6198c73c7d989 # initialize rs1
csrrc x10, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xda93f4459d2e595f # initialize rs1
csrrc x14, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xc94cf5aa3c3cd53e # initialize rs1
csrrc x10, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x05815ca58f7811f3 # initialize rs1
csrrc x11, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x8a61c3b50a1d13bb # initialize rs1
csrrc x3, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xaa3860e2805b870e # initialize rs1
csrrc x6, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xe61b22901ecf3fdd # initialize rs1
csrrc x25, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x2701043e63a0faf1 # initialize rs1
csrrc x18, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x6a0b4e507a4a6676 # initialize rs1
csrrc x25, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x4ea84f67a40c4985 # initialize rs1
csrrc x21, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xd5c07241ac0b05ba # initialize rs1
csrrc x22, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xc7247854768fde47 # initialize rs1
csrrc x2, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xfab5f7ea478e3ca4 # initialize rs1
csrrc x17, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x5bf17dc39eb49de6 # initialize rs1
csrrc x17, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x17b13428b7ea7739 # initialize rs1
csrrc x14, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x74c48fbe95809809 # initialize rs1
csrrc x17, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x7408abbef79d4e52 # initialize rs1
csrrc x7, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb710ebd3da09e1d8 # initialize rs1
csrrc x10, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x6aaab7c345845467 # initialize rs1
csrrc x17, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x7e66c2c8aa42321b # initialize rs1
csrrc x14, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xe26741d4118bd1f5 # initialize rs1
csrrc x3, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x97f7c9875bdd24c5 # initialize rs1
csrrc x5, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x436dca2df2622de1 # initialize rs1
csrrc x6, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xcde5248b58c5f8b9 # initialize rs1
csrrc x11, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xa5dc5b2fab1ae11e # initialize rs1
csrrc x7, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x6d64953d73e29e99 # initialize rs1
csrrc x1, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cp_rd (Test destination rd = x0)
li x7, 0x1061d0c7a7e2b232 # initialize rs1
csrrc x0, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x6, 0x182ad5dd3845c247 # initialize rs1
csrrc x1, mscratch, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x9, 0x757c0b977a8c0a36 # initialize rs1
csrrc x2, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x9, 0xdeb3948fbb8df269 # initialize rs1
csrrc x3, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x14, 0x61ec09dbc3e85dc6 # initialize rs1
csrrc x4, mscratch, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0x9c1b8d8910b7f3c7 # initialize rs1
csrrc x5, mscratch, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x646ba46cc9a362a3 # initialize rs1
csrrc x6, mscratch, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x69d3210f955bf0d7 # initialize rs1
csrrc x7, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x5, 0x15d08bd6090aad96 # initialize rs1
csrrc x8, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x28, 0xc1857fd98caabf8f # initialize rs1
csrrc x9, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x3, 0x2d36d340069bbb21 # initialize rs1
csrrc x10, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x5, 0xd8cdcb764353b01e # initialize rs1
csrrc x11, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x30, 0x7ca25597611b8ed3 # initialize rs1
csrrc x12, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x22, 0x54f0f2fe8bfde7ba # initialize rs1
csrrc x13, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0x42fa775badca5362 # initialize rs1
csrrc x14, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0x9277fd1152bdf7c8 # initialize rs1
csrrc x15, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x7, 0x8ceb80addc77a08b # initialize rs1
csrrc x16, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x5, 0x182eec404f74e177 # initialize rs1
csrrc x17, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xb92b64a2fbbf7342 # initialize rs1
csrrc x18, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x018bef3f1119f3c2 # initialize rs1
csrrc x19, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x3, 0xc2a5cc6daffa3a0b # initialize rs1
csrrc x20, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x28, 0x05698288b01a4d19 # initialize rs1
csrrc x21, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x23, 0x032f31bde5a98b10 # initialize rs1
csrrc x22, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x21, 0x0c78b1b828d3724c # initialize rs1
csrrc x23, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0x10de966c27af5077 # initialize rs1
csrrc x24, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x2, 0x1faeb3913c52aed0 # initialize rs1
csrrc x25, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x3, 0xe91a0651b3f695a7 # initialize rs1
csrrc x26, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xeac1807d26049d49 # initialize rs1
csrrc x27, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x56f8099a4e9f71bf # initialize rs1
csrrc x28, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x3, 0xae4ba38d5ec72119 # initialize rs1
csrrc x29, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x8, 0x64f15b7b6418c87f # initialize rs1
csrrc x30, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x30, 0xa2ec76a11aecce95 # initialize rs1
csrrc x31, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x14, 0x0000000000000000 # initialize rs1
csrrc x25, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x0000000000000001 # initialize rs1
csrrc x12, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0x0000000000000002 # initialize rs1
csrrc x30, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x13, 0x8000000000000000 # initialize rs1
csrrc x29, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x29, 0x8000000000000001 # initialize rs1
csrrc x7, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
csrrc x9, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x16, 0x7ffffffffffffffe # initialize rs1
csrrc x11, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x14, 0xffffffffffffffff # initialize rs1
csrrc x23, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x3, 0xfffffffffffffffe # initialize rs1
csrrc x8, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x22, 0x5bbc887763ae86f2 # initialize rs1
csrrc x21, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
csrrc x20, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x6, 0x5555555555555555 # initialize rs1
csrrc x7, mscratch, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x00000000ffffffff # initialize rs1
csrrc x27, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x30, 0x00000000fffffffe # initialize rs1
csrrc x24, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x1, 0x0000000100000000 # initialize rs1
csrrc x19, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x9, 0x0000000100000001 # initialize rs1
csrrc x3, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x507734a1ce0ad074 # initialize rs1
csrrc x0, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb1b83792e3d50329 # initialize rs1
csrrc x1, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x3631061af0a2dadf # initialize rs1
csrrc x2, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0cd7cbd9f5394877 # initialize rs1
csrrc x3, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc23bba7ea7864817 # initialize rs1
csrrc x4, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xdeb2cd7227ae0513 # initialize rs1
csrrc x5, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4e1dd7fc4de78dd7 # initialize rs1
csrrc x6, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8ab7b12297bd0b61 # initialize rs1
csrrc x7, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x364583cc8ec11011 # initialize rs1
csrrc x8, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xff6a4776a95337f8 # initialize rs1
csrrc x9, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x9e31a9c175cab233 # initialize rs1
csrrc x10, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x6d05a3d492ea25ee # initialize rs1
csrrc x11, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x8b07260dbeb51589 # initialize rs1
csrrc x12, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd7e6ebabc30b2c10 # initialize rs1
csrrc x13, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x63a0a90f7fc2e1b7 # initialize rs1
csrrc x14, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x60bd3405659dab6c # initialize rs1
csrrc x15, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x7e03eb2f54604b16 # initialize rs1
csrrc x16, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x74da35ede29a14c3 # initialize rs1
csrrc x17, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x46d8f916b67e7962 # initialize rs1
csrrc x18, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x531cf64db6cf1b28 # initialize rs1
csrrc x19, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xd6cd845967ea80ad # initialize rs1
csrrc x20, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xcc2459dbdfc8302d # initialize rs1
csrrc x21, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xfcf8bfeb4b0c55ad # initialize rs1
csrrc x22, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xed4e82cbaf1e02f8 # initialize rs1
csrrc x23, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x22104f339fbe3823 # initialize rs1
csrrc x24, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x3b905a682ad13ef9 # initialize rs1
csrrc x25, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xf37d4933cdb6cd7e # initialize rs1
csrrc x26, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x2c438270054b5c2d # initialize rs1
csrrc x27, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x153e35350f479de8 # initialize rs1
csrrc x28, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf2758f8e6c8d09d6 # initialize rs1
csrrc x29, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x3eccf12e869be15c # initialize rs1
csrrc x30, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe1b2a5bc79d17b7d # initialize rs1
csrrc x31, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x18, x13 # perform first operation
csrrc x6, mscratch, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x1, x11 # perform first operation
csrrc x16, mscratch, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x9, x18 # perform first operation
csrrc x28, mscratch, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x3, x5 # perform first operation
csrrc x5, mscratch, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x9, x31 # perform first operation
csrrc x23, mscratch, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x18, x22 # perform first operation
csrrc x11, mscratch, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x5, x1 # perform first operation
csrrc x15, mscratch, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x5, x28 # perform first operation
csrrc x11, mscratch, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x12, x31 # perform first operation
csrrc x8, mscratch, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x1, x11 # perform first operation
csrrc x1, mscratch, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x2, x13 # perform first operation
csrrc x13, mscratch, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x21, x10 # perform first operation
csrrc x29, mscratch, x11 # perform second (triggering) operation

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
