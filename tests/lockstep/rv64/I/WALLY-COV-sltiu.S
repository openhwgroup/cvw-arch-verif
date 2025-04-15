///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-sltiu.S
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
li x0, 0x4eec3a624a1d6ea7 # initialize rs1
sltiu x12, x0, -1352 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x5f3e5a463a88e04d # initialize rs1
sltiu x25, x1, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xa8e6e3141c73288e # initialize rs1
sltiu x15, x2, 952 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x2c20fb211be35f09 # initialize rs1
sltiu x15, x3, -1320 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0b8f9dfb6b87f155 # initialize rs1
sltiu x26, x4, 991 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1c41d0b1d0451747 # initialize rs1
sltiu x13, x5, 171 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf4be044bf0653649 # initialize rs1
sltiu x2, x6, -1878 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb1cf39372fcaa487 # initialize rs1
sltiu x18, x7, -352 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x5dab310407d23495 # initialize rs1
sltiu x12, x8, 602 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xa87c947ee015170d # initialize rs1
sltiu x2, x9, -355 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xc0064fcebcd0c45b # initialize rs1
sltiu x18, x10, -1944 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x545f365519ef1b51 # initialize rs1
sltiu x27, x11, -1908 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x9a01279f47757090 # initialize rs1
sltiu x14, x12, 1704 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x3d398811c6924bb0 # initialize rs1
sltiu x2, x13, 1699 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x73087828cb5c6da2 # initialize rs1
sltiu x26, x14, 1948 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x268a6f8775b72f3b # initialize rs1
sltiu x2, x15, 1431 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xcbae5a44acb5f146 # initialize rs1
sltiu x15, x16, 1702 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x63d98bdfd3f04395 # initialize rs1
sltiu x3, x17, 1969 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x775e28f9cd06ea9c # initialize rs1
sltiu x23, x18, -673 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x9b3eea32f2eb1e53 # initialize rs1
sltiu x23, x19, 756 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xa063f7b36ef67174 # initialize rs1
sltiu x9, x20, -1178 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x41e8c0c8ce1e3012 # initialize rs1
sltiu x20, x21, 1758 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x247a837efc4d7493 # initialize rs1
sltiu x29, x22, 1902 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x493050a04f84a6cc # initialize rs1
sltiu x14, x23, 241 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xca7abd33137fb093 # initialize rs1
sltiu x5, x24, -1023 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x09d14caf42af31e5 # initialize rs1
sltiu x27, x25, -1281 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xd27c58958b6bb85d # initialize rs1
sltiu x6, x26, -414 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xe3bb1ae8bd940c76 # initialize rs1
sltiu x18, x27, 478 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xdda456b6fad3ee04 # initialize rs1
sltiu x3, x28, -235 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x67502ead5c43ef2f # initialize rs1
sltiu x21, x29, -578 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x25f65db204b37dca # initialize rs1
sltiu x16, x30, 679 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x8261f08c091f5951 # initialize rs1
sltiu x8, x31, 2001 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cp_rd (Test destination rd = x0)
li x2, 0x8fbb5d5218815443 # initialize rs1
sltiu x0, x2, -287 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x12, 0x8906d9f5a9813a89 # initialize rs1
sltiu x1, x12, 280 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x9, 0xf7e60c92781d03d2 # initialize rs1
sltiu x2, x9, -867 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x27, 0xec8ac1507c93e6f7 # initialize rs1
sltiu x3, x27, -466 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x655d7ec18e2c2b65 # initialize rs1
sltiu x4, x17, 945 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x324e5425d9b8470f # initialize rs1
sltiu x5, x11, 1450 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x46afbcb8a9b35f02 # initialize rs1
sltiu x6, x27, -832 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x25, 0x00febce662913ba9 # initialize rs1
sltiu x7, x25, 652 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x7917b19d91db169a # initialize rs1
sltiu x8, x8, -1683 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x23, 0xc714340d35acb4c6 # initialize rs1
sltiu x9, x23, -1671 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x18, 0x1e54187ea7932a4e # initialize rs1
sltiu x10, x18, -1320 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x17, 0xd327242864e562ba # initialize rs1
sltiu x11, x17, -1483 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x21, 0x1a63e27b175dca8b # initialize rs1
sltiu x12, x21, 710 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x27, 0xcfdb312630fcef02 # initialize rs1
sltiu x13, x27, -1842 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x6, 0x12d797abb5e57094 # initialize rs1
sltiu x14, x6, -694 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x8, 0xdcfc62b922c4c516 # initialize rs1
sltiu x15, x8, 1368 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x31, 0x5640dfa93d457d27 # initialize rs1
sltiu x16, x31, 1355 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x21, 0xf9686ed1940ec279 # initialize rs1
sltiu x17, x21, 1425 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x24, 0x3ded119a84859b0f # initialize rs1
sltiu x18, x24, 1959 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x30, 0x66165ded7df5b894 # initialize rs1
sltiu x19, x30, -1533 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x24, 0xdcd24faf5198cab6 # initialize rs1
sltiu x20, x24, -1595 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x26, 0x34ca0e1b8f2b962c # initialize rs1
sltiu x21, x26, -570 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x31, 0xf9a610ae87a8fb29 # initialize rs1
sltiu x22, x31, -222 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x16, 0x87e3da0762b72f5a # initialize rs1
sltiu x23, x16, 1513 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xf962543576b6181a # initialize rs1
sltiu x24, x24, -1553 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x11, 0x6ccf0aaa549fed3e # initialize rs1
sltiu x25, x11, 1096 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x3, 0x7f79825fdc36abb8 # initialize rs1
sltiu x26, x3, -2004 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x740a9ab04214a60d # initialize rs1
sltiu x27, x27, -1441 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x30, 0x42096bf8b884d614 # initialize rs1
sltiu x28, x30, -1442 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x19, 0xa3d570cdcc0a9c0e # initialize rs1
sltiu x29, x19, 1799 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x15, 0xa2adf9d5e0e702be # initialize rs1
sltiu x30, x15, 1073 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x20, 0xb196245aaa628559 # initialize rs1
sltiu x31, x20, 510 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x0000000000000000 # initialize rs1
sltiu x20, x30, 1032 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x2, 0x0000000000000001 # initialize rs1
sltiu x15, x2, 1091 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x0000000000000002 # initialize rs1
sltiu x7, x16, -905 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x21, 0x8000000000000000 # initialize rs1
sltiu x23, x21, -315 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x28, 0x8000000000000001 # initialize rs1
sltiu x21, x28, -946 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
sltiu x10, x31, 1094 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
sltiu x17, x6, -1938 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x16, 0xffffffffffffffff # initialize rs1
sltiu x2, x16, 1353 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
sltiu x7, x29, 1675 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x2, 0x5bbc887763ae86f2 # initialize rs1
sltiu x29, x2, -1560 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x3, x20, -944 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x28, 0x5555555555555555 # initialize rs1
sltiu x13, x28, 558 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs1
sltiu x25, x15, -1694 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0x00000000fffffffe # initialize rs1
sltiu x21, x17, -1339 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x7, 0x0000000100000000 # initialize rs1
sltiu x29, x7, 1991 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x23, 0x0000000100000001 # initialize rs1
sltiu x14, x23, -439 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 632)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000000 # initialize rs1
sltiu x10, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000000 # initialize rs1
sltiu x10, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 648)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000000 # initialize rs1
sltiu x10, x6, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 656)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000000 # initialize rs1
sltiu x13, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 664)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000000 # initialize rs1
sltiu x17, x21, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 672)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rs1
sltiu x30, x27, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 680)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000000 # initialize rs1
sltiu x20, x31, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 688)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000000 # initialize rs1
sltiu x9, x30, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 696)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000000 # initialize rs1
sltiu x3, x19, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 704)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000000 # initialize rs1
sltiu x14, x20, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 712)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000000 # initialize rs1
sltiu x6, x21, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 720)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000000 # initialize rs1
sltiu x18, x8, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 728)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000000 # initialize rs1
sltiu x19, x14, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 736)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000000 # initialize rs1
sltiu x9, x29, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 744)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000000 # initialize rs1
sltiu x30, x18, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000 # initialize rs1
sltiu x28, x15, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 760)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000000 # initialize rs1
sltiu x30, x2, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 768)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000000 # initialize rs1
sltiu x16, x14, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 776)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000000 # initialize rs1
sltiu x23, x29, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 784)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000000 # initialize rs1
sltiu x31, x15, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 792)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000001 # initialize rs1
sltiu x22, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000001 # initialize rs1
sltiu x24, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 808)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000001 # initialize rs1
sltiu x19, x5, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 816)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000001 # initialize rs1
sltiu x8, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 824)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000001 # initialize rs1
sltiu x19, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 832)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000001 # initialize rs1
sltiu x11, x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 840)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000001 # initialize rs1
sltiu x22, x5, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 848)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000001 # initialize rs1
sltiu x26, x19, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 856)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000001 # initialize rs1
sltiu x31, x6, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 864)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000001 # initialize rs1
sltiu x16, x15, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 872)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000001 # initialize rs1
sltiu x19, x8, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 880)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001 # initialize rs1
sltiu x22, x12, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 888)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000001 # initialize rs1
sltiu x31, x17, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 896)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001 # initialize rs1
sltiu x10, x12, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000001 # initialize rs1
sltiu x28, x2, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000001 # initialize rs1
sltiu x11, x1, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 920)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000001 # initialize rs1
sltiu x10, x19, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000000000001 # initialize rs1
sltiu x24, x19, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000001 # initialize rs1
sltiu x1, x24, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 944)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000001 # initialize rs1
sltiu x8, x10, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000000000002 # initialize rs1
sltiu x5, x24, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 960)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002 # initialize rs1
sltiu x9, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 968)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000000000002 # initialize rs1
sltiu x8, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 976)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000002 # initialize rs1
sltiu x11, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 984)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000002 # initialize rs1
sltiu x29, x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 992)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000002 # initialize rs1
sltiu x7, x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rs1
sltiu x11, x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1008)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000000000002 # initialize rs1
sltiu x12, x23, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1016)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000002 # initialize rs1
sltiu x21, x26, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1024)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000002 # initialize rs1
sltiu x29, x22, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1032)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000002 # initialize rs1
sltiu x13, x18, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1040)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000002 # initialize rs1
sltiu x26, x14, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1048)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000002 # initialize rs1
sltiu x6, x16, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1056)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000000000002 # initialize rs1
sltiu x19, x28, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1064)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000002 # initialize rs1
sltiu x23, x22, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1072)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000000000002 # initialize rs1
sltiu x31, x2, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1080)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002 # initialize rs1
sltiu x6, x15, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1088)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000000000002 # initialize rs1
sltiu x7, x23, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1096)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000002 # initialize rs1
sltiu x30, x10, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1104)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000002 # initialize rs1
sltiu x1, x20, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1112)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rs1
sltiu x26, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1120)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000000 # initialize rs1
sltiu x15, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1128)

# Testcase cr_rs1_imm_corners
li x16, 0x8000000000000000 # initialize rs1
sltiu x27, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1136)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000000 # initialize rs1
sltiu x24, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1144)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000000 # initialize rs1
sltiu x15, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1152)

# Testcase cr_rs1_imm_corners
li x19, 0x8000000000000000 # initialize rs1
sltiu x2, x19, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1160)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000000 # initialize rs1
sltiu x17, x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1168)

# Testcase cr_rs1_imm_corners
li x23, 0x8000000000000000 # initialize rs1
sltiu x17, x23, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1176)

# Testcase cr_rs1_imm_corners
li x18, 0x8000000000000000 # initialize rs1
sltiu x25, x18, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1184)

# Testcase cr_rs1_imm_corners
li x2, 0x8000000000000000 # initialize rs1
sltiu x19, x2, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1192)

# Testcase cr_rs1_imm_corners
li x25, 0x8000000000000000 # initialize rs1
sltiu x5, x25, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1200)

# Testcase cr_rs1_imm_corners
li x22, 0x8000000000000000 # initialize rs1
sltiu x29, x22, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1208)

# Testcase cr_rs1_imm_corners
li x21, 0x8000000000000000 # initialize rs1
sltiu x2, x21, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1216)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000000 # initialize rs1
sltiu x10, x9, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000000 # initialize rs1
sltiu x10, x1, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1232)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000000 # initialize rs1
sltiu x30, x13, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1240)

# Testcase cr_rs1_imm_corners
li x31, 0x8000000000000000 # initialize rs1
sltiu x1, x31, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1248)

# Testcase cr_rs1_imm_corners
li x20, 0x8000000000000000 # initialize rs1
sltiu x18, x20, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1256)

# Testcase cr_rs1_imm_corners
li x26, 0x8000000000000000 # initialize rs1
sltiu x7, x26, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1264)

# Testcase cr_rs1_imm_corners
li x24, 0x8000000000000000 # initialize rs1
sltiu x12, x24, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1272)

# Testcase cr_rs1_imm_corners
li x20, 0x8000000000000001 # initialize rs1
sltiu x2, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1280)

# Testcase cr_rs1_imm_corners
li x20, 0x8000000000000001 # initialize rs1
sltiu x15, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1288)

# Testcase cr_rs1_imm_corners
li x22, 0x8000000000000001 # initialize rs1
sltiu x8, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

# Testcase cr_rs1_imm_corners
li x25, 0x8000000000000001 # initialize rs1
sltiu x1, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1304)

# Testcase cr_rs1_imm_corners
li x20, 0x8000000000000001 # initialize rs1
sltiu x9, x20, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1312)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000001 # initialize rs1
sltiu x5, x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1320)

# Testcase cr_rs1_imm_corners
li x31, 0x8000000000000001 # initialize rs1
sltiu x25, x31, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1328)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000001 # initialize rs1
sltiu x25, x12, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1336)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000001 # initialize rs1
sltiu x16, x10, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1344)

# Testcase cr_rs1_imm_corners
li x20, 0x8000000000000001 # initialize rs1
sltiu x31, x20, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1352)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000001 # initialize rs1
sltiu x30, x13, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1360)

# Testcase cr_rs1_imm_corners
li x23, 0x8000000000000001 # initialize rs1
sltiu x1, x23, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1368)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000001 # initialize rs1
sltiu x6, x7, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1376)

# Testcase cr_rs1_imm_corners
li x26, 0x8000000000000001 # initialize rs1
sltiu x24, x26, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1384)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000001 # initialize rs1
sltiu x16, x12, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1392)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000001 # initialize rs1
sltiu x20, x14, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1400)

# Testcase cr_rs1_imm_corners
li x26, 0x8000000000000001 # initialize rs1
sltiu x9, x26, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1408)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000001 # initialize rs1
sltiu x15, x9, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1416)

# Testcase cr_rs1_imm_corners
li x26, 0x8000000000000001 # initialize rs1
sltiu x16, x26, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1424)

# Testcase cr_rs1_imm_corners
li x21, 0x8000000000000001 # initialize rs1
sltiu x5, x21, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1432)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffffffffffff # initialize rs1
sltiu x15, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1440)

# Testcase cr_rs1_imm_corners
li x26, 0x7fffffffffffffff # initialize rs1
sltiu x24, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1448)

# Testcase cr_rs1_imm_corners
li x19, 0x7fffffffffffffff # initialize rs1
sltiu x28, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1456)

# Testcase cr_rs1_imm_corners
li x30, 0x7fffffffffffffff # initialize rs1
sltiu x9, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1464)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffffffffffff # initialize rs1
sltiu x25, x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1472)

# Testcase cr_rs1_imm_corners
li x29, 0x7fffffffffffffff # initialize rs1
sltiu x31, x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1480)

# Testcase cr_rs1_imm_corners
li x16, 0x7fffffffffffffff # initialize rs1
sltiu x19, x16, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1488)

# Testcase cr_rs1_imm_corners
li x19, 0x7fffffffffffffff # initialize rs1
sltiu x20, x19, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1496)

# Testcase cr_rs1_imm_corners
li x20, 0x7fffffffffffffff # initialize rs1
sltiu x7, x20, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1504)

# Testcase cr_rs1_imm_corners
li x29, 0x7fffffffffffffff # initialize rs1
sltiu x23, x29, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1512)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff # initialize rs1
sltiu x13, x15, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1520)

# Testcase cr_rs1_imm_corners
li x24, 0x7fffffffffffffff # initialize rs1
sltiu x29, x24, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1528)

# Testcase cr_rs1_imm_corners
li x5, 0x7fffffffffffffff # initialize rs1
sltiu x6, x5, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1536)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff # initialize rs1
sltiu x16, x13, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1544)

# Testcase cr_rs1_imm_corners
li x11, 0x7fffffffffffffff # initialize rs1
sltiu x6, x11, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1552)

# Testcase cr_rs1_imm_corners
li x16, 0x7fffffffffffffff # initialize rs1
sltiu x22, x16, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1560)

# Testcase cr_rs1_imm_corners
li x27, 0x7fffffffffffffff # initialize rs1
sltiu x11, x27, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1568)

# Testcase cr_rs1_imm_corners
li x31, 0x7fffffffffffffff # initialize rs1
sltiu x29, x31, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1576)

# Testcase cr_rs1_imm_corners
li x8, 0x7fffffffffffffff # initialize rs1
sltiu x30, x8, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1584)

# Testcase cr_rs1_imm_corners
li x11, 0x7fffffffffffffff # initialize rs1
sltiu x13, x11, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1592)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffffffffffe # initialize rs1
sltiu x5, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1600)

# Testcase cr_rs1_imm_corners
li x1, 0x7ffffffffffffffe # initialize rs1
sltiu x7, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1608)

# Testcase cr_rs1_imm_corners
li x26, 0x7ffffffffffffffe # initialize rs1
sltiu x31, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1616)

# Testcase cr_rs1_imm_corners
li x17, 0x7ffffffffffffffe # initialize rs1
sltiu x24, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1624)

# Testcase cr_rs1_imm_corners
li x25, 0x7ffffffffffffffe # initialize rs1
sltiu x26, x25, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1632)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffffffffffe # initialize rs1
sltiu x21, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1640)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe # initialize rs1
sltiu x24, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1648)

# Testcase cr_rs1_imm_corners
li x30, 0x7ffffffffffffffe # initialize rs1
sltiu x18, x30, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1656)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffffffffffe # initialize rs1
sltiu x28, x19, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1664)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffffffffffe # initialize rs1
sltiu x12, x19, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1672)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe # initialize rs1
sltiu x7, x13, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1680)

# Testcase cr_rs1_imm_corners
li x23, 0x7ffffffffffffffe # initialize rs1
sltiu x19, x23, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1688)

# Testcase cr_rs1_imm_corners
li x30, 0x7ffffffffffffffe # initialize rs1
sltiu x18, x30, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1696)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffffffffffe # initialize rs1
sltiu x10, x11, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1704)

# Testcase cr_rs1_imm_corners
li x5, 0x7ffffffffffffffe # initialize rs1
sltiu x11, x5, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1712)

# Testcase cr_rs1_imm_corners
li x21, 0x7ffffffffffffffe # initialize rs1
sltiu x2, x21, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1720)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffffffffffe # initialize rs1
sltiu x16, x19, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1728)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffffffffffe # initialize rs1
sltiu x1, x11, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1736)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffffffffffe # initialize rs1
sltiu x30, x20, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1744)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffffffffffe # initialize rs1
sltiu x10, x12, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1752)

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rs1
sltiu x8, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1760)

# Testcase cr_rs1_imm_corners
li x20, 0xffffffffffffffff # initialize rs1
sltiu x11, x20, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1768)

# Testcase cr_rs1_imm_corners
li x30, 0xffffffffffffffff # initialize rs1
sltiu x3, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1776)

# Testcase cr_rs1_imm_corners
li x30, 0xffffffffffffffff # initialize rs1
sltiu x18, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1784)

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rs1
sltiu x27, x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_imm_corners
li x10, 0xffffffffffffffff # initialize rs1
sltiu x18, x10, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 0)

# Testcase cr_rs1_imm_corners
li x28, 0xffffffffffffffff # initialize rs1
sltiu x31, x28, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffffffffffff # initialize rs1
sltiu x17, x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 16)

# Testcase cr_rs1_imm_corners
li x2, 0xffffffffffffffff # initialize rs1
sltiu x22, x2, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cr_rs1_imm_corners
li x2, 0xffffffffffffffff # initialize rs1
sltiu x31, x2, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 32)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff # initialize rs1
sltiu x8, x9, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 40)

# Testcase cr_rs1_imm_corners
li x1, 0xffffffffffffffff # initialize rs1
sltiu x18, x1, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 48)

# Testcase cr_rs1_imm_corners
li x9, 0xffffffffffffffff # initialize rs1
sltiu x20, x9, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 56)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffffffffffff # initialize rs1
sltiu x27, x19, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 64)

# Testcase cr_rs1_imm_corners
li x1, 0xffffffffffffffff # initialize rs1
sltiu x23, x1, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 72)

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rs1
sltiu x11, x27, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rs1
sltiu x13, x27, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cr_rs1_imm_corners
li x7, 0xffffffffffffffff # initialize rs1
sltiu x3, x7, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cr_rs1_imm_corners
li x27, 0xffffffffffffffff # initialize rs1
sltiu x6, x27, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 104)

# Testcase cr_rs1_imm_corners
li x26, 0xffffffffffffffff # initialize rs1
sltiu x6, x26, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 112)

# Testcase cr_rs1_imm_corners
li x20, 0xfffffffffffffffe # initialize rs1
sltiu x16, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffffffffffe # initialize rs1
sltiu x16, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 128)

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rs1
sltiu x31, x3, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 136)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffffffffffe # initialize rs1
sltiu x28, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 144)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffffffffffe # initialize rs1
sltiu x31, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 152)

# Testcase cr_rs1_imm_corners
li x31, 0xfffffffffffffffe # initialize rs1
sltiu x25, x31, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 160)

# Testcase cr_rs1_imm_corners
li x26, 0xfffffffffffffffe # initialize rs1
sltiu x30, x26, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 168)

# Testcase cr_rs1_imm_corners
li x27, 0xfffffffffffffffe # initialize rs1
sltiu x10, x27, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 176)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffffffffffe # initialize rs1
sltiu x9, x10, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cr_rs1_imm_corners
li x9, 0xfffffffffffffffe # initialize rs1
sltiu x24, x9, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cr_rs1_imm_corners
li x2, 0xfffffffffffffffe # initialize rs1
sltiu x20, x2, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cr_rs1_imm_corners
li x30, 0xfffffffffffffffe # initialize rs1
sltiu x31, x30, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cr_rs1_imm_corners
li x25, 0xfffffffffffffffe # initialize rs1
sltiu x3, x25, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cr_rs1_imm_corners
li x8, 0xfffffffffffffffe # initialize rs1
sltiu x2, x8, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 224)

# Testcase cr_rs1_imm_corners
li x21, 0xfffffffffffffffe # initialize rs1
sltiu x28, x21, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cr_rs1_imm_corners
li x26, 0xfffffffffffffffe # initialize rs1
sltiu x16, x26, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 240)

# Testcase cr_rs1_imm_corners
li x29, 0xfffffffffffffffe # initialize rs1
sltiu x10, x29, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 248)

# Testcase cr_rs1_imm_corners
li x23, 0xfffffffffffffffe # initialize rs1
sltiu x27, x23, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 256)

# Testcase cr_rs1_imm_corners
li x2, 0xfffffffffffffffe # initialize rs1
sltiu x14, x2, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 264)

# Testcase cr_rs1_imm_corners
li x3, 0xfffffffffffffffe # initialize rs1
sltiu x7, x3, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 272)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc887763ae86f2 # initialize rs1
sltiu x6, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 280)

# Testcase cr_rs1_imm_corners
li x24, 0x5bbc887763ae86f2 # initialize rs1
sltiu x2, x24, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 288)

# Testcase cr_rs1_imm_corners
li x10, 0x5bbc887763ae86f2 # initialize rs1
sltiu x5, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 296)

# Testcase cr_rs1_imm_corners
li x30, 0x5bbc887763ae86f2 # initialize rs1
sltiu x23, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 304)

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f2 # initialize rs1
sltiu x16, x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 312)

# Testcase cr_rs1_imm_corners
li x24, 0x5bbc887763ae86f2 # initialize rs1
sltiu x25, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 320)

# Testcase cr_rs1_imm_corners
li x24, 0x5bbc887763ae86f2 # initialize rs1
sltiu x5, x24, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 328)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc887763ae86f2 # initialize rs1
sltiu x29, x14, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 336)

# Testcase cr_rs1_imm_corners
li x12, 0x5bbc887763ae86f2 # initialize rs1
sltiu x17, x12, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 344)

# Testcase cr_rs1_imm_corners
li x18, 0x5bbc887763ae86f2 # initialize rs1
sltiu x2, x18, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 352)

# Testcase cr_rs1_imm_corners
li x26, 0x5bbc887763ae86f2 # initialize rs1
sltiu x11, x26, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 360)

# Testcase cr_rs1_imm_corners
li x25, 0x5bbc887763ae86f2 # initialize rs1
sltiu x22, x25, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 368)

# Testcase cr_rs1_imm_corners
li x21, 0x5bbc887763ae86f2 # initialize rs1
sltiu x29, x21, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 376)

# Testcase cr_rs1_imm_corners
li x20, 0x5bbc887763ae86f2 # initialize rs1
sltiu x7, x20, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 384)

# Testcase cr_rs1_imm_corners
li x13, 0x5bbc887763ae86f2 # initialize rs1
sltiu x24, x13, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 392)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2 # initialize rs1
sltiu x10, x1, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 400)

# Testcase cr_rs1_imm_corners
li x16, 0x5bbc887763ae86f2 # initialize rs1
sltiu x7, x16, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 408)

# Testcase cr_rs1_imm_corners
li x20, 0x5bbc887763ae86f2 # initialize rs1
sltiu x25, x20, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2 # initialize rs1
sltiu x11, x1, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 424)

# Testcase cr_rs1_imm_corners
li x2, 0x5bbc887763ae86f2 # initialize rs1
sltiu x1, x2, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 432)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x31, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 440)

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x10, x3, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x10, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x13, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cr_rs1_imm_corners
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x24, x15, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 472)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x30, x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cr_rs1_imm_corners
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x25, x16, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 488)

# Testcase cr_rs1_imm_corners
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x14, x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 496)

# Testcase cr_rs1_imm_corners
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x17, x26, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 504)

# Testcase cr_rs1_imm_corners
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x8, x7, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cr_rs1_imm_corners
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x23, x12, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 520)

# Testcase cr_rs1_imm_corners
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x11, x20, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 528)

# Testcase cr_rs1_imm_corners
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x29, x9, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 536)

# Testcase cr_rs1_imm_corners
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x10, x1, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cr_rs1_imm_corners
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x27, x28, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 552)

# Testcase cr_rs1_imm_corners
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x17, x6, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 560)

# Testcase cr_rs1_imm_corners
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x17, x16, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 568)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x21, x14, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 576)

# Testcase cr_rs1_imm_corners
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x17, x29, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 584)

# Testcase cr_rs1_imm_corners
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
sltiu x23, x5, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 592)

# Testcase cr_rs1_imm_corners
li x9, 0x5555555555555555 # initialize rs1
sltiu x26, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 600)

# Testcase cr_rs1_imm_corners
li x29, 0x5555555555555555 # initialize rs1
sltiu x9, x29, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 608)

# Testcase cr_rs1_imm_corners
li x24, 0x5555555555555555 # initialize rs1
sltiu x10, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 616)

# Testcase cr_rs1_imm_corners
li x13, 0x5555555555555555 # initialize rs1
sltiu x3, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 624)

# Testcase cr_rs1_imm_corners
li x31, 0x5555555555555555 # initialize rs1
sltiu x21, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 632)

# Testcase cr_rs1_imm_corners
li x7, 0x5555555555555555 # initialize rs1
sltiu x15, x7, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 640)

# Testcase cr_rs1_imm_corners
li x9, 0x5555555555555555 # initialize rs1
sltiu x28, x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 648)

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rs1
sltiu x16, x27, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 656)

# Testcase cr_rs1_imm_corners
li x25, 0x5555555555555555 # initialize rs1
sltiu x3, x25, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cr_rs1_imm_corners
li x22, 0x5555555555555555 # initialize rs1
sltiu x13, x22, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 672)

# Testcase cr_rs1_imm_corners
li x12, 0x5555555555555555 # initialize rs1
sltiu x5, x12, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 680)

# Testcase cr_rs1_imm_corners
li x15, 0x5555555555555555 # initialize rs1
sltiu x5, x15, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 688)

# Testcase cr_rs1_imm_corners
li x6, 0x5555555555555555 # initialize rs1
sltiu x18, x6, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 696)

# Testcase cr_rs1_imm_corners
li x22, 0x5555555555555555 # initialize rs1
sltiu x14, x22, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 704)

# Testcase cr_rs1_imm_corners
li x6, 0x5555555555555555 # initialize rs1
sltiu x18, x6, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 712)

# Testcase cr_rs1_imm_corners
li x30, 0x5555555555555555 # initialize rs1
sltiu x27, x30, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 720)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555 # initialize rs1
sltiu x17, x8, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 728)

# Testcase cr_rs1_imm_corners
li x11, 0x5555555555555555 # initialize rs1
sltiu x9, x11, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

# Testcase cr_rs1_imm_corners
li x17, 0x5555555555555555 # initialize rs1
sltiu x18, x17, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 744)

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rs1
sltiu x22, x27, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 752)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000ffffffff # initialize rs1
sltiu x8, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 760)

# Testcase cr_rs1_imm_corners
li x28, 0x00000000ffffffff # initialize rs1
sltiu x12, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 768)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000ffffffff # initialize rs1
sltiu x24, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 776)

# Testcase cr_rs1_imm_corners
li x26, 0x00000000ffffffff # initialize rs1
sltiu x13, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 784)

# Testcase cr_rs1_imm_corners
li x16, 0x00000000ffffffff # initialize rs1
sltiu x25, x16, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 792)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000ffffffff # initialize rs1
sltiu x9, x13, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 800)

# Testcase cr_rs1_imm_corners
li x27, 0x00000000ffffffff # initialize rs1
sltiu x30, x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 808)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000ffffffff # initialize rs1
sltiu x26, x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 816)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000ffffffff # initialize rs1
sltiu x28, x1, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 824)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000ffffffff # initialize rs1
sltiu x7, x11, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 832)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000ffffffff # initialize rs1
sltiu x10, x2, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 840)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000ffffffff # initialize rs1
sltiu x5, x10, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 848)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000ffffffff # initialize rs1
sltiu x5, x17, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 856)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000ffffffff # initialize rs1
sltiu x17, x7, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 864)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000ffffffff # initialize rs1
sltiu x11, x20, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 872)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000ffffffff # initialize rs1
sltiu x31, x2, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000ffffffff # initialize rs1
sltiu x14, x9, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 888)

# Testcase cr_rs1_imm_corners
li x3, 0x00000000ffffffff # initialize rs1
sltiu x5, x3, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 896)

# Testcase cr_rs1_imm_corners
li x19, 0x00000000ffffffff # initialize rs1
sltiu x9, x19, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 904)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000ffffffff # initialize rs1
sltiu x3, x31, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 912)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000fffffffe # initialize rs1
sltiu x23, x1, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 920)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000fffffffe # initialize rs1
sltiu x5, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 928)

# Testcase cr_rs1_imm_corners
li x19, 0x00000000fffffffe # initialize rs1
sltiu x28, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 936)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000fffffffe # initialize rs1
sltiu x28, x20, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 944)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe # initialize rs1
sltiu x30, x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 952)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000fffffffe # initialize rs1
sltiu x6, x17, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cr_rs1_imm_corners
li x18, 0x00000000fffffffe # initialize rs1
sltiu x28, x18, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 968)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe # initialize rs1
sltiu x18, x11, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 976)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe # initialize rs1
sltiu x6, x22, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 984)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000fffffffe # initialize rs1
sltiu x2, x8, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 992)

# Testcase cr_rs1_imm_corners
li x16, 0x00000000fffffffe # initialize rs1
sltiu x9, x16, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cr_rs1_imm_corners
li x16, 0x00000000fffffffe # initialize rs1
sltiu x13, x16, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1008)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000fffffffe # initialize rs1
sltiu x30, x29, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1016)

# Testcase cr_rs1_imm_corners
li x17, 0x00000000fffffffe # initialize rs1
sltiu x20, x17, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1024)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000fffffffe # initialize rs1
sltiu x13, x14, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000fffffffe # initialize rs1
sltiu x15, x1, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1040)

# Testcase cr_rs1_imm_corners
li x13, 0x00000000fffffffe # initialize rs1
sltiu x16, x13, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1048)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000fffffffe # initialize rs1
sltiu x24, x21, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1056)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000fffffffe # initialize rs1
sltiu x27, x29, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1064)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000fffffffe # initialize rs1
sltiu x3, x5, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1072)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000000 # initialize rs1
sltiu x28, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1080)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000000 # initialize rs1
sltiu x23, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1088)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000000 # initialize rs1
sltiu x2, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1096)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000 # initialize rs1
sltiu x22, x10, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1104)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000000 # initialize rs1
sltiu x28, x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1112)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rs1
sltiu x14, x3, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1120)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000100000000 # initialize rs1
sltiu x31, x18, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1128)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000000 # initialize rs1
sltiu x23, x24, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1136)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000000 # initialize rs1
sltiu x29, x3, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1144)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000000 # initialize rs1
sltiu x10, x14, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1152)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rs1
sltiu x10, x27, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1160)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000100000000 # initialize rs1
sltiu x19, x18, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1168)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000000 # initialize rs1
sltiu x22, x27, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1176)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000000 # initialize rs1
sltiu x15, x12, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1184)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000000 # initialize rs1
sltiu x6, x31, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1192)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000000 # initialize rs1
sltiu x23, x15, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1200)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000000 # initialize rs1
sltiu x26, x30, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1208)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000000 # initialize rs1
sltiu x7, x30, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1216)

# Testcase cr_rs1_imm_corners
li x24, 0x0000000100000000 # initialize rs1
sltiu x1, x24, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1224)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000 # initialize rs1
sltiu x2, x10, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1232)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000001 # initialize rs1
sltiu x25, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1240)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000100000001 # initialize rs1
sltiu x18, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1248)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000100000001 # initialize rs1
sltiu x3, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1256)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000100000001 # initialize rs1
sltiu x5, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1264)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000001 # initialize rs1
sltiu x18, x16, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1272)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000100000001 # initialize rs1
sltiu x30, x20, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1280)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000100000001 # initialize rs1
sltiu x3, x29, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1288)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000100000001 # initialize rs1
sltiu x9, x22, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1296)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000100000001 # initialize rs1
sltiu x9, x18, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1304)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000100000001 # initialize rs1
sltiu x25, x8, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1312)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000001 # initialize rs1
sltiu x31, x21, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1320)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000001 # initialize rs1
sltiu x14, x31, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1328)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000100000001 # initialize rs1
sltiu x2, x23, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1336)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000001 # initialize rs1
sltiu x21, x16, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1344)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001 # initialize rs1
sltiu x2, x12, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1352)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000100000001 # initialize rs1
sltiu x14, x17, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1360)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000100000001 # initialize rs1
sltiu x26, x23, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1368)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000001 # initialize rs1
sltiu x24, x13, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1376)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000001 # initialize rs1
sltiu x13, x16, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1384)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000001 # initialize rs1
sltiu x9, x13, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x180f3a8ad91b6375 # initialize rs1
sltiu x0, x0, -563 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x584c2b8bbcafa77a # initialize rs1
sltiu x1, x1, -1071 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xb80623cfb5cffe9a # initialize rs1
sltiu x2, x2, 163 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x34c224eb38b4d223 # initialize rs1
sltiu x3, x3, 1984 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdb868fe2afe4359d # initialize rs1
sltiu x4, x4, 727 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1432)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x80b3469ea1a68d28 # initialize rs1
sltiu x5, x5, -949 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1440)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb5f57b87e4274b78 # initialize rs1
sltiu x6, x6, 243 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1448)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x63fc6c51d213ac8f # initialize rs1
sltiu x7, x7, 735 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1456)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x39db60517162ad7f # initialize rs1
sltiu x8, x8, -1343 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x968e0b114a31849f # initialize rs1
sltiu x9, x9, -664 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1472)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xdee4deb23c1ebed9 # initialize rs1
sltiu x10, x10, 1755 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2e76bb13426e7e3b # initialize rs1
sltiu x11, x11, 1750 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1488)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf5cd3303452c00a2 # initialize rs1
sltiu x12, x12, 1041 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1496)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x54103445ae7ec1e3 # initialize rs1
sltiu x13, x13, -1619 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1504)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xe480ed150f0c16f8 # initialize rs1
sltiu x14, x14, -168 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1512)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xee8db19f8249b619 # initialize rs1
sltiu x15, x15, 1022 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xfc3779330fdfb600 # initialize rs1
sltiu x16, x16, -849 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x31700cd3aa953622 # initialize rs1
sltiu x17, x17, -696 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x162d7bf09d80d215 # initialize rs1
sltiu x18, x18, -1035 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xe5c463e8e31160e7 # initialize rs1
sltiu x19, x19, -1346 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xaf16e022b2d3cdc7 # initialize rs1
sltiu x20, x20, -1310 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x7dcd181511250690 # initialize rs1
sltiu x21, x21, -541 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x243c0f304a3a14ae # initialize rs1
sltiu x22, x22, -1552 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x3d27ac4e1472ae21 # initialize rs1
sltiu x23, x23, -847 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x237690ad3c1c2d72 # initialize rs1
sltiu x24, x24, 1556 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x75772214ed65f3d6 # initialize rs1
sltiu x25, x25, 511 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xe1b5cefeb49d8ab0 # initialize rs1
sltiu x26, x26, -500 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xee49a2ce6b949665 # initialize rs1
sltiu x27, x27, -1806 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x0a522009ebb6ddef # initialize rs1
sltiu x28, x28, -603 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xda69a0b1eaabc1da # initialize rs1
sltiu x29, x29, -1895 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xc126734e9ec66dba # initialize rs1
sltiu x30, x30, -1192 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xde98fb9afea5335b # initialize rs1
sltiu x31, x31, -604 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1648)

# Testcase cp_imm_corners
li x21, 0x4cea46e6a717f481 # initialize rs1
sltiu x22, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1656)

# Testcase cp_imm_corners
li x21, 0xedd40ab58fb86687 # initialize rs1
sltiu x3, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1664)

# Testcase cp_imm_corners
li x10, 0x0180aa29142234f7 # initialize rs1
sltiu x17, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1672)

# Testcase cp_imm_corners
li x19, 0x5d52e013b86d1384 # initialize rs1
sltiu x2, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1680)

# Testcase cp_imm_corners
li x24, 0x6ef9ae872f43f2b4 # initialize rs1
sltiu x2, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1688)

# Testcase cp_imm_corners
li x12, 0x16aa2d0c58daedae # initialize rs1
sltiu x11, x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1696)

# Testcase cp_imm_corners
li x20, 0x6d52dded7b730c24 # initialize rs1
sltiu x12, x20, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1704)

# Testcase cp_imm_corners
li x8, 0xc7220c19baf7664f # initialize rs1
sltiu x11, x8, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1712)

# Testcase cp_imm_corners
li x30, 0x23094618c63483ba # initialize rs1
sltiu x22, x30, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1720)

# Testcase cp_imm_corners
li x5, 0x5c2ce66981551f8c # initialize rs1
sltiu x12, x5, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1728)

# Testcase cp_imm_corners
li x13, 0x134308af43e7c0c6 # initialize rs1
sltiu x15, x13, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1736)

# Testcase cp_imm_corners
li x30, 0xf561e2fd100f5144 # initialize rs1
sltiu x31, x30, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1744)

# Testcase cp_imm_corners
li x27, 0x2d4826a60a139f43 # initialize rs1
sltiu x18, x27, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1752)

# Testcase cp_imm_corners
li x18, 0x62f4e3adaf1c5a1c # initialize rs1
sltiu x29, x18, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cp_imm_corners
li x2, 0xed2ed26e25890c6c # initialize rs1
sltiu x19, x2, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1768)

# Testcase cp_imm_corners
li x6, 0xe254f900b2df20b9 # initialize rs1
sltiu x21, x6, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1776)

# Testcase cp_imm_corners
li x12, 0xb2daca67ab3aef13 # initialize rs1
sltiu x31, x12, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1784)

# Testcase cp_imm_corners
li x6, 0xe7df4e802ad33cb9 # initialize rs1
sltiu x25, x6, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_imm_corners
li x16, 0xa50029fa0d7ced51 # initialize rs1
sltiu x21, x16, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 0)

# Testcase cp_imm_corners
li x31, 0xebe76474cfbb0c1c # initialize rs1
sltiu x5, x31, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 8)

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x30, x5 # perform first operation
sltiu x31, x3, -1735 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x19, x1 # perform first operation
sltiu x30, x18, -1606 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x5, x3 # perform first operation
sltiu x9, x10, 2042 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x2, x8 # perform first operation
sltiu x25, x21, 1188 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x16, x28 # perform first operation
sltiu x28, x16, 1203 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x28, x18 # perform first operation
sltiu x22, x31, -1821 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x27, x21 # perform first operation
sltiu x7, x15, -1946 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x11, x22 # perform first operation
sltiu x25, x17, 405 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x26, x23 # perform first operation
sltiu x20, x7, -1924 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x26, x18, x14 # perform first operation
sltiu x18, x6, -1635 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x18, x3, x12 # perform first operation
sltiu x12, x17, -858 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x27, x30 # perform first operation
sltiu x24, x1, -314 # perform second (triggering) operation

.EQU SIGSIZE,3616


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
