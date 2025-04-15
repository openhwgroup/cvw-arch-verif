///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbs/WALLY-COV-binvi.S
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
li x0, 0xf186fde1a44f8da2 # initialize rs1
binvi x17, x0, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x62e25c9e021c95f8 # initialize rs1
binvi x28, x1, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x68b3512c3b1599d6 # initialize rs1
binvi x6, x2, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x42cd78357f205299 # initialize rs1
binvi x13, x3, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa1cf5f80b599b959 # initialize rs1
binvi x21, x4, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8d2e874c50cc6f9c # initialize rs1
binvi x22, x5, 25 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x908e56b924d8e077 # initialize rs1
binvi x15, x6, 29 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x98ff682b000b417d # initialize rs1
binvi x4, x7, 24 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xdccf2c6a6e9e4df5 # initialize rs1
binvi x15, x8, 50 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x264ffd534d325c05 # initialize rs1
binvi x12, x9, 20 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x1dc00ec5767a3f91 # initialize rs1
binvi x27, x10, 50 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xc21f6236bfcba8f5 # initialize rs1
binvi x21, x11, 5 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x3063171344a06d2d # initialize rs1
binvi x10, x12, 3 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x442045e78677333f # initialize rs1
binvi x29, x13, 41 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xa5ede580279003fd # initialize rs1
binvi x30, x14, 54 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x82b94ba8e9846050 # initialize rs1
binvi x9, x15, 10 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xd1e1914ef7acb92e # initialize rs1
binvi x18, x16, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xccf93bf525130921 # initialize rs1
binvi x6, x17, 35 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xe55afc85cdb841b5 # initialize rs1
binvi x4, x18, 14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x4a05bd5d0874d84e # initialize rs1
binvi x8, x19, 12 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x18d0803047896214 # initialize rs1
binvi x6, x20, 16 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xda9901107724328c # initialize rs1
binvi x16, x21, 18 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x95204a46b1b47ac5 # initialize rs1
binvi x9, x22, 37 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xf097d4f5d3bdf253 # initialize rs1
binvi x7, x23, 30 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x49390f11044c0f86 # initialize rs1
binvi x8, x24, 61 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x90e92ce8fdf1a20c # initialize rs1
binvi x30, x25, 20 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x0823a6fc2f59a449 # initialize rs1
binvi x10, x26, 12 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xce15db2701b07716 # initialize rs1
binvi x4, x27, 33 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xeab8e12f9e4b45d0 # initialize rs1
binvi x20, x28, 11 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xe96346924e84cbdb # initialize rs1
binvi x14, x29, 29 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x0f46245ec907e90a # initialize rs1
binvi x26, x30, 28 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x28f15d61d2f2fcdb # initialize rs1
binvi x4, x31, 27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 248)

# Testcase cp_rd (Test destination rd = x0)
li x15, 0x83cc05b72389c7d9 # initialize rs1
binvi x0, x15, 57 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x2, 0xab34a162a78df206 # initialize rs1
binvi x1, x2, 56 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x23, 0x643f6421f30d998c # initialize rs1
binvi x2, x23, 25 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x4, 0x2c7f54c778e6199e # initialize rs1
binvi x3, x4, 58 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
li x14, 0x85f82e26757b2e79 # initialize rs1
binvi x4, x14, 62 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0xded431479f0a160b # initialize rs1
binvi x5, x9, 10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x12, 0x1a54fad56ff4f8d3 # initialize rs1
binvi x6, x12, 37 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x123f331fbf77a249 # initialize rs1
binvi x7, x13, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x20, 0xcf0d41a9b0d0a0bb # initialize rs1
binvi x8, x20, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x31, 0x51528a8febb5ad49 # initialize rs1
binvi x9, x31, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x12, 0x4475b8490dc4f165 # initialize rs1
binvi x10, x12, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x30, 0x12cfa1c140e1e04d # initialize rs1
binvi x11, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x21, 0x3338e9bab7c50a35 # initialize rs1
binvi x12, x21, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x24, 0x595c6dc6d757d43d # initialize rs1
binvi x13, x24, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x7, 0x249a5c777458471b # initialize rs1
binvi x14, x7, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0x151ad4a4e266ca67 # initialize rs1
binvi x15, x28, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x17, 0x2246a4abaf11395f # initialize rs1
binvi x16, x17, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x13, 0xac7593336f5fd70a # initialize rs1
binvi x17, x13, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x9, 0xe4043398e9e7216e # initialize rs1
binvi x18, x9, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x1, 0x768f9094ddcc9a99 # initialize rs1
binvi x19, x1, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x5, 0x939916da504e5a8d # initialize rs1
binvi x20, x5, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x9, 0xc0dc054697641014 # initialize rs1
binvi x21, x9, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x9, 0x5156f8394b63ad37 # initialize rs1
binvi x22, x9, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x19, 0xb73c67149ae6f0d4 # initialize rs1
binvi x23, x19, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x12, 0xd7ccaad5d531ae23 # initialize rs1
binvi x24, x12, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0xf61adb8ab68a00a7 # initialize rs1
binvi x25, x12, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x5, 0x26be8642d19b7f52 # initialize rs1
binvi x26, x5, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x24, 0x9966438dc90f9762 # initialize rs1
binvi x27, x24, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x17, 0x85d1f5943c93aa66 # initialize rs1
binvi x28, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x23, 0x1a05d94bae30bd7c # initialize rs1
binvi x29, x23, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x20, 0x4fa8344c69327d1b # initialize rs1
binvi x30, x20, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x12, 0x199e715e80a5965a # initialize rs1
binvi x31, x12, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x27, 0x0000000000000000 # initialize rs1
binvi x14, x27, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x17, 0x0000000000000001 # initialize rs1
binvi x30, x17, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x1, 0x0000000000000002 # initialize rs1
binvi x3, x1, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x31, 0x8000000000000000 # initialize rs1
binvi x29, x31, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x8, 0x8000000000000001 # initialize rs1
binvi x9, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs1
binvi x7, x12, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x15, 0x7ffffffffffffffe # initialize rs1
binvi x2, x15, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x11, 0xffffffffffffffff # initialize rs1
binvi x22, x11, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
binvi x14, x29, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x11, 0x5bbc887763ae86f2 # initialize rs1
binvi x2, x11, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
binvi x27, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x31, 0x5555555555555555 # initialize rs1
binvi x27, x31, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs1
binvi x8, x11, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x1, 0x00000000fffffffe # initialize rs1
binvi x26, x1, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x15, 0x0000000100000000 # initialize rs1
binvi x27, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x16, 0x0000000100000001 # initialize rs1
binvi x27, x16, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x289e7b75e8b2ade9 # initialize rs1
binvi x0, x0, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xdd8a647e2635cf03 # initialize rs1
binvi x1, x1, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xf1bda26fdc524c74 # initialize rs1
binvi x2, x2, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x870c4b334f1d0327 # initialize rs1
binvi x3, x3, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x039d4e4cdc178cfa # initialize rs1
binvi x4, x4, 26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xaf432eba4e7ebb3f # initialize rs1
binvi x5, x5, 48 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x07473805c97031f9 # initialize rs1
binvi x6, x6, 44 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xeee88817a9e1a9c2 # initialize rs1
binvi x7, x7, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xdc93e7bad81a725e # initialize rs1
binvi x8, x8, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xcd8537a7fe961451 # initialize rs1
binvi x9, x9, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xab1cfcccbd07e44c # initialize rs1
binvi x10, x10, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x7e6dac91fb3da99e # initialize rs1
binvi x11, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x799472dccc40499c # initialize rs1
binvi x12, x12, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x071e12480c0925cf # initialize rs1
binvi x13, x13, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc198a2be31ad2be1 # initialize rs1
binvi x14, x14, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x490b92cb58da85f4 # initialize rs1
binvi x15, x15, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x5a09c7b9c5b628ac # initialize rs1
binvi x16, x16, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x5f6897bca212b3a1 # initialize rs1
binvi x17, x17, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x091f9386ce073f52 # initialize rs1
binvi x18, x18, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x8f19b40c30256b4e # initialize rs1
binvi x19, x19, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x7c56c8ac8ebb004e # initialize rs1
binvi x20, x20, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x006470a0bb8c12b8 # initialize rs1
binvi x21, x21, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xae00c9fb8cfa375e # initialize rs1
binvi x22, x22, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x6bf6c7522c9f7fab # initialize rs1
binvi x23, x23, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x9a9b79348a38d79f # initialize rs1
binvi x24, x24, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x471a1ac864200db1 # initialize rs1
binvi x25, x25, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xe5c1c608c174b421 # initialize rs1
binvi x26, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x9415b78137155e8f # initialize rs1
binvi x27, x27, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xf9c7dbf8ee4b267c # initialize rs1
binvi x28, x28, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x44c9116dd9a7f98f # initialize rs1
binvi x29, x29, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xbda221d7e6f2977a # initialize rs1
binvi x30, x30, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xed930c5da3a5cce5 # initialize rs1
binvi x31, x31, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm (Test bit = 0)
li x8, 0xf170d9afb1459017 # initialize rs1
binvi x21, x8, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 896)

# Testcase cp_uimm (Test bit = 1)
li x9, 0xdaab5b0199611df6 # initialize rs1
binvi x10, x9, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)

# Testcase cp_uimm (Test bit = 2)
li x19, 0x8b4eb89be766e881 # initialize rs1
binvi x24, x19, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 912)

# Testcase cp_uimm (Test bit = 3)
li x1, 0x3ef6e192fd9d713b # initialize rs1
binvi x24, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 920)

# Testcase cp_uimm (Test bit = 4)
li x5, 0x6a012218a4bc4f0d # initialize rs1
binvi x22, x5, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 928)

# Testcase cp_uimm (Test bit = 5)
li x27, 0xc137faceb74ed3f6 # initialize rs1
binvi x24, x27, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 936)

# Testcase cp_uimm (Test bit = 6)
li x13, 0xe3035565e4d68ce6 # initialize rs1
binvi x19, x13, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 944)

# Testcase cp_uimm (Test bit = 7)
li x7, 0x3d03b53b25710941 # initialize rs1
binvi x19, x7, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 952)

# Testcase cp_uimm (Test bit = 8)
li x25, 0x1883bc4fe49cfb7f # initialize rs1
binvi x8, x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 960)

# Testcase cp_uimm (Test bit = 9)
li x25, 0x5169fcb9b223da33 # initialize rs1
binvi x8, x25, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 968)

# Testcase cp_uimm (Test bit = 10)
li x26, 0x8c446120f6e1a9c4 # initialize rs1
binvi x8, x26, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 976)

# Testcase cp_uimm (Test bit = 11)
li x18, 0x34f6c72f94a482de # initialize rs1
binvi x15, x18, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 984)

# Testcase cp_uimm (Test bit = 12)
li x1, 0x63c09df9160e0f58 # initialize rs1
binvi x6, x1, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 992)

# Testcase cp_uimm (Test bit = 13)
li x5, 0x6387148ca25c56f2 # initialize rs1
binvi x29, x5, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1000)

# Testcase cp_uimm (Test bit = 14)
li x29, 0x464da7271a149c53 # initialize rs1
binvi x16, x29, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1008)

# Testcase cp_uimm (Test bit = 15)
li x22, 0xc648fd97013cca77 # initialize rs1
binvi x24, x22, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1016)

# Testcase cp_uimm (Test bit = 16)
li x27, 0x91f33fc2d43e2ea0 # initialize rs1
binvi x19, x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1024)

# Testcase cp_uimm (Test bit = 17)
li x27, 0x93b1357e5ac9c28d # initialize rs1
binvi x1, x27, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1032)

# Testcase cp_uimm (Test bit = 18)
li x25, 0x7e4cf080fce2a869 # initialize rs1
binvi x6, x25, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1040)

# Testcase cp_uimm (Test bit = 19)
li x6, 0x6c64d229be5eeecf # initialize rs1
binvi x31, x6, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1048)

# Testcase cp_uimm (Test bit = 20)
li x30, 0x874dbf42feab4910 # initialize rs1
binvi x17, x30, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1056)

# Testcase cp_uimm (Test bit = 21)
li x8, 0x8ad6d6ef4f3d808e # initialize rs1
binvi x30, x8, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1064)

# Testcase cp_uimm (Test bit = 22)
li x6, 0xba4e3b41e8ae6cf7 # initialize rs1
binvi x5, x6, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1072)

# Testcase cp_uimm (Test bit = 23)
li x1, 0xa7d328c41261f979 # initialize rs1
binvi x8, x1, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1080)

# Testcase cp_uimm (Test bit = 24)
li x15, 0x4fb3ce1db970c905 # initialize rs1
binvi x12, x15, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1088)

# Testcase cp_uimm (Test bit = 25)
li x24, 0x58675ee38763099e # initialize rs1
binvi x17, x24, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1096)

# Testcase cp_uimm (Test bit = 26)
li x23, 0x8113d9237a491687 # initialize rs1
binvi x14, x23, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cp_uimm (Test bit = 27)
li x2, 0x9b0594971cf709eb # initialize rs1
binvi x14, x2, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1112)

# Testcase cp_uimm (Test bit = 28)
li x29, 0x2bafd29343da413a # initialize rs1
binvi x21, x29, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1120)

# Testcase cp_uimm (Test bit = 29)
li x31, 0x729c7db7a719e1e3 # initialize rs1
binvi x28, x31, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1128)

# Testcase cp_uimm (Test bit = 30)
li x23, 0x741473588728110a # initialize rs1
binvi x27, x23, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1136)

# Testcase cp_uimm (Test bit = 31)
li x15, 0x8fad41b0cd3c2bbb # initialize rs1
binvi x26, x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1144)

# Testcase cp_uimm (Test bit = 32)
li x23, 0x270e0368557f69e9 # initialize rs1
binvi x3, x23, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1152)

# Testcase cp_uimm (Test bit = 33)
li x6, 0x3782c8c2ad1542f7 # initialize rs1
binvi x16, x6, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1160)

# Testcase cp_uimm (Test bit = 34)
li x23, 0x3c47feb54d441416 # initialize rs1
binvi x7, x23, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1168)

# Testcase cp_uimm (Test bit = 35)
li x28, 0x73001fa1a8cd6c3e # initialize rs1
binvi x7, x28, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1176)

# Testcase cp_uimm (Test bit = 36)
li x25, 0xddbee21f620ad33c # initialize rs1
binvi x15, x25, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1184)

# Testcase cp_uimm (Test bit = 37)
li x13, 0x86ddd4c6b170de52 # initialize rs1
binvi x25, x13, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1192)

# Testcase cp_uimm (Test bit = 38)
li x24, 0x9b966a07e34a130b # initialize rs1
binvi x19, x24, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1200)

# Testcase cp_uimm (Test bit = 39)
li x26, 0x8ec11b0936d4bf34 # initialize rs1
binvi x8, x26, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1208)

# Testcase cp_uimm (Test bit = 40)
li x26, 0x1545f29fd50e4269 # initialize rs1
binvi x10, x26, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1216)

# Testcase cp_uimm (Test bit = 41)
li x14, 0x368d699fbaf54653 # initialize rs1
binvi x2, x14, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1224)

# Testcase cp_uimm (Test bit = 42)
li x20, 0x93818decddbe2526 # initialize rs1
binvi x24, x20, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1232)

# Testcase cp_uimm (Test bit = 43)
li x27, 0x122d274d6765de7f # initialize rs1
binvi x24, x27, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1240)

# Testcase cp_uimm (Test bit = 44)
li x14, 0xf80db333be9409c1 # initialize rs1
binvi x16, x14, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cp_uimm (Test bit = 45)
li x10, 0x6a85e1cbbc3b3c03 # initialize rs1
binvi x14, x10, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1256)

# Testcase cp_uimm (Test bit = 46)
li x12, 0x7ed85b7a2f70a167 # initialize rs1
binvi x18, x12, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1264)

# Testcase cp_uimm (Test bit = 47)
li x18, 0xac9a13451424f942 # initialize rs1
binvi x16, x18, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1272)

# Testcase cp_uimm (Test bit = 48)
li x24, 0x516885ba0372a679 # initialize rs1
binvi x11, x24, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1280)

# Testcase cp_uimm (Test bit = 49)
li x9, 0xb44ad7f1aab0209c # initialize rs1
binvi x30, x9, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1288)

# Testcase cp_uimm (Test bit = 50)
li x1, 0xd34a5dd78d0774e9 # initialize rs1
binvi x10, x1, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1296)

# Testcase cp_uimm (Test bit = 51)
li x17, 0x08edd32acff35b53 # initialize rs1
binvi x3, x17, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1304)

# Testcase cp_uimm (Test bit = 52)
li x24, 0xa01ea009645c4c82 # initialize rs1
binvi x13, x24, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1312)

# Testcase cp_uimm (Test bit = 53)
li x28, 0x8cfae98f2db19169 # initialize rs1
binvi x1, x28, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1320)

# Testcase cp_uimm (Test bit = 54)
li x10, 0x4478907c17b20303 # initialize rs1
binvi x2, x10, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1328)

# Testcase cp_uimm (Test bit = 55)
li x14, 0x8e40192f87aee616 # initialize rs1
binvi x20, x14, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1336)

# Testcase cp_uimm (Test bit = 56)
li x22, 0xf4a2e365144728db # initialize rs1
binvi x2, x22, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1344)

# Testcase cp_uimm (Test bit = 57)
li x8, 0x69dc2310aec64e20 # initialize rs1
binvi x31, x8, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1352)

# Testcase cp_uimm (Test bit = 58)
li x19, 0x492e5fa6343e1fa6 # initialize rs1
binvi x5, x19, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1360)

# Testcase cp_uimm (Test bit = 59)
li x16, 0xdf414ac99ba7315f # initialize rs1
binvi x28, x16, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1368)

# Testcase cp_uimm (Test bit = 60)
li x7, 0x8635869d66715368 # initialize rs1
binvi x14, x7, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

# Testcase cp_uimm (Test bit = 61)
li x13, 0xcd372f9823119625 # initialize rs1
binvi x19, x13, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1384)

# Testcase cp_uimm (Test bit = 62)
li x29, 0x638e36fa08972ed0 # initialize rs1
binvi x16, x29, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1392)

# Testcase cp_uimm (Test bit = 63)
li x25, 0x8ee936f19f3fd889 # initialize rs1
binvi x1, x25, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1400)

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x31, x6 # perform first operation
binvi x15, x18, 60 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x2, x11 # perform first operation
binvi x22, x31, 6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x25, x23 # perform first operation
binvi x12, x14, 61 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x17, x20 # perform first operation
binvi x11, x11, 14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x7, x29 # perform first operation
binvi x7, x22, 34 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x6, x19 # perform first operation
binvi x6, x23, 27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x29, x10 # perform first operation
binvi x20, x25, 52 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x2, x13 # perform first operation
binvi x11, x26, 9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x31, x18 # perform first operation
binvi x5, x1, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x31, x7 # perform first operation
binvi x31, x3, 48 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x8, x5 # perform first operation
binvi x5, x24, 53 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x29, x13 # perform first operation
binvi x24, x14, 6 # perform second (triggering) operation

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
