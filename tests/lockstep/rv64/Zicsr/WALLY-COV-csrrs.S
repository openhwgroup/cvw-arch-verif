///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zicsr/WALLY-COV-csrrs.S
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
li x0, 0xcccd608f6b8bcccb # initialize rs1
csrrs x27, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x1edda16aa306e0d1 # initialize rs1
csrrs x9, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x1fde4d75ba50d11a # initialize rs1
csrrs x24, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb76df976f3da2429 # initialize rs1
csrrs x31, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdae2d1e774bf138f # initialize rs1
csrrs x13, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1a750277f157b59a # initialize rs1
csrrs x4, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbdd673a42a3cf7a1 # initialize rs1
csrrs x14, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xca5db26312507ed3 # initialize rs1
csrrs x15, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x872853d5a0147803 # initialize rs1
csrrs x14, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xed2fe7c062bdc882 # initialize rs1
csrrs x13, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x091ffc722eed0aec # initialize rs1
csrrs x15, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x7fa96afee9bf357b # initialize rs1
csrrs x8, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xf616c8fc95ad73ea # initialize rs1
csrrs x30, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x34805c3f860db2da # initialize rs1
csrrs x5, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x73d68475d9593c31 # initialize rs1
csrrs x6, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xda797082dae15e45 # initialize rs1
csrrs x10, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x83145f966863e591 # initialize rs1
csrrs x9, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x75cc2b12d6f1602b # initialize rs1
csrrs x7, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x1e3aa558a36dbd31 # initialize rs1
csrrs x22, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x0f45208a472ed434 # initialize rs1
csrrs x21, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x4ea1bccf94fba778 # initialize rs1
csrrs x27, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x5431e81ada1f9f0a # initialize rs1
csrrs x13, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xce05e28be9b8b760 # initialize rs1
csrrs x23, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x31c2b08d6df8b454 # initialize rs1
csrrs x11, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x0b79e783ebcd8fb4 # initialize rs1
csrrs x23, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xcbec569fe076f432 # initialize rs1
csrrs x27, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x32a22f7a50296058 # initialize rs1
csrrs x10, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xeb0c64cdce9572b2 # initialize rs1
csrrs x22, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xeb62ef2f1b29e171 # initialize rs1
csrrs x18, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x623612d01bb834cd # initialize rs1
csrrs x27, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xdbfe3deae4dd579e # initialize rs1
csrrs x15, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xf45e78fcb9425052 # initialize rs1
csrrs x22, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 248)

# Testcase cp_rd (Test destination rd = x0)
li x24, 0xab5f7ffafd2fdc67 # initialize rs1
csrrs x0, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x25, 0x3f8ad2f9bbd7210f # initialize rs1
csrrs x1, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x28, 0xc5aaae35f9eb14d2 # initialize rs1
csrrs x2, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x30, 0x307db8120d2b4b89 # initialize rs1
csrrs x3, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x8, 0x2d26353718ef0ad9 # initialize rs1
csrrs x4, mscratch, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0x6c2af6c7bfacad8f # initialize rs1
csrrs x5, mscratch, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0x87eadf949b49d1e7 # initialize rs1
csrrs x6, mscratch, x2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0xcf7146404ea2e9a9 # initialize rs1
csrrs x7, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x26, 0x6d8f180446d0ef46 # initialize rs1
csrrs x8, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x24, 0xb613f4b7225d5316 # initialize rs1
csrrs x9, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x24, 0xaef9b654e58f7e82 # initialize rs1
csrrs x10, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0x55d91e7562a80056 # initialize rs1
csrrs x11, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x30, 0x31253d00db364375 # initialize rs1
csrrs x12, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0x072efbfffeaa8108 # initialize rs1
csrrs x13, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x30, 0xb9d5fec4ccb7c729 # initialize rs1
csrrs x14, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0xc177d615cfd3df7a # initialize rs1
csrrs x15, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0x58cd044fd47b4952 # initialize rs1
csrrs x16, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x22, 0x51a5f260866e5df2 # initialize rs1
csrrs x17, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x28, 0x17e3921a0ece7fc7 # initialize rs1
csrrs x18, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x22, 0xc15858ef936c99d3 # initialize rs1
csrrs x19, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0xb6e397937c96aba7 # initialize rs1
csrrs x20, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x28, 0x8ed8330e64c4a496 # initialize rs1
csrrs x21, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0x212a3ab7e9d6827d # initialize rs1
csrrs x22, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x6, 0xde1cbc70a54d9483 # initialize rs1
csrrs x23, mscratch, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x5, 0x5a4c73e8f274e30d # initialize rs1
csrrs x24, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x10, 0x521f1afc5fcccc85 # initialize rs1
csrrs x25, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x16, 0x0af6323d0af1904b # initialize rs1
csrrs x26, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x12, 0xea5a1a5c92af2924 # initialize rs1
csrrs x27, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x17, 0x574111f510f1fc9f # initialize rs1
csrrs x28, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xd34817da297d3861 # initialize rs1
csrrs x29, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x10, 0x6ba776e704473e71 # initialize rs1
csrrs x30, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0x77500227c7da08e9 # initialize rs1
csrrs x31, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0x0000000000000000 # initialize rs1
csrrs x12, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0x0000000000000001 # initialize rs1
csrrs x20, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x24, 0x0000000000000002 # initialize rs1
csrrs x20, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x21, 0x8000000000000000 # initialize rs1
csrrs x24, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs1
csrrs x18, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
csrrs x7, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x11, 0x7ffffffffffffffe # initialize rs1
csrrs x19, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x27, 0xffffffffffffffff # initialize rs1
csrrs x26, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x1, 0xfffffffffffffffe # initialize rs1
csrrs x26, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x30, 0x5bbc887763ae86f2 # initialize rs1
csrrs x6, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
csrrs x6, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x5, 0x5555555555555555 # initialize rs1
csrrs x15, mscratch, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0x00000000ffffffff # initialize rs1
csrrs x25, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0x00000000fffffffe # initialize rs1
csrrs x1, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x28, 0x0000000100000000 # initialize rs1
csrrs x6, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0x0000000100000001 # initialize rs1
csrrs x17, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x5560d0c7b67c8c19 # initialize rs1
csrrs x0, mscratch, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x89beaa39dfd9a0a8 # initialize rs1
csrrs x1, mscratch, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x91f7e41420a39736 # initialize rs1
csrrs x2, mscratch, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x0e6c44d8b6949d99 # initialize rs1
csrrs x3, mscratch, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x83698b43c3e1e513 # initialize rs1
csrrs x4, mscratch, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf001ea260a4fbd18 # initialize rs1
csrrs x5, mscratch, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x99a26c6c91a48423 # initialize rs1
csrrs x6, mscratch, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x517f6eabae8b1e73 # initialize rs1
csrrs x7, mscratch, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x333c9205463af98b # initialize rs1
csrrs x8, mscratch, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x2aa24a43a20e6881 # initialize rs1
csrrs x9, mscratch, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x03dfcf8e80b11f8b # initialize rs1
csrrs x10, mscratch, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x257058aabf98cb38 # initialize rs1
csrrs x11, mscratch, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xfc483d30bdfd41ab # initialize rs1
csrrs x12, mscratch, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x2937519f9d691ffe # initialize rs1
csrrs x13, mscratch, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xbea2ffad90f68c3d # initialize rs1
csrrs x14, mscratch, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x1ce3c16bcf47de0b # initialize rs1
csrrs x15, mscratch, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xba218ddb682123b0 # initialize rs1
csrrs x16, mscratch, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x893cf34f81c6c3ef # initialize rs1
csrrs x17, mscratch, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x3720c57087acc5c6 # initialize rs1
csrrs x18, mscratch, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf4995bd290d7b414 # initialize rs1
csrrs x19, mscratch, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xb6125cdcd09b1793 # initialize rs1
csrrs x20, mscratch, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xe04e573532ad840e # initialize rs1
csrrs x21, mscratch, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x70dda30c5ed630fd # initialize rs1
csrrs x22, mscratch, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xb5c418def4adc9c2 # initialize rs1
csrrs x23, mscratch, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x0f80a7b2675e8fc6 # initialize rs1
csrrs x24, mscratch, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xaf9b4234d06f50f4 # initialize rs1
csrrs x25, mscratch, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xb2078d2c847ef60a # initialize rs1
csrrs x26, mscratch, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x3c26f747aa50a098 # initialize rs1
csrrs x27, mscratch, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa490005da6e5754c # initialize rs1
csrrs x28, mscratch, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x3f6007d24d795424 # initialize rs1
csrrs x29, mscratch, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1a5f77a98245606a # initialize rs1
csrrs x30, mscratch, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xed9f5b76fc7be707 # initialize rs1
csrrs x31, mscratch, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x20, x21 # perform first operation
csrrs x31, mscratch, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x13, x15 # perform first operation
csrrs x10, mscratch, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x28, x18 # perform first operation
csrrs x6, mscratch, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x14, x1 # perform first operation
csrrs x3, mscratch, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x28, x16 # perform first operation
csrrs x28, mscratch, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x16, x20 # perform first operation
csrrs x20, mscratch, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x1, x6 # perform first operation
csrrs x22, mscratch, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x31, x29 # perform first operation
csrrs x5, mscratch, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x14, x11 # perform first operation
csrrs x2, mscratch, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x6, x25 # perform first operation
csrrs x6, mscratch, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x24, x28 # perform first operation
csrrs x28, mscratch, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x24, x10 # perform first operation
csrrs x9, mscratch, x14 # perform second (triggering) operation

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
