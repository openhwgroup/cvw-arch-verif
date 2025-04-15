///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-slti.S
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
li x0, 0x44a9d45828dbc361 # initialize rs1
slti x23, x0, 432 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x3e610675ab098ecc # initialize rs1
slti x31, x1, -936 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x7d3a8d8596cf037b # initialize rs1
slti x26, x2, 1275 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x8dfac0c77eb5c1f9 # initialize rs1
slti x28, x3, 1029 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5c0fce27c281f2d4 # initialize rs1
slti x23, x4, 277 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfc6adb9de0df2041 # initialize rs1
slti x1, x5, -1781 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe170ff2ace15066d # initialize rs1
slti x10, x6, 3 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe94468cac247db4b # initialize rs1
slti x19, x7, -577 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x750303df2f2792b4 # initialize rs1
slti x12, x8, 1959 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x00d587d2097533c6 # initialize rs1
slti x29, x9, -577 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xc87a88f1c64eea3c # initialize rs1
slti x21, x10, 1516 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xdf7b4303ca0eb1cb # initialize rs1
slti x2, x11, 1743 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x0b09094528408bf1 # initialize rs1
slti x19, x12, -1701 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xbd34de2eedaea5e6 # initialize rs1
slti x20, x13, -1459 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x34e1b05ad3c47c17 # initialize rs1
slti x12, x14, 800 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xe8abfd9d9617f090 # initialize rs1
slti x23, x15, -920 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x7f52da8fb5302d87 # initialize rs1
slti x1, x16, -1897 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xd1652a6b2bbe6979 # initialize rs1
slti x25, x17, -967 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xaa20e1c348057d49 # initialize rs1
slti x25, x18, 897 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x547e7647fee42c19 # initialize rs1
slti x3, x19, 1207 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xccacb07f2ce50f00 # initialize rs1
slti x11, x20, -767 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xbe354411df56467f # initialize rs1
slti x28, x21, -1935 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x99da516e5f2c408f # initialize rs1
slti x23, x22, 1568 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x70088d584d4fa752 # initialize rs1
slti x1, x23, -465 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x6fd6e7ffc7d7a309 # initialize rs1
slti x28, x24, 420 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x3b9cb1e42c35dd24 # initialize rs1
slti x2, x25, 553 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x7b67ab2bc76ac463 # initialize rs1
slti x13, x26, -224 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xc16397717d646b1c # initialize rs1
slti x22, x27, 668 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x6e28b18929a976e8 # initialize rs1
slti x13, x28, -1128 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xfd6965635fe44f59 # initialize rs1
slti x30, x29, 142 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xa1a2e3a843b86e50 # initialize rs1
slti x12, x30, 1952 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x9c94ced4da0c3186 # initialize rs1
slti x6, x31, 443 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rd (Test destination rd = x0)
li x22, 0xec7b82ffff1bb6e4 # initialize rs1
slti x0, x22, 1025 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x26, 0xac76447d5d5d4ee7 # initialize rs1
slti x1, x26, -1931 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x24, 0x4ed3e3e49fd8e5fc # initialize rs1
slti x2, x24, 222 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x15, 0x501bd907a90c8f50 # initialize rs1
slti x3, x15, -1191 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x255dac2be83f03e7 # initialize rs1
slti x4, x11, 1251 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0xd5fcbbe261518234 # initialize rs1
slti x5, x13, 979 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0x95a94e89d3a29c49 # initialize rs1
slti x6, x2, -592 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0xf984fd8b06821579 # initialize rs1
slti x7, x12, -425 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x25, 0x449ef69280ed39db # initialize rs1
slti x8, x25, 357 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x31, 0x794de13bb71102fc # initialize rs1
slti x9, x31, -1803 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x18, 0xc40c1c1774bb8a42 # initialize rs1
slti x10, x18, 645 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x20, 0xc510388b836a3a75 # initialize rs1
slti x11, x20, -1099 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x25, 0x330ddab8a15f32b7 # initialize rs1
slti x12, x25, 497 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x8, 0xcf496a1fdc38319e # initialize rs1
slti x13, x8, 1996 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x7, 0x4a5e8ea5b6ae5b39 # initialize rs1
slti x14, x7, -867 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x10, 0xc78d8f612b9536a1 # initialize rs1
slti x15, x10, 1825 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x18, 0xe8985bef5881562b # initialize rs1
slti x16, x18, -302 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x29, 0x4c744347afcdfa3a # initialize rs1
slti x17, x29, -1223 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x10, 0xc40462bf9418ddc0 # initialize rs1
slti x18, x10, -1983 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x18, 0x7240067294d8973d # initialize rs1
slti x19, x18, -310 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x11, 0x0b151d80f4c9c52e # initialize rs1
slti x20, x11, 1587 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0xd641dba9ea083a1f # initialize rs1
slti x21, x17, 782 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0xb0b84ad4c4bd5d8b # initialize rs1
slti x22, x14, 819 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x15, 0xbf47244c224664b8 # initialize rs1
slti x23, x15, -2022 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x25, 0xdaf6a808f4458034 # initialize rs1
slti x24, x25, 1122 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x27, 0xc940810b4f9160d5 # initialize rs1
slti x25, x27, -106 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x6, 0x8bed85b579d8b005 # initialize rs1
slti x26, x6, 1214 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x16, 0x3637dd7132acd4ba # initialize rs1
slti x27, x16, -2004 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x6, 0xdaba69d67176d29f # initialize rs1
slti x28, x6, -122 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x22, 0xd0244ce48316dde5 # initialize rs1
slti x29, x22, 920 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x17, 0x5efbf5d6cc3f3815 # initialize rs1
slti x30, x17, -1837 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x24, 0x88e77ac9a7e174e8 # initialize rs1
slti x31, x24, -1299 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x29, 0x0000000000000000 # initialize rs1
slti x15, x29, -879 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x20, 0x0000000000000001 # initialize rs1
slti x12, x20, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x0000000000000002 # initialize rs1
slti x23, x16, 1871 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs1
slti x20, x12, 358 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x19, 0x8000000000000001 # initialize rs1
slti x21, x19, -390 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x15, 0x7fffffffffffffff # initialize rs1
slti x2, x15, 233 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
slti x24, x27, -861 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x2, 0xffffffffffffffff # initialize rs1
slti x17, x2, -1353 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
slti x8, x26, -1034 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
slti x26, x7, -981 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x1, x11, 1145 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x5, 0x5555555555555555 # initialize rs1
slti x14, x5, -1752 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs1
slti x19, x15, 1856 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x11, 0x00000000fffffffe # initialize rs1
slti x16, x11, 1097 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x29, 0x0000000100000000 # initialize rs1
slti x8, x29, 1679 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x6, 0x0000000100000001 # initialize rs1
slti x2, x6, -177 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000000 # initialize rs1
slti x21, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 640)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000000 # initialize rs1
slti x27, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 648)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000000000000 # initialize rs1
slti x16, x10, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 656)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000000 # initialize rs1
slti x27, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 664)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000000000000 # initialize rs1
slti x12, x1, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 672)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000000000000 # initialize rs1
slti x21, x31, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000000 # initialize rs1
slti x21, x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 688)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000000 # initialize rs1
slti x19, x21, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 696)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000000 # initialize rs1
slti x12, x14, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 704)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000000 # initialize rs1
slti x31, x14, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 712)

# Testcase cr_rs1_imm_corners
li x30, 0x0000000000000000 # initialize rs1
slti x21, x30, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 720)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000000 # initialize rs1
slti x23, x14, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 728)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000000 # initialize rs1
slti x18, x16, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 736)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000000 # initialize rs1
slti x2, x17, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 744)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000000 # initialize rs1
slti x2, x11, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 752)

# Testcase cr_rs1_imm_corners
li x25, 0x0000000000000000 # initialize rs1
slti x8, x25, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 760)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000000 # initialize rs1
slti x2, x29, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 768)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000000 # initialize rs1
slti x25, x27, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 776)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000000 # initialize rs1
slti x30, x22, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 784)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000000 # initialize rs1
slti x6, x12, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 792)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000000000001 # initialize rs1
slti x28, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 800)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000001 # initialize rs1
slti x2, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000001 # initialize rs1
slti x11, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 816)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000001 # initialize rs1
slti x25, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 824)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000001 # initialize rs1
slti x16, x5, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 832)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000000000001 # initialize rs1
slti x28, x20, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 840)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000000000001 # initialize rs1
slti x5, x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 848)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000001 # initialize rs1
slti x28, x9, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 856)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000000000001 # initialize rs1
slti x19, x17, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 864)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000001 # initialize rs1
slti x30, x26, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 872)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000001 # initialize rs1
slti x13, x5, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 880)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000001 # initialize rs1
slti x2, x5, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 888)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000001 # initialize rs1
slti x18, x26, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 896)

# Testcase cr_rs1_imm_corners
li x22, 0x0000000000000001 # initialize rs1
slti x8, x22, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 904)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000001 # initialize rs1
slti x12, x26, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 912)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000001 # initialize rs1
slti x27, x21, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 920)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000001 # initialize rs1
slti x20, x16, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 928)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000000000001 # initialize rs1
slti x19, x16, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000001 # initialize rs1
slti x19, x6, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 944)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000001 # initialize rs1
slti x20, x3, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 952)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000002 # initialize rs1
slti x22, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 960)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000002 # initialize rs1
slti x23, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 968)

# Testcase cr_rs1_imm_corners
li x29, 0x0000000000000002 # initialize rs1
slti x10, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 976)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000002 # initialize rs1
slti x5, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 984)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000000000002 # initialize rs1
slti x29, x18, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 992)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000000000002 # initialize rs1
slti x22, x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1000)

# Testcase cr_rs1_imm_corners
li x8, 0x0000000000000002 # initialize rs1
slti x19, x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1008)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000002 # initialize rs1
slti x30, x26, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1016)

# Testcase cr_rs1_imm_corners
li x9, 0x0000000000000002 # initialize rs1
slti x28, x9, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1024)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000002 # initialize rs1
slti x9, x21, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1032)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000000000002 # initialize rs1
slti x2, x26, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1040)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000000000002 # initialize rs1
slti x13, x6, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1048)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000000000002 # initialize rs1
slti x24, x7, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1056)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000002 # initialize rs1
slti x12, x21, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1064)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000000000002 # initialize rs1
slti x28, x27, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1072)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rs1
slti x16, x3, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1080)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000000000002 # initialize rs1
slti x21, x3, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1088)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000000000002 # initialize rs1
slti x11, x15, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1096)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000000000002 # initialize rs1
slti x17, x21, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1104)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000000000002 # initialize rs1
slti x14, x5, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1112)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000000 # initialize rs1
slti x5, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1120)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000000 # initialize rs1
slti x22, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1128)

# Testcase cr_rs1_imm_corners
li x2, 0x8000000000000000 # initialize rs1
slti x9, x2, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1136)

# Testcase cr_rs1_imm_corners
li x22, 0x8000000000000000 # initialize rs1
slti x2, x22, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

# Testcase cr_rs1_imm_corners
li x31, 0x8000000000000000 # initialize rs1
slti x11, x31, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1152)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rs1
slti x18, x3, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1160)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000000 # initialize rs1
slti x22, x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1168)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000000 # initialize rs1
slti x9, x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1176)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000000 # initialize rs1
slti x10, x1, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1184)

# Testcase cr_rs1_imm_corners
li x21, 0x8000000000000000 # initialize rs1
slti x25, x21, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1192)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000000 # initialize rs1
slti x30, x12, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1200)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000000 # initialize rs1
slti x1, x3, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1208)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000000 # initialize rs1
slti x18, x10, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1216)

# Testcase cr_rs1_imm_corners
li x22, 0x8000000000000000 # initialize rs1
slti x17, x22, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1224)

# Testcase cr_rs1_imm_corners
li x29, 0x8000000000000000 # initialize rs1
slti x12, x29, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000000 # initialize rs1
slti x11, x1, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1240)

# Testcase cr_rs1_imm_corners
li x2, 0x8000000000000000 # initialize rs1
slti x19, x2, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1248)

# Testcase cr_rs1_imm_corners
li x9, 0x8000000000000000 # initialize rs1
slti x26, x9, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1256)

# Testcase cr_rs1_imm_corners
li x22, 0x8000000000000000 # initialize rs1
slti x5, x22, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1264)

# Testcase cr_rs1_imm_corners
li x16, 0x8000000000000000 # initialize rs1
slti x7, x16, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1272)

# Testcase cr_rs1_imm_corners
li x27, 0x8000000000000001 # initialize rs1
slti x2, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1280)

# Testcase cr_rs1_imm_corners
li x28, 0x8000000000000001 # initialize rs1
slti x3, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1288)

# Testcase cr_rs1_imm_corners
li x16, 0x8000000000000001 # initialize rs1
slti x1, x16, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1296)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000001 # initialize rs1
slti x1, x13, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1304)

# Testcase cr_rs1_imm_corners
li x6, 0x8000000000000001 # initialize rs1
slti x15, x6, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1312)

# Testcase cr_rs1_imm_corners
li x26, 0x8000000000000001 # initialize rs1
slti x3, x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1320)

# Testcase cr_rs1_imm_corners
li x14, 0x8000000000000001 # initialize rs1
slti x18, x14, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1328)

# Testcase cr_rs1_imm_corners
li x11, 0x8000000000000001 # initialize rs1
slti x29, x11, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1336)

# Testcase cr_rs1_imm_corners
li x17, 0x8000000000000001 # initialize rs1
slti x24, x17, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1344)

# Testcase cr_rs1_imm_corners
li x7, 0x8000000000000001 # initialize rs1
slti x14, x7, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1352)

# Testcase cr_rs1_imm_corners
li x12, 0x8000000000000001 # initialize rs1
slti x15, x12, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1360)

# Testcase cr_rs1_imm_corners
li x26, 0x8000000000000001 # initialize rs1
slti x8, x26, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1368)

# Testcase cr_rs1_imm_corners
li x3, 0x8000000000000001 # initialize rs1
slti x26, x3, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1376)

# Testcase cr_rs1_imm_corners
li x13, 0x8000000000000001 # initialize rs1
slti x20, x13, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cr_rs1_imm_corners
li x15, 0x8000000000000001 # initialize rs1
slti x13, x15, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1392)

# Testcase cr_rs1_imm_corners
li x1, 0x8000000000000001 # initialize rs1
slti x3, x1, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1400)

# Testcase cr_rs1_imm_corners
li x16, 0x8000000000000001 # initialize rs1
slti x30, x16, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1408)

# Testcase cr_rs1_imm_corners
li x30, 0x8000000000000001 # initialize rs1
slti x16, x30, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1416)

# Testcase cr_rs1_imm_corners
li x8, 0x8000000000000001 # initialize rs1
slti x9, x8, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1424)

# Testcase cr_rs1_imm_corners
li x10, 0x8000000000000001 # initialize rs1
slti x22, x10, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1432)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffffffffffff # initialize rs1
slti x6, x7, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1440)

# Testcase cr_rs1_imm_corners
li x1, 0x7fffffffffffffff # initialize rs1
slti x12, x1, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1448)

# Testcase cr_rs1_imm_corners
li x18, 0x7fffffffffffffff # initialize rs1
slti x20, x18, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1456)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffffffffffff # initialize rs1
slti x19, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1464)

# Testcase cr_rs1_imm_corners
li x23, 0x7fffffffffffffff # initialize rs1
slti x13, x23, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1472)

# Testcase cr_rs1_imm_corners
li x12, 0x7fffffffffffffff # initialize rs1
slti x14, x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1480)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff # initialize rs1
slti x26, x13, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1488)

# Testcase cr_rs1_imm_corners
li x7, 0x7fffffffffffffff # initialize rs1
slti x22, x7, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1496)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff # initialize rs1
slti x25, x14, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1504)

# Testcase cr_rs1_imm_corners
li x3, 0x7fffffffffffffff # initialize rs1
slti x16, x3, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1512)

# Testcase cr_rs1_imm_corners
li x30, 0x7fffffffffffffff # initialize rs1
slti x16, x30, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1520)

# Testcase cr_rs1_imm_corners
li x15, 0x7fffffffffffffff # initialize rs1
slti x28, x15, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1528)

# Testcase cr_rs1_imm_corners
li x2, 0x7fffffffffffffff # initialize rs1
slti x7, x2, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1536)

# Testcase cr_rs1_imm_corners
li x14, 0x7fffffffffffffff # initialize rs1
slti x3, x14, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1544)

# Testcase cr_rs1_imm_corners
li x31, 0x7fffffffffffffff # initialize rs1
slti x20, x31, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1552)

# Testcase cr_rs1_imm_corners
li x13, 0x7fffffffffffffff # initialize rs1
slti x16, x13, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1560)

# Testcase cr_rs1_imm_corners
li x28, 0x7fffffffffffffff # initialize rs1
slti x19, x28, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1568)

# Testcase cr_rs1_imm_corners
li x10, 0x7fffffffffffffff # initialize rs1
slti x18, x10, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1576)

# Testcase cr_rs1_imm_corners
li x25, 0x7fffffffffffffff # initialize rs1
slti x14, x25, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1584)

# Testcase cr_rs1_imm_corners
li x18, 0x7fffffffffffffff # initialize rs1
slti x7, x18, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1592)

# Testcase cr_rs1_imm_corners
li x11, 0x7ffffffffffffffe # initialize rs1
slti x15, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1600)

# Testcase cr_rs1_imm_corners
li x19, 0x7ffffffffffffffe # initialize rs1
slti x6, x19, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1608)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffffffffffe # initialize rs1
slti x23, x20, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1616)

# Testcase cr_rs1_imm_corners
li x18, 0x7ffffffffffffffe # initialize rs1
slti x21, x18, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1624)

# Testcase cr_rs1_imm_corners
li x27, 0x7ffffffffffffffe # initialize rs1
slti x5, x27, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1632)

# Testcase cr_rs1_imm_corners
li x30, 0x7ffffffffffffffe # initialize rs1
slti x20, x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1640)

# Testcase cr_rs1_imm_corners
li x10, 0x7ffffffffffffffe # initialize rs1
slti x7, x10, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1648)

# Testcase cr_rs1_imm_corners
li x31, 0x7ffffffffffffffe # initialize rs1
slti x11, x31, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1656)

# Testcase cr_rs1_imm_corners
li x8, 0x7ffffffffffffffe # initialize rs1
slti x21, x8, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1664)

# Testcase cr_rs1_imm_corners
li x12, 0x7ffffffffffffffe # initialize rs1
slti x24, x12, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1672)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffffffffffe # initialize rs1
slti x8, x9, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1680)

# Testcase cr_rs1_imm_corners
li x21, 0x7ffffffffffffffe # initialize rs1
slti x31, x21, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1688)

# Testcase cr_rs1_imm_corners
li x20, 0x7ffffffffffffffe # initialize rs1
slti x21, x20, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffffffffffe # initialize rs1
slti x20, x24, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1704)

# Testcase cr_rs1_imm_corners
li x24, 0x7ffffffffffffffe # initialize rs1
slti x1, x24, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1712)

# Testcase cr_rs1_imm_corners
li x9, 0x7ffffffffffffffe # initialize rs1
slti x25, x9, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1720)

# Testcase cr_rs1_imm_corners
li x17, 0x7ffffffffffffffe # initialize rs1
slti x2, x17, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1728)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe # initialize rs1
slti x28, x13, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1736)

# Testcase cr_rs1_imm_corners
li x13, 0x7ffffffffffffffe # initialize rs1
slti x7, x13, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1744)

# Testcase cr_rs1_imm_corners
li x3, 0x7ffffffffffffffe # initialize rs1
slti x5, x3, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1752)

# Testcase cr_rs1_imm_corners
li x31, 0xffffffffffffffff # initialize rs1
slti x21, x31, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1760)

# Testcase cr_rs1_imm_corners
li x5, 0xffffffffffffffff # initialize rs1
slti x8, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1768)

# Testcase cr_rs1_imm_corners
li x13, 0xffffffffffffffff # initialize rs1
slti x11, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1776)

# Testcase cr_rs1_imm_corners
li x7, 0xffffffffffffffff # initialize rs1
slti x19, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1784)

# Testcase cr_rs1_imm_corners
li x24, 0xffffffffffffffff # initialize rs1
slti x27, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_imm_corners
li x24, 0xffffffffffffffff # initialize rs1
slti x18, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 0)

# Testcase cr_rs1_imm_corners
li x15, 0xffffffffffffffff # initialize rs1
slti x23, x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cr_rs1_imm_corners
li x1, 0xffffffffffffffff # initialize rs1
slti x13, x1, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffffffffffff # initialize rs1
slti x27, x10, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 24)

# Testcase cr_rs1_imm_corners
li x3, 0xffffffffffffffff # initialize rs1
slti x7, x3, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 32)

# Testcase cr_rs1_imm_corners
li x12, 0xffffffffffffffff # initialize rs1
slti x10, x12, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 40)

# Testcase cr_rs1_imm_corners
li x23, 0xffffffffffffffff # initialize rs1
slti x3, x23, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 48)

# Testcase cr_rs1_imm_corners
li x18, 0xffffffffffffffff # initialize rs1
slti x22, x18, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 56)

# Testcase cr_rs1_imm_corners
li x11, 0xffffffffffffffff # initialize rs1
slti x6, x11, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cr_rs1_imm_corners
li x20, 0xffffffffffffffff # initialize rs1
slti x2, x20, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 72)

# Testcase cr_rs1_imm_corners
li x30, 0xffffffffffffffff # initialize rs1
slti x28, x30, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 80)

# Testcase cr_rs1_imm_corners
li x19, 0xffffffffffffffff # initialize rs1
slti x23, x19, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cr_rs1_imm_corners
li x10, 0xffffffffffffffff # initialize rs1
slti x6, x10, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 96)

# Testcase cr_rs1_imm_corners
li x22, 0xffffffffffffffff # initialize rs1
slti x14, x22, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cr_rs1_imm_corners
li x2, 0xffffffffffffffff # initialize rs1
slti x10, x2, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cr_rs1_imm_corners
li x6, 0xfffffffffffffffe # initialize rs1
slti x27, x6, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 120)

# Testcase cr_rs1_imm_corners
li x7, 0xfffffffffffffffe # initialize rs1
slti x20, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 128)

# Testcase cr_rs1_imm_corners
li x26, 0xfffffffffffffffe # initialize rs1
slti x25, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cr_rs1_imm_corners
li x25, 0xfffffffffffffffe # initialize rs1
slti x27, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 144)

# Testcase cr_rs1_imm_corners
li x16, 0xfffffffffffffffe # initialize rs1
slti x30, x16, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 152)

# Testcase cr_rs1_imm_corners
li x29, 0xfffffffffffffffe # initialize rs1
slti x2, x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cr_rs1_imm_corners
li x12, 0xfffffffffffffffe # initialize rs1
slti x24, x12, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 168)

# Testcase cr_rs1_imm_corners
li x25, 0xfffffffffffffffe # initialize rs1
slti x12, x25, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cr_rs1_imm_corners
li x15, 0xfffffffffffffffe # initialize rs1
slti x5, x15, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cr_rs1_imm_corners
li x19, 0xfffffffffffffffe # initialize rs1
slti x8, x19, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cr_rs1_imm_corners
li x16, 0xfffffffffffffffe # initialize rs1
slti x14, x16, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 200)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffffffffffe # initialize rs1
slti x31, x24, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cr_rs1_imm_corners
li x24, 0xfffffffffffffffe # initialize rs1
slti x19, x24, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cr_rs1_imm_corners
li x21, 0xfffffffffffffffe # initialize rs1
slti x11, x21, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 224)

# Testcase cr_rs1_imm_corners
li x18, 0xfffffffffffffffe # initialize rs1
slti x8, x18, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cr_rs1_imm_corners
li x13, 0xfffffffffffffffe # initialize rs1
slti x30, x13, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cr_rs1_imm_corners
li x14, 0xfffffffffffffffe # initialize rs1
slti x8, x14, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cr_rs1_imm_corners
li x10, 0xfffffffffffffffe # initialize rs1
slti x5, x10, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 256)

# Testcase cr_rs1_imm_corners
li x16, 0xfffffffffffffffe # initialize rs1
slti x15, x16, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 264)

# Testcase cr_rs1_imm_corners
li x22, 0xfffffffffffffffe # initialize rs1
slti x9, x22, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 272)

# Testcase cr_rs1_imm_corners
li x26, 0x5bbc887763ae86f2 # initialize rs1
slti x17, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 280)

# Testcase cr_rs1_imm_corners
li x22, 0x5bbc887763ae86f2 # initialize rs1
slti x14, x22, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 288)

# Testcase cr_rs1_imm_corners
li x23, 0x5bbc887763ae86f2 # initialize rs1
slti x17, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 296)

# Testcase cr_rs1_imm_corners
li x26, 0x5bbc887763ae86f2 # initialize rs1
slti x5, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 304)

# Testcase cr_rs1_imm_corners
li x29, 0x5bbc887763ae86f2 # initialize rs1
slti x19, x29, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 312)

# Testcase cr_rs1_imm_corners
li x26, 0x5bbc887763ae86f2 # initialize rs1
slti x30, x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 320)

# Testcase cr_rs1_imm_corners
li x21, 0x5bbc887763ae86f2 # initialize rs1
slti x17, x21, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 328)

# Testcase cr_rs1_imm_corners
li x18, 0x5bbc887763ae86f2 # initialize rs1
slti x31, x18, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 336)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc887763ae86f2 # initialize rs1
slti x23, x14, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 344)

# Testcase cr_rs1_imm_corners
li x27, 0x5bbc887763ae86f2 # initialize rs1
slti x14, x27, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2 # initialize rs1
slti x18, x1, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 360)

# Testcase cr_rs1_imm_corners
li x14, 0x5bbc887763ae86f2 # initialize rs1
slti x17, x14, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 368)

# Testcase cr_rs1_imm_corners
li x5, 0x5bbc887763ae86f2 # initialize rs1
slti x13, x5, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 376)

# Testcase cr_rs1_imm_corners
li x1, 0x5bbc887763ae86f2 # initialize rs1
slti x27, x1, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 384)

# Testcase cr_rs1_imm_corners
li x8, 0x5bbc887763ae86f2 # initialize rs1
slti x15, x8, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cr_rs1_imm_corners
li x16, 0x5bbc887763ae86f2 # initialize rs1
slti x14, x16, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 400)

# Testcase cr_rs1_imm_corners
li x3, 0x5bbc887763ae86f2 # initialize rs1
slti x12, x3, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 408)

# Testcase cr_rs1_imm_corners
li x21, 0x5bbc887763ae86f2 # initialize rs1
slti x24, x21, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 416)

# Testcase cr_rs1_imm_corners
li x17, 0x5bbc887763ae86f2 # initialize rs1
slti x5, x17, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 424)

# Testcase cr_rs1_imm_corners
li x6, 0x5bbc887763ae86f2 # initialize rs1
slti x17, x6, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 432)

# Testcase cr_rs1_imm_corners
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x20, x18, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 440)

# Testcase cr_rs1_imm_corners
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x16, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 448)

# Testcase cr_rs1_imm_corners
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x3, x17, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 456)

# Testcase cr_rs1_imm_corners
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x20, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 464)

# Testcase cr_rs1_imm_corners
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x30, x20, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 472)

# Testcase cr_rs1_imm_corners
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x2, x21, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 480)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x12, x25, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 488)

# Testcase cr_rs1_imm_corners
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x30, x3, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cr_rs1_imm_corners
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x5, x14, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 504)

# Testcase cr_rs1_imm_corners
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x6, x1, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 512)

# Testcase cr_rs1_imm_corners
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x12, x17, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 520)

# Testcase cr_rs1_imm_corners
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x18, x21, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 528)

# Testcase cr_rs1_imm_corners
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x16, x26, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 536)

# Testcase cr_rs1_imm_corners
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x30, x1, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 544)

# Testcase cr_rs1_imm_corners
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x23, x26, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 552)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x21, x13, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 560)

# Testcase cr_rs1_imm_corners
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x2, x17, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 568)

# Testcase cr_rs1_imm_corners
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x15, x13, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 576)

# Testcase cr_rs1_imm_corners
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x9, x25, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cr_rs1_imm_corners
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
slti x14, x29, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cr_rs1_imm_corners
li x26, 0x5555555555555555 # initialize rs1
slti x3, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 600)

# Testcase cr_rs1_imm_corners
li x10, 0x5555555555555555 # initialize rs1
slti x28, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 608)

# Testcase cr_rs1_imm_corners
li x8, 0x5555555555555555 # initialize rs1
slti x9, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 616)

# Testcase cr_rs1_imm_corners
li x28, 0x5555555555555555 # initialize rs1
slti x30, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_imm_corners
li x10, 0x5555555555555555 # initialize rs1
slti x19, x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 632)

# Testcase cr_rs1_imm_corners
li x20, 0x5555555555555555 # initialize rs1
slti x10, x20, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 640)

# Testcase cr_rs1_imm_corners
li x17, 0x5555555555555555 # initialize rs1
slti x19, x17, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 648)

# Testcase cr_rs1_imm_corners
li x6, 0x5555555555555555 # initialize rs1
slti x20, x6, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 656)

# Testcase cr_rs1_imm_corners
li x29, 0x5555555555555555 # initialize rs1
slti x19, x29, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cr_rs1_imm_corners
li x1, 0x5555555555555555 # initialize rs1
slti x29, x1, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 672)

# Testcase cr_rs1_imm_corners
li x28, 0x5555555555555555 # initialize rs1
slti x23, x28, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 680)

# Testcase cr_rs1_imm_corners
li x22, 0x5555555555555555 # initialize rs1
slti x17, x22, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 688)

# Testcase cr_rs1_imm_corners
li x9, 0x5555555555555555 # initialize rs1
slti x29, x9, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 696)

# Testcase cr_rs1_imm_corners
li x16, 0x5555555555555555 # initialize rs1
slti x28, x16, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 704)

# Testcase cr_rs1_imm_corners
li x10, 0x5555555555555555 # initialize rs1
slti x14, x10, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 712)

# Testcase cr_rs1_imm_corners
li x21, 0x5555555555555555 # initialize rs1
slti x25, x21, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 720)

# Testcase cr_rs1_imm_corners
li x21, 0x5555555555555555 # initialize rs1
slti x7, x21, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 728)

# Testcase cr_rs1_imm_corners
li x27, 0x5555555555555555 # initialize rs1
slti x6, x27, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 736)

# Testcase cr_rs1_imm_corners
li x16, 0x5555555555555555 # initialize rs1
slti x2, x16, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 744)

# Testcase cr_rs1_imm_corners
li x22, 0x5555555555555555 # initialize rs1
slti x17, x22, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 752)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000ffffffff # initialize rs1
slti x29, x10, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 760)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000ffffffff # initialize rs1
slti x23, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 768)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000ffffffff # initialize rs1
slti x21, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 776)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000ffffffff # initialize rs1
slti x29, x14, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 784)

# Testcase cr_rs1_imm_corners
li x10, 0x00000000ffffffff # initialize rs1
slti x7, x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 792)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000ffffffff # initialize rs1
slti x17, x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 800)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000ffffffff # initialize rs1
slti x13, x7, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 808)

# Testcase cr_rs1_imm_corners
li x5, 0x00000000ffffffff # initialize rs1
slti x20, x5, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 816)

# Testcase cr_rs1_imm_corners
li x26, 0x00000000ffffffff # initialize rs1
slti x12, x26, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cr_rs1_imm_corners
li x24, 0x00000000ffffffff # initialize rs1
slti x25, x24, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 832)

# Testcase cr_rs1_imm_corners
li x9, 0x00000000ffffffff # initialize rs1
slti x17, x9, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 840)

# Testcase cr_rs1_imm_corners
li x21, 0x00000000ffffffff # initialize rs1
slti x17, x21, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 848)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000ffffffff # initialize rs1
slti x31, x14, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 856)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000ffffffff # initialize rs1
slti x13, x22, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 864)

# Testcase cr_rs1_imm_corners
li x18, 0x00000000ffffffff # initialize rs1
slti x1, x18, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 872)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000ffffffff # initialize rs1
slti x22, x29, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 880)

# Testcase cr_rs1_imm_corners
li x1, 0x00000000ffffffff # initialize rs1
slti x23, x1, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 888)

# Testcase cr_rs1_imm_corners
li x31, 0x00000000ffffffff # initialize rs1
slti x21, x31, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 896)

# Testcase cr_rs1_imm_corners
li x19, 0x00000000ffffffff # initialize rs1
slti x2, x19, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000ffffffff # initialize rs1
slti x14, x20, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cr_rs1_imm_corners
li x30, 0x00000000fffffffe # initialize rs1
slti x6, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 920)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000fffffffe # initialize rs1
slti x5, x14, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 928)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000fffffffe # initialize rs1
slti x20, x29, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 936)

# Testcase cr_rs1_imm_corners
li x8, 0x00000000fffffffe # initialize rs1
slti x15, x8, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 944)

# Testcase cr_rs1_imm_corners
li x14, 0x00000000fffffffe # initialize rs1
slti x3, x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 952)

# Testcase cr_rs1_imm_corners
li x20, 0x00000000fffffffe # initialize rs1
slti x1, x20, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 960)

# Testcase cr_rs1_imm_corners
li x26, 0x00000000fffffffe # initialize rs1
slti x11, x26, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 968)

# Testcase cr_rs1_imm_corners
li x28, 0x00000000fffffffe # initialize rs1
slti x12, x28, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 976)

# Testcase cr_rs1_imm_corners
li x6, 0x00000000fffffffe # initialize rs1
slti x27, x6, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 984)

# Testcase cr_rs1_imm_corners
li x23, 0x00000000fffffffe # initialize rs1
slti x30, x23, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 992)

# Testcase cr_rs1_imm_corners
li x11, 0x00000000fffffffe # initialize rs1
slti x13, x11, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1000)

# Testcase cr_rs1_imm_corners
li x22, 0x00000000fffffffe # initialize rs1
slti x1, x22, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cr_rs1_imm_corners
li x15, 0x00000000fffffffe # initialize rs1
slti x25, x15, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1016)

# Testcase cr_rs1_imm_corners
li x2, 0x00000000fffffffe # initialize rs1
slti x29, x2, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1024)

# Testcase cr_rs1_imm_corners
li x28, 0x00000000fffffffe # initialize rs1
slti x31, x28, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1032)

# Testcase cr_rs1_imm_corners
li x18, 0x00000000fffffffe # initialize rs1
slti x17, x18, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1040)

# Testcase cr_rs1_imm_corners
li x29, 0x00000000fffffffe # initialize rs1
slti x31, x29, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1048)

# Testcase cr_rs1_imm_corners
li x7, 0x00000000fffffffe # initialize rs1
slti x13, x7, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1056)

# Testcase cr_rs1_imm_corners
li x27, 0x00000000fffffffe # initialize rs1
slti x8, x27, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cr_rs1_imm_corners
li x19, 0x00000000fffffffe # initialize rs1
slti x5, x19, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1072)

# Testcase cr_rs1_imm_corners
li x20, 0x0000000100000000 # initialize rs1
slti x27, x20, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1080)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000000 # initialize rs1
slti x15, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1088)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000000 # initialize rs1
slti x18, x12, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1096)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000000 # initialize rs1
slti x8, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1104)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000100000000 # initialize rs1
slti x25, x5, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1112)

# Testcase cr_rs1_imm_corners
li x5, 0x0000000100000000 # initialize rs1
slti x10, x5, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1120)

# Testcase cr_rs1_imm_corners
li x7, 0x0000000100000000 # initialize rs1
slti x27, x7, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1128)

# Testcase cr_rs1_imm_corners
li x1, 0x0000000100000000 # initialize rs1
slti x28, x1, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000000 # initialize rs1
slti x17, x21, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1144)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000100000000 # initialize rs1
slti x18, x26, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1152)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000100000000 # initialize rs1
slti x19, x2, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1160)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000000 # initialize rs1
slti x3, x10, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1168)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000000 # initialize rs1
slti x28, x16, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1176)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000000 # initialize rs1
slti x5, x14, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1184)

# Testcase cr_rs1_imm_corners
li x14, 0x0000000100000000 # initialize rs1
slti x15, x14, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1192)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000000 # initialize rs1
slti x5, x15, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1200)

# Testcase cr_rs1_imm_corners
li x23, 0x0000000100000000 # initialize rs1
slti x25, x23, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1208)

# Testcase cr_rs1_imm_corners
li x13, 0x0000000100000000 # initialize rs1
slti x30, x13, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1216)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000000 # initialize rs1
slti x15, x21, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1224)

# Testcase cr_rs1_imm_corners
li x17, 0x0000000100000000 # initialize rs1
slti x16, x17, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1232)

# Testcase cr_rs1_imm_corners
li x26, 0x0000000100000001 # initialize rs1
slti x13, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1240)

# Testcase cr_rs1_imm_corners
li x6, 0x0000000100000001 # initialize rs1
slti x8, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1248)

# Testcase cr_rs1_imm_corners
li x31, 0x0000000100000001 # initialize rs1
slti x7, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1256)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001 # initialize rs1
slti x31, x12, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1264)

# Testcase cr_rs1_imm_corners
li x10, 0x0000000100000001 # initialize rs1
slti x25, x10, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1272)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rs1
slti x27, x15, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1280)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rs1
slti x7, x15, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1288)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000100000001 # initialize rs1
slti x31, x18, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1296)

# Testcase cr_rs1_imm_corners
li x28, 0x0000000100000001 # initialize rs1
slti x13, x28, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1304)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000001 # initialize rs1
slti x9, x16, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1312)

# Testcase cr_rs1_imm_corners
li x11, 0x0000000100000001 # initialize rs1
slti x25, x11, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1320)

# Testcase cr_rs1_imm_corners
li x21, 0x0000000100000001 # initialize rs1
slti x3, x21, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1328)

# Testcase cr_rs1_imm_corners
li x2, 0x0000000100000001 # initialize rs1
slti x25, x2, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1336)

# Testcase cr_rs1_imm_corners
li x18, 0x0000000100000001 # initialize rs1
slti x9, x18, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1344)

# Testcase cr_rs1_imm_corners
li x15, 0x0000000100000001 # initialize rs1
slti x23, x15, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1352)

# Testcase cr_rs1_imm_corners
li x16, 0x0000000100000001 # initialize rs1
slti x17, x16, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1360)

# Testcase cr_rs1_imm_corners
li x12, 0x0000000100000001 # initialize rs1
slti x26, x12, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1368)

# Testcase cr_rs1_imm_corners
li x27, 0x0000000100000001 # initialize rs1
slti x8, x27, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1376)

# Testcase cr_rs1_imm_corners
li x19, 0x0000000100000001 # initialize rs1
slti x18, x19, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cr_rs1_imm_corners
li x3, 0x0000000100000001 # initialize rs1
slti x15, x3, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd4c86a81cc7e190f # initialize rs1
slti x0, x0, 695 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x8557049a2ac1d821 # initialize rs1
slti x1, x1, 1885 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xc29db1b7924c5777 # initialize rs1
slti x2, x2, -1529 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x008dc759ad5baa0f # initialize rs1
slti x3, x3, 170 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x0b3d1a11b1193360 # initialize rs1
slti x4, x4, -1459 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1432)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7720126793c10a52 # initialize rs1
slti x5, x5, 1568 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1440)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x29d02b5f82d8c8d7 # initialize rs1
slti x6, x6, 899 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1448)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x86282137bd5120d9 # initialize rs1
slti x7, x7, -1298 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1456)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9dc87a88c3e939da # initialize rs1
slti x8, x8, 1935 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x7f61954908ef21ef # initialize rs1
slti x9, x9, -1499 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1472)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xbc8d489f505417e9 # initialize rs1
slti x10, x10, -146 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xe111941bcb4b2218 # initialize rs1
slti x11, x11, 324 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1488)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x2c7650b1385baae5 # initialize rs1
slti x12, x12, 614 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1496)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xaa91b11ffd930721 # initialize rs1
slti x13, x13, 1390 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1504)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x3d2ef46934e0fcad # initialize rs1
slti x14, x14, 1719 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1512)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xbbe984b5d5410237 # initialize rs1
slti x15, x15, -1894 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xc54dc5f981457884 # initialize rs1
slti x16, x16, 1960 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xfabae76cce93dd27 # initialize rs1
slti x17, x17, -787 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xede493eca9ccf563 # initialize rs1
slti x18, x18, 619 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x1ab25027d5ef41a7 # initialize rs1
slti x19, x19, 1910 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x126c970113e80170 # initialize rs1
slti x20, x20, -1588 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xc7237c6a5cc432c7 # initialize rs1
slti x21, x21, 1691 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x8a403762d6fbcb4b # initialize rs1
slti x22, x22, -859 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x7cf40581c5de74e9 # initialize rs1
slti x23, x23, 1163 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x612016a1ddf7e1fb # initialize rs1
slti x24, x24, 815 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xdf8f4bf53cdc967a # initialize rs1
slti x25, x25, -1592 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x3301ef591ba18f61 # initialize rs1
slti x26, x26, 1826 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x1eeffae96ae108c0 # initialize rs1
slti x27, x27, 1510 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x50d333f336117520 # initialize rs1
slti x28, x28, -967 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf063b86d6ad68017 # initialize rs1
slti x29, x29, 1433 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xb0062ed58c7f9bac # initialize rs1
slti x30, x30, -1859 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x87f0e9bdf8f7dbd7 # initialize rs1
slti x31, x31, 1857 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1648)

# Testcase cp_imm_corners
li x22, 0xef3f3b9ddb971ebb # initialize rs1
slti x9, x22, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1656)

# Testcase cp_imm_corners
li x9, 0xf9fa3ab5f15b7740 # initialize rs1
slti x8, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1664)

# Testcase cp_imm_corners
li x31, 0xf3d0cf70aecd202c # initialize rs1
slti x16, x31, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1672)

# Testcase cp_imm_corners
li x21, 0x8e1475990bb70d2d # initialize rs1
slti x27, x21, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1680)

# Testcase cp_imm_corners
li x11, 0x7b6a414c5849be23 # initialize rs1
slti x1, x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1688)

# Testcase cp_imm_corners
li x1, 0xb4fb9be6efd22b46 # initialize rs1
slti x23, x1, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1696)

# Testcase cp_imm_corners
li x11, 0x13580a661776f79c # initialize rs1
slti x6, x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1704)

# Testcase cp_imm_corners
li x21, 0x2b94968e28fac2d5 # initialize rs1
slti x5, x21, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1712)

# Testcase cp_imm_corners
li x1, 0x7a5a9c3e3ba77543 # initialize rs1
slti x12, x1, 64 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1720)

# Testcase cp_imm_corners
li x29, 0x97170cce5a5593c6 # initialize rs1
slti x20, x29, 128 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1728)

# Testcase cp_imm_corners
li x29, 0x2ec0a55b510bc947 # initialize rs1
slti x21, x29, 256 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1736)

# Testcase cp_imm_corners
li x15, 0x193a6c16e08205bb # initialize rs1
slti x5, x15, 512 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1744)

# Testcase cp_imm_corners
li x26, 0x45e8092372bb3dc4 # initialize rs1
slti x14, x26, 1023 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1752)

# Testcase cp_imm_corners
li x9, 0xa7efdd81af23733f # initialize rs1
slti x21, x9, 1024 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1760)

# Testcase cp_imm_corners
li x7, 0x9f68064b3a92116a # initialize rs1
slti x8, x7, 1795 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1768)

# Testcase cp_imm_corners
li x7, 0xc4f8fe68dc5479ea # initialize rs1
slti x13, x7, 2047 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1776)

# Testcase cp_imm_corners
li x31, 0x69787c80b089dd6e # initialize rs1
slti x13, x31, -2048 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1784)

# Testcase cp_imm_corners
li x18, 0x6dc2e0ede72275c2 # initialize rs1
slti x9, x18, -2047 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_imm_corners
li x19, 0xb3bf30d9b5738211 # initialize rs1
slti x22, x19, -2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 0)

# Testcase cp_imm_corners
li x28, 0xb5c0a9f89ec9ec3a # initialize rs1
slti x14, x28, -1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 8)

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x21, x23 # perform first operation
slti x29, x8, 526 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x15, x13 # perform first operation
slti x8, x21, 272 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x27, x14 # perform first operation
slti x18, x1, 1615 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x11, x9 # perform first operation
slti x2, x31, 921 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x25, x2 # perform first operation
slti x2, x9, -86 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x8, x30 # perform first operation
slti x30, x22, -1369 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x17, x29 # perform first operation
slti x16, x30, 96 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x25, x13 # perform first operation
slti x14, x23, -1831 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x5, x6 # perform first operation
slti x9, x21, 692 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x18, x12 # perform first operation
slti x18, x20, 229 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x8, x24 # perform first operation
slti x24, x21, 696 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x20, x31 # perform first operation
slti x9, x11, -61 # perform second (triggering) operation

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
