///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zknh/WALLY-COV-sha256sig1.S
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
li x0, 0x0c0b1aba71874a3e # initialize rs1
sha256sig1 x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xa3a5243ee8042f86 # initialize rs1
sha256sig1 x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x6ff6c64599ad7fbf # initialize rs1
sha256sig1 x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x0de6c96bd50786ac # initialize rs1
sha256sig1 x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xfd9a8b9d1bd55d4e # initialize rs1
sha256sig1 x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6d7410d8292c69f1 # initialize rs1
sha256sig1 x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4da884972fd1d9ef # initialize rs1
sha256sig1 x13, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x24fc6963aa68b125 # initialize rs1
sha256sig1 x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x5934c9c09d1784e9 # initialize rs1
sha256sig1 x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x7eeb39eaac0963da # initialize rs1
sha256sig1 x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x1bae1393e5826679 # initialize rs1
sha256sig1 x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x90562b5ea09890ba # initialize rs1
sha256sig1 x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x372d137e80b9840d # initialize rs1
sha256sig1 x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x1a6650a71e19b7d9 # initialize rs1
sha256sig1 x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x42c797e46843832d # initialize rs1
sha256sig1 x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x7e0dc84803ca7d9b # initialize rs1
sha256sig1 x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xbb1ac40cacd39b2f # initialize rs1
sha256sig1 x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xc862cb670a3b4384 # initialize rs1
sha256sig1 x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x5bae338ce4098320 # initialize rs1
sha256sig1 x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x8df5b15590e38a1c # initialize rs1
sha256sig1 x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x9d9cc9c285e6fa3f # initialize rs1
sha256sig1 x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x9352f0cfb1336895 # initialize rs1
sha256sig1 x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x8f00c257853e55f6 # initialize rs1
sha256sig1 x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xa15ff9cce48f1ea1 # initialize rs1
sha256sig1 x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x99a677efd14e4b7e # initialize rs1
sha256sig1 x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xf1782b8d29321c83 # initialize rs1
sha256sig1 x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x916b5d77d9ddb317 # initialize rs1
sha256sig1 x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xe1476e24949b0e75 # initialize rs1
sha256sig1 x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x24bceebd7db15eb9 # initialize rs1
sha256sig1 x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xe6433d5b65acaea0 # initialize rs1
sha256sig1 x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x7bd1cd84b99b05ac # initialize rs1
sha256sig1 x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x579ca78c8ecad3f8 # initialize rs1
sha256sig1 x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rd (Test destination rd = x0)
li x25, 0xa2f5d0bb654fd7b0 # initialize rs1
sha256sig1 x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x21, 0xc19e2636907b12dd # initialize rs1
sha256sig1 x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x3, 0x89be782119484bf3 # initialize rs1
sha256sig1 x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x8, 0xae264de647edaab9 # initialize rs1
sha256sig1 x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x6b86612f2a8a5bcd # initialize rs1
sha256sig1 x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0x190b06e5c79d0d65 # initialize rs1
sha256sig1 x5, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0xbc99c3c04d7576ce # initialize rs1
sha256sig1 x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x06f85dd67f579473 # initialize rs1
sha256sig1 x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x29, 0xe95d21b17192e534 # initialize rs1
sha256sig1 x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x30, 0xe430f6533359cddd # initialize rs1
sha256sig1 x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0x579fa1f7390519b8 # initialize rs1
sha256sig1 x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x20, 0x4eb5543ed452eacd # initialize rs1
sha256sig1 x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x25, 0xb0122a2d7cb6f07a # initialize rs1
sha256sig1 x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0x6a2133380844d3fa # initialize rs1
sha256sig1 x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x18, 0xd8ce251aee192625 # initialize rs1
sha256sig1 x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x21, 0xe52ebcd4cc961d36 # initialize rs1
sha256sig1 x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x10, 0xa6aa00a0ccb9cbe2 # initialize rs1
sha256sig1 x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x16, 0x37abef18175d04bf # initialize rs1
sha256sig1 x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x22, 0x643fbee895539bb7 # initialize rs1
sha256sig1 x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x21, 0xc2244e942e847237 # initialize rs1
sha256sig1 x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x16, 0xef7652e9fd07611d # initialize rs1
sha256sig1 x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x16, 0x9c2b62822a06e0a0 # initialize rs1
sha256sig1 x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0x118ed3166f8e4529 # initialize rs1
sha256sig1 x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x8, 0xbca00d8080c6a5d5 # initialize rs1
sha256sig1 x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x30, 0xdbb2f5d3076ade23 # initialize rs1
sha256sig1 x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0xc6be3a3b530eb755 # initialize rs1
sha256sig1 x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x21, 0xa76033d34b9f6aa2 # initialize rs1
sha256sig1 x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x28, 0x6d0c0116d31ed075 # initialize rs1
sha256sig1 x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x29, 0x5188e5b66cb5d7b0 # initialize rs1
sha256sig1 x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x28, 0x6f89abaf408ae3cd # initialize rs1
sha256sig1 x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x3f2b7e344cba91f9 # initialize rs1
sha256sig1 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x1, 0xd262d2d84a1ec3fb # initialize rs1
sha256sig1 x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x0000000000000000 # initialize rs1
sha256sig1 x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x0000000000000001 # initialize rs1
sha256sig1 x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x27, 0x0000000000000002 # initialize rs1
sha256sig1 x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x18, 0x8000000000000000 # initialize rs1
sha256sig1 x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x21, 0x8000000000000001 # initialize rs1
sha256sig1 x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
sha256sig1 x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
sha256sig1 x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x6, 0xffffffffffffffff # initialize rs1
sha256sig1 x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x6, 0xfffffffffffffffe # initialize rs1
sha256sig1 x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x8, 0x5bbc887763ae86f2 # initialize rs1
sha256sig1 x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
sha256sig1 x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x5555555555555555 # initialize rs1
sha256sig1 x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x10, 0x00000000ffffffff # initialize rs1
sha256sig1 x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0x00000000fffffffe # initialize rs1
sha256sig1 x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x20, 0x0000000100000000 # initialize rs1
sha256sig1 x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x8, 0x0000000100000001 # initialize rs1
sha256sig1 x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x9b4195c1e9082631 # initialize rs1
sha256sig1 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xbe4d541842f8ee9c # initialize rs1
sha256sig1 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xaacd1afc2a0b3c0a # initialize rs1
sha256sig1 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xc0a14e834aa0245b # initialize rs1
sha256sig1 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x47258aba1ec30e63 # initialize rs1
sha256sig1 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xae81d861bed6f6a4 # initialize rs1
sha256sig1 x5, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x1eb2970e19d53cc0 # initialize rs1
sha256sig1 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb30f3725ef4508f9 # initialize rs1
sha256sig1 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9d6961a8013e9151 # initialize rs1
sha256sig1 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xe57655c4ba73e426 # initialize rs1
sha256sig1 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x7a34bda3bf78477d # initialize rs1
sha256sig1 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x96ed69fd72c2231e # initialize rs1
sha256sig1 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf21b064f5147b5ae # initialize rs1
sha256sig1 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xa428e6abc39f0bd4 # initialize rs1
sha256sig1 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x3b7930960760d5c2 # initialize rs1
sha256sig1 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7cb60b5a6ed8fb50 # initialize rs1
sha256sig1 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x4565b8dadc1c0136 # initialize rs1
sha256sig1 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x3bc030243a8336e7 # initialize rs1
sha256sig1 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x3cb8113c526a8758 # initialize rs1
sha256sig1 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x47e594e81eb15a36 # initialize rs1
sha256sig1 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xae2d19801f81a8fb # initialize rs1
sha256sig1 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x80f39430ba67e25d # initialize rs1
sha256sig1 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb91a8d151167dbda # initialize rs1
sha256sig1 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xe0978319513a8480 # initialize rs1
sha256sig1 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x2a5f957f9616cb29 # initialize rs1
sha256sig1 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x8e27f054783b9f94 # initialize rs1
sha256sig1 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x1a54433209c49b02 # initialize rs1
sha256sig1 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x52ca07751899c988 # initialize rs1
sha256sig1 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x569fd0bf45dcabf0 # initialize rs1
sha256sig1 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x026908bfd30f9f60 # initialize rs1
sha256sig1 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x4fa93e0cb680c1cf # initialize rs1
sha256sig1 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xda898596c220f22f # initialize rs1
sha256sig1 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x20, x26 # perform first operation
sha256sig1 x23, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x25, x15 # perform first operation
sha256sig1 x21, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x2, x12 # perform first operation
sha256sig1 x29, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x9, x26 # perform first operation
sha256sig1 x26, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x1, x31 # perform first operation
sha256sig1 x23, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x8, x31 # perform first operation
sha256sig1 x31, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x11, x24 # perform first operation
sha256sig1 x3, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x30, x6 # perform first operation
sha256sig1 x9, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x1, x24 # perform first operation
sha256sig1 x28, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x18, x24 # perform first operation
sha256sig1 x18, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x26, x12, x18 # perform first operation
sha256sig1 x18, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x13, x14 # perform first operation
sha256sig1 x17, x5 # perform second (triggering) operation

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
