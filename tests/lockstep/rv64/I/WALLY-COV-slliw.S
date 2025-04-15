///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-slliw.S
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
li x0, 0x476fee0194a67c18 # initialize rs1
slliw x17, x0, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xd3ca3717d653d035 # initialize rs1
slliw x23, x1, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xef02d771395e3ebf # initialize rs1
slliw x3, x2, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xf2b053b68f289829 # initialize rs1
slliw x2, x3, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2900bcf89a7df26b # initialize rs1
slliw x24, x4, 4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb32fd7121faddf25 # initialize rs1
slliw x9, x5, 9 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x72a804c0f7ca02da # initialize rs1
slliw x5, x6, 10 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8313be6cbe818df0 # initialize rs1
slliw x16, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xf32e0a6e81c42e60 # initialize rs1
slliw x21, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xa0ab4ca024412ec5 # initialize rs1
slliw x14, x9, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x495163eaaed8f568 # initialize rs1
slliw x3, x10, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x628d7091a49d59f1 # initialize rs1
slliw x14, x11, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xcb98122fc8573085 # initialize rs1
slliw x14, x12, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xe7aa57ae85183f16 # initialize rs1
slliw x1, x13, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x2bb60cc6a29c5cbc # initialize rs1
slliw x28, x14, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x21235b9d0f3b6943 # initialize rs1
slliw x12, x15, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x4fc6f46bf16f06d1 # initialize rs1
slliw x13, x16, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xf1f9752946d21ebd # initialize rs1
slliw x16, x17, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x525f023b3b655c72 # initialize rs1
slliw x1, x18, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xdf40fdf8ef9897b0 # initialize rs1
slliw x14, x19, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xbaa5498fbc8b913d # initialize rs1
slliw x12, x20, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x9e4f7008f4cdb08f # initialize rs1
slliw x31, x21, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x06b223026cd1715b # initialize rs1
slliw x5, x22, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x06f63b32e13268a9 # initialize rs1
slliw x19, x23, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x3870d46044934100 # initialize rs1
slliw x8, x24, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xaf37c02872be911d # initialize rs1
slliw x29, x25, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x18b108481a38bf72 # initialize rs1
slliw x29, x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x3790f6ab332fb010 # initialize rs1
slliw x3, x27, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xcc8bae11018acddf # initialize rs1
slliw x26, x28, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xdbf96e3ff2446f25 # initialize rs1
slliw x6, x29, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x16f56d78b12c0a6d # initialize rs1
slliw x10, x30, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x34f54224f2b448ff # initialize rs1
slliw x9, x31, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 248)

# Testcase cp_rd (Test destination rd = x0)
li x23, 0xb7d643679311f083 # initialize rs1
slliw x0, x23, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x21, 0xc20b70db45148707 # initialize rs1
slliw x1, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x5, 0xc888bbebbe395dd8 # initialize rs1
slliw x2, x5, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x30, 0x6db32ac62d415b7c # initialize rs1
slliw x3, x30, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0xcda6e54d98b54865 # initialize rs1
slliw x4, x1, 1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x202c76172697f848 # initialize rs1
slliw x5, x1, 14 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x25, 0x5813dfb8c93bda5b # initialize rs1
slliw x6, x25, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
li x2, 0x016298b339bc0f64 # initialize rs1
slliw x7, x2, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x23, 0xe28b01b3cadcd887 # initialize rs1
slliw x8, x23, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x27, 0x3b7135829dd3a73a # initialize rs1
slliw x9, x27, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x23, 0x6dfe598c0aa1fc8a # initialize rs1
slliw x10, x23, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x3, 0x0c33f04a5f919cf5 # initialize rs1
slliw x11, x3, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x2, 0x8de7daa48dc1b0f3 # initialize rs1
slliw x12, x2, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x16, 0x55c5fbdb2f0654c3 # initialize rs1
slliw x13, x16, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x30, 0xb99c361c800d56a9 # initialize rs1
slliw x14, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x20, 0xaaec8a7e7ddf3bce # initialize rs1
slliw x15, x20, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x10, 0x4ce3e958d38e464d # initialize rs1
slliw x16, x10, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x10, 0x05fac89408e7693c # initialize rs1
slliw x17, x10, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x15, 0x20385f52901b0b0d # initialize rs1
slliw x18, x15, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x28, 0xb564860cfb7a9e0e # initialize rs1
slliw x19, x28, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x9, 0x6a2c3b39d4b61325 # initialize rs1
slliw x20, x9, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x3, 0xf03fa7b5f97095e4 # initialize rs1
slliw x21, x3, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x11, 0xe9ebb50e6ce2159d # initialize rs1
slliw x22, x11, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x18, 0xbee1c7f4b9d575cb # initialize rs1
slliw x23, x18, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x8, 0xe89240d7132e24b2 # initialize rs1
slliw x24, x8, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0xc65f909500f7e4a1 # initialize rs1
slliw x25, x29, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x5, 0x1c38b8fc98826d48 # initialize rs1
slliw x26, x5, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x7, 0xe88a887f131ef74d # initialize rs1
slliw x27, x7, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x23, 0x2c0a882ec6794a9b # initialize rs1
slliw x28, x23, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x28, 0x1e2f08c46a8b2ad6 # initialize rs1
slliw x29, x28, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x19, 0xbc6fe57bbc6c8183 # initialize rs1
slliw x30, x19, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0xc9ed915b2d75f620 # initialize rs1
slliw x31, x7, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x0000000000000000 # initialize rs1
slliw x12, x30, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0x0000000000000001 # initialize rs1
slliw x21, x6, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x6, 0x0000000000000002 # initialize rs1
slliw x8, x6, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x25, 0x8000000000000000 # initialize rs1
slliw x6, x25, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x17, 0x8000000000000001 # initialize rs1
slliw x14, x17, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
slliw x24, x7, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x3, 0x7ffffffffffffffe # initialize rs1
slliw x26, x3, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x26, 0xffffffffffffffff # initialize rs1
slliw x3, x26, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x8, 0xfffffffffffffffe # initialize rs1
slliw x9, x8, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x31, 0x5bbc887763ae86f2 # initialize rs1
slliw x12, x31, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
slliw x15, x25, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x2, 0x5555555555555555 # initialize rs1
slliw x27, x2, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x19, 0x00000000ffffffff # initialize rs1
slliw x9, x19, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0x00000000fffffffe # initialize rs1
slliw x19, x9, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x18, 0x0000000100000000 # initialize rs1
slliw x22, x18, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x16, 0x0000000100000001 # initialize rs1
slliw x6, x16, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xe7eaaf2bdb1d9243 # initialize rs1
slliw x0, x0, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x79fa6740bbe311ef # initialize rs1
slliw x1, x1, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x8a9b7c0e05080ca6 # initialize rs1
slliw x2, x2, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x4d29bd6377fa6fc6 # initialize rs1
slliw x3, x3, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5f0391b190675a30 # initialize rs1
slliw x4, x4, 8 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x95dd516ad24e1c19 # initialize rs1
slliw x5, x5, 17 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa11ca14c54f61a05 # initialize rs1
slliw x6, x6, 0 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x526aece646fc117f # initialize rs1
slliw x7, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf94399eed4c14f7b # initialize rs1
slliw x8, x8, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xadf65ee585f9cff0 # initialize rs1
slliw x9, x9, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x1e9cddfcb8cc3fa3 # initialize rs1
slliw x10, x10, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x1560ca70b3263144 # initialize rs1
slliw x11, x11, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x0b52c546e5b8321f # initialize rs1
slliw x12, x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x95a7cb07bf8d261c # initialize rs1
slliw x13, x13, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x7d0970279539ec12 # initialize rs1
slliw x14, x14, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x81cc64cd0616aa72 # initialize rs1
slliw x15, x15, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x499b06779cb26128 # initialize rs1
slliw x16, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x247418fc10fac20d # initialize rs1
slliw x17, x17, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xc82a9213ffbcd3a7 # initialize rs1
slliw x18, x18, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x54c698473a9c7059 # initialize rs1
slliw x19, x19, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x89c2d5561ee006f1 # initialize rs1
slliw x20, x20, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x7d9aff13809f141a # initialize rs1
slliw x21, x21, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xab3321368291e5ad # initialize rs1
slliw x22, x22, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x5c320cbdb53b129a # initialize rs1
slliw x23, x23, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x934b00aeba437d0c # initialize rs1
slliw x24, x24, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x87f461bb0a8a9b01 # initialize rs1
slliw x25, x25, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xbd696d17c2402478 # initialize rs1
slliw x26, x26, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xa44c94485db17262 # initialize rs1
slliw x27, x27, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xbba417bac7399076 # initialize rs1
slliw x28, x28, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x9508ef863effecfc # initialize rs1
slliw x29, x29, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xf91d5b4b9f0b9f42 # initialize rs1
slliw x30, x30, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x45f6f5fe4c848516 # initialize rs1
slliw x31, x31, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm_5 (Test bit = 0)
li x9, 0xf691974430cf361b # initialize rs1
slliw x7, x9, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 896)

# Testcase cp_uimm_5 (Test bit = 1)
li x18, 0xbc946ae3529e1ef4 # initialize rs1
slliw x2, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cp_uimm_5 (Test bit = 2)
li x30, 0x18e63706d4c4fa00 # initialize rs1
slliw x5, x30, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 912)

# Testcase cp_uimm_5 (Test bit = 3)
li x17, 0x84deb6c65a3507c8 # initialize rs1
slliw x10, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 920)

# Testcase cp_uimm_5 (Test bit = 4)
li x21, 0x6291d9744599468e # initialize rs1
slliw x29, x21, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 928)

# Testcase cp_uimm_5 (Test bit = 5)
li x28, 0xecee95ca33a213e2 # initialize rs1
slliw x2, x28, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 936)

# Testcase cp_uimm_5 (Test bit = 6)
li x21, 0xca57993063de2853 # initialize rs1
slliw x23, x21, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 944)

# Testcase cp_uimm_5 (Test bit = 7)
li x10, 0x07a002f6055ab1ba # initialize rs1
slliw x23, x10, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 952)

# Testcase cp_uimm_5 (Test bit = 8)
li x24, 0xefee63869339816e # initialize rs1
slliw x30, x24, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 960)

# Testcase cp_uimm_5 (Test bit = 9)
li x27, 0xb8f0bb1c374eeed1 # initialize rs1
slliw x8, x27, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 968)

# Testcase cp_uimm_5 (Test bit = 10)
li x10, 0xeceb53ef5b4526e6 # initialize rs1
slliw x15, x10, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 976)

# Testcase cp_uimm_5 (Test bit = 11)
li x6, 0x3c532a6590dd9d30 # initialize rs1
slliw x15, x6, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 984)

# Testcase cp_uimm_5 (Test bit = 12)
li x12, 0xdcc13e2dce892179 # initialize rs1
slliw x14, x12, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 992)

# Testcase cp_uimm_5 (Test bit = 13)
li x19, 0xab30d915e39f8ae9 # initialize rs1
slliw x14, x19, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1000)

# Testcase cp_uimm_5 (Test bit = 14)
li x26, 0x2c8ca67a08853be9 # initialize rs1
slliw x23, x26, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1008)

# Testcase cp_uimm_5 (Test bit = 15)
li x23, 0xebfe193e6e1f87b7 # initialize rs1
slliw x8, x23, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1016)

# Testcase cp_uimm_5 (Test bit = 16)
li x29, 0x3105ea28adffc73a # initialize rs1
slliw x7, x29, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1024)

# Testcase cp_uimm_5 (Test bit = 17)
li x23, 0x0ab11663c6bf15f4 # initialize rs1
slliw x10, x23, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1032)

# Testcase cp_uimm_5 (Test bit = 18)
li x27, 0xa9857549b1710ee3 # initialize rs1
slliw x31, x27, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1040)

# Testcase cp_uimm_5 (Test bit = 19)
li x26, 0x321ce82003217773 # initialize rs1
slliw x6, x26, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1048)

# Testcase cp_uimm_5 (Test bit = 20)
li x12, 0xbfa06fb0ee790bbf # initialize rs1
slliw x7, x12, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1056)

# Testcase cp_uimm_5 (Test bit = 21)
li x19, 0x3746a2bfcdd4c645 # initialize rs1
slliw x27, x19, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1064)

# Testcase cp_uimm_5 (Test bit = 22)
li x14, 0x0b0869e02578e3ae # initialize rs1
slliw x22, x14, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1072)

# Testcase cp_uimm_5 (Test bit = 23)
li x19, 0xd853ad192b371bf3 # initialize rs1
slliw x18, x19, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1080)

# Testcase cp_uimm_5 (Test bit = 24)
li x22, 0x34ca7c017016948f # initialize rs1
slliw x10, x22, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1088)

# Testcase cp_uimm_5 (Test bit = 25)
li x27, 0x9f34427adfc4cb13 # initialize rs1
slliw x28, x27, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1096)

# Testcase cp_uimm_5 (Test bit = 26)
li x22, 0x22c6b96e112bb409 # initialize rs1
slliw x16, x22, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1104)

# Testcase cp_uimm_5 (Test bit = 27)
li x9, 0xe95e042976c52024 # initialize rs1
slliw x20, x9, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1112)

# Testcase cp_uimm_5 (Test bit = 28)
li x13, 0x108a68ec61912af8 # initialize rs1
slliw x18, x13, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1120)

# Testcase cp_uimm_5 (Test bit = 29)
li x13, 0x4e7d2976a4955414 # initialize rs1
slliw x12, x13, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1128)

# Testcase cp_uimm_5 (Test bit = 30)
li x25, 0x25b90a194ac3f93b # initialize rs1
slliw x12, x25, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1136)

# Testcase cp_uimm_5 (Test bit = 31)
li x13, 0x6c463b95c355df8f # initialize rs1
slliw x24, x13, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1144)

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x13, x2 # perform first operation
slliw x9, x5, 26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x2, x24 # perform first operation
slliw x7, x19, 14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x6, x25 # perform first operation
slliw x5, x21, 12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x19, x26 # perform first operation
slliw x1, x17, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x8, x30 # perform first operation
slliw x17, x16, 14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x6, x19 # perform first operation
slliw x6, x22, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x26, x3 # perform first operation
slliw x9, x31, 12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x6, x20 # perform first operation
slliw x1, x19, 8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x28, x1 # perform first operation
slliw x8, x20, 4 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x18, x12 # perform first operation
slliw x18, x24, 31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x24, x17 # perform first operation
slliw x17, x2, 26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x12, x6 # perform first operation
slliw x19, x9, 2 # perform second (triggering) operation

.EQU SIGSIZE,1152


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
