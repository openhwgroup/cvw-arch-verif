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

    

// ******************
// Tests from: WALLY-COV-sha256sig1.S
// ******************


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

#.EQU SIGSIZE,896


// ******************
// Tests from: WALLY-COV-sha512sig0.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xe907a28e405d4e10 # initialize rs1
sha512sig0 x28, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x4961fb9ba503fd81 # initialize rs1
sha512sig0 x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x7512247023749c51 # initialize rs1
sha512sig0 x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x3ae38c27d96555ca # initialize rs1
sha512sig0 x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x22b1b99c17c94052 # initialize rs1
sha512sig0 x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xda45c39efa1fc5ea # initialize rs1
sha512sig0 x20, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4f0f8cdf6eb7ace3 # initialize rs1
sha512sig0 x12, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaab262aa1b98e74c # initialize rs1
sha512sig0 x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xf0cca9ae0769fe32 # initialize rs1
sha512sig0 x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x3c0793196fcaae37 # initialize rs1
sha512sig0 x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x8dbca7732b025680 # initialize rs1
sha512sig0 x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x260808afc6fcb206 # initialize rs1
sha512sig0 x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x8db551750fb9e135 # initialize rs1
sha512sig0 x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xb7b90cc23e240fac # initialize rs1
sha512sig0 x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xcd55d75d2c5a17ed # initialize rs1
sha512sig0 x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xb322f31af3b8ff19 # initialize rs1
sha512sig0 x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x5489957b2a3270f3 # initialize rs1
sha512sig0 x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xf4c6e0a85e875dce # initialize rs1
sha512sig0 x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xd9a64c088db48494 # initialize rs1
sha512sig0 x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x268833f532e0d1f5 # initialize rs1
sha512sig0 x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x63dfe4fc2c2d92a2 # initialize rs1
sha512sig0 x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xb8ec9e02adce8dc5 # initialize rs1
sha512sig0 x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xda80a0a65bc418d1 # initialize rs1
sha512sig0 x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x38e801b5eeaaca3c # initialize rs1
sha512sig0 x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x955876ebd02fcb4e # initialize rs1
sha512sig0 x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xe5abbbfccfec6b89 # initialize rs1
sha512sig0 x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x7877a14903059658 # initialize rs1
sha512sig0 x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd04f05ea9c58660e # initialize rs1
sha512sig0 x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x45d9a9bdb5c2d9bc # initialize rs1
sha512sig0 x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xd43a32d6f8d6579c # initialize rs1
sha512sig0 x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x02955129af03eb8a # initialize rs1
sha512sig0 x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x7c1f1f2ff72a19fb # initialize rs1
sha512sig0 x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 248)

# Testcase cp_rd (Test destination rd = x0)
li x13, 0x590fcd71148eb94c # initialize rs1
sha512sig0 x0, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x9, 0xe81af3a971488db0 # initialize rs1
sha512sig0 x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x9, 0x1eead749199d2a9d # initialize rs1
sha512sig0 x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x26, 0x482d15c8937161b4 # initialize rs1
sha512sig0 x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x59c50736dc83c6d8 # initialize rs1
sha512sig0 x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x3, 0x1e82bfce01b53228 # initialize rs1
sha512sig0 x5, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x25, 0x051b266945f2b0f9 # initialize rs1
sha512sig0 x6, x25 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xea4c53eb2c426bc8 # initialize rs1
sha512sig0 x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x66a598d33d1f061f # initialize rs1
sha512sig0 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x21, 0xa42d011b9d570032 # initialize rs1
sha512sig0 x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x8, 0xc9f9b49990cf536a # initialize rs1
sha512sig0 x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x27, 0x062620ce487ac17e # initialize rs1
sha512sig0 x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x18, 0x5caadb6257c07c1c # initialize rs1
sha512sig0 x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x26, 0x07c9088e1292d114 # initialize rs1
sha512sig0 x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0xb2c08350819e57ab # initialize rs1
sha512sig0 x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0x67b0ece8a302aff0 # initialize rs1
sha512sig0 x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x15, 0x45dfaa50bfd095d1 # initialize rs1
sha512sig0 x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x7, 0x73d4a1d25f3d3f2b # initialize rs1
sha512sig0 x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x12, 0xae73f4fe8206eb37 # initialize rs1
sha512sig0 x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x6, 0x909d8d8ba31e20dd # initialize rs1
sha512sig0 x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x23, 0x6ea86115e87a063f # initialize rs1
sha512sig0 x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x24, 0xbf63b6dee8996fc0 # initialize rs1
sha512sig0 x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x27, 0x6319dcd69de2c150 # initialize rs1
sha512sig0 x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x13, 0xc66e379aa9291399 # initialize rs1
sha512sig0 x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x12, 0xf6a437c9d98cbbde # initialize rs1
sha512sig0 x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0x09f191b40834a658 # initialize rs1
sha512sig0 x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x21, 0x93415567b2f175a7 # initialize rs1
sha512sig0 x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x28, 0xf28b08a048ea21f1 # initialize rs1
sha512sig0 x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x14, 0x83708aa0fc3cd043 # initialize rs1
sha512sig0 x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x10, 0x18e5e4a1c7b3753f # initialize rs1
sha512sig0 x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xde5a06fed929b07a # initialize rs1
sha512sig0 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x21, 0x258f379b39f2ea62 # initialize rs1
sha512sig0 x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0x0000000000000000 # initialize rs1
sha512sig0 x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x0000000000000001 # initialize rs1
sha512sig0 x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x0000000000000002 # initialize rs1
sha512sig0 x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x27, 0x8000000000000000 # initialize rs1
sha512sig0 x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs1
sha512sig0 x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
sha512sig0 x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x29, 0x7ffffffffffffffe # initialize rs1
sha512sig0 x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x29, 0xffffffffffffffff # initialize rs1
sha512sig0 x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x8, 0xfffffffffffffffe # initialize rs1
sha512sig0 x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
sha512sig0 x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
sha512sig0 x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x5555555555555555 # initialize rs1
sha512sig0 x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x9, 0x00000000ffffffff # initialize rs1
sha512sig0 x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x27, 0x00000000fffffffe # initialize rs1
sha512sig0 x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x22, 0x0000000100000000 # initialize rs1
sha512sig0 x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x24, 0x0000000100000001 # initialize rs1
sha512sig0 x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x189d3a54a4e5096c # initialize rs1
sha512sig0 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xee44064a7d82459e # initialize rs1
sha512sig0 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xbf3cd3a58a4c84e7 # initialize rs1
sha512sig0 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x3d91aa3c0ce13200 # initialize rs1
sha512sig0 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2c559472a1be57b0 # initialize rs1
sha512sig0 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9fb35b0e392b2888 # initialize rs1
sha512sig0 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0d5283aad647cb1f # initialize rs1
sha512sig0 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4eece42a8a08c030 # initialize rs1
sha512sig0 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x0b24c6e295e0882a # initialize rs1
sha512sig0 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x214199c2521a6cc0 # initialize rs1
sha512sig0 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x6b9abd966ecaa9f6 # initialize rs1
sha512sig0 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x17a86b5df469410d # initialize rs1
sha512sig0 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x62780be91ab64e3a # initialize rs1
sha512sig0 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe16e1db2d79791b4 # initialize rs1
sha512sig0 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x5ae20848041d280e # initialize rs1
sha512sig0 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd44d5a901a1660f7 # initialize rs1
sha512sig0 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x8e6c6d31ef766c3a # initialize rs1
sha512sig0 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x3875008210c9f318 # initialize rs1
sha512sig0 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6c553150b075caab # initialize rs1
sha512sig0 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x60aa0c4a3db86f11 # initialize rs1
sha512sig0 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x1d72625ca0e86f94 # initialize rs1
sha512sig0 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf8e5c5e3d8df9c20 # initialize rs1
sha512sig0 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xee6266d76c72676b # initialize rs1
sha512sig0 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x4c7e1cee7dcdd09d # initialize rs1
sha512sig0 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x867e7302794917ab # initialize rs1
sha512sig0 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xb6633e66d9dc1fd5 # initialize rs1
sha512sig0 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xddf2dbdbb223460a # initialize rs1
sha512sig0 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb3305e53233bb5e1 # initialize rs1
sha512sig0 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x9a3423a0bee26b6b # initialize rs1
sha512sig0 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x41c519fa662b1e2c # initialize rs1
sha512sig0 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xe2272465bf4fc840 # initialize rs1
sha512sig0 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xdec62ed0ca2d5163 # initialize rs1
sha512sig0 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x31, x27 # perform first operation
sha512sig0 x3, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x24, x21 # perform first operation
sha512sig0 x13, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x3, x22 # perform first operation
sha512sig0 x10, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x28, x27 # perform first operation
sha512sig0 x28, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x30, x6 # perform first operation
sha512sig0 x6, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x16, x31 # perform first operation
sha512sig0 x24, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x1, x15 # perform first operation
sha512sig0 x12, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x20, x15 # perform first operation
sha512sig0 x27, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x18, x10 # perform first operation
sha512sig0 x12, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x25, x31 # perform first operation
sha512sig0 x25, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x14, x15 # perform first operation
sha512sig0 x15, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x19, x31 # perform first operation
sha512sig0 x23, x26 # perform second (triggering) operation

#.EQU SIGSIZE,896


// ******************
// Tests from: WALLY-COV-sha512sum0.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x27bd982a1fd587e8 # initialize rs1
sha512sum0 x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xa4b1faf145782725 # initialize rs1
sha512sum0 x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb3f89754cf035ed5 # initialize rs1
sha512sum0 x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xbae114e8fc46f534 # initialize rs1
sha512sum0 x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x005c58c9d748f563 # initialize rs1
sha512sum0 x12, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7629d76aad38a432 # initialize rs1
sha512sum0 x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0xf5b220761342c8c4 # initialize rs1
sha512sum0 x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x76f1ad9eea402e29 # initialize rs1
sha512sum0 x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xb91d305c47a10f32 # initialize rs1
sha512sum0 x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x0d8a24dddc167bd0 # initialize rs1
sha512sum0 x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x467a7374984fa914 # initialize rs1
sha512sum0 x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xbec5806077e399d7 # initialize rs1
sha512sum0 x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x9bd527ccf6d5a60a # initialize rs1
sha512sum0 x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa62171ded3cae6cd # initialize rs1
sha512sum0 x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xf8a5f168acb47cef # initialize rs1
sha512sum0 x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xe8726229abe81407 # initialize rs1
sha512sum0 x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xa670357886b6663a # initialize rs1
sha512sum0 x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xc3a1a378696a85ae # initialize rs1
sha512sum0 x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x9b9e4e9364ef0381 # initialize rs1
sha512sum0 x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x77d7f019c002ab10 # initialize rs1
sha512sum0 x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xdd873ee890b0de1d # initialize rs1
sha512sum0 x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x2321b1d293096f13 # initialize rs1
sha512sum0 x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xf5278967f690bd84 # initialize rs1
sha512sum0 x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x50d4a6d7cb11c6bc # initialize rs1
sha512sum0 x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xd1567d1de8a572b6 # initialize rs1
sha512sum0 x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x803b7a22f2fda111 # initialize rs1
sha512sum0 x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x2d50a3eb94dc6664 # initialize rs1
sha512sum0 x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd3e27e4df505772c # initialize rs1
sha512sum0 x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x53bb9f8c83e068ba # initialize rs1
sha512sum0 x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xf2d380146b868015 # initialize rs1
sha512sum0 x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xb13716e53a521639 # initialize rs1
sha512sum0 x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xb72a8983e684eecd # initialize rs1
sha512sum0 x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rd (Test destination rd = x0)
li x25, 0x1013596cff99b0a9 # initialize rs1
sha512sum0 x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x24, 0xcbcf3e696314fcec # initialize rs1
sha512sum0 x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0x4cc086aa805ee562 # initialize rs1
sha512sum0 x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x24, 0x28efa2c303bdf128 # initialize rs1
sha512sum0 x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0xe1313135df752924 # initialize rs1
sha512sum0 x4, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0xd0a678dcb311b2c5 # initialize rs1
sha512sum0 x5, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x16, 0xfc13028d54d7f149 # initialize rs1
sha512sum0 x6, x16 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x21, 0xee4166d34aeb11c7 # initialize rs1
sha512sum0 x7, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x29, 0xbcc1891551dc653b # initialize rs1
sha512sum0 x8, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0xcf3a051147085307 # initialize rs1
sha512sum0 x9, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x7, 0x145587a8a02bf53b # initialize rs1
sha512sum0 x10, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x22, 0x2b8926e25e3d9a91 # initialize rs1
sha512sum0 x11, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0x3fa9cd15bbb0dbeb # initialize rs1
sha512sum0 x12, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x1, 0x04f4d6266aa93d5c # initialize rs1
sha512sum0 x13, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0x8f64d1b7ba4296b7 # initialize rs1
sha512sum0 x14, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0x3e3ae243357684fd # initialize rs1
sha512sum0 x15, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x13, 0x792b6ce359b3cf12 # initialize rs1
sha512sum0 x16, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0xb6ad2c7c66f9096d # initialize rs1
sha512sum0 x17, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x7, 0x727b0348b577690f # initialize rs1
sha512sum0 x18, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x4, 0xbb713e29e4a35933 # initialize rs1
sha512sum0 x19, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x14, 0x004d1aef9e5cf994 # initialize rs1
sha512sum0 x20, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x25, 0xb3e78490c1a0b502 # initialize rs1
sha512sum0 x21, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x15, 0xcf7ca2c2687bee6d # initialize rs1
sha512sum0 x22, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x27, 0xf01f72bbc1a5c429 # initialize rs1
sha512sum0 x23, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x20, 0xa36df4c22764bef1 # initialize rs1
sha512sum0 x24, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x18, 0x6fcc905f4507c5fb # initialize rs1
sha512sum0 x25, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x15, 0xe248d6307bd3b48c # initialize rs1
sha512sum0 x26, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x20, 0x84a0c77809b8e1dc # initialize rs1
sha512sum0 x27, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x27, 0x2d0db8743692425c # initialize rs1
sha512sum0 x28, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x19, 0xbf2f019260970bb5 # initialize rs1
sha512sum0 x29, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x7, 0xf55422e82019b30b # initialize rs1
sha512sum0 x30, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x3, 0x8768c60bfbb88698 # initialize rs1
sha512sum0 x31, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x0000000000000000 # initialize rs1
sha512sum0 x22, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x0000000000000001 # initialize rs1
sha512sum0 x3, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x0000000000000002 # initialize rs1
sha512sum0 x20, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x9, 0x8000000000000000 # initialize rs1
sha512sum0 x22, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x16, 0x8000000000000001 # initialize rs1
sha512sum0 x6, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
sha512sum0 x12, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rs1
sha512sum0 x19, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
sha512sum0 x2, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
sha512sum0 x12, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x3, 0x5bbc887763ae86f2 # initialize rs1
sha512sum0 x1, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
sha512sum0 x10, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x6, 0x5555555555555555 # initialize rs1
sha512sum0 x15, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x3, 0x00000000ffffffff # initialize rs1
sha512sum0 x25, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0x00000000fffffffe # initialize rs1
sha512sum0 x13, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x21, 0x0000000100000000 # initialize rs1
sha512sum0 x22, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x19, 0x0000000100000001 # initialize rs1
sha512sum0 x31, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc1b490c212ec6644 # initialize rs1
sha512sum0 x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xf979ddace363289e # initialize rs1
sha512sum0 x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x442a68b6164b5035 # initialize rs1
sha512sum0 x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xe3e5dc73380f8d23 # initialize rs1
sha512sum0 x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x82afe653d9edae1c # initialize rs1
sha512sum0 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb4797f0503497d5d # initialize rs1
sha512sum0 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb9205afb7b50908d # initialize rs1
sha512sum0 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xba1039617e7e5bc6 # initialize rs1
sha512sum0 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x6ebb2368bce31b12 # initialize rs1
sha512sum0 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x15e8013594d9c924 # initialize rs1
sha512sum0 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x14c0e235a5e21969 # initialize rs1
sha512sum0 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xbf337fe31558868f # initialize rs1
sha512sum0 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa0eb0a987d3caf5c # initialize rs1
sha512sum0 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd8f1c8890ff30111 # initialize rs1
sha512sum0 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x36bfe2ea1d7edd48 # initialize rs1
sha512sum0 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x0270710e573a2cf5 # initialize rs1
sha512sum0 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x2f04217c93ff8439 # initialize rs1
sha512sum0 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x22089fc490c8bb3c # initialize rs1
sha512sum0 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x8e74ea5edf35daed # initialize rs1
sha512sum0 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xe026e4b7c4bfd9b7 # initialize rs1
sha512sum0 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x52fa78e7b91b6b12 # initialize rs1
sha512sum0 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x5b9c0f7f70d8ad98 # initialize rs1
sha512sum0 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x769f44f33e9c77b9 # initialize rs1
sha512sum0 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd386524f6256b40f # initialize rs1
sha512sum0 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xb7e0c5c68279875c # initialize rs1
sha512sum0 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x23bacb37d15d6da8 # initialize rs1
sha512sum0 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xf375cf1c133315d6 # initialize rs1
sha512sum0 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x0ca48be31e29fb57 # initialize rs1
sha512sum0 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x6d2b28c02cff1eb8 # initialize rs1
sha512sum0 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x81b1d60c3aa5dfcc # initialize rs1
sha512sum0 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x75443d56bdffd8d3 # initialize rs1
sha512sum0 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe5b570d97b2da70c # initialize rs1
sha512sum0 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x23, x2 # perform first operation
sha512sum0 x14, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x7, x25 # perform first operation
sha512sum0 x1, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x8, x1 # perform first operation
sha512sum0 x28, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x14, x7 # perform first operation
sha512sum0 x14, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x12, x29 # perform first operation
sha512sum0 x24, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x18, x6 # perform first operation
sha512sum0 x6, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x25, x11 # perform first operation
sha512sum0 x23, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x2, x14 # perform first operation
sha512sum0 x9, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x29, x21 # perform first operation
sha512sum0 x25, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x27, x21 # perform first operation
sha512sum0 x27, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x9, x18 # perform first operation
sha512sum0 x18, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x7, x10 # perform first operation
sha512sum0 x2, x31 # perform second (triggering) operation

#.EQU SIGSIZE,896


// ******************
// Tests from: WALLY-COV-sha512sig1.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x7be5347704c0de1e # initialize rs1
sha512sig1 x1, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x1f8b5072ab3f3342 # initialize rs1
sha512sig1 x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x9b9ce65ee007d1b3 # initialize rs1
sha512sig1 x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x12b27b7132038dd5 # initialize rs1
sha512sig1 x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x87bc6874bd2c0c25 # initialize rs1
sha512sig1 x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x837236e3288a211b # initialize rs1
sha512sig1 x27, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x66a7e3a2b5511c8c # initialize rs1
sha512sig1 x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x922bfd87eab66885 # initialize rs1
sha512sig1 x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x839a8ed81b84f63b # initialize rs1
sha512sig1 x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x04a05114bbcd54f3 # initialize rs1
sha512sig1 x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x71001662c4ed0621 # initialize rs1
sha512sig1 x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x67a132d8ba161abf # initialize rs1
sha512sig1 x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x12895025ee6c2915 # initialize rs1
sha512sig1 x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xcffe749dc1f0925b # initialize rs1
sha512sig1 x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xead927415947402f # initialize rs1
sha512sig1 x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x820ac4adc58dc38c # initialize rs1
sha512sig1 x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x754b1f2d8b260a9e # initialize rs1
sha512sig1 x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8a6ab93dac367b7a # initialize rs1
sha512sig1 x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xa03279cfd276f575 # initialize rs1
sha512sig1 x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x91b8ba79e8573ce8 # initialize rs1
sha512sig1 x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xdc4205a241a627d3 # initialize rs1
sha512sig1 x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x8dd45d2f6bf260cd # initialize rs1
sha512sig1 x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xed48bcdef09c90fd # initialize rs1
sha512sig1 x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xd3bb971bfcc98ff2 # initialize rs1
sha512sig1 x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xac010660b905c5f0 # initialize rs1
sha512sig1 x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xcd3deb3eab0ec8a2 # initialize rs1
sha512sig1 x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x51f639bad1a6a4e4 # initialize rs1
sha512sig1 x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x80280ca91779ebdf # initialize rs1
sha512sig1 x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xf321fe101117d7d6 # initialize rs1
sha512sig1 x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x0f721d5ed3c26c8f # initialize rs1
sha512sig1 x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xce34ff40eef8920e # initialize rs1
sha512sig1 x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x4287d592cc9f1408 # initialize rs1
sha512sig1 x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x0)
li x22, 0x2584583fd3115135 # initialize rs1
sha512sig1 x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x17, 0xe7e5807a82366cb7 # initialize rs1
sha512sig1 x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0x996b0bca6eca27cd # initialize rs1
sha512sig1 x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x27, 0x373690c1bb2266c9 # initialize rs1
sha512sig1 x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x8a58b8a50e6be2b5 # initialize rs1
sha512sig1 x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0xc02fb037d0fef46e # initialize rs1
sha512sig1 x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0x7b2cdfd368be0887 # initialize rs1
sha512sig1 x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xa6d5819f69ab7d6a # initialize rs1
sha512sig1 x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x14, 0x6ddc0181311c0b44 # initialize rs1
sha512sig1 x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x6, 0x4e22390b580226bf # initialize rs1
sha512sig1 x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x7, 0x3f370c7defba8ead # initialize rs1
sha512sig1 x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x18, 0x488bbfd9859489aa # initialize rs1
sha512sig1 x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x5, 0x9889b939364ce187 # initialize rs1
sha512sig1 x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x30, 0x7b873f1ea6a1ef25 # initialize rs1
sha512sig1 x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x19, 0x9d53ce815372e866 # initialize rs1
sha512sig1 x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x9, 0xe9d6b23f58d409f7 # initialize rs1
sha512sig1 x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x9, 0x24d21974a6894e3e # initialize rs1
sha512sig1 x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x18, 0xd65c8e3adf4b200e # initialize rs1
sha512sig1 x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x31, 0xe50f0eed72c47ca9 # initialize rs1
sha512sig1 x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x27, 0xe4cfcad4e723f4e8 # initialize rs1
sha512sig1 x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x4fd148270e058671 # initialize rs1
sha512sig1 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x8, 0x0459fdcff36fcfe8 # initialize rs1
sha512sig1 x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x7, 0xfc2bf9bc5740f036 # initialize rs1
sha512sig1 x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x7, 0x47b821c943788c4b # initialize rs1
sha512sig1 x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x27, 0x0ff8db26c7d1eae4 # initialize rs1
sha512sig1 x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x17, 0x9181e70c7899ba23 # initialize rs1
sha512sig1 x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x28, 0xc5b5fad563c3eb77 # initialize rs1
sha512sig1 x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0x5056efb0a2dc8e6a # initialize rs1
sha512sig1 x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x26, 0x2a6668d019401b50 # initialize rs1
sha512sig1 x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x25, 0x3db0c48046250985 # initialize rs1
sha512sig1 x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x3, 0x42f55edb67eeb65c # initialize rs1
sha512sig1 x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x3, 0x890996ac689cc78b # initialize rs1
sha512sig1 x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x0000000000000000 # initialize rs1
sha512sig1 x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x0000000000000001 # initialize rs1
sha512sig1 x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0x0000000000000002 # initialize rs1
sha512sig1 x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x28, 0x8000000000000000 # initialize rs1
sha512sig1 x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x24, 0x8000000000000001 # initialize rs1
sha512sig1 x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
sha512sig1 x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
sha512sig1 x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
sha512sig1 x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs1
sha512sig1 x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
sha512sig1 x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
sha512sig1 x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x2, 0x5555555555555555 # initialize rs1
sha512sig1 x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
sha512sig1 x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0x00000000fffffffe # initialize rs1
sha512sig1 x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x10, 0x0000000100000000 # initialize rs1
sha512sig1 x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x16, 0x0000000100000001 # initialize rs1
sha512sig1 x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xb7f47773158aeda9 # initialize rs1
sha512sig1 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x0bbb295603d55a18 # initialize rs1
sha512sig1 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x280ce8e98ef817fa # initialize rs1
sha512sig1 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xbf54ea776bd705c3 # initialize rs1
sha512sig1 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6c9c7985068a56d4 # initialize rs1
sha512sig1 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd6d1a0964af4057d # initialize rs1
sha512sig1 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4ac7d4929b4c9f01 # initialize rs1
sha512sig1 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8f074e1e97a835a5 # initialize rs1
sha512sig1 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8073817eaba86752 # initialize rs1
sha512sig1 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x30fca257b944ce6f # initialize rs1
sha512sig1 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x2a53df96435c18b7 # initialize rs1
sha512sig1 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x79c13772eaf00126 # initialize rs1
sha512sig1 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf3dd24b1b770305e # initialize rs1
sha512sig1 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x04f04af8ae457067 # initialize rs1
sha512sig1 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x5a68b4ac7d0bd531 # initialize rs1
sha512sig1 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd5179ca13bbeb18d # initialize rs1
sha512sig1 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x206af569f7c60324 # initialize rs1
sha512sig1 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xd30b35051af44be9 # initialize rs1
sha512sig1 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xec558d07d4221962 # initialize rs1
sha512sig1 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xbb66a3165d49acbc # initialize rs1
sha512sig1 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x40161b5cff95b824 # initialize rs1
sha512sig1 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x913d00267d13ac07 # initialize rs1
sha512sig1 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xed989700f7a40e63 # initialize rs1
sha512sig1 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x139583cbc1b15f31 # initialize rs1
sha512sig1 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x6f983e2fe94cdc1c # initialize rs1
sha512sig1 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x82dac771ad30b08b # initialize rs1
sha512sig1 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xbbf81c920fe9e8d2 # initialize rs1
sha512sig1 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x05ae94e928c9c5b5 # initialize rs1
sha512sig1 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x67b84b3ef8e2d348 # initialize rs1
sha512sig1 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xdf89923d1338d970 # initialize rs1
sha512sig1 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x8d5643ae64b53b50 # initialize rs1
sha512sig1 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xcfbe387bdfe75ab5 # initialize rs1
sha512sig1 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x18, x26 # perform first operation
sha512sig1 x16, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x16, x20 # perform first operation
sha512sig1 x8, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x3, x17 # perform first operation
sha512sig1 x1, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x11, x6 # perform first operation
sha512sig1 x15, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x3, x7 # perform first operation
sha512sig1 x12, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x18, x24 # perform first operation
sha512sig1 x25, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x18, x25 # perform first operation
sha512sig1 x24, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x3, x30 # perform first operation
sha512sig1 x29, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x10, x21 # perform first operation
sha512sig1 x15, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x5, x17 # perform first operation
sha512sig1 x5, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x15, x3 # perform first operation
sha512sig1 x3, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x19, x13 # perform first operation
sha512sig1 x15, x7 # perform second (triggering) operation

#.EQU SIGSIZE,896


// ******************
// Tests from: WALLY-COV-sha256sum0.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x927d86822d067f05 # initialize rs1
sha256sum0 x7, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xfd104de9f8fc08dc # initialize rs1
sha256sum0 x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x7407677c60ab0f0b # initialize rs1
sha256sum0 x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xec5dff4b6486d566 # initialize rs1
sha256sum0 x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xfeb860dcf7ce6041 # initialize rs1
sha256sum0 x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x489fc586813ef790 # initialize rs1
sha256sum0 x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x72bc39bf439ad02b # initialize rs1
sha256sum0 x20, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc5f3c618eb9c32d2 # initialize rs1
sha256sum0 x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x151096708ad03f14 # initialize rs1
sha256sum0 x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x0cbb36849b589503 # initialize rs1
sha256sum0 x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x2abb92a5a81b5d4a # initialize rs1
sha256sum0 x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x74b63149712b1f3c # initialize rs1
sha256sum0 x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x5bd969fd3945bc76 # initialize rs1
sha256sum0 x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xadc508076f8a52b0 # initialize rs1
sha256sum0 x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xac6d6bfa2d798346 # initialize rs1
sha256sum0 x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1cf220d1beb5d32d # initialize rs1
sha256sum0 x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x7b60dc8cb60b15c6 # initialize rs1
sha256sum0 x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xb948724e5e3e35d8 # initialize rs1
sha256sum0 x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x59daa9eedbd2a745 # initialize rs1
sha256sum0 x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x1e7ca89c8fca3b85 # initialize rs1
sha256sum0 x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x9aaaf6ae4a85d1ac # initialize rs1
sha256sum0 x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xa0175166711696cf # initialize rs1
sha256sum0 x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x8ab7f4c00a490f6b # initialize rs1
sha256sum0 x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x48c35941bfc57b96 # initialize rs1
sha256sum0 x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xdbba6fa02b3a9a73 # initialize rs1
sha256sum0 x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xcf26e55001f168b0 # initialize rs1
sha256sum0 x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x31bd453295e076d0 # initialize rs1
sha256sum0 x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x72c722b8ac74ad68 # initialize rs1
sha256sum0 x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xda6b734c77b97c66 # initialize rs1
sha256sum0 x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x9d6a68128c98bcc8 # initialize rs1
sha256sum0 x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xad6f6fc6b3826d84 # initialize rs1
sha256sum0 x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x6d361f8a7194fe1b # initialize rs1
sha256sum0 x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rd (Test destination rd = x0)
li x25, 0xe5c5b317bb290dbe # initialize rs1
sha256sum0 x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x18, 0xd858e0287c46db54 # initialize rs1
sha256sum0 x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x26, 0xdfea11118ea7ccdf # initialize rs1
sha256sum0 x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x20, 0x0a4b0b8a27ff4fe2 # initialize rs1
sha256sum0 x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x04f183b8835e63ba # initialize rs1
sha256sum0 x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x2, 0x0994fc0d5345df14 # initialize rs1
sha256sum0 x5, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0xb6a6e45da3dc6e51 # initialize rs1
sha256sum0 x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0xab1da6e7118ea042 # initialize rs1
sha256sum0 x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x20, 0xda519e187e72a344 # initialize rs1
sha256sum0 x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x12, 0x1ac06a652e96e2db # initialize rs1
sha256sum0 x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0xda7c1e28527779e7 # initialize rs1
sha256sum0 x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x28, 0x0d1f135990964d70 # initialize rs1
sha256sum0 x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x7, 0xa9338c5b0d41f68e # initialize rs1
sha256sum0 x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0x5b9d59d307162a63 # initialize rs1
sha256sum0 x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x24, 0x9d7628de5eb84342 # initialize rs1
sha256sum0 x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x16, 0x5aef54cd0eebeccc # initialize rs1
sha256sum0 x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x14, 0x5ced26e51f11a249 # initialize rs1
sha256sum0 x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x14, 0x8d6751a6ae2980fb # initialize rs1
sha256sum0 x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x11, 0x03d7895d58396811 # initialize rs1
sha256sum0 x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x3, 0x5e30278748d12d90 # initialize rs1
sha256sum0 x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x26, 0x8ae71ea86f118c00 # initialize rs1
sha256sum0 x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x24, 0x7e2ef9c69ae23215 # initialize rs1
sha256sum0 x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x27, 0xc5d9855e9a8756b2 # initialize rs1
sha256sum0 x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x10, 0x26a1739e2c796600 # initialize rs1
sha256sum0 x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x5, 0x10ea7a4a955f1bc0 # initialize rs1
sha256sum0 x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x28, 0x47613f5a281bd81f # initialize rs1
sha256sum0 x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x24, 0x063ad48731ab1387 # initialize rs1
sha256sum0 x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x23, 0x67737080c6f0ef57 # initialize rs1
sha256sum0 x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x26, 0x36c9786f99adcb31 # initialize rs1
sha256sum0 x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x26, 0xf5859bb121e74ad9 # initialize rs1
sha256sum0 x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x1, 0x4cd16fc27a602e89 # initialize rs1
sha256sum0 x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x12, 0x6a89f827dee1992c # initialize rs1
sha256sum0 x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x11, 0x0000000000000000 # initialize rs1
sha256sum0 x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0x0000000000000001 # initialize rs1
sha256sum0 x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x20, 0x0000000000000002 # initialize rs1
sha256sum0 x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x29, 0x8000000000000000 # initialize rs1
sha256sum0 x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x11, 0x8000000000000001 # initialize rs1
sha256sum0 x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
sha256sum0 x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x20, 0x7ffffffffffffffe # initialize rs1
sha256sum0 x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
sha256sum0 x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x9, 0xfffffffffffffffe # initialize rs1
sha256sum0 x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x21, 0x5bbc887763ae86f2 # initialize rs1
sha256sum0 x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
sha256sum0 x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0x5555555555555555 # initialize rs1
sha256sum0 x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
sha256sum0 x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0x00000000fffffffe # initialize rs1
sha256sum0 x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x12, 0x0000000100000000 # initialize rs1
sha256sum0 x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x16, 0x0000000100000001 # initialize rs1
sha256sum0 x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xe2a9db96e7a62344 # initialize rs1
sha256sum0 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x9fa122ede57db740 # initialize rs1
sha256sum0 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x94959aef2079caed # initialize rs1
sha256sum0 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x4e3f9d7623506b36 # initialize rs1
sha256sum0 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x97b86da3a0e35a05 # initialize rs1
sha256sum0 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x790f023c2392950b # initialize rs1
sha256sum0 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcb02245f7a3dd86a # initialize rs1
sha256sum0 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3ab43b1f9709f29c # initialize rs1
sha256sum0 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf8a9090b50108dfa # initialize rs1
sha256sum0 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x0af3c66f0e40a2dc # initialize rs1
sha256sum0 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x17f8775a6c287bbc # initialize rs1
sha256sum0 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x32a42e386728c3f1 # initialize rs1
sha256sum0 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xfac7875c3175ecb7 # initialize rs1
sha256sum0 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xdb8748ea40bb8c1a # initialize rs1
sha256sum0 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xefd1ccc297493558 # initialize rs1
sha256sum0 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x74e1f1560271789c # initialize rs1
sha256sum0 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x23f05502dd695781 # initialize rs1
sha256sum0 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x4897581563e67792 # initialize rs1
sha256sum0 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xe87b814403b059e4 # initialize rs1
sha256sum0 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xec57232fb96e42e4 # initialize rs1
sha256sum0 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x1fe356aeb7176cfe # initialize rs1
sha256sum0 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x326c8248562d146f # initialize rs1
sha256sum0 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xbd8fc0bb8aac0011 # initialize rs1
sha256sum0 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x1cfba62094b012cb # initialize rs1
sha256sum0 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x60d354bdfe2ed3ff # initialize rs1
sha256sum0 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xec1c73ca4189e7cf # initialize rs1
sha256sum0 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xcedadda30bcc268e # initialize rs1
sha256sum0 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x7cf3ab6b5d9caa3e # initialize rs1
sha256sum0 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x2dea436afafd2ad7 # initialize rs1
sha256sum0 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x2b365bfc41de6f7b # initialize rs1
sha256sum0 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x509ed9e83c1389a7 # initialize rs1
sha256sum0 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x27ac1dc09259b2a4 # initialize rs1
sha256sum0 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x31, x15 # perform first operation
sha256sum0 x13, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x6, x19 # perform first operation
sha256sum0 x15, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x9, x26 # perform first operation
sha256sum0 x8, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x27, x9 # perform first operation
sha256sum0 x11, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x16, x12 # perform first operation
sha256sum0 x16, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x23, x9 # perform first operation
sha256sum0 x2, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x9, x30 # perform first operation
sha256sum0 x10, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x20, x5 # perform first operation
sha256sum0 x18, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x12, x25 # perform first operation
sha256sum0 x9, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x11, x21 # perform first operation
sha256sum0 x11, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x12, x7 # perform first operation
sha256sum0 x7, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x11, x15 # perform first operation
sha256sum0 x14, x21 # perform second (triggering) operation

#.EQU SIGSIZE,896


// ******************
// Tests from: WALLY-COV-sha256sig0.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x585b572507775b64 # initialize rs1
sha256sig0 x25, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8e6fa824d008b50f # initialize rs1
sha256sig0 x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xbc2f279649614bbb # initialize rs1
sha256sig0 x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb5b30620d06c1cd9 # initialize rs1
sha256sig0 x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x422a0a0c78461b4c # initialize rs1
sha256sig0 x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd920928141a1e3f5 # initialize rs1
sha256sig0 x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x779e02b790c3b722 # initialize rs1
sha256sig0 x17, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x17, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xffadbc19f331b43e # initialize rs1
sha256sig0 x27, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9199a2a450417eb7 # initialize rs1
sha256sig0 x13, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x703dc036a8429a04 # initialize rs1
sha256sig0 x3, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x8af088b1f84ebbfe # initialize rs1
sha256sig0 x20, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x78e41a851d205bc1 # initialize rs1
sha256sig0 x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x737bfe8be9d43b64 # initialize rs1
sha256sig0 x23, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x47e1c67144961339 # initialize rs1
sha256sig0 x21, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x2b412e4d70f1b962 # initialize rs1
sha256sig0 x17, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xffaf6bdb631ae123 # initialize rs1
sha256sig0 x27, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x7300b10e42290f32 # initialize rs1
sha256sig0 x20, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8ebca664e6c07578 # initialize rs1
sha256sig0 x7, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xcba45dc4601ea6cd # initialize rs1
sha256sig0 x23, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xedad4b3159237211 # initialize rs1
sha256sig0 x31, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xd1d051a24cc6bc00 # initialize rs1
sha256sig0 x26, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xd7fe03976de88b2f # initialize rs1
sha256sig0 x19, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x52bfeb44cde89fee # initialize rs1
sha256sig0 x13, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xa684f4f8fecb8ab9 # initialize rs1
sha256sig0 x13, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x38d7bc9be729a1bb # initialize rs1
sha256sig0 x25, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x76dfab961157f3d7 # initialize rs1
sha256sig0 x3, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x9a981493f6cba85d # initialize rs1
sha256sig0 x11, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x89a563639da78e74 # initialize rs1
sha256sig0 x23, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x9cbfd8162ebca732 # initialize rs1
sha256sig0 x21, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xcc02457ac1c8f536 # initialize rs1
sha256sig0 x28, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x0e48f315651564b3 # initialize rs1
sha256sig0 x25, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x3e6e066b837b1482 # initialize rs1
sha256sig0 x18, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 248)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0x10c2297ccd31d7e7 # initialize rs1
sha256sig0 x0, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x13, 0x727f2e338239e639 # initialize rs1
sha256sig0 x1, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x26, 0xa57559b7f53a79de # initialize rs1
sha256sig0 x2, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0xf58ccb17518f5761 # initialize rs1
sha256sig0 x3, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
li x16, 0xed148835ff29b9da # initialize rs1
sha256sig0 x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0x2eed510f431bae86 # initialize rs1
sha256sig0 x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0xf6bb8ed5d5b00588 # initialize rs1
sha256sig0 x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x30, 0xdd32832cb4dde737 # initialize rs1
sha256sig0 x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x9, 0x4d39f67aa1df4801 # initialize rs1
sha256sig0 x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x23, 0x762deb7501bff39e # initialize rs1
sha256sig0 x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x1, 0x4519d161d6240faf # initialize rs1
sha256sig0 x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x21, 0xcaa2b15555777cb3 # initialize rs1
sha256sig0 x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x30, 0x3d4879ae9a7eff94 # initialize rs1
sha256sig0 x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x23, 0xc45a16f073be9827 # initialize rs1
sha256sig0 x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0x67eb554b0cd0ab69 # initialize rs1
sha256sig0 x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x11, 0xc757a0f5ed754d5e # initialize rs1
sha256sig0 x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x6, 0xced8e601f4a173d6 # initialize rs1
sha256sig0 x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x15, 0xd92ea87ccd4bb914 # initialize rs1
sha256sig0 x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x28, 0xf949ed01a2fc473c # initialize rs1
sha256sig0 x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x7, 0x25a44272f9e16dfe # initialize rs1
sha256sig0 x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x5, 0x46fd178fb3585957 # initialize rs1
sha256sig0 x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x16, 0xd5e670a486b245bc # initialize rs1
sha256sig0 x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0xb2735603eb3782b0 # initialize rs1
sha256sig0 x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x3, 0x5d770147969b92e2 # initialize rs1
sha256sig0 x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x23, 0xf6c438dd2e1b54e8 # initialize rs1
sha256sig0 x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0xeba3616ed20467c0 # initialize rs1
sha256sig0 x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x5, 0x430bc41f3bff57c3 # initialize rs1
sha256sig0 x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x15, 0xa9de2fef7115b187 # initialize rs1
sha256sig0 x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x12, 0x340724a09d92df37 # initialize rs1
sha256sig0 x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x16, 0x06d151883d667072 # initialize rs1
sha256sig0 x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x6, 0x793bb5095dbc051a # initialize rs1
sha256sig0 x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x14, 0x1e63f101920c6001 # initialize rs1
sha256sig0 x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x0000000000000000 # initialize rs1
sha256sig0 x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0x0000000000000001 # initialize rs1
sha256sig0 x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x0000000000000002 # initialize rs1
sha256sig0 x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x19, 0x8000000000000000 # initialize rs1
sha256sig0 x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x2, 0x8000000000000001 # initialize rs1
sha256sig0 x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
sha256sig0 x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x21, 0x7ffffffffffffffe # initialize rs1
sha256sig0 x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs1
sha256sig0 x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x22, 0xfffffffffffffffe # initialize rs1
sha256sig0 x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x19, 0x5bbc887763ae86f2 # initialize rs1
sha256sig0 x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
sha256sig0 x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x20, 0x5555555555555555 # initialize rs1
sha256sig0 x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x6, 0x00000000ffffffff # initialize rs1
sha256sig0 x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0x00000000fffffffe # initialize rs1
sha256sig0 x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x19, 0x0000000100000000 # initialize rs1
sha256sig0 x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x21, 0x0000000100000001 # initialize rs1
sha256sig0 x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x5ee54b14c2b107b3 # initialize rs1
sha256sig0 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xc5bf55ae3253b7a3 # initialize rs1
sha256sig0 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x5cbe808040d25cbb # initialize rs1
sha256sig0 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd66e32f3dcec0ed6 # initialize rs1
sha256sig0 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3e732f4450b9eb0d # initialize rs1
sha256sig0 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9dabe1a7e327fc4c # initialize rs1
sha256sig0 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb6b5b8caec543a59 # initialize rs1
sha256sig0 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa7b36edfba4f93d5 # initialize rs1
sha256sig0 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x4bd0746707de5ff1 # initialize rs1
sha256sig0 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x77b8a697ef19e08a # initialize rs1
sha256sig0 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x8887a7584dbe7a70 # initialize rs1
sha256sig0 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x3766b8c5e56fd37e # initialize rs1
sha256sig0 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xd7cc770457d41ba6 # initialize rs1
sha256sig0 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xb373d08fda5e0824 # initialize rs1
sha256sig0 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x88cb06eb34ab5399 # initialize rs1
sha256sig0 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xfe339d03532b75c9 # initialize rs1
sha256sig0 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x1bb92e9fcb340d4b # initialize rs1
sha256sig0 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x514b867c18bcada7 # initialize rs1
sha256sig0 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x7819f733f1e6089d # initialize rs1
sha256sig0 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x648344ad81ca7866 # initialize rs1
sha256sig0 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3f52d9e061be0af4 # initialize rs1
sha256sig0 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xbf4b3924131bfa42 # initialize rs1
sha256sig0 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x45596d9689492572 # initialize rs1
sha256sig0 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x928d4f3ff4474e55 # initialize rs1
sha256sig0 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x252af9ae79003080 # initialize rs1
sha256sig0 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x87445118b407624c # initialize rs1
sha256sig0 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xa7ea0529303bb86e # initialize rs1
sha256sig0 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x2eed5df46a381dd9 # initialize rs1
sha256sig0 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x2c2498ef0e19c871 # initialize rs1
sha256sig0 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x03e464d1a49d09b1 # initialize rs1
sha256sig0 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x777320b0722fba0b # initialize rs1
sha256sig0 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xbe1756b9198ed03e # initialize rs1
sha256sig0 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x21, x6, x10 # perform first operation
sha256sig0 x27, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x18, x5 # perform first operation
sha256sig0 x6, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x11, x16 # perform first operation
sha256sig0 x9, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x6, x29 # perform first operation
sha256sig0 x31, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x22, x23 # perform first operation
sha256sig0 x29, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x1, x20 # perform first operation
sha256sig0 x1, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x10, x9 # perform first operation
sha256sig0 x16, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x9, x11 # perform first operation
sha256sig0 x16, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x13, x18 # perform first operation
sha256sig0 x25, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x29, x8 # perform first operation
sha256sig0 x29, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x10, x1 # perform first operation
sha256sig0 x1, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x16, x24 # perform first operation
sha256sig0 x12, x9 # perform second (triggering) operation

#.EQU SIGSIZE,896


// ******************
// Tests from: WALLY-COV-sha512sum1.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xf54638a301521166 # initialize rs1
sha512sum1 x12, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xe5872cefe0b40177 # initialize rs1
sha512sum1 x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xa44920d11dd5f0e3 # initialize rs1
sha512sum1 x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xfc5c06a4bd81f4ac # initialize rs1
sha512sum1 x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x97d8ee31e534cd2c # initialize rs1
sha512sum1 x16, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4b4d2778b3dde3f5 # initialize rs1
sha512sum1 x14, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa352a93896f05196 # initialize rs1
sha512sum1 x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xaf03f2c340850115 # initialize rs1
sha512sum1 x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xcbd102e67ca301a7 # initialize rs1
sha512sum1 x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2d9b1a5652fe5b42 # initialize rs1
sha512sum1 x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xff446adc276e33f4 # initialize rs1
sha512sum1 x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x84a8ae33d7a5ef3b # initialize rs1
sha512sum1 x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x7f0a38073cd3f1c7 # initialize rs1
sha512sum1 x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xd51fbc31046a0e37 # initialize rs1
sha512sum1 x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xa95504646ca8a852 # initialize rs1
sha512sum1 x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xbafcc269595d6ed0 # initialize rs1
sha512sum1 x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x55c5469f2ef7ee94 # initialize rs1
sha512sum1 x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x4ff733ae6d4635ab # initialize rs1
sha512sum1 x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x18d3b659234ec18d # initialize rs1
sha512sum1 x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xad42355e7c0bbf33 # initialize rs1
sha512sum1 x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x340dbb3eea8456fc # initialize rs1
sha512sum1 x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x68175ef19bab6dfb # initialize rs1
sha512sum1 x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xd633b9d12ce7d421 # initialize rs1
sha512sum1 x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x4b964fb72e371b96 # initialize rs1
sha512sum1 x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x5f0fa838a3a6c7fb # initialize rs1
sha512sum1 x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x6b9839de01fbd67f # initialize rs1
sha512sum1 x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xac28ef372af254c0 # initialize rs1
sha512sum1 x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xe6176ee417614059 # initialize rs1
sha512sum1 x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x1c53fdbed6516c50 # initialize rs1
sha512sum1 x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x0d94535bbbdf2430 # initialize rs1
sha512sum1 x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x0feba88dd68b86ca # initialize rs1
sha512sum1 x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x099e9d5842ea3a1f # initialize rs1
sha512sum1 x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 248)

# Testcase cp_rd (Test destination rd = x0)
li x26, 0x87aa0d1fb19f4a9f # initialize rs1
sha512sum1 x0, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x3, 0x2208f736566feba2 # initialize rs1
sha512sum1 x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x17, 0x8a34a486e71bca03 # initialize rs1
sha512sum1 x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x17, 0x0a903ff8611ffc47 # initialize rs1
sha512sum1 x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0x581622dc96143d81 # initialize rs1
sha512sum1 x4, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0x93266f41c591de52 # initialize rs1
sha512sum1 x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
li x10, 0x4523786a40235a19 # initialize rs1
sha512sum1 x6, x10 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0xf0cebb15457d2008 # initialize rs1
sha512sum1 x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x7, 0xf755ca08a20ebea7 # initialize rs1
sha512sum1 x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x28, 0x97caf4293678de9a # initialize rs1
sha512sum1 x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x29, 0x5cf2f7941e553d32 # initialize rs1
sha512sum1 x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x2, 0x4198cfcd9ede1153 # initialize rs1
sha512sum1 x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x30, 0x1806b6744d5b37aa # initialize rs1
sha512sum1 x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x24, 0xa74de81916d732d8 # initialize rs1
sha512sum1 x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0xb902153f79371b3c # initialize rs1
sha512sum1 x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0x491f6b70f1474db2 # initialize rs1
sha512sum1 x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x7, 0x324f5f0e004ede23 # initialize rs1
sha512sum1 x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x1, 0x1cd851c17395b0ac # initialize rs1
sha512sum1 x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x28, 0xcba95b5f7ca04b70 # initialize rs1
sha512sum1 x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x9, 0xee2552a01d2202aa # initialize rs1
sha512sum1 x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0x3e61937c282d3195 # initialize rs1
sha512sum1 x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x6, 0x8f84a5d841853b18 # initialize rs1
sha512sum1 x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0xa7d7d3071472a01e # initialize rs1
sha512sum1 x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0x1e4a0f05ea3896ab # initialize rs1
sha512sum1 x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x3, 0xf0ef060155c12542 # initialize rs1
sha512sum1 x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x3, 0xf352a20ebf448e0e # initialize rs1
sha512sum1 x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x8, 0x7664600c46b0e5ed # initialize rs1
sha512sum1 x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x30, 0x7f02acb8a6686445 # initialize rs1
sha512sum1 x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x24, 0xfed96d81c83b963f # initialize rs1
sha512sum1 x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x11, 0x135627439e7a8b76 # initialize rs1
sha512sum1 x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x22, 0xafc410eb06ff5bc1 # initialize rs1
sha512sum1 x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x1, 0x5df4dc500b79998d # initialize rs1
sha512sum1 x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x0000000000000000 # initialize rs1
sha512sum1 x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x0000000000000001 # initialize rs1
sha512sum1 x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x15, 0x0000000000000002 # initialize rs1
sha512sum1 x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x19, 0x8000000000000000 # initialize rs1
sha512sum1 x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x8, 0x8000000000000001 # initialize rs1
sha512sum1 x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x21, 0x7fffffffffffffff # initialize rs1
sha512sum1 x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
sha512sum1 x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs1
sha512sum1 x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x8, 0xfffffffffffffffe # initialize rs1
sha512sum1 x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x31, 0x5bbc887763ae86f2 # initialize rs1
sha512sum1 x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
sha512sum1 x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x5555555555555555 # initialize rs1
sha512sum1 x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x25, 0x00000000ffffffff # initialize rs1
sha512sum1 x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x30, 0x00000000fffffffe # initialize rs1
sha512sum1 x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x26, 0x0000000100000000 # initialize rs1
sha512sum1 x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x20, 0x0000000100000001 # initialize rs1
sha512sum1 x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xb35d046bc918ed85 # initialize rs1
sha512sum1 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xd86138031aed2de4 # initialize rs1
sha512sum1 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xecad5dcdd6d030ac # initialize rs1
sha512sum1 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x3626633cbe83831c # initialize rs1
sha512sum1 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf293ba6da055be92 # initialize rs1
sha512sum1 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb6679ba53a810703 # initialize rs1
sha512sum1 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf67d28c5da97f641 # initialize rs1
sha512sum1 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8e6610e1f67d42c3 # initialize rs1
sha512sum1 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x02dfaae189f96a63 # initialize rs1
sha512sum1 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa2ac13b22e6f1692 # initialize rs1
sha512sum1 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x45a90dfc17707b85 # initialize rs1
sha512sum1 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x216f10dc9ae4ffc4 # initialize rs1
sha512sum1 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x465550ad3b2a453d # initialize rs1
sha512sum1 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x40b458e4036ae95b # initialize rs1
sha512sum1 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x8f7021978b8dd939 # initialize rs1
sha512sum1 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x43fa61f9023a13ff # initialize rs1
sha512sum1 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xcb1d68c6444b88c5 # initialize rs1
sha512sum1 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x30eda0fb6c5d52ce # initialize rs1
sha512sum1 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x1414befdf8d0effa # initialize rs1
sha512sum1 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x5b56fae42b7224f5 # initialize rs1
sha512sum1 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x05dcf7d5bfd4ade6 # initialize rs1
sha512sum1 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xac4294df19dfc188 # initialize rs1
sha512sum1 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x9bee1f096326d12a # initialize rs1
sha512sum1 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xe330288bfb430066 # initialize rs1
sha512sum1 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xfae188ed80115cb1 # initialize rs1
sha512sum1 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xf436c8b4683cc7d4 # initialize rs1
sha512sum1 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x12614400303202e3 # initialize rs1
sha512sum1 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xf57c22c688a1ae25 # initialize rs1
sha512sum1 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xfd11ceb20b7f401f # initialize rs1
sha512sum1 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xb6faa5b67743d828 # initialize rs1
sha512sum1 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x93601dc027f96da9 # initialize rs1
sha512sum1 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x0aa0f07d261a71ee # initialize rs1
sha512sum1 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x16, x30 # perform first operation
sha512sum1 x6, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x17, x13 # perform first operation
sha512sum1 x31, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x28, x1 # perform first operation
sha512sum1 x8, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x23, x22 # perform first operation
sha512sum1 x23, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x20, x10 # perform first operation
sha512sum1 x25, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x3, x1 # perform first operation
sha512sum1 x11, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x2, x5 # perform first operation
sha512sum1 x13, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x2, x26, x23 # perform first operation
sha512sum1 x2, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x27, x26 # perform first operation
sha512sum1 x20, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x1, x7 # perform first operation
sha512sum1 x1, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x19, x23 # perform first operation
sha512sum1 x23, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x29, x13 # perform first operation
sha512sum1 x15, x1 # perform second (triggering) operation

#.EQU SIGSIZE,896


// ******************
// Tests from: WALLY-COV-sha256sum1.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x6b38fc01aefbcc24 # initialize rs1
sha256sum1 x9, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8ed24d5d9b30cf57 # initialize rs1
sha256sum1 x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xc51e2c5b0dd9f5ef # initialize rs1
sha256sum1 x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xafae3a9fd5164483 # initialize rs1
sha256sum1 x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9410464ac59320dd # initialize rs1
sha256sum1 x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9762ddd0f3987d05 # initialize rs1
sha256sum1 x23, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x28a776aef822624a # initialize rs1
sha256sum1 x4, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x968034edc83f6369 # initialize rs1
sha256sum1 x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xbbcc6d0c43216df1 # initialize rs1
sha256sum1 x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x58e3875e523d1995 # initialize rs1
sha256sum1 x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x099219a3ac55ff2d # initialize rs1
sha256sum1 x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x214a08a458dfe530 # initialize rs1
sha256sum1 x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xd9b9bdd0bbe288e6 # initialize rs1
sha256sum1 x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x06ee1bc9b03771a2 # initialize rs1
sha256sum1 x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xd6b4205ea4119e03 # initialize rs1
sha256sum1 x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x52c7fcd9252e92c8 # initialize rs1
sha256sum1 x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x473f41848361acc5 # initialize rs1
sha256sum1 x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x863f2103a87b6834 # initialize rs1
sha256sum1 x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xe9ac0381fc6c2ac5 # initialize rs1
sha256sum1 x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xa5978875081f0d2a # initialize rs1
sha256sum1 x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x1c7604856c3942fd # initialize rs1
sha256sum1 x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x9da1bfcc89466d63 # initialize rs1
sha256sum1 x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xcc3f03c6b3cd1d45 # initialize rs1
sha256sum1 x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x1fbe09c4ce24353a # initialize rs1
sha256sum1 x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xc331502a415f4604 # initialize rs1
sha256sum1 x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xabdc7140c7aa00bd # initialize rs1
sha256sum1 x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x4ec1477213b35bf2 # initialize rs1
sha256sum1 x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xbfc8825717c0357a # initialize rs1
sha256sum1 x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xb63ab907a1f98f6f # initialize rs1
sha256sum1 x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xaaa365d4c3a8e213 # initialize rs1
sha256sum1 x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x69d0835f51be0a7e # initialize rs1
sha256sum1 x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xc1af09e501d69105 # initialize rs1
sha256sum1 x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 248)

# Testcase cp_rd (Test destination rd = x0)
li x12, 0x0dbc8df174684b6a # initialize rs1
sha256sum1 x0, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x10, 0x6a962a52270b7628 # initialize rs1
sha256sum1 x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x15, 0x5e465bff785583f0 # initialize rs1
sha256sum1 x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x26, 0x87a04c96be58dc04 # initialize rs1
sha256sum1 x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x7c507ee70e9ce929 # initialize rs1
sha256sum1 x4, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0xeded50a30b94a1e6 # initialize rs1
sha256sum1 x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x2b0006b2c0e16f05 # initialize rs1
sha256sum1 x6, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0x8caed418349d01d5 # initialize rs1
sha256sum1 x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x9, 0x797d3ed27b328b9b # initialize rs1
sha256sum1 x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x3, 0x236d57f1fef3dbfa # initialize rs1
sha256sum1 x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x3, 0x9e2ba646d5556c58 # initialize rs1
sha256sum1 x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0x16e3cc0ac514750b # initialize rs1
sha256sum1 x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0xcc958395d296f512 # initialize rs1
sha256sum1 x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x1, 0xb83bbaeb8a562247 # initialize rs1
sha256sum1 x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0xbba92069ec325d16 # initialize rs1
sha256sum1 x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0xb0b05de0b3e22d90 # initialize rs1
sha256sum1 x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x3, 0xf6aed1078b0af172 # initialize rs1
sha256sum1 x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x28, 0xbdf96adeb757cc42 # initialize rs1
sha256sum1 x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x8, 0xb4d1653622837e71 # initialize rs1
sha256sum1 x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x5, 0xb6cad7e3ba99a560 # initialize rs1
sha256sum1 x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x9, 0x0375d0551fbb8645 # initialize rs1
sha256sum1 x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0x4feb294dcb62a726 # initialize rs1
sha256sum1 x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x8, 0xd5010b0d8384a38d # initialize rs1
sha256sum1 x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x17, 0x5f43775fe87db8ee # initialize rs1
sha256sum1 x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x3, 0xbdf3347345ceae04 # initialize rs1
sha256sum1 x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x6, 0x2bc386a325b1f54a # initialize rs1
sha256sum1 x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x30, 0xa9b9b816d03198e6 # initialize rs1
sha256sum1 x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x23, 0x51c8e89d76d98c30 # initialize rs1
sha256sum1 x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x25, 0x94595992492724a7 # initialize rs1
sha256sum1 x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0x23adfd69e10afc4d # initialize rs1
sha256sum1 x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x22, 0x36f2a6bcb540326f # initialize rs1
sha256sum1 x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0x4770575b408335aa # initialize rs1
sha256sum1 x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x25, 0x0000000000000000 # initialize rs1
sha256sum1 x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x12, 0x0000000000000001 # initialize rs1
sha256sum1 x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x14, 0x0000000000000002 # initialize rs1
sha256sum1 x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x24, 0x8000000000000000 # initialize rs1
sha256sum1 x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x25, 0x8000000000000001 # initialize rs1
sha256sum1 x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
sha256sum1 x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x9, 0x7ffffffffffffffe # initialize rs1
sha256sum1 x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
sha256sum1 x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
sha256sum1 x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x30, 0x5bbc887763ae86f2 # initialize rs1
sha256sum1 x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
sha256sum1 x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x15, 0x5555555555555555 # initialize rs1
sha256sum1 x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0x00000000ffffffff # initialize rs1
sha256sum1 x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0x00000000fffffffe # initialize rs1
sha256sum1 x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x19, 0x0000000100000000 # initialize rs1
sha256sum1 x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x2, 0x0000000100000001 # initialize rs1
sha256sum1 x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc8c1ca84cc141e9d # initialize rs1
sha256sum1 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x6f307d91f6c28431 # initialize rs1
sha256sum1 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xe3cb9ef4c09fbe39 # initialize rs1
sha256sum1 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xca22488236285c68 # initialize rs1
sha256sum1 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6e6cc336c20b0c45 # initialize rs1
sha256sum1 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd54da41044ce98e0 # initialize rs1
sha256sum1 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4eacab79c2ff6756 # initialize rs1
sha256sum1 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa132b7c3e33636a8 # initialize rs1
sha256sum1 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xd30834d4a8d25a91 # initialize rs1
sha256sum1 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x1c0aa92eb209a81e # initialize rs1
sha256sum1 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x33e5bd9190d7b7d2 # initialize rs1
sha256sum1 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xddf517021f6f18b4 # initialize rs1
sha256sum1 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa01fc582d02a4aa4 # initialize rs1
sha256sum1 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x79f8e0df1a5619cb # initialize rs1
sha256sum1 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x76c0d41c2654ee15 # initialize rs1
sha256sum1 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xc584920bcfa57725 # initialize rs1
sha256sum1 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xeed7aa0e2cea14af # initialize rs1
sha256sum1 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x519960a016091291 # initialize rs1
sha256sum1 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6a13a73158ec0ea6 # initialize rs1
sha256sum1 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xfcb5da55b5c8b376 # initialize rs1
sha256sum1 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xd44a56c2e8dc9e3f # initialize rs1
sha256sum1 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xff76848f2d1b98cd # initialize rs1
sha256sum1 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xd492662e8eedcb3c # initialize rs1
sha256sum1 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x5f6fda67ee9b611b # initialize rs1
sha256sum1 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xea16988d0a3efbfd # initialize rs1
sha256sum1 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x670f42a21fe7dd50 # initialize rs1
sha256sum1 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x5c4a8e6e9883cb43 # initialize rs1
sha256sum1 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x6d1e1a586ecd4b0c # initialize rs1
sha256sum1 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xb557229628d72ac4 # initialize rs1
sha256sum1 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x02df77b4cbf0ffb2 # initialize rs1
sha256sum1 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xeaad83015b9f351a # initialize rs1
sha256sum1 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xfee222e37e18d46a # initialize rs1
sha256sum1 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x9, x30 # perform first operation
sha256sum1 x18, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x10, x11 # perform first operation
sha256sum1 x26, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x12, x26 # perform first operation
sha256sum1 x29, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x29, x31 # perform first operation
sha256sum1 x9, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x5, x14 # perform first operation
sha256sum1 x15, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x10, x23 # perform first operation
sha256sum1 x22, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x13, x10 # perform first operation
sha256sum1 x8, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x20, x2 # perform first operation
sha256sum1 x5, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x30, x9 # perform first operation
sha256sum1 x5, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x18, x17 # perform first operation
sha256sum1 x18, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x9, x16 # perform first operation
sha256sum1 x16, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x11, x18 # perform first operation
sha256sum1 x16, x17 # perform second (triggering) operation

#.EQU SIGSIZE,896
.EQU SIGSIZE,7168 #combined


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
