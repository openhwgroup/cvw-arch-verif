///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-sext.h.S
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
li x0, 0xd21cbcc889b9c76b # initialize rs1
sext.h x8, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x50d99c91bc592772 # initialize rs1
sext.h x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xc14e17bd1f8b111d # initialize rs1
sext.h x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x1dde2d701acdbd73 # initialize rs1
sext.h x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x72e0474fc4265e3a # initialize rs1
sext.h x14, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0d47edcce49ccb95 # initialize rs1
sext.h x7, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3e1580b7fe8425e2 # initialize rs1
sext.h x4, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x52e1697a5ce3507d # initialize rs1
sext.h x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x29531583e2d9d9ef # initialize rs1
sext.h x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xf2fb3f28dd20ed50 # initialize rs1
sext.h x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x8f8e20d5a89f4045 # initialize rs1
sext.h x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xaf6ca7627506a653 # initialize rs1
sext.h x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xf9100b380d3b3444 # initialize rs1
sext.h x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x2f74483d8be9df51 # initialize rs1
sext.h x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x42abd3c6714537f9 # initialize rs1
sext.h x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xbfcd319c191a6573 # initialize rs1
sext.h x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x52e0df1124c34231 # initialize rs1
sext.h x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x95e303195e26cfe9 # initialize rs1
sext.h x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x4ae99339e2a851d3 # initialize rs1
sext.h x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x8094cff13e875563 # initialize rs1
sext.h x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x8b4b92a3706bad03 # initialize rs1
sext.h x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x9eb3097c77ce22cf # initialize rs1
sext.h x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xdd8ea3e4b2ba615f # initialize rs1
sext.h x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xac8c8ec4dcb87cb3 # initialize rs1
sext.h x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xe59e39073a7e7d3f # initialize rs1
sext.h x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x79eb75ed7ea89e67 # initialize rs1
sext.h x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x79561cbf32adc603 # initialize rs1
sext.h x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x7e3f08d7a75b70b6 # initialize rs1
sext.h x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x051e66187ccb514b # initialize rs1
sext.h x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xc0bd5621de31b8e3 # initialize rs1
sext.h x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xc4947d1499e96d1f # initialize rs1
sext.h x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x82af670ab6ab57e0 # initialize rs1
sext.h x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 248)

# Testcase cp_rd (Test destination rd = x0)
li x30, 0x2d3eb72e542a570a # initialize rs1
sext.h x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x16, 0x29ccc0b9960d3517 # initialize rs1
sext.h x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x20, 0x2d0c7dba9cc114d7 # initialize rs1
sext.h x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x12, 0x213872c6d2c492df # initialize rs1
sext.h x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0x0c0b71a4aa8837a6 # initialize rs1
sext.h x4, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x503c43ffc43f1ef7 # initialize rs1
sext.h x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0x429d7c01ebd7a9e3 # initialize rs1
sext.h x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x5f07280a24d879c4 # initialize rs1
sext.h x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x26, 0x4bc0a2dc6f516547 # initialize rs1
sext.h x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x16, 0xd52ad89cb66424fc # initialize rs1
sext.h x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x13, 0x1b212a621471620a # initialize rs1
sext.h x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x13, 0x903b92e5efafbd7c # initialize rs1
sext.h x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x18, 0x01677590b1555322 # initialize rs1
sext.h x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x18, 0x4520b8357632fead # initialize rs1
sext.h x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0x2ca79b18412e4a8a # initialize rs1
sext.h x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x7, 0xda5265243e0ee954 # initialize rs1
sext.h x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x9, 0x5ec7c60bbaf66a99 # initialize rs1
sext.h x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x6, 0x19afebe8a09baa5b # initialize rs1
sext.h x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x9, 0x85da84e8968d60af # initialize rs1
sext.h x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x31, 0xa04ff22e5a8d1fb5 # initialize rs1
sext.h x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x28, 0xe21610b605085cb2 # initialize rs1
sext.h x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x19, 0xef52bd9e8e87f2e5 # initialize rs1
sext.h x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x20, 0x8708283ea276a77c # initialize rs1
sext.h x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x7, 0x840ac03c73330c31 # initialize rs1
sext.h x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x21, 0xba69afb49080d356 # initialize rs1
sext.h x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x5, 0x2aba90029721684e # initialize rs1
sext.h x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x21, 0xab9f3c60eff97978 # initialize rs1
sext.h x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x74c99f129e90aa29 # initialize rs1
sext.h x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x11, 0x2b9558bf2550b88c # initialize rs1
sext.h x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x9, 0x9e777a496246916c # initialize rs1
sext.h x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x14, 0xfec0fad1875c760c # initialize rs1
sext.h x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x19, 0x820584dc7a3c63c7 # initialize rs1
sext.h x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x26, 0x0000000000000000 # initialize rs1
sext.h x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x0000000000000001 # initialize rs1
sext.h x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x26, 0x0000000000000002 # initialize rs1
sext.h x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x29, 0x8000000000000000 # initialize rs1
sext.h x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x30, 0x8000000000000001 # initialize rs1
sext.h x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
sext.h x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
sext.h x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x12, 0xffffffffffffffff # initialize rs1
sext.h x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
sext.h x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x22, 0x5bbc887763ae86f2 # initialize rs1
sext.h x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
sext.h x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x24, 0x5555555555555555 # initialize rs1
sext.h x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0x00000000ffffffff # initialize rs1
sext.h x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x10, 0x00000000fffffffe # initialize rs1
sext.h x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x16, 0x0000000100000000 # initialize rs1
sext.h x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x31, 0x0000000100000001 # initialize rs1
sext.h x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xaf1ca4b3d258a5d5 # initialize rs1
sext.h x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x52c786b673b5505d # initialize rs1
sext.h x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xd06d10c38c84b9f8 # initialize rs1
sext.h x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x66338c1db7b2449e # initialize rs1
sext.h x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2d0f4602ff044b80 # initialize rs1
sext.h x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb78d6b4138b682db # initialize rs1
sext.h x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x44f56415bcd6c177 # initialize rs1
sext.h x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xaa9d54131b2825ba # initialize rs1
sext.h x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x0dc05bc56f880d7b # initialize rs1
sext.h x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x1dc7017daefc74b2 # initialize rs1
sext.h x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x63ea665b0eaa1d28 # initialize rs1
sext.h x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x079f378c1f623748 # initialize rs1
sext.h x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x1645a403ca4a4416 # initialize rs1
sext.h x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x0a806d98afa40516 # initialize rs1
sext.h x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x8c319908e5ccc6d6 # initialize rs1
sext.h x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x9cf2b27cca55e5fa # initialize rs1
sext.h x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x9fc06c6a85b3aada # initialize rs1
sext.h x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x2452da0dd49fc177 # initialize rs1
sext.h x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x02c899082b22e018 # initialize rs1
sext.h x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xfb45cc4d7bb7ba88 # initialize rs1
sext.h x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x8311b9377efca480 # initialize rs1
sext.h x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x8844cd5ce562e526 # initialize rs1
sext.h x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x49fecf4924196d29 # initialize rs1
sext.h x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x8539c95498a924b0 # initialize rs1
sext.h x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x27cf39ce71ccb50d # initialize rs1
sext.h x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x55f654eee3a75e91 # initialize rs1
sext.h x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x1641b5167c49502f # initialize rs1
sext.h x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xa5259725fb4954b1 # initialize rs1
sext.h x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x6fbe36eb841eaa61 # initialize rs1
sext.h x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x97cfe1192eeb4bec # initialize rs1
sext.h x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xb6c917edaca4cb68 # initialize rs1
sext.h x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xb5deb334847f8b16 # initialize rs1
sext.h x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x5, x12 # perform first operation
sext.h x31, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x28, x25 # perform first operation
sext.h x1, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x30, x20 # perform first operation
sext.h x25, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x20, x18 # perform first operation
sext.h x15, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x26, x31 # perform first operation
sext.h x31, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x22, x1 # perform first operation
sext.h x22, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x14, x9 # perform first operation
sext.h x22, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x1, x11 # perform first operation
sext.h x7, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x9, x11 # perform first operation
sext.h x1, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x1, x22 # perform first operation
sext.h x1, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x18, x12 # perform first operation
sext.h x12, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x23, x7 # perform first operation
sext.h x22, x8 # perform second (triggering) operation

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
