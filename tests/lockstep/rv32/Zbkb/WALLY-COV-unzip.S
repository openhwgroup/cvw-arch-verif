///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/Zbkb/WALLY-COV-unzip.S
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
li x0, 0xd412d801 # initialize rs1
unzip x5, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x18e0308e # initialize rs1
unzip x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 4)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xf085c248 # initialize rs1
unzip x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x52b766cd # initialize rs1
unzip x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 12)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1f43897e # initialize rs1
unzip x6, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x77131d06 # initialize rs1
unzip x2, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 20)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x814b305d # initialize rs1
unzip x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x3, 24)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x374521fe # initialize rs1
unzip x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 28)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x7e27869d # initialize rs1
unzip x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xae507944 # initialize rs1
unzip x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 36)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x9cacea1d # initialize rs1
unzip x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x2cf75694 # initialize rs1
unzip x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 44)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x69579e17 # initialize rs1
unzip x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xebd4b328 # initialize rs1
unzip x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 52)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x2d3510ac # initialize rs1
unzip x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x66fa1de9 # initialize rs1
unzip x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 60)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x860e91c9 # initialize rs1
unzip x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 64)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xd6d1dcce # initialize rs1
unzip x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 68)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x19775177 # initialize rs1
unzip x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 72)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x8a3dc7fd # initialize rs1
unzip x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 76)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xab0d4441 # initialize rs1
unzip x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 80)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xe0fb9dd3 # initialize rs1
unzip x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 84)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xed8be0f6 # initialize rs1
unzip x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xefa71920 # initialize rs1
unzip x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 92)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xc97dd876 # initialize rs1
unzip x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x8a5620b5 # initialize rs1
unzip x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 100)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x1f30bc3d # initialize rs1
unzip x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 104)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x95151fcd # initialize rs1
unzip x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 108)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x95bdab3c # initialize rs1
unzip x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x99bfccaf # initialize rs1
unzip x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 116)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x4765ba77 # initialize rs1
unzip x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 120)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x7441d64b # initialize rs1
unzip x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 124)

# Testcase cp_rd (Test destination rd = x0)
li x13, 0x04cd9b61 # initialize rs1
unzip x0, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 128)

# Testcase cp_rd (Test destination rd = x1)
li x9, 0xf80dd853 # initialize rs1
unzip x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 132)

# Testcase cp_rd (Test destination rd = x2)
li x17, 0x9df2f18f # initialize rs1
unzip x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rd (Test destination rd = x3)
li x7, 0xeda53ecf # initialize rs1
unzip x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 140)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0xa216e686 # initialize rs1
unzip x4, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0x5113d1f2 # initialize rs1
unzip x5, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 148)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0x50f9e64e # initialize rs1
unzip x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 152)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0x1bb8851f # initialize rs1
unzip x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 156)

# Testcase cp_rd (Test destination rd = x8)
li x31, 0xc68f14f4 # initialize rs1
unzip x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rd (Test destination rd = x9)
li x31, 0xeed1da51 # initialize rs1
unzip x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 164)

# Testcase cp_rd (Test destination rd = x10)
li x18, 0xecac3150 # initialize rs1
unzip x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rd (Test destination rd = x11)
li x2, 0x77092ee4 # initialize rs1
unzip x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 172)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0xb7c95f83 # initialize rs1
unzip x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cp_rd (Test destination rd = x13)
li x30, 0x23194fde # initialize rs1
unzip x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 180)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0x4f955da5 # initialize rs1
unzip x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rd (Test destination rd = x15)
li x3, 0xd32473eb # initialize rs1
unzip x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 188)

# Testcase cp_rd (Test destination rd = x16)
li x14, 0xdf16c1a4 # initialize rs1
unzip x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rd (Test destination rd = x17)
li x15, 0xda06b900 # initialize rs1
unzip x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 196)

# Testcase cp_rd (Test destination rd = x18)
li x22, 0xe0be0be0 # initialize rs1
unzip x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rd (Test destination rd = x19)
li x18, 0xd69a2583 # initialize rs1
unzip x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 204)

# Testcase cp_rd (Test destination rd = x20)
li x27, 0x9408d385 # initialize rs1
unzip x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cp_rd (Test destination rd = x21)
li x16, 0x6a0c7044 # initialize rs1
unzip x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 212)

# Testcase cp_rd (Test destination rd = x22)
li x5, 0x2868e093 # initialize rs1
unzip x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_rd (Test destination rd = x23)
li x8, 0x39417095 # initialize rs1
unzip x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 220)

# Testcase cp_rd (Test destination rd = x24)
li x11, 0xc0e2c259 # initialize rs1
unzip x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 224)

# Testcase cp_rd (Test destination rd = x25)
li x17, 0xaaf11a73 # initialize rs1
unzip x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 228)

# Testcase cp_rd (Test destination rd = x26)
li x16, 0xb8452c4f # initialize rs1
unzip x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 232)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xe8083299 # initialize rs1
unzip x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 236)

# Testcase cp_rd (Test destination rd = x28)
li x3, 0x364218bd # initialize rs1
unzip x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 240)

# Testcase cp_rd (Test destination rd = x29)
li x16, 0xdaea2db3 # initialize rs1
unzip x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 244)

# Testcase cp_rd (Test destination rd = x30)
li x11, 0x9c693975 # initialize rs1
unzip x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x31)
li x26, 0xd89d5ec8 # initialize rs1
unzip x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 252)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x00000000 # initialize rs1
unzip x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 256)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x1, 0x00000001 # initialize rs1
unzip x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 260)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x27, 0x00000002 # initialize rs1
unzip x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 264)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000000)
li x2, 0x80000000 # initialize rs1
unzip x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 268)

# Testcase cp_rs1_corners (Test source rs1 value = 0x80000001)
li x11, 0x80000001 # initialize rs1
unzip x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 272)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffff)
li x25, 0x7fffffff # initialize rs1
unzip x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 276)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffe)
li x13, 0x7ffffffe # initialize rs1
unzip x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x23, 0xffffffff # initialize rs1
unzip x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 284)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x31, 0xfffffffe # initialize rs1
unzip x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 288)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc8872)
li x11, 0x5bbc8872 # initialize rs1
unzip x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 292)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaa)
li x27, 0xaaaaaaaa # initialize rs1
unzip x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 296)

# Testcase cp_rs1_corners (Test source rs1 value = 0x55555555)
li x19, 0x55555555 # initialize rs1
unzip x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 300)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x7a81d3a4 # initialize rs1
unzip x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 304)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xfbb5a93a # initialize rs1
unzip x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 308)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x0f72bee3 # initialize rs1
unzip x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x96c1baa5 # initialize rs1
unzip x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 316)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb68b1031 # initialize rs1
unzip x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 320)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x72c9e5ae # initialize rs1
unzip x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 324)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2d92a15e # initialize rs1
unzip x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 328)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfdf9c1b6 # initialize rs1
unzip x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 332)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8a2140f1 # initialize rs1
unzip x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xcca6e7c8 # initialize rs1
unzip x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 340)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x60f640eb # initialize rs1
unzip x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 344)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x8380b63c # initialize rs1
unzip x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 348)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x0e455488 # initialize rs1
unzip x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x530ec5a4 # initialize rs1
unzip x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 356)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x33935a03 # initialize rs1
unzip x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x19ef6894 # initialize rs1
unzip x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 364)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xb037b826 # initialize rs1
unzip x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x069260de # initialize rs1
unzip x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 372)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x89779724 # initialize rs1
unzip x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf6db70c6 # initialize rs1
unzip x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 380)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x963168df # initialize rs1
unzip x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x3774ba94 # initialize rs1
unzip x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 388)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x413b9eaf # initialize rs1
unzip x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x3e77fcaa # initialize rs1
unzip x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 396)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x86c05d95 # initialize rs1
unzip x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 400)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xcd5f1edd # initialize rs1
unzip x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 404)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xe7097db2 # initialize rs1
unzip x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xdf96fd95 # initialize rs1
unzip x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 412)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x47aadf55 # initialize rs1
unzip x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 416)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x27cc21bc # initialize rs1
unzip x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 420)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xada082bb # initialize rs1
unzip x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 424)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xbffa3f50 # initialize rs1
unzip x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 428)

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x29, x14 # perform first operation
unzip x19, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x15, x25 # perform first operation
unzip x14, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x25, x14 # perform first operation
unzip x21, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x30, x1 # perform first operation
unzip x18, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x13, x5 # perform first operation
unzip x15, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x30, x13 # perform first operation
unzip x30, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x1, x15 # perform first operation
unzip x31, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x28, x9 # perform first operation
unzip x6, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x1, x3 # perform first operation
unzip x28, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x16, x6 # perform first operation
unzip x16, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x8, x15 # perform first operation
unzip x15, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x11, x26 # perform first operation
unzip x31, x9 # perform second (triggering) operation

.EQU SIGSIZE,432


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
