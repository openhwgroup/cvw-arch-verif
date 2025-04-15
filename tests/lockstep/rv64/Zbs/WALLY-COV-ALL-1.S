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
// Tests from: WALLY-COV-bseti.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x9d88b10c8da93e86 # initialize rs1
bseti x29, x0, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x03b06e4e5ea7d31c # initialize rs1
bseti x6, x1, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x1bd48335618b897f # initialize rs1
bseti x27, x2, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x5ce82e8195f2af28 # initialize rs1
bseti x9, x3, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x703a0d45116fed2d # initialize rs1
bseti x27, x4, 14 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2f7035ba56e7fcf4 # initialize rs1
bseti x15, x5, 63 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6beb40faec0ffe0b # initialize rs1
bseti x29, x6, 59 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb15d4d4745e7833e # initialize rs1
bseti x9, x7, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x66ba52f2a2140e37 # initialize rs1
bseti x1, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x57c8830d74798c2b # initialize rs1
bseti x13, x9, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x71140a3d2c11a003 # initialize rs1
bseti x8, x10, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xf27b1eb48814709d # initialize rs1
bseti x10, x11, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x3982b23c48fdb204 # initialize rs1
bseti x30, x12, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x5641e3cc87e46b8c # initialize rs1
bseti x12, x13, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x550483274bd7e455 # initialize rs1
bseti x2, x14, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x7f6af92aa43696ed # initialize rs1
bseti x30, x15, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x40be6911eb2a22c1 # initialize rs1
bseti x1, x16, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xa4259bb1c9d218df # initialize rs1
bseti x2, x17, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xce23d1284f73c3e3 # initialize rs1
bseti x19, x18, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x4c7ef5ea20994fd3 # initialize rs1
bseti x9, x19, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x34305bd1dba71134 # initialize rs1
bseti x29, x20, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x6873a5fdc3c9fcad # initialize rs1
bseti x10, x21, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x383d039c00d41322 # initialize rs1
bseti x18, x22, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xc5a98824ffc83c4f # initialize rs1
bseti x2, x23, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xe69ac797dc49286a # initialize rs1
bseti x28, x24, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xd88f6418140dbc97 # initialize rs1
bseti x27, x25, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xc81183fbf9b0d1ff # initialize rs1
bseti x8, x26, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xcaecb1cf8244d1a4 # initialize rs1
bseti x19, x27, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x3e9db5dcb78d2df0 # initialize rs1
bseti x14, x28, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xcef356f237619761 # initialize rs1
bseti x19, x29, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xed13cf12caece85a # initialize rs1
bseti x29, x30, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xf9b27230113bd68c # initialize rs1
bseti x1, x31, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cp_rd (Test destination rd = x0)
li x8, 0x69efd475f9aa48f7 # initialize rs1
bseti x0, x8, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x29, 0xb16c9aa186b4fec1 # initialize rs1
bseti x1, x29, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x7, 0xac52e0fb85785bc6 # initialize rs1
bseti x2, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x27, 0x5c7aaa71eac394e5 # initialize rs1
bseti x3, x27, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0xfcf7e902d744b477 # initialize rs1
bseti x4, x2, 49 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0xf030294bb151d4e1 # initialize rs1
bseti x5, x21, 38 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0x3c5db71f3f7c8c16 # initialize rs1
bseti x6, x14, 31 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x8d8a957799906d1f # initialize rs1
bseti x7, x17, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x24, 0x0d4509251211aa4a # initialize rs1
bseti x8, x24, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x24, 0x2798c94b63d3bf8a # initialize rs1
bseti x9, x24, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x31, 0x5e1d15c957c8d5be # initialize rs1
bseti x10, x31, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x26, 0x65c2a0458324736c # initialize rs1
bseti x11, x26, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x17, 0x9fd1057b72143499 # initialize rs1
bseti x12, x17, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x7, 0xfe8fd9bf05c93e1e # initialize rs1
bseti x13, x7, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x21, 0xeb853763c780ad8c # initialize rs1
bseti x14, x21, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x21, 0x4ab4f055ee6f1e14 # initialize rs1
bseti x15, x21, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x23, 0x5356ab878a43d4cd # initialize rs1
bseti x16, x23, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x24, 0xe116b26fe47385e5 # initialize rs1
bseti x17, x24, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x7, 0xa7f5b05a6387204b # initialize rs1
bseti x18, x7, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x27, 0x53412b0cf25eeefa # initialize rs1
bseti x19, x27, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x30, 0xda7a53fe8601e1f0 # initialize rs1
bseti x20, x30, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x18, 0xd2e0b9fe54a73e3a # initialize rs1
bseti x21, x18, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x30, 0x3365952ba0908436 # initialize rs1
bseti x22, x30, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x29, 0x1d16260d94b6da2f # initialize rs1
bseti x23, x29, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x10, 0xde644c68198f6ab9 # initialize rs1
bseti x24, x10, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x29, 0x04434d7ae0c0483b # initialize rs1
bseti x25, x29, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x22, 0x6ed34e3ac4c6757d # initialize rs1
bseti x26, x22, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x8, 0x4e4ca218c915f314 # initialize rs1
bseti x27, x8, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xc42eee90589f5e20 # initialize rs1
bseti x28, x28, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x15, 0xbe516d8c509d5dde # initialize rs1
bseti x29, x15, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x25, 0x3da079e58bfe8125 # initialize rs1
bseti x30, x25, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x17, 0xa9aba17847ca2329 # initialize rs1
bseti x31, x17, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x1, 0x0000000000000000 # initialize rs1
bseti x15, x1, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x9, 0x0000000000000001 # initialize rs1
bseti x29, x9, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x1, 0x0000000000000002 # initialize rs1
bseti x22, x1, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x24, 0x8000000000000000 # initialize rs1
bseti x28, x24, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x16, 0x8000000000000001 # initialize rs1
bseti x10, x16, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
bseti x29, x19, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x20, 0x7ffffffffffffffe # initialize rs1
bseti x5, x20, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x29, 0xffffffffffffffff # initialize rs1
bseti x19, x29, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x25, 0xfffffffffffffffe # initialize rs1
bseti x30, x25, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x1, 0x5bbc887763ae86f2 # initialize rs1
bseti x12, x1, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
bseti x1, x9, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x5555555555555555 # initialize rs1
bseti x11, x26, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x14, 0x00000000ffffffff # initialize rs1
bseti x23, x14, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x22, 0x00000000fffffffe # initialize rs1
bseti x3, x22, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x2, 0x0000000100000000 # initialize rs1
bseti x15, x2, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x24, 0x0000000100000001 # initialize rs1
bseti x14, x24, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x70f9fbbc3c93f484 # initialize rs1
bseti x0, x0, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x2a28e8a24ebee8dc # initialize rs1
bseti x1, x1, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xd6bd12bdc67500a5 # initialize rs1
bseti x2, x2, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x30a02eee9be21a10 # initialize rs1
bseti x3, x3, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf056f73aaf1127b9 # initialize rs1
bseti x4, x4, 61 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa47ae9bff40416b4 # initialize rs1
bseti x5, x5, 29 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x39107d8323d46dd8 # initialize rs1
bseti x6, x6, 42 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbf3a91a08783014f # initialize rs1
bseti x7, x7, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x3257ecd85ce468da # initialize rs1
bseti x8, x8, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x5bd4a251ee7a9671 # initialize rs1
bseti x9, x9, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x82994f027ea183a1 # initialize rs1
bseti x10, x10, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x043e0ef3aad9384f # initialize rs1
bseti x11, x11, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x267daf3ce6e0ea3e # initialize rs1
bseti x12, x12, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x374071e7f041a5f1 # initialize rs1
bseti x13, x13, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc9ae8e9fcbd78fd5 # initialize rs1
bseti x14, x14, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x64655a41cee83cfe # initialize rs1
bseti x15, x15, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x6f39e7995c2aa64a # initialize rs1
bseti x16, x16, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xeef4aebdb64adfe9 # initialize rs1
bseti x17, x17, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xde21e723acc8e0b7 # initialize rs1
bseti x18, x18, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x9d6989203ca7949b # initialize rs1
bseti x19, x19, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xe71c05be470d9c80 # initialize rs1
bseti x20, x20, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x90a40dfaabffdb4b # initialize rs1
bseti x21, x21, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x75667756b746ed68 # initialize rs1
bseti x22, x22, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x78af253bf9ff682b # initialize rs1
bseti x23, x23, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xb73fc7a49fab1001 # initialize rs1
bseti x24, x24, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xd0bd2423616da3d9 # initialize rs1
bseti x25, x25, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x790a2c0a279ec907 # initialize rs1
bseti x26, x26, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x460f717a92e8bc09 # initialize rs1
bseti x27, x27, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xc913a0ef584c61e9 # initialize rs1
bseti x28, x28, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xba5ac8ca0ec24be0 # initialize rs1
bseti x29, x29, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x50fb6b98b0bdc2d0 # initialize rs1
bseti x30, x30, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xf3f8f19b290eedc8 # initialize rs1
bseti x31, x31, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm (Test bit = 0)
li x21, 0xba8e30d7b969d896 # initialize rs1
bseti x30, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 896)

# Testcase cp_uimm (Test bit = 1)
li x21, 0xb01bd0a9de187756 # initialize rs1
bseti x30, x21, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 904)

# Testcase cp_uimm (Test bit = 2)
li x14, 0x39600cb39cd0b659 # initialize rs1
bseti x3, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 912)

# Testcase cp_uimm (Test bit = 3)
li x6, 0x95beae722f232804 # initialize rs1
bseti x8, x6, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 920)

# Testcase cp_uimm (Test bit = 4)
li x26, 0x149acb95963a4913 # initialize rs1
bseti x12, x26, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 928)

# Testcase cp_uimm (Test bit = 5)
li x15, 0x6dcc98efb87f6ee4 # initialize rs1
bseti x2, x15, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 936)

# Testcase cp_uimm (Test bit = 6)
li x21, 0x11af9640be04dc69 # initialize rs1
bseti x19, x21, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 944)

# Testcase cp_uimm (Test bit = 7)
li x11, 0xa850226cf4728ac2 # initialize rs1
bseti x18, x11, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 952)

# Testcase cp_uimm (Test bit = 8)
li x21, 0x2cf6e67cfd7c3ed1 # initialize rs1
bseti x17, x21, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cp_uimm (Test bit = 9)
li x27, 0x727f7095debea300 # initialize rs1
bseti x26, x27, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 968)

# Testcase cp_uimm (Test bit = 10)
li x16, 0xec890fa07e60342d # initialize rs1
bseti x13, x16, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 976)

# Testcase cp_uimm (Test bit = 11)
li x12, 0x6112a3b0997592cc # initialize rs1
bseti x28, x12, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 984)

# Testcase cp_uimm (Test bit = 12)
li x7, 0x2bd9ca8eb189ec0c # initialize rs1
bseti x24, x7, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 992)

# Testcase cp_uimm (Test bit = 13)
li x31, 0x7072b61596dcfcdc # initialize rs1
bseti x8, x31, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1000)

# Testcase cp_uimm (Test bit = 14)
li x18, 0xbd3fb273fed80780 # initialize rs1
bseti x9, x18, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1008)

# Testcase cp_uimm (Test bit = 15)
li x22, 0xae07b6c2ad00d49a # initialize rs1
bseti x23, x22, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1016)

# Testcase cp_uimm (Test bit = 16)
li x8, 0x4d3d211cd0801dbc # initialize rs1
bseti x1, x8, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1024)

# Testcase cp_uimm (Test bit = 17)
li x20, 0x8212a239493cc929 # initialize rs1
bseti x14, x20, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1032)

# Testcase cp_uimm (Test bit = 18)
li x18, 0x5c9c1d15a470dce4 # initialize rs1
bseti x25, x18, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1040)

# Testcase cp_uimm (Test bit = 19)
li x27, 0x058c45b8bdac991c # initialize rs1
bseti x30, x27, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1048)

# Testcase cp_uimm (Test bit = 20)
li x1, 0xdbf1a646cc467cdc # initialize rs1
bseti x30, x1, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1056)

# Testcase cp_uimm (Test bit = 21)
li x20, 0x28dbd390c8026f7b # initialize rs1
bseti x15, x20, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1064)

# Testcase cp_uimm (Test bit = 22)
li x22, 0x2fb4b2c3df465218 # initialize rs1
bseti x23, x22, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1072)

# Testcase cp_uimm (Test bit = 23)
li x22, 0x85fcbdbd2671e805 # initialize rs1
bseti x3, x22, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1080)

# Testcase cp_uimm (Test bit = 24)
li x6, 0x13ed59acab0a94b9 # initialize rs1
bseti x2, x6, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1088)

# Testcase cp_uimm (Test bit = 25)
li x28, 0xdcfd2762ec2d6ca9 # initialize rs1
bseti x24, x28, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1096)

# Testcase cp_uimm (Test bit = 26)
li x25, 0xf61f4cbce5806064 # initialize rs1
bseti x29, x25, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cp_uimm (Test bit = 27)
li x11, 0x4c490e362ae062f3 # initialize rs1
bseti x12, x11, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1112)

# Testcase cp_uimm (Test bit = 28)
li x21, 0xdd63090a7e7fe0ff # initialize rs1
bseti x31, x21, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1120)

# Testcase cp_uimm (Test bit = 29)
li x13, 0xe6fcb6f905f10062 # initialize rs1
bseti x9, x13, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1128)

# Testcase cp_uimm (Test bit = 30)
li x9, 0x1d8cf585c18213b8 # initialize rs1
bseti x29, x9, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1136)

# Testcase cp_uimm (Test bit = 31)
li x21, 0x3de360f901166595 # initialize rs1
bseti x3, x21, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1144)

# Testcase cp_uimm (Test bit = 32)
li x22, 0xafc88d6467a03c7f # initialize rs1
bseti x23, x22, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1152)

# Testcase cp_uimm (Test bit = 33)
li x14, 0x08eb15b6d0ba7291 # initialize rs1
bseti x29, x14, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1160)

# Testcase cp_uimm (Test bit = 34)
li x11, 0xbafd5ccdf66c7ee6 # initialize rs1
bseti x9, x11, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1168)

# Testcase cp_uimm (Test bit = 35)
li x2, 0xc14c881a56785e1c # initialize rs1
bseti x21, x2, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1176)

# Testcase cp_uimm (Test bit = 36)
li x6, 0x273e684ae38ae0c2 # initialize rs1
bseti x27, x6, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1184)

# Testcase cp_uimm (Test bit = 37)
li x7, 0x6179176e656b7584 # initialize rs1
bseti x5, x7, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1192)

# Testcase cp_uimm (Test bit = 38)
li x24, 0x53f1275fc1ca953b # initialize rs1
bseti x30, x24, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1200)

# Testcase cp_uimm (Test bit = 39)
li x17, 0xb7adafc7c6c4654b # initialize rs1
bseti x12, x17, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1208)

# Testcase cp_uimm (Test bit = 40)
li x16, 0x8db60118df045b11 # initialize rs1
bseti x18, x16, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1216)

# Testcase cp_uimm (Test bit = 41)
li x31, 0x808fa014a1554fd0 # initialize rs1
bseti x6, x31, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1224)

# Testcase cp_uimm (Test bit = 42)
li x9, 0x7dd0568ef09e4d6f # initialize rs1
bseti x19, x9, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1232)

# Testcase cp_uimm (Test bit = 43)
li x17, 0x12909c4743cfd1da # initialize rs1
bseti x11, x17, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1240)

# Testcase cp_uimm (Test bit = 44)
li x27, 0x9c844dc45e6a64c3 # initialize rs1
bseti x19, x27, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1248)

# Testcase cp_uimm (Test bit = 45)
li x31, 0x8011d873279cfefc # initialize rs1
bseti x14, x31, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1256)

# Testcase cp_uimm (Test bit = 46)
li x16, 0x2054458af9f641f0 # initialize rs1
bseti x3, x16, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1264)

# Testcase cp_uimm (Test bit = 47)
li x12, 0x6385ae8d9b143eb6 # initialize rs1
bseti x19, x12, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1272)

# Testcase cp_uimm (Test bit = 48)
li x16, 0x056e24af5af0fe47 # initialize rs1
bseti x30, x16, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1280)

# Testcase cp_uimm (Test bit = 49)
li x2, 0x4297977487ad2dd4 # initialize rs1
bseti x30, x2, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1288)

# Testcase cp_uimm (Test bit = 50)
li x5, 0x1eec2e2b32641079 # initialize rs1
bseti x8, x5, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1296)

# Testcase cp_uimm (Test bit = 51)
li x11, 0xd4055bf852eeea15 # initialize rs1
bseti x7, x11, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1304)

# Testcase cp_uimm (Test bit = 52)
li x2, 0xe6a7d9fe744e9147 # initialize rs1
bseti x28, x2, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1312)

# Testcase cp_uimm (Test bit = 53)
li x30, 0x27352e971dd727da # initialize rs1
bseti x27, x30, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1320)

# Testcase cp_uimm (Test bit = 54)
li x17, 0xbe8c944e7b8d5185 # initialize rs1
bseti x6, x17, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1328)

# Testcase cp_uimm (Test bit = 55)
li x10, 0xba30555c4a21227f # initialize rs1
bseti x26, x10, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1336)

# Testcase cp_uimm (Test bit = 56)
li x15, 0xc322a8730dd3703d # initialize rs1
bseti x22, x15, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1344)

# Testcase cp_uimm (Test bit = 57)
li x23, 0x929ee1bd009e4649 # initialize rs1
bseti x13, x23, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1352)

# Testcase cp_uimm (Test bit = 58)
li x9, 0xbbb733cc351dcbe4 # initialize rs1
bseti x26, x9, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1360)

# Testcase cp_uimm (Test bit = 59)
li x6, 0xb1463e054058c9bd # initialize rs1
bseti x21, x6, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1368)

# Testcase cp_uimm (Test bit = 60)
li x27, 0xbcf284ad6972bc1c # initialize rs1
bseti x19, x27, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1376)

# Testcase cp_uimm (Test bit = 61)
li x25, 0x372b11a3c8f01c91 # initialize rs1
bseti x13, x25, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1384)

# Testcase cp_uimm (Test bit = 62)
li x11, 0x01e902c255d38664 # initialize rs1
bseti x3, x11, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1392)

# Testcase cp_uimm (Test bit = 63)
li x5, 0xe4e1aef0410152f0 # initialize rs1
bseti x2, x5, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1400)

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x21, x30 # perform first operation
bseti x15, x10, 54 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x12, x22, x29 # perform first operation
bseti x27, x8, 21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x16, x19 # perform first operation
bseti x12, x17, 62 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x5, x14 # perform first operation
bseti x5, x2, 32 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x30, x23 # perform first operation
bseti x15, x20, 18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x31, x5 # perform first operation
bseti x19, x9, 25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x26, x17 # perform first operation
bseti x31, x6, 13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x26, x22 # perform first operation
bseti x31, x6, 51 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x11, x5 # perform first operation
bseti x25, x24, 44 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x25, x13 # perform first operation
bseti x25, x30, 4 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x29, x13, x18 # perform first operation
bseti x18, x6, 36 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x10, x22 # perform first operation
bseti x28, x18, 23 # perform second (triggering) operation

#.EQU SIGSIZE,1408


// ******************
// Tests from: WALLY-COV-binv.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x6a55e26c79b4fd5a # initialize rs1
li x26, 0xd8edd36720b6760e # initialize rs2
binv x5, x0, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x902bedd02ab3ba9c # initialize rs1
li x22, 0xbeecb637214dc457 # initialize rs2
binv x2, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x92baf4df9589c9c8 # initialize rs1
li x29, 0x71948b8ef2972263 # initialize rs2
binv x24, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x9c0b22f075ebb15c # initialize rs1
li x5, 0xf0179ce1c531f95a # initialize rs2
binv x7, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9ae58fe806c1fa21 # initialize rs1
li x16, 0xe728893d6bbe4013 # initialize rs2
binv x28, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1723b302bebfc079 # initialize rs1
li x13, 0xddf152929b200acf # initialize rs2
binv x4, x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3f53632fd0dc519a # initialize rs1
li x31, 0xfff6a96b2cbdebf4 # initialize rs2
binv x7, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xeaad083697126083 # initialize rs1
li x5, 0x3e88116b655b9ea6 # initialize rs2
binv x19, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x220e79fc934210b7 # initialize rs1
li x3, 0xcb9ad5c9d13e09dc # initialize rs2
binv x13, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x17891cbe21806ba8 # initialize rs1
li x22, 0x6880bf9f2a1397da # initialize rs2
binv x17, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x23c4b955f5d6f060 # initialize rs1
li x12, 0xf2f519866375275e # initialize rs2
binv x31, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xdd97fb6549cb3b8a # initialize rs1
li x23, 0x07b600c228afdaf4 # initialize rs2
binv x29, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x700c1f98971b4a3f # initialize rs1
li x19, 0xc39870d4b03eeb1d # initialize rs2
binv x13, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x18abf2ebaf66920f # initialize rs1
li x27, 0xff5f74349484774a # initialize rs2
binv x7, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xbf39b798ff9a037b # initialize rs1
li x28, 0xf348ae7f505912d5 # initialize rs2
binv x13, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc2bdccfe90e9c872 # initialize rs1
li x6, 0xab14b170507d0284 # initialize rs2
binv x17, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x4a7d110555fe9d44 # initialize rs1
li x1, 0x868685c211df890d # initialize rs2
binv x17, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xf27137a0c9df90bc # initialize rs1
li x24, 0x2def8e71bd24ec8d # initialize rs2
binv x18, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x188109c5c2e967e0 # initialize rs1
li x25, 0xb114a32c3b689c19 # initialize rs2
binv x14, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xa6bd8c539e1b5221 # initialize rs1
li x22, 0xdce6f554932db2ce # initialize rs2
binv x23, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xf283546dea17817b # initialize rs1
li x8, 0xa86a27f3e648706b # initialize rs2
binv x1, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x0b72608a2e632599 # initialize rs1
li x29, 0xe47ef39d09f4657d # initialize rs2
binv x23, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xe16e138fb36ffd71 # initialize rs1
li x11, 0x79e88984da85245d # initialize rs2
binv x21, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xa067d0c3cc2bead7 # initialize rs1
li x29, 0xed36492319824318 # initialize rs2
binv x14, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xdf8f4e0bdef0e8b9 # initialize rs1
li x6, 0x744a5e459fc4cdbf # initialize rs2
binv x19, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x03715b9107dcb6e2 # initialize rs1
li x6, 0x8ffcfa1f7bd42438 # initialize rs2
binv x10, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x49d68ba1ca409e00 # initialize rs1
li x31, 0xc2f504fc378eb592 # initialize rs2
binv x14, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xc848b3029024816e # initialize rs1
li x1, 0xd622435bdccc96d3 # initialize rs2
binv x28, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x6467f548c1b78bae # initialize rs1
li x13, 0xcbfd65235ce51cc2 # initialize rs2
binv x1, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xdbdebb8821ec732b # initialize rs1
li x16, 0x04ba4533ec0c9183 # initialize rs2
binv x5, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x72dd3cd36d92d1ba # initialize rs1
li x3, 0xbfa0efd3c323a1f6 # initialize rs2
binv x1, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x294b63c475fe6ab0 # initialize rs1
li x16, 0xfee4ed893c53cbec # initialize rs2
binv x3, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x13, 0xb59c363d5137a993 # initialize rs1
li x0, 0xe5f66cd77ac9616d # initialize rs2
binv x5, x13, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x23, 0xc030e947f78bdc1d # initialize rs1
li x1, 0xd30370dc1fdb642a # initialize rs2
binv x19, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x6, 0x1b5567401cf79cd4 # initialize rs1
li x2, 0x400689c2d1a3a951 # initialize rs2
binv x20, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x5, 0x63b581d1a9c3d708 # initialize rs1
li x3, 0x8af29e320f88955f # initialize rs2
binv x26, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x20, 0x4af0a7a179226594 # initialize rs1
li x4, 0xe4dd86766b0a6e1e # initialize rs2
binv x11, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x41e67ffdfb9442ff # initialize rs1
li x5, 0xfccc9963339612fb # initialize rs2
binv x9, x23, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x5917f18f0a72823a # initialize rs1
li x6, 0x69b06ddbb81e30de # initialize rs2
binv x25, x17, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x0206face5ad1e07e # initialize rs1
li x7, 0x2ee27ef43fcaf354 # initialize rs2
binv x10, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x25, 0x9cef44730fbcc740 # initialize rs1
li x8, 0xe74d7f347279ba4e # initialize rs2
binv x10, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x31, 0xa6e47b8f6e82f3e8 # initialize rs1
li x9, 0x068b0726da910f26 # initialize rs2
binv x14, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x7, 0xba53bf69f42602ba # initialize rs1
li x10, 0x567183445acc727f # initialize rs2
binv x28, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x5, 0x7db413430ba17b3a # initialize rs1
li x11, 0xd606665c1a73f5d1 # initialize rs2
binv x29, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x25, 0x3a4c0f66f247f30d # initialize rs1
li x12, 0x642d78ea6d873709 # initialize rs2
binv x18, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x3, 0x45653c46e9e80df0 # initialize rs1
li x13, 0x859ea18d07a645c1 # initialize rs2
binv x12, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x13, 0xde5a0d0494b97146 # initialize rs1
li x14, 0x9904e974397cb8e8 # initialize rs2
binv x3, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x28, 0x688e0004f3d25cae # initialize rs1
li x15, 0xff710868606644f1 # initialize rs2
binv x23, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x19, 0xd3da76652f9f046a # initialize rs1
li x16, 0xcb9e21b3453b6164 # initialize rs2
binv x31, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x2, 0x10ae08315657e386 # initialize rs1
li x17, 0xe205677e2ea817ee # initialize rs2
binv x20, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x11, 0xc5f87a7e28f5cab0 # initialize rs1
li x18, 0xb594ed6c9c35b38d # initialize rs2
binv x17, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x28, 0xac32a88243a189db # initialize rs1
li x19, 0x80a30ec1bcca97bc # initialize rs2
binv x26, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x14, 0x184c1a0d697973bf # initialize rs1
li x20, 0x24edfe65dede267c # initialize rs2
binv x29, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x2, 0x2625e32665069c0c # initialize rs1
li x21, 0x282c61b30a532176 # initialize rs2
binv x3, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x15, 0x350bf2aef179188d # initialize rs1
li x22, 0xad6756367bc7fc5a # initialize rs2
binv x9, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x13, 0x283069e50d4a9e17 # initialize rs1
li x23, 0xc933ad560ea8df58 # initialize rs2
binv x7, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x18, 0x64cb4fb375798196 # initialize rs1
li x24, 0x091764bbfb050a45 # initialize rs2
binv x21, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x24, 0xfc929c51bbabf611 # initialize rs1
li x25, 0xbbeb88372ff283f3 # initialize rs2
binv x13, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x14, 0xfd216b9440c4104a # initialize rs1
li x26, 0x27cdfc3369ae4abb # initialize rs2
binv x17, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x8, 0x3896a145e5f8e2f4 # initialize rs1
li x27, 0xdaa89ec92898438e # initialize rs2
binv x11, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x24, 0x69ff8d93e7454d12 # initialize rs1
li x28, 0x0454a7f08fe1a1c5 # initialize rs2
binv x21, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x31, 0x648f7f94a5ce9ab5 # initialize rs1
li x29, 0x6eb29a65d6d473d2 # initialize rs2
binv x23, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x26, 0x99ecf66626f422a8 # initialize rs1
li x30, 0x0d2fe3793bc37f47 # initialize rs2
binv x1, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x24, 0x0244e54dea586ad1 # initialize rs1
li x31, 0x380e89ac9e564448 # initialize rs2
binv x21, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 504)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0x09e16bbce5df1d9d # initialize rs1
li x15, 0xea93f9898d691387 # initialize rs2
binv x0, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x2, 0x67831ff0e0f89380 # initialize rs1
li x24, 0xea56c787bd59b232 # initialize rs2
binv x1, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x19, 0x774fb60195a9a342 # initialize rs1
li x1, 0xb75e90f42b897099 # initialize rs2
binv x2, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x22, 0x0a66bc2463a38170 # initialize rs1
li x26, 0xee180748127f126b # initialize rs2
binv x3, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0xbd016d4024945371 # initialize rs1
li x12, 0x0e6c31376f434859 # initialize rs2
binv x4, x1, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x4, 0xc8949c7e5d28c4a7 # initialize rs1
li x23, 0x4b7f39e094154369 # initialize rs2
binv x5, x4, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0x9d18faeca9090342 # initialize rs1
li x5, 0xa7fe1e2d3dd69a73 # initialize rs2
binv x6, x15, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xa0760daf27bdaea6 # initialize rs1
li x29, 0x86f6e64b0e44a12b # initialize rs2
binv x7, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x30, 0xf24d8c4fd5f6cba9 # initialize rs1
li x17, 0x78ecfbe86c0b1598 # initialize rs2
binv x8, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x24, 0x449d3609bc1c274e # initialize rs1
li x29, 0xb0beccf42f7f10a0 # initialize rs2
binv x9, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x23, 0x127b6a9722db8729 # initialize rs1
li x10, 0xcfe453b85322863d # initialize rs2
binv x10, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x17, 0x3c5542c02b02126a # initialize rs1
li x21, 0x81cc27672eb712f3 # initialize rs2
binv x11, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x6, 0x6aebc8434311a1bc # initialize rs1
li x2, 0xa90304d43dff38b9 # initialize rs2
binv x12, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x11, 0xbbacad45fb2b2860 # initialize rs1
li x9, 0xc250ce985e34c75e # initialize rs2
binv x13, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x23, 0x4a127357aa2dafab # initialize rs1
li x27, 0xf12e3ddb0cda9efc # initialize rs2
binv x14, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x26, 0x0bbec8116c464018 # initialize rs1
li x23, 0xc7376e038b0a47c4 # initialize rs2
binv x15, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x7, 0x5bbbf7adf9ef397e # initialize rs1
li x20, 0x2d9c929ae155723b # initialize rs2
binv x16, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x13, 0x7c3295ead52273f1 # initialize rs1
li x20, 0x0f8073e7f04b29d8 # initialize rs2
binv x17, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x28, 0xeb8b3b4b98e6e97e # initialize rs1
li x25, 0x91236a45ce8ee030 # initialize rs2
binv x18, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x30, 0xeb782d2fa022f268 # initialize rs1
li x6, 0x608eec316205f780 # initialize rs2
binv x19, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x14, 0xb1248df6a55ac23d # initialize rs1
li x12, 0x01e9f479d99e8e7f # initialize rs2
binv x20, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x10, 0x99e3b728f2375b97 # initialize rs1
li x24, 0x28a3c910c66b26c9 # initialize rs2
binv x21, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x23, 0x0b7b9992b3f132c7 # initialize rs1
li x1, 0x5c2eded2c52148d6 # initialize rs2
binv x22, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x2, 0x3d2bbce5c9b78be8 # initialize rs1
li x23, 0x976a7a8b9f5ef1e1 # initialize rs2
binv x23, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x6, 0x3820647d57419ea2 # initialize rs1
li x21, 0x85bda24f28643b30 # initialize rs2
binv x24, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x17, 0xd26fd8fcff509b55 # initialize rs1
li x22, 0xdeb8020cfd31c714 # initialize rs2
binv x25, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x30, 0x868315759110ea5f # initialize rs1
li x1, 0x205a111e212bd61a # initialize rs2
binv x26, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x5, 0x040d3366e4b77e19 # initialize rs1
li x24, 0x887e8aec3a0e5587 # initialize rs2
binv x27, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x9, 0xe875659d9b646e43 # initialize rs1
li x20, 0xdd878f4ca9e573eb # initialize rs2
binv x28, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x2, 0xdc7cd41d7a4902fb # initialize rs1
li x14, 0x3affb74d39731871 # initialize rs2
binv x29, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x6, 0x35ce27de57f1dbba # initialize rs1
li x11, 0x17d6eaf8de159c3e # initialize rs2
binv x30, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x13, 0xb92f8cb3d6a94096 # initialize rs1
li x1, 0xb3328f6f9c9cff73 # initialize rs2
binv x31, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x19, 0x0000000000000000 # initialize rs1
li x13, 0xf01c1f357a3acc18 # initialize rs2
binv x14, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x28, 0x0000000000000001 # initialize rs1
li x26, 0xa1e9bb67924e6fe4 # initialize rs2
binv x29, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x26, 0x0000000000000002 # initialize rs1
li x25, 0x2ef76fedb4163a39 # initialize rs2
binv x31, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x10, 0x8000000000000000 # initialize rs1
li x15, 0xb61e9fc053f222ed # initialize rs2
binv x6, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x1, 0x8000000000000001 # initialize rs1
li x7, 0x8d238e8041131d71 # initialize rs2
binv x13, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x10, 0x9b174af38d369428 # initialize rs2
binv x23, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x7, 0x3ca9c009bbe4e35c # initialize rs2
binv x16, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x16, 0xffffffffffffffff # initialize rs1
li x18, 0x85fcd645ee27518f # initialize rs2
binv x25, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rs1
li x1, 0xac859401b2e36679 # initialize rs2
binv x5, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0ec18fd998b576b8 # initialize rs2
binv x10, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x71b55ce2b6f9461a # initialize rs2
binv x3, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x31, 0x5555555555555555 # initialize rs1
li x17, 0x298f33222761e0aa # initialize rs2
binv x21, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs1
li x22, 0x801ea1fd8a6a1a03 # initialize rs2
binv x21, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x18, 0x84a9f6ba28b5808a # initialize rs2
binv x26, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x19, 0x0000000100000000 # initialize rs1
li x22, 0x4d3b9e6b061c993c # initialize rs2
binv x31, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0x0000000100000001 # initialize rs1
li x23, 0x2b6511af545640d8 # initialize rs2
binv x19, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x22, 0xb5dbff9e8f81f004 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
binv x25, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x17, 0xde4c77cc0ba2a2b0 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
binv x23, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x7, 0xdf24063123539b69 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
binv x23, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x26, 0x08886627d83cd6f5 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
binv x13, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x9, 0x2de25eeee67e454e # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
binv x18, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x31, 0xde0eefd516db6f29 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
binv x14, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x28, 0xd387848ec7e49fbc # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
binv x1, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x7, 0x886933b7477e6a84 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
binv x22, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x8, 0xbfe8ab9aed0ec3a6 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
binv x6, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x20, 0xf4553cb4fff0337e # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
binv x25, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x19, 0x42965c71e59753f2 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x1, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x15, 0x06f0a97630d0059e # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
binv x6, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x6, 0xe5788ada9ec1c8c1 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
binv x23, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x29, 0x664aa5e0b99362a1 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
binv x15, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x15, 0x29d966150dbab224 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
binv x20, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x31, 0x84c2f2749d9c3213 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
binv x10, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0x0000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
binv x5, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x7, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
binv x9, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x24, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
binv x6, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x21, 0x0000000000000000 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
binv x11, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x20, 0x0000000000000000 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
binv x17, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000000000000 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
binv x17, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000000000000 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
binv x18, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x6, 0x0000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
binv x25, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000000000000 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
binv x6, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000000000000 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
binv x15, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x0000000000000000 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x10, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x27, 0x0000000000000000 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
binv x2, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
binv x10, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x7, 0x0000000000000000 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
binv x23, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x30, 0x0000000000000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
binv x5, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x30, 0x0000000000000000 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
binv x17, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x27, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
binv x26, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x0000000000000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
binv x9, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x26, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
binv x6, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x2, 0x0000000000000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
binv x6, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x8, 0x0000000000000001 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
binv x17, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x31, 0x0000000000000001 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
binv x10, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000000000001 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
binv x30, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x28, 0x0000000000000001 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
binv x8, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000000000001 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
binv x18, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x16, 0x0000000000000001 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
binv x7, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x0000000000000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x3, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x27, 0x0000000000000001 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
binv x24, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x25, 0x0000000000000001 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
binv x19, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x9, 0x0000000000000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
binv x27, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x10, 0x0000000000000001 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
binv x30, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x23, 0x0000000000000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
binv x12, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x12, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
binv x1, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x22, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
binv x5, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x27, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
binv x11, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x30, 0x0000000000000002 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
binv x12, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x30, 0x0000000000000002 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
binv x9, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x6, 0x0000000000000002 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
binv x16, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000000000002 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
binv x25, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x23, 0x0000000000000002 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
binv x3, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x12, 0x0000000000000002 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
binv x19, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000000000002 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
binv x1, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x0000000000000002 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x25, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x29, 0x0000000000000002 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
binv x24, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x25, 0x0000000000000002 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
binv x28, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x29, 0x0000000000000002 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
binv x21, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x6, 0x0000000000000002 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
binv x20, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x13, 0x0000000000000002 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
binv x17, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x6, 0x8000000000000000 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
binv x30, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x6, 0x8000000000000000 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
binv x23, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x23, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
binv x20, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x17, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
binv x8, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x8, 0x8000000000000000 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
binv x31, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x13, 0x8000000000000000 # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
binv x8, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x27, 0x8000000000000000 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
binv x17, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x23, 0x8000000000000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
binv x22, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x14, 0x8000000000000000 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
binv x23, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x30, 0x8000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
binv x14, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x8000000000000000 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x16, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x5, 0x8000000000000000 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
binv x18, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x21, 0x8000000000000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
binv x17, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x5, 0x8000000000000000 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
binv x3, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x6, 0x8000000000000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
binv x10, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x26, 0x8000000000000000 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
binv x19, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x22, 0x8000000000000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
binv x27, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x16, 0x8000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
binv x7, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x14, 0x8000000000000001 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
binv x18, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x7, 0x8000000000000001 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
binv x16, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
binv x24, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x17, 0x8000000000000001 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
binv x20, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x12, 0x8000000000000001 # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
binv x8, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x5, 0x8000000000000001 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
binv x1, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x25, 0x8000000000000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
binv x19, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x14, 0x8000000000000001 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
binv x12, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x8000000000000001 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x18, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x18, 0x8000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
binv x19, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x12, 0x8000000000000001 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
binv x22, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x28, 0x8000000000000001 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
binv x9, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x9, 0x8000000000000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
binv x18, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x22, 0x8000000000000001 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
binv x11, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x15, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
binv x19, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x23, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
binv x27, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x15, 0x7fffffffffffffff # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
binv x3, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x23, 0x7fffffffffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
binv x6, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x13, 0x7fffffffffffffff # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
binv x2, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
binv x1, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x3, 0x7fffffffffffffff # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
binv x18, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x22, 0x7fffffffffffffff # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
binv x18, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x15, 0x7fffffffffffffff # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
binv x25, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x17, 0x7fffffffffffffff # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
binv x26, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x7fffffffffffffff # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x1, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x16, 0x7fffffffffffffff # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
binv x11, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x21, 0x7fffffffffffffff # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
binv x12, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x26, 0x7fffffffffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
binv x1, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x10, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
binv x25, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x11, 0x7fffffffffffffff # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
binv x26, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x18, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
binv x21, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x23, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
binv x11, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x11, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
binv x7, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x8, 0x7ffffffffffffffe # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
binv x24, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x5, 0x7ffffffffffffffe # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
binv x12, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x9, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
binv x28, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
binv x14, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
binv x9, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
binv x18, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x15, 0x7ffffffffffffffe # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
binv x23, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x7ffffffffffffffe # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x1, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x10, 0x7ffffffffffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
binv x30, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x13, 0x7ffffffffffffffe # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
binv x19, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x14, 0x7ffffffffffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
binv x18, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x15, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
binv x26, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x15, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
binv x10, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x28, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
binv x27, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x10, 0xffffffffffffffff # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
binv x17, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x29, 0xffffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
binv x15, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x31, 0xffffffffffffffff # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
binv x25, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x16, 0xffffffffffffffff # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
binv x25, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x29, 0xffffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
binv x18, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x21, 0xffffffffffffffff # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
binv x31, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x16, 0xffffffffffffffff # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
binv x7, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x7, 0xffffffffffffffff # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
binv x27, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x15, 0xffffffffffffffff # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
binv x28, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0xffffffffffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x30, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x23, 0xffffffffffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
binv x6, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x7, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
binv x12, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x22, 0xffffffffffffffff # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
binv x13, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x11, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
binv x7, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x5, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
binv x17, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x28, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
binv x8, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x30, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
binv x27, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x14, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
binv x1, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x24, 0xfffffffffffffffe # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
binv x17, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x6, 0xfffffffffffffffe # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
binv x30, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x5, 0xfffffffffffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
binv x11, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0xfffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
binv x15, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
binv x17, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x20, 0xfffffffffffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
binv x3, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x18, 0xfffffffffffffffe # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
binv x19, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xfffffffffffffffe # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x27, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x9, 0xfffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
binv x27, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x26, 0xfffffffffffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
binv x3, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
binv x13, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x11, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
binv x13, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x6, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
binv x22, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
binv x1, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
binv x23, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
binv x14, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
binv x2, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
binv x8, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
binv x27, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
binv x19, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
binv x17, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
binv x31, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
binv x25, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x23, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
binv x22, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
binv x14, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
binv x1, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
binv x24, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
binv x3, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
binv x23, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
binv x18, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
binv x8, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
binv x21, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
binv x23, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
binv x10, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
binv x11, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
binv x19, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
binv x13, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
binv x17, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x14, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
binv x9, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
binv x16, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
binv x5, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
binv x8, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
binv x23, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x21, 0x5555555555555555 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
binv x17, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x30, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
binv x12, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x25, 0x5555555555555555 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
binv x15, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x31, 0x5555555555555555 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
binv x12, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x28, 0x5555555555555555 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
binv x18, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x12, 0x5555555555555555 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
binv x17, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x2, 0x5555555555555555 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
binv x29, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x5, 0x5555555555555555 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
binv x17, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x18, 0x5555555555555555 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
binv x10, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x13, 0x5555555555555555 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
binv x11, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x5555555555555555 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x30, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x6, 0x5555555555555555 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
binv x9, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x1, 0x5555555555555555 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
binv x25, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x1, 0x5555555555555555 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
binv x14, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x23, 0x5555555555555555 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
binv x1, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x19, 0x5555555555555555 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
binv x21, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x9, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
binv x15, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x18, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
binv x25, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x8, 0x00000000ffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
binv x6, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x30, 0x00000000ffffffff # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
binv x13, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x9, 0x00000000ffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
binv x18, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x11, 0x00000000ffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
binv x15, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
binv x29, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
binv x24, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
binv x7, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x20, 0x00000000ffffffff # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
binv x15, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x00000000ffffffff # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x27, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x18, 0x00000000ffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
binv x9, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
binv x15, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x11, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
binv x19, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x10, 0x00000000ffffffff # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
binv x17, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x31, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
binv x11, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x19, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
binv x11, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x1, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
binv x19, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x21, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
binv x19, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x24, 0x00000000fffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
binv x28, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x24, 0x00000000fffffffe # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
binv x19, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x28, 0x00000000fffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
binv x19, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x13, 0x00000000fffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
binv x18, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
binv x1, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x15, 0x00000000fffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
binv x3, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x1, 0x00000000fffffffe # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
binv x13, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x00000000fffffffe # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x14, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x20, 0x00000000fffffffe # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
binv x28, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x2, 0x00000000fffffffe # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
binv x6, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
binv x31, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x20, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
binv x9, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x17, 0x00000000fffffffe # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
binv x21, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x18, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
binv x6, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x20, 0x0000000100000000 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
binv x8, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x8, 0x0000000100000000 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
binv x10, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x22, 0x0000000100000000 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
binv x12, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x28, 0x0000000100000000 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
binv x18, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x5, 0x0000000100000000 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
binv x20, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x26, 0x0000000100000000 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
binv x30, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x20, 0x0000000100000000 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
binv x5, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000100000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
binv x29, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000100000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
binv x26, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000100000000 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x10, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x22, 0x0000000100000000 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
binv x14, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x23, 0x0000000100000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
binv x28, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x29, 0x0000000100000000 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
binv x26, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x15, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
binv x12, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x30, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
binv x29, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x25, 0x0000000100000001 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
binv x18, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x6, 0x0000000100000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
binv x13, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x11, 0x0000000100000001 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
binv x29, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x1, 0x0000000100000001 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
binv x20, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x19, 0x0000000100000001 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
binv x9, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000100000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
binv x13, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000100000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
binv x26, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x21, 0x0000000100000001 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
binv x20, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x20, 0x0000000100000001 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
binv x1, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x20, 0x0000000100000001 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
binv x22, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000100000001 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
binv x2, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x15, 0x0000000100000001 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
binv x3, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x12, 0x0000000100000001 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
binv x9, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x5, 0x0000000100000001 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
binv x27, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x25, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
binv x9, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x13, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
binv x5, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xbe3c4b4bf0322676 # initialize rs1
li x0, 0xba4caad5d5df0945 # initialize rs2
binv x7, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x4bdc8328b2217402 # initialize rs1
li x1, 0x8c491bf25175e426 # initialize rs2
binv x22, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x00987084596eebab # initialize rs1
li x2, 0xc7aa7c5920fab27d # initialize rs2
binv x12, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x907e793afef64abf # initialize rs1
li x3, 0xba03f3cac17d1a14 # initialize rs2
binv x28, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x522fea1bba6bd420 # initialize rs1
li x4, 0xc458caff400710ef # initialize rs2
binv x12, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb42f09c1cad774cf # initialize rs1
li x5, 0xe4c1e9cf6554e658 # initialize rs2
binv x1, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2218151e663d240f # initialize rs1
li x6, 0x9633d1581a32990b # initialize rs2
binv x14, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x34bb43004e40a593 # initialize rs1
li x7, 0x34c7cab1f018fe28 # initialize rs2
binv x9, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x670b755b5ce11d19 # initialize rs1
li x8, 0x802be6931d62b12c # initialize rs2
binv x27, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xe30298519be13de4 # initialize rs1
li x9, 0xfc7866bb5319cc7d # initialize rs2
binv x20, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x69fd41999845ba80 # initialize rs1
li x10, 0x27595df248d6b1c9 # initialize rs2
binv x18, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x174bc0fea46c0997 # initialize rs1
li x11, 0xe2efbb66fe99530b # initialize rs2
binv x3, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xab719cb1e0f1fdcf # initialize rs1
li x12, 0x7442895f3cb0b52e # initialize rs2
binv x18, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xe4381bf7c415c5a8 # initialize rs1
li x13, 0x6616868d10247b25 # initialize rs2
binv x12, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xb3faab07b0b0307c # initialize rs1
li x14, 0x55f37591d5adb4a3 # initialize rs2
binv x6, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x1f0a42ceb1f52fcd # initialize rs1
li x15, 0x0f5e3e6362482cb8 # initialize rs2
binv x21, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x88b3ad8564f25418 # initialize rs1
li x16, 0xdcabd3c99ed712d0 # initialize rs2
binv x26, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x16d2482b8c54ad06 # initialize rs1
li x17, 0x987f5b2c2d84c80d # initialize rs2
binv x30, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x1b7e578915a9bc0b # initialize rs1
li x18, 0x8627721b202463eb # initialize rs2
binv x1, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xbce25e73380d1b77 # initialize rs1
li x19, 0x1f08e18fa87984a5 # initialize rs2
binv x2, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xe05b979c52576b39 # initialize rs1
li x20, 0x7f23ea215d041d94 # initialize rs2
binv x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x69ee10d63f0a9cc5 # initialize rs1
li x21, 0x5863fe636d7694e5 # initialize rs2
binv x15, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xb0c2fd47524ac7a6 # initialize rs1
li x22, 0xd796ce6c97c58ab6 # initialize rs2
binv x16, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x8338cd0e1a76f0da # initialize rs1
li x23, 0x2613e3ad2ef2576c # initialize rs2
binv x12, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x7a0d1e3a76f98277 # initialize rs1
li x24, 0x3998cec9448551bc # initialize rs2
binv x27, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xb523eb35c12b3f5a # initialize rs1
li x25, 0x79fed5f38b0f6f19 # initialize rs2
binv x2, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x5b8fb1444ba3fd9b # initialize rs1
li x26, 0xc0c5499334a6f066 # initialize rs2
binv x21, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x0aeb2b931c26a898 # initialize rs1
li x27, 0xf60099ab408637c3 # initialize rs2
binv x26, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x3df63d809b32d29a # initialize rs1
li x28, 0xf7508405756066a5 # initialize rs2
binv x21, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xb31dcfdb00f80757 # initialize rs1
li x29, 0xcdd1e4f2e8343950 # initialize rs2
binv x15, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xa1607dc1019d847c # initialize rs1
li x30, 0x1fc1c9caf8ad86e3 # initialize rs2
binv x22, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x88cd37786a2f66e9 # initialize rs1
li x31, 0x90878629e010e2d2 # initialize rs2
binv x3, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x578a38e61d44a729 # initialize rs1
li x2, 0xf3ba4988cacff720 # initialize rs2
binv x0, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x095c7abda9ccc632 # initialize rs1
li x24, 0x348daf74faf2318c # initialize rs2
binv x1, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xbfd8d608ab2113f3 # initialize rs1
li x30, 0x983f844d1c47053e # initialize rs2
binv x2, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x590a4acbf8cf6f10 # initialize rs1
li x6, 0x331da3f55d0b4da3 # initialize rs2
binv x3, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xde688423d25e7398 # initialize rs1
li x20, 0x24864a79d33a864c # initialize rs2
binv x4, x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x242d6692e11325f6 # initialize rs1
li x14, 0x79f71877f58f43a7 # initialize rs2
binv x5, x5, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa553e94a60216d37 # initialize rs1
li x29, 0xf9fdd45e4363ea2e # initialize rs2
binv x6, x6, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc9be5dead24cb856 # initialize rs1
li x13, 0x57da2c020986f491 # initialize rs2
binv x7, x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x91b1eb8685d991c0 # initialize rs1
li x28, 0x9476ce98a9c8699a # initialize rs2
binv x8, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa3d7c979d3202f9a # initialize rs1
li x26, 0x6f8b98875f9814fc # initialize rs2
binv x9, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x683f57946b187916 # initialize rs1
li x8, 0x895ce1cdccde8419 # initialize rs2
binv x10, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2d7783f9032ce566 # initialize rs1
li x9, 0x66c338be5ea444a0 # initialize rs2
binv x11, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf942fb9600be9a97 # initialize rs1
li x8, 0x041067f5b872a23f # initialize rs2
binv x12, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xc022bf4a655274f8 # initialize rs1
li x20, 0x06bcad34e114f0b8 # initialize rs2
binv x13, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x4aff1a8cff3ddf7e # initialize rs1
li x1, 0x38d523713b19d7e1 # initialize rs2
binv x14, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7a65d5ef0c09f195 # initialize rs1
li x27, 0x99ad6bc8f851d52f # initialize rs2
binv x15, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x3966abd77808045f # initialize rs1
li x26, 0x2cb9fc0900c4538e # initialize rs2
binv x16, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x8e8630bea482fae0 # initialize rs1
li x8, 0x1752bff0f8922bab # initialize rs2
binv x17, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x7713885f15afcc03 # initialize rs1
li x6, 0x5aa9e627d85ee23b # initialize rs2
binv x18, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xfcae48442e50e809 # initialize rs1
li x6, 0x41ab3c412c3a405d # initialize rs2
binv x19, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x1ad6792247cdf64b # initialize rs1
li x28, 0xcf0ad00fe8d3ca0a # initialize rs2
binv x20, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xe12ce76886dc2398 # initialize rs1
li x29, 0x3180eb15a6d3b40a # initialize rs2
binv x21, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x0c0807aac49e90c7 # initialize rs1
li x19, 0xb7d86ac5db7fff72 # initialize rs2
binv x22, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xf064d6de4edd4b20 # initialize rs1
li x14, 0x6977295ec34ff27e # initialize rs2
binv x23, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xbb14b8bc56364dd2 # initialize rs1
li x1, 0x25910ec957e8d8e8 # initialize rs2
binv x24, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x90b1661b53da18cc # initialize rs1
li x14, 0x5f7b6b530652cb59 # initialize rs2
binv x25, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x8eb7f8d32b0318a4 # initialize rs1
li x22, 0x77f97ee88ce91ce7 # initialize rs2
binv x26, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb3b1f0e5ebf47c44 # initialize rs1
li x1, 0x856f19e13bd2165a # initialize rs2
binv x27, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xad92ed30d5726034 # initialize rs1
li x30, 0x5681ae64f0f644e7 # initialize rs2
binv x28, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x3d52e9b47d80096e # initialize rs1
li x5, 0xcf5f2d7d68d08b9e # initialize rs2
binv x29, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xf465f8e49e5fa8a1 # initialize rs1
li x17, 0x0b3d1ad011b53d5e # initialize rs2
binv x30, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xc12067f847ba3b6e # initialize rs1
li x20, 0x99108092325fff67 # initialize rs2
binv x31, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x26, 0x831244738259eea6 # initialize rs1
li x0, 0x0031ba1c8a843085 # initialize rs2
binv x0, x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x6, 0x23db8eb93dc1e218 # initialize rs1
li x1, 0x0b2fb9520b63c6e6 # initialize rs2
binv x1, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x11, 0xe1a0a002c02c9734 # initialize rs1
li x2, 0x157cd804274db298 # initialize rs2
binv x2, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x21, 0x05eb8e48285051ce # initialize rs1
li x3, 0x8acbc5a65fbdb025 # initialize rs2
binv x3, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0xc6db68ff8e17640b # initialize rs1
li x4, 0x2f580f200e8fdebe # initialize rs2
binv x4, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0x19811e225d4aad06 # initialize rs1
li x5, 0x218904079a81ae54 # initialize rs2
binv x5, x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0xfe18adb845374559 # initialize rs1
li x6, 0xe85ccea810b7f5df # initialize rs2
binv x6, x21, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x116600bbfe7f9d63 # initialize rs1
li x7, 0x2d71e055ad66440c # initialize rs2
binv x7, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x2, 0x7869f80bc790df42 # initialize rs1
li x8, 0x2fa9abd9f7bbcc4f # initialize rs2
binv x8, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x23, 0x0293dffb4cf512a9 # initialize rs1
li x9, 0x80a3319c9a6ca86b # initialize rs2
binv x9, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x27, 0x4908b4266df65cad # initialize rs1
li x10, 0x60c6a19b0f25606e # initialize rs2
binv x10, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x14, 0x96aeae75374c99a5 # initialize rs1
li x11, 0xf46cf95ce8c54aa7 # initialize rs2
binv x11, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x6, 0xd3b26b68eb9bfbaf # initialize rs1
li x12, 0x52e8937cb21159fa # initialize rs2
binv x12, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x26, 0x474b07562bcda91e # initialize rs1
li x13, 0x08432f5ef729432c # initialize rs2
binv x13, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x1dacc0fded0f1087 # initialize rs1
li x14, 0x4b0ae3279e77f821 # initialize rs2
binv x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x12, 0x6b1082276880cc38 # initialize rs1
li x15, 0xfe355f8d4e48dbe2 # initialize rs2
binv x15, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x13, 0x44f7c7dffc830401 # initialize rs1
li x16, 0xfd3e629d500ba121 # initialize rs2
binv x16, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x10, 0xa2756e30d324cd4b # initialize rs1
li x17, 0x46be006c709ad3fd # initialize rs2
binv x17, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x13, 0xc1feb2a32bd6d1a4 # initialize rs1
li x18, 0x64b9633f2d1cfee8 # initialize rs2
binv x18, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x11, 0x041a41a5f035c4b4 # initialize rs1
li x19, 0xc3b1f5481f917d38 # initialize rs2
binv x19, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x24, 0xfeda318faef25255 # initialize rs1
li x20, 0x037a1d5c2053ee6a # initialize rs2
binv x20, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x22, 0xb4cba436eabca916 # initialize rs1
li x21, 0x4ac7608769f0ca12 # initialize rs2
binv x21, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x24, 0x110965174ae28960 # initialize rs1
li x22, 0x9af848336f338b1d # initialize rs2
binv x22, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x29, 0xc0914fe805f87743 # initialize rs1
li x23, 0x7e1335a8abc67866 # initialize rs2
binv x23, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x16, 0xc8393fe1d1486eb3 # initialize rs1
li x24, 0x399e9ac22c4593e1 # initialize rs2
binv x24, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x2, 0x6a3f24a1bbb14598 # initialize rs1
li x25, 0x0db2ee1879a82204 # initialize rs2
binv x25, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x20, 0x6cf4922f5a8beb70 # initialize rs1
li x26, 0x75cba39d4592f536 # initialize rs2
binv x26, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x6, 0x4d9c48e801bc3333 # initialize rs1
li x27, 0xb307ffa9f8a0cfd7 # initialize rs2
binv x27, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x24, 0x94fd1e809dd49083 # initialize rs1
li x28, 0x01ede2164b4b48e6 # initialize rs2
binv x28, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x19, 0x31ace3669ee2c643 # initialize rs1
li x29, 0x3f452289cbf4595c # initialize rs2
binv x29, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x5, 0xe63fd8784e523b6a # initialize rs1
li x30, 0x85fbced5f2aee17e # initialize rs2
binv x30, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x14, 0x63a080591e224202 # initialize rs1
li x31, 0xfb80028b7d10974b # initialize rs2
binv x31, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x1b675ed96da7d941 # initialize rs1
li x0, 0x0b9f29e4b380ade3 # initialize rs2
binv x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xad80d4276f7bd026 # initialize rs1
li x1, 0xe08d9e09658cc53b # initialize rs2
binv x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x71520507d7d75e4c # initialize rs1
li x2, 0x31ef4607c563dec4 # initialize rs2
binv x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x326a71f8147a4c29 # initialize rs1
li x3, 0x234ea3bb4edde31a # initialize rs2
binv x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xffe205c873a088bf # initialize rs1
li x4, 0x30975453ee0be024 # initialize rs2
binv x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6de391e7da68d3cd # initialize rs1
li x5, 0x89f39cf8ba1dfea3 # initialize rs2
binv x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x48fcbfa1a1decc49 # initialize rs1
li x6, 0x11e764d09e6e1032 # initialize rs2
binv x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xe985640e2b72d0ae # initialize rs1
li x7, 0x572beab1a6e99a0e # initialize rs2
binv x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xdf8baba58aa23819 # initialize rs1
li x8, 0xbfaea11fa560817a # initialize rs2
binv x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xa0aa04b15bf5b127 # initialize rs1
li x9, 0x85b2bae5ac439939 # initialize rs2
binv x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x9bdb94700799c66b # initialize rs1
li x10, 0x153cbd4dd5d5bfa1 # initialize rs2
binv x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x5331afe426e05a3c # initialize rs1
li x11, 0xfc9eb88765af547e # initialize rs2
binv x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x4aae884e5480c3fc # initialize rs1
li x12, 0x19ab087008740bf4 # initialize rs2
binv x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x42b06e7e6ef1ebe8 # initialize rs1
li x13, 0x083552c0b76002d5 # initialize rs2
binv x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xe33f78ab36042483 # initialize rs1
li x14, 0xa93daa1544179a48 # initialize rs2
binv x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x9a146a7f3febc041 # initialize rs1
li x15, 0x57911b3bff18fc10 # initialize rs2
binv x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x95e5d0a5eaa829d0 # initialize rs1
li x16, 0xebf0cf457ffbf6cb # initialize rs2
binv x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xc465296f25bf04fc # initialize rs1
li x17, 0xef043b619253a5da # initialize rs2
binv x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x15b221bd07d07b89 # initialize rs1
li x18, 0x7134b13bef180384 # initialize rs2
binv x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x8103e52c5f135986 # initialize rs1
li x19, 0x145e9aff3fbf23a5 # initialize rs2
binv x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xfae67ab995838657 # initialize rs1
li x20, 0x1933ed99853499e9 # initialize rs2
binv x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xeb0e340bc31bab56 # initialize rs1
li x21, 0x4861d65618bf143f # initialize rs2
binv x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x8c8ea611b762f188 # initialize rs1
li x22, 0xafeb5bf81bd74b85 # initialize rs2
binv x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xfa145fbcae1eb37b # initialize rs1
li x23, 0xc3cda369142e1513 # initialize rs2
binv x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x07b92e5f7aac9886 # initialize rs1
li x24, 0x4ab40b5fc28f7690 # initialize rs2
binv x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xaeefb5d5f24554f7 # initialize rs1
li x25, 0xc0b156fbc16f9506 # initialize rs2
binv x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xfaf86f24d30283d3 # initialize rs1
li x26, 0x1a25bf38bb5806ad # initialize rs2
binv x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x2b12b96731c32636 # initialize rs1
li x27, 0xc6ba27d31028f500 # initialize rs2
binv x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x21b163650149076d # initialize rs1
li x28, 0x5cd8c26bb80f1b78 # initialize rs2
binv x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xb1cc6c77e1928811 # initialize rs1
li x29, 0xc1788443ec0a77c6 # initialize rs2
binv x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xbb358e1101223f7f # initialize rs1
li x30, 0xfde501907f11325f # initialize rs2
binv x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x42034f3a442948a2 # initialize rs1
li x31, 0xfc0212d5cf48fbad # initialize rs2
binv x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x2, x22 # perform first operation
binv x29, x12, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x30, x8 # perform first operation
binv x16, x5, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x13, x28 # perform first operation
binv x8, x15, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x2, x10 # perform first operation
binv x10, x8, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x7, x14 # perform first operation
binv x27, x12, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x9, x26 # perform first operation
binv x23, x18, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x13, x2 # perform first operation
binv x20, x12, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x1, x8 # perform first operation
binv x26, x9, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x22, x11 # perform first operation
binv x28, x13, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x9, x24 # perform first operation
binv x9, x27, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x8, x18 # perform first operation
binv x18, x10, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x10, x16 # perform first operation
binv x23, x29, x24 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-bclri.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xc9e1a71fccc49699 # initialize rs1
bclri x10, x0, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x351d35449aac39ce # initialize rs1
bclri x29, x1, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xe72cc0f6cae11cdc # initialize rs1
bclri x29, x2, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x66baa7abe5ca3197 # initialize rs1
bclri x13, x3, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1ea68101dcac6c9a # initialize rs1
bclri x29, x4, 31 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x48e4cd155ecb0fdb # initialize rs1
bclri x19, x5, 48 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x647c0c556db739c8 # initialize rs1
bclri x2, x6, 50 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xafd7131b0eb5b3cb # initialize rs1
bclri x4, x7, 58 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x05ca230e842e7653 # initialize rs1
bclri x21, x8, 62 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xd36d7614ebc56fa4 # initialize rs1
bclri x17, x9, 58 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x999ed7220bf898ef # initialize rs1
bclri x6, x10, 50 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x3a3a8200cacc0927 # initialize rs1
bclri x21, x11, 61 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x08f1434104e5e234 # initialize rs1
bclri x31, x12, 34 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xd18446278e66dd02 # initialize rs1
bclri x4, x13, 10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xe8ae7d51a865a498 # initialize rs1
bclri x13, x14, 18 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xc2cafe62ec0192fb # initialize rs1
bclri x8, x15, 44 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xdec821274b34fe8c # initialize rs1
bclri x14, x16, 56 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xa02495ffad4a3d39 # initialize rs1
bclri x25, x17, 42 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x2437696c2fae122a # initialize rs1
bclri x15, x18, 9 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x12cec00d280ece47 # initialize rs1
bclri x2, x19, 48 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x7f094586f99ab516 # initialize rs1
bclri x3, x20, 24 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xe32199b7e44bb646 # initialize rs1
bclri x10, x21, 48 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xc4b43a87ecd902bc # initialize rs1
bclri x18, x22, 26 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xedd9796806b1a03c # initialize rs1
bclri x26, x23, 50 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x6df711e25f40faf0 # initialize rs1
bclri x8, x24, 63 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xebc8e0b6b627339c # initialize rs1
bclri x2, x25, 27 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x376d80b2f8f247ee # initialize rs1
bclri x8, x26, 37 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x30444c193f564dfb # initialize rs1
bclri x11, x27, 23 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x0cc12778ded7a80f # initialize rs1
bclri x18, x28, 36 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x8b4a434e747d8e1a # initialize rs1
bclri x30, x29, 13 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xd4d6ef5012261c9a # initialize rs1
bclri x11, x30, 23 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x9e4406643646e140 # initialize rs1
bclri x28, x31, 53 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 248)

# Testcase cp_rd (Test destination rd = x0)
li x3, 0x645be5226d3f2ca3 # initialize rs1
bclri x0, x3, 19 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x23, 0x3e21b7367073578e # initialize rs1
bclri x1, x23, 36 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x4, 0x033769dfa0c0a1b1 # initialize rs1
bclri x2, x4, 50 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x30, 0xd24bc848dedf5b34 # initialize rs1
bclri x3, x30, 59 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
li x3, 0x9370a6f51cc5ad6c # initialize rs1
bclri x4, x3, 59 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0xf0ea35d3d75b11c8 # initialize rs1
bclri x5, x6, 47 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
li x27, 0x4ede56b467ee8ca0 # initialize rs1
bclri x6, x27, 27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0x5b29ef4553739e4e # initialize rs1
bclri x7, x5, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x22, 0xbd9b8ae8cadb521c # initialize rs1
bclri x8, x22, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x23, 0x4a9ed89b9eb4c160 # initialize rs1
bclri x9, x23, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x21, 0xb48108d6841add6c # initialize rs1
bclri x10, x21, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x13, 0x0a9de78d91bd648d # initialize rs1
bclri x11, x13, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x13, 0x201b350c3df7fe81 # initialize rs1
bclri x12, x13, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x28, 0xe883ac2059d7a140 # initialize rs1
bclri x13, x28, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x25, 0x1c1fcd122917fe22 # initialize rs1
bclri x14, x25, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x17, 0x542365ce7617c26f # initialize rs1
bclri x15, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x1, 0xa5914393876548c8 # initialize rs1
bclri x16, x1, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x7, 0x018850e6a6ed4075 # initialize rs1
bclri x17, x7, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x25, 0x0404835373c3bd4f # initialize rs1
bclri x18, x25, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x15, 0x9b19c5ba238d75cc # initialize rs1
bclri x19, x15, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0xa8e7fafa49a56c7c # initialize rs1
bclri x20, x2, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x7, 0xf85d48658a8a4a6e # initialize rs1
bclri x21, x7, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x25, 0x7545215474f66b68 # initialize rs1
bclri x22, x25, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x16, 0x94f625fa6f1049a9 # initialize rs1
bclri x23, x16, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x3, 0x04970550ef0a590f # initialize rs1
bclri x24, x3, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x13, 0x2b31b8d9e51b4e6b # initialize rs1
bclri x25, x13, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x7, 0xe47f7fa44ccb4270 # initialize rs1
bclri x26, x7, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x3, 0x806e32d34213515f # initialize rs1
bclri x27, x3, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x6, 0xb83072a96cfb4929 # initialize rs1
bclri x28, x6, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x16, 0x7a88e7f5ef850413 # initialize rs1
bclri x29, x16, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x25, 0x161410cb6a14eb53 # initialize rs1
bclri x30, x25, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x23, 0x3d7c2970cafc2143 # initialize rs1
bclri x31, x23, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x3, 0x0000000000000000 # initialize rs1
bclri x12, x3, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x29, 0x0000000000000001 # initialize rs1
bclri x7, x29, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x9, 0x0000000000000002 # initialize rs1
bclri x11, x9, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x6, 0x8000000000000000 # initialize rs1
bclri x30, x6, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x26, 0x8000000000000001 # initialize rs1
bclri x19, x26, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
bclri x25, x27, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x6, 0x7ffffffffffffffe # initialize rs1
bclri x10, x6, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x29, 0xffffffffffffffff # initialize rs1
bclri x17, x29, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
bclri x11, x26, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x25, 0x5bbc887763ae86f2 # initialize rs1
bclri x31, x25, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
bclri x26, x2, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x31, 0x5555555555555555 # initialize rs1
bclri x11, x31, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x31, 0x00000000ffffffff # initialize rs1
bclri x6, x31, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0x00000000fffffffe # initialize rs1
bclri x25, x2, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x10, 0x0000000100000000 # initialize rs1
bclri x23, x10, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x12, 0x0000000100000001 # initialize rs1
bclri x6, x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x808d035938c68c77 # initialize rs1
bclri x0, x0, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x4a65f1e654717a82 # initialize rs1
bclri x1, x1, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x5bf166dec3880497 # initialize rs1
bclri x2, x2, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x7fce77c2fdcc92d4 # initialize rs1
bclri x3, x3, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xda75b80c565daf6a # initialize rs1
bclri x4, x4, 60 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3f5af3e482c60890 # initialize rs1
bclri x5, x5, 3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8bd1a675fcb4d932 # initialize rs1
bclri x6, x6, 26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1a105af689fa8e9d # initialize rs1
bclri x7, x7, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x1bde14454a98b0c7 # initialize rs1
bclri x8, x8, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf0d8f60d78a27f52 # initialize rs1
bclri x9, x9, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xad2d55f55ac5d2af # initialize rs1
bclri x10, x10, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa3536393ccff1279 # initialize rs1
bclri x11, x11, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x50993d3481777b54 # initialize rs1
bclri x12, x12, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xb1cd327d15c52a0d # initialize rs1
bclri x13, x13, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x328edb89fc615699 # initialize rs1
bclri x14, x14, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd5de9c29ceb4bb28 # initialize rs1
bclri x15, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x7e7d0cce90515eab # initialize rs1
bclri x16, x16, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x540e5f0204000ec4 # initialize rs1
bclri x17, x17, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xcdcfd859eb2582d7 # initialize rs1
bclri x18, x18, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa1f94b8b8537aca6 # initialize rs1
bclri x19, x19, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x6c0cce243b80cf88 # initialize rs1
bclri x20, x20, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x9eda6683f8b45979 # initialize rs1
bclri x21, x21, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6d8959111fb852ad # initialize rs1
bclri x22, x22, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd053da975c891a33 # initialize rs1
bclri x23, x23, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x8b806f2d17f525d9 # initialize rs1
bclri x24, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x079a6c25a7d4c9f8 # initialize rs1
bclri x25, x25, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x3ce5dd44b12ccf8c # initialize rs1
bclri x26, x26, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x55c44cf201acb81f # initialize rs1
bclri x27, x27, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x96101e1940c77a3a # initialize rs1
bclri x28, x28, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xe75946ea4995c020 # initialize rs1
bclri x29, x29, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x6734b82198bb9412 # initialize rs1
bclri x30, x30, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x765a1545001ffbe3 # initialize rs1
bclri x31, x31, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm (Test bit = 0)
li x11, 0x9571c2ff032ea524 # initialize rs1
bclri x19, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 896)

# Testcase cp_uimm (Test bit = 1)
li x7, 0x93a1f1b613012cbf # initialize rs1
bclri x5, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 904)

# Testcase cp_uimm (Test bit = 2)
li x13, 0xa05d42a36f02f0f6 # initialize rs1
bclri x11, x13, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 912)

# Testcase cp_uimm (Test bit = 3)
li x26, 0x8edccf94dd478d61 # initialize rs1
bclri x5, x26, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 920)

# Testcase cp_uimm (Test bit = 4)
li x17, 0x2d5a78b07ace81ab # initialize rs1
bclri x1, x17, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 928)

# Testcase cp_uimm (Test bit = 5)
li x23, 0xdd6450fccede54b7 # initialize rs1
bclri x31, x23, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 936)

# Testcase cp_uimm (Test bit = 6)
li x28, 0xa12156a7243903f1 # initialize rs1
bclri x29, x28, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 944)

# Testcase cp_uimm (Test bit = 7)
li x1, 0x603e29090bdabae2 # initialize rs1
bclri x10, x1, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 952)

# Testcase cp_uimm (Test bit = 8)
li x2, 0x04dafce467aaae4a # initialize rs1
bclri x13, x2, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 960)

# Testcase cp_uimm (Test bit = 9)
li x29, 0x4eb5d4c1e44f3f9b # initialize rs1
bclri x17, x29, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 968)

# Testcase cp_uimm (Test bit = 10)
li x8, 0xf220a7d0d002ddc7 # initialize rs1
bclri x10, x8, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 976)

# Testcase cp_uimm (Test bit = 11)
li x6, 0x7eb2a1685754dbdb # initialize rs1
bclri x30, x6, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 984)

# Testcase cp_uimm (Test bit = 12)
li x21, 0x7241944e9acc28da # initialize rs1
bclri x15, x21, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 992)

# Testcase cp_uimm (Test bit = 13)
li x14, 0x48e6f73ecaca9eb1 # initialize rs1
bclri x16, x14, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1000)

# Testcase cp_uimm (Test bit = 14)
li x21, 0xd4bb5d6c48c1ad62 # initialize rs1
bclri x27, x21, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1008)

# Testcase cp_uimm (Test bit = 15)
li x18, 0x597cb55f79dbe7fc # initialize rs1
bclri x26, x18, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1016)

# Testcase cp_uimm (Test bit = 16)
li x3, 0x18f1681dde58ae40 # initialize rs1
bclri x11, x3, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1024)

# Testcase cp_uimm (Test bit = 17)
li x14, 0x39b5a6bc46efb9c0 # initialize rs1
bclri x25, x14, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1032)

# Testcase cp_uimm (Test bit = 18)
li x17, 0x5e3ac83e00ffa296 # initialize rs1
bclri x22, x17, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1040)

# Testcase cp_uimm (Test bit = 19)
li x14, 0x9632f45e407a07a8 # initialize rs1
bclri x12, x14, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)

# Testcase cp_uimm (Test bit = 20)
li x20, 0x2302b6a7dd142fd9 # initialize rs1
bclri x29, x20, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1056)

# Testcase cp_uimm (Test bit = 21)
li x28, 0x7a2b676f3d2b2bf8 # initialize rs1
bclri x8, x28, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cp_uimm (Test bit = 22)
li x23, 0x4c7527f8ac171d2a # initialize rs1
bclri x28, x23, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1072)

# Testcase cp_uimm (Test bit = 23)
li x25, 0xc87d1b16956b6a21 # initialize rs1
bclri x29, x25, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1080)

# Testcase cp_uimm (Test bit = 24)
li x22, 0xb1b9499906e59eda # initialize rs1
bclri x24, x22, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1088)

# Testcase cp_uimm (Test bit = 25)
li x28, 0xbb59e43927a01c2a # initialize rs1
bclri x22, x28, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1096)

# Testcase cp_uimm (Test bit = 26)
li x16, 0x5c34b5fbbdecd284 # initialize rs1
bclri x21, x16, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1104)

# Testcase cp_uimm (Test bit = 27)
li x8, 0x53c98a77280bd0ec # initialize rs1
bclri x12, x8, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1112)

# Testcase cp_uimm (Test bit = 28)
li x25, 0x4e2a41ac6c37b9ad # initialize rs1
bclri x1, x25, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cp_uimm (Test bit = 29)
li x15, 0x9f59c144f66db1eb # initialize rs1
bclri x28, x15, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1128)

# Testcase cp_uimm (Test bit = 30)
li x7, 0x36fd682a5089815a # initialize rs1
bclri x28, x7, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1136)

# Testcase cp_uimm (Test bit = 31)
li x15, 0x53718957902d44c7 # initialize rs1
bclri x2, x15, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

# Testcase cp_uimm (Test bit = 32)
li x20, 0x0afa0d93577b3769 # initialize rs1
bclri x24, x20, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1152)

# Testcase cp_uimm (Test bit = 33)
li x31, 0xd9e9817ef71793c5 # initialize rs1
bclri x1, x31, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1160)

# Testcase cp_uimm (Test bit = 34)
li x12, 0x064c032a1e454075 # initialize rs1
bclri x23, x12, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1168)

# Testcase cp_uimm (Test bit = 35)
li x14, 0xd13816211d711a62 # initialize rs1
bclri x1, x14, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1176)

# Testcase cp_uimm (Test bit = 36)
li x24, 0xd6a5cdec337b21c5 # initialize rs1
bclri x25, x24, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1184)

# Testcase cp_uimm (Test bit = 37)
li x10, 0x8100f691ecdbce36 # initialize rs1
bclri x18, x10, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1192)

# Testcase cp_uimm (Test bit = 38)
li x30, 0xfbf799c8bad99c05 # initialize rs1
bclri x19, x30, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1200)

# Testcase cp_uimm (Test bit = 39)
li x1, 0x5e4dad8de02643ca # initialize rs1
bclri x11, x1, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1208)

# Testcase cp_uimm (Test bit = 40)
li x13, 0x91186372ae2001e2 # initialize rs1
bclri x7, x13, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1216)

# Testcase cp_uimm (Test bit = 41)
li x1, 0x687d0945d8e01b01 # initialize rs1
bclri x13, x1, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1224)

# Testcase cp_uimm (Test bit = 42)
li x30, 0xd3f1b0bc66d2ccc9 # initialize rs1
bclri x25, x30, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1232)

# Testcase cp_uimm (Test bit = 43)
li x1, 0x6d6f4bbb411b4a7a # initialize rs1
bclri x17, x1, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1240)

# Testcase cp_uimm (Test bit = 44)
li x26, 0x46be39f0cc034021 # initialize rs1
bclri x8, x26, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1248)

# Testcase cp_uimm (Test bit = 45)
li x19, 0xbe5700f061c54ab1 # initialize rs1
bclri x7, x19, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1256)

# Testcase cp_uimm (Test bit = 46)
li x31, 0x1d427c64487f21c6 # initialize rs1
bclri x19, x31, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1264)

# Testcase cp_uimm (Test bit = 47)
li x8, 0x71b98e6930eb2ee8 # initialize rs1
bclri x30, x8, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1272)

# Testcase cp_uimm (Test bit = 48)
li x28, 0xf7cf1ae9f61a3306 # initialize rs1
bclri x10, x28, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1280)

# Testcase cp_uimm (Test bit = 49)
li x6, 0x5e22dffee7b40247 # initialize rs1
bclri x9, x6, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1288)

# Testcase cp_uimm (Test bit = 50)
li x25, 0x690f5a6bac833c3d # initialize rs1
bclri x12, x25, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1296)

# Testcase cp_uimm (Test bit = 51)
li x6, 0x4f32d1b20772161f # initialize rs1
bclri x7, x6, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1304)

# Testcase cp_uimm (Test bit = 52)
li x7, 0x231240aec012b1ec # initialize rs1
bclri x19, x7, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1312)

# Testcase cp_uimm (Test bit = 53)
li x11, 0x72d9626f00123a41 # initialize rs1
bclri x2, x11, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1320)

# Testcase cp_uimm (Test bit = 54)
li x15, 0x0e32bd83b30a85fe # initialize rs1
bclri x1, x15, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1328)

# Testcase cp_uimm (Test bit = 55)
li x20, 0xbe9a3842d38bb1d0 # initialize rs1
bclri x23, x20, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1336)

# Testcase cp_uimm (Test bit = 56)
li x22, 0x3081fd72df3df9b8 # initialize rs1
bclri x11, x22, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1344)

# Testcase cp_uimm (Test bit = 57)
li x26, 0xeb788e4dfc6e7ba0 # initialize rs1
bclri x22, x26, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1352)

# Testcase cp_uimm (Test bit = 58)
li x17, 0xfa1b5fa5585fc467 # initialize rs1
bclri x21, x17, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1360)

# Testcase cp_uimm (Test bit = 59)
li x21, 0x40f67e41657dfad6 # initialize rs1
bclri x17, x21, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1368)

# Testcase cp_uimm (Test bit = 60)
li x14, 0x62c935c68fe35476 # initialize rs1
bclri x8, x14, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1376)

# Testcase cp_uimm (Test bit = 61)
li x16, 0xd3a7af3d776ee061 # initialize rs1
bclri x8, x16, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1384)

# Testcase cp_uimm (Test bit = 62)
li x12, 0x59666850b2868061 # initialize rs1
bclri x9, x12, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1392)

# Testcase cp_uimm (Test bit = 63)
li x29, 0x6b1e3e91fd4c6ee0 # initialize rs1
bclri x3, x29, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1400)

# Testcase cp_gpr/fpr_hazard nohaz test
add x29, x6, x25 # perform first operation
bclri x16, x3, 57 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x17, x7 # perform first operation
bclri x13, x12, 38 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x19, x17 # perform first operation
bclri x18, x15, 58 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x7, x21 # perform first operation
bclri x21, x6, 49 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x7, x17 # perform first operation
bclri x21, x27, 52 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x25, x28, x15 # perform first operation
bclri x25, x7, 41 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x27, x13, x22 # perform first operation
bclri x27, x16, 40 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x25, x13 # perform first operation
bclri x6, x5, 61 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x25, x26 # perform first operation
bclri x18, x8, 39 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x20, x10 # perform first operation
bclri x20, x5, 19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x15, x2 # perform first operation
bclri x2, x19, 55 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x28, x15, x30 # perform first operation
bclri x5, x11, 5 # perform second (triggering) operation

#.EQU SIGSIZE,1408


// ******************
// Tests from: WALLY-COV-binvi.S
// ******************


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

#.EQU SIGSIZE,1408


// ******************
// Tests from: WALLY-COV-bset.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x56848e10401df5b3 # initialize rs1
li x9, 0x624fd7f79173f369 # initialize rs2
bset x19, x0, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x2d77e789e2ba2563 # initialize rs1
li x12, 0x4190d26eeca7bbf9 # initialize rs2
bset x27, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xf24dfd9606ce02a2 # initialize rs1
li x28, 0x87f6ef450cc56d10 # initialize rs2
bset x14, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xce546746ef721877 # initialize rs1
li x20, 0x8b2d26ba154e4436 # initialize rs2
bset x9, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x833b171ff22f6917 # initialize rs1
li x1, 0xef5294a2a46946f6 # initialize rs2
bset x17, x4, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xea18325cb1f419e7 # initialize rs1
li x19, 0x430f26ca0ca0c537 # initialize rs2
bset x18, x5, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xada6696cc8e82eb4 # initialize rs1
li x7, 0x04e395097f094cff # initialize rs2
bset x17, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xf22195c988ed7953 # initialize rs1
li x3, 0x6ef33b64c66d6d81 # initialize rs2
bset x24, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xec4cbb40fe83f04b # initialize rs1
li x1, 0x4a4cffc469056e3c # initialize rs2
bset x13, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x2db52bbdb57d4af6 # initialize rs1
li x11, 0xe50c8dda095b5d3d # initialize rs2
bset x31, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x2871df530d9a3824 # initialize rs1
li x1, 0x4a1a61a3387d55e4 # initialize rs2
bset x9, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa35bca8a6e1afb34 # initialize rs1
li x14, 0xfe3c8cf861a56064 # initialize rs2
bset x5, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x54d0dcf72edd4731 # initialize rs1
li x5, 0x6ee3080484f6cc85 # initialize rs2
bset x22, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x1e8f8077a51243a6 # initialize rs1
li x24, 0x2c07722a59ee77df # initialize rs2
bset x27, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc8d3a10bc45ae207 # initialize rs1
li x1, 0xd768c03ff2a55b51 # initialize rs2
bset x19, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x47ce25205ddf9fce # initialize rs1
li x13, 0x0b0dd56c96f33718 # initialize rs2
bset x11, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xafb604c1b0c909ea # initialize rs1
li x9, 0xa71f7d80d7eefa89 # initialize rs2
bset x19, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xff67fede78335b33 # initialize rs1
li x2, 0xd51885d20db504ad # initialize rs2
bset x5, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x5b9bc29134931a19 # initialize rs1
li x12, 0x92faea55afea8a00 # initialize rs2
bset x26, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xbb94e2d0359093ba # initialize rs1
li x17, 0xb9cc1bc78e12d618 # initialize rs2
bset x18, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x3a3ee69743a40765 # initialize rs1
li x18, 0x8f8579162c8e041a # initialize rs2
bset x16, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x025121a6bd05fd81 # initialize rs1
li x16, 0x162264baac02aa68 # initialize rs2
bset x22, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x82373c85d2298297 # initialize rs1
li x25, 0xf202c4862c9fdd48 # initialize rs2
bset x15, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x647544c45c25f6a6 # initialize rs1
li x10, 0xf9815e4029e8b0dd # initialize rs2
bset x22, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x4bdff3a43be7532c # initialize rs1
li x22, 0x698146b1bad7f966 # initialize rs2
bset x20, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xfcfcd5578b92d6c2 # initialize rs1
li x16, 0xb01196de0af316a3 # initialize rs2
bset x2, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xae44702821b86e74 # initialize rs1
li x31, 0x43613f78738286cf # initialize rs2
bset x27, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x31928411fcabe871 # initialize rs1
li x5, 0xce55a1575a634d0c # initialize rs2
bset x13, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x2d55401bb211ebe6 # initialize rs1
li x1, 0x6cf20110f2d95b36 # initialize rs2
bset x13, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x1e8969070f1676b3 # initialize rs1
li x16, 0xfc6057ab5eba4414 # initialize rs2
bset x12, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x4135bca9c8e2b3b6 # initialize rs1
li x9, 0xd87c9df938560f86 # initialize rs2
bset x15, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x88814ae343d143ed # initialize rs1
li x16, 0x6747e3b4c41063b5 # initialize rs2
bset x22, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0x661bbf46eb9b5ce6 # initialize rs1
li x0, 0x1adf2651e20e11cb # initialize rs2
bset x3, x20, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x14, 0xd7da7062d57f76db # initialize rs1
li x1, 0xc6ea456cec570be0 # initialize rs2
bset x15, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x28, 0x9b6e9cf4d24fd755 # initialize rs1
li x2, 0x22713cc608a00d2a # initialize rs2
bset x7, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x11, 0x90eefd07ece2d1c0 # initialize rs1
li x3, 0x9ec78a42f576ac3d # initialize rs2
bset x15, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x15, 0xc17741781ca3e7ea # initialize rs1
li x4, 0xfef2e486588bd23a # initialize rs2
bset x23, x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0xad012f2cc1dd4d8b # initialize rs1
li x5, 0x97646caefca81105 # initialize rs2
bset x12, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0x88e474e9bb421e56 # initialize rs1
li x6, 0xc5cd40841057c82c # initialize rs2
bset x9, x17, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x93c70c29025d5d55 # initialize rs1
li x7, 0x443ffc1d06a2fedf # initialize rs2
bset x23, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x16, 0xce33920c61ec7ca8 # initialize rs1
li x8, 0xfb76fd002a0144c6 # initialize rs2
bset x22, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x26, 0x8703157516ad363d # initialize rs1
li x9, 0x18a5781c65a7c59b # initialize rs2
bset x15, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x26, 0x79bec3947a6b517c # initialize rs1
li x10, 0x77ebd132be678e63 # initialize rs2
bset x7, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0xe54fcf62bc6d8ba1 # initialize rs1
li x11, 0xd80d808099095688 # initialize rs2
bset x8, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x29, 0x66d275ead7048958 # initialize rs1
li x12, 0xf66af9bd1e090322 # initialize rs2
bset x26, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x25, 0xfe82b3c8c745230d # initialize rs1
li x13, 0x8488cee53a0bb443 # initialize rs2
bset x23, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x25, 0xb944551af3c056df # initialize rs1
li x14, 0xecfc9c2e4945b374 # initialize rs2
bset x27, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x10, 0x7dd247869e2ded8c # initialize rs1
li x15, 0x0cdc29662ceaf3da # initialize rs2
bset x9, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x7, 0xe4127e49b0349eef # initialize rs1
li x16, 0x29fb90d9535692a5 # initialize rs2
bset x27, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x8, 0x2cb3150f6536919c # initialize rs1
li x17, 0x00c26c4b2deca014 # initialize rs2
bset x7, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x14, 0x8bf01c326fc627c9 # initialize rs1
li x18, 0x789770a7a3cdddd8 # initialize rs2
bset x16, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x18, 0xe08b928e490c397d # initialize rs1
li x19, 0x6fdcc6ed44f448f3 # initialize rs2
bset x24, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x21, 0x8425b6747a0014a1 # initialize rs1
li x20, 0x2a14914bfb76b804 # initialize rs2
bset x17, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x25, 0x3f4f12d5da0d8f92 # initialize rs1
li x21, 0xfc999c23f9b32cb7 # initialize rs2
bset x29, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x19, 0x240385fab4873214 # initialize rs1
li x22, 0x1359fd32e04d0c3e # initialize rs2
bset x7, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x22, 0x5c34b1913d862e35 # initialize rs1
li x23, 0xd94ecb83ac267319 # initialize rs2
bset x10, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x8, 0x316404b4256705e0 # initialize rs1
li x24, 0xfc9993be06bc5c21 # initialize rs2
bset x14, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x11, 0x848b4060ef729a2a # initialize rs1
li x25, 0x79576a3462a91952 # initialize rs2
bset x13, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x31, 0x2a22257f97cce3ad # initialize rs1
li x26, 0x514ec90699d96978 # initialize rs2
bset x27, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x9, 0x8c0dc376b9de4ea7 # initialize rs1
li x27, 0x2323cce11428d452 # initialize rs2
bset x2, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x26, 0xe582f5e5864d0021 # initialize rs1
li x28, 0xf352ff80b03f5c0c # initialize rs2
bset x21, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x10, 0x9032c1d23bf0b0f7 # initialize rs1
li x29, 0x359970ee4c683169 # initialize rs2
bset x2, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x24, 0xa81376c8d843603f # initialize rs1
li x30, 0x63b0d773a923a5b6 # initialize rs2
bset x5, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x22, 0x5ff1e5576baaedd3 # initialize rs1
li x31, 0x183e5f270f71e1af # initialize rs2
bset x11, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 504)

# Testcase cp_rd (Test destination rd = x0)
li x14, 0xa56d6ebf1a60f7be # initialize rs1
li x21, 0xdcc41d0d19ba3524 # initialize rs2
bset x0, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0xdd968e37f93e8a6a # initialize rs1
li x21, 0x68a500848d56ccf6 # initialize rs2
bset x1, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x41d782e4bd6f903b # initialize rs1
li x3, 0x2578f6ad9a0abd91 # initialize rs2
bset x2, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x23, 0x5fdc7f41112936fe # initialize rs1
li x7, 0x2a9da90aab947437 # initialize rs2
bset x3, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x1662b95dba9373e4 # initialize rs1
li x20, 0xc706dd0813692be8 # initialize rs2
bset x4, x27, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0xec77fa12a58a2ae8 # initialize rs1
li x13, 0x415f8091d2328a65 # initialize rs2
bset x5, x31, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x23, 0x22b3ceaac480d3c5 # initialize rs1
li x3, 0x642ef9a9fce41b04 # initialize rs2
bset x6, x23, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0xef198e45d394be02 # initialize rs1
li x18, 0x2631cc67786924fb # initialize rs2
bset x7, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x7, 0x702269735cf55936 # initialize rs1
li x30, 0xb1bce96c6141c2aa # initialize rs2
bset x8, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0x7541ffd604223b6d # initialize rs1
li x19, 0x7692af4da655ce48 # initialize rs2
bset x9, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd449975bb945555f # initialize rs1
li x24, 0x519107e461941507 # initialize rs2
bset x10, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x7, 0x8cc4b81307938dd4 # initialize rs1
li x20, 0x5e7e67846c5306dd # initialize rs2
bset x11, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x22, 0xda8a133b599904fd # initialize rs1
li x28, 0x3eac08c0e64818e0 # initialize rs2
bset x12, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x10, 0x131e2d778d12d518 # initialize rs1
li x24, 0xa8fa263625b126ce # initialize rs2
bset x13, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x28, 0x31b78ffba55682ae # initialize rs1
li x7, 0xa55e1e55062307b1 # initialize rs2
bset x14, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x1, 0x56f8cf6ceb429c74 # initialize rs1
li x10, 0x93a65fd0af0286ac # initialize rs2
bset x15, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x2, 0x7765ad21c8575f36 # initialize rs1
li x20, 0xd8448130d8975362 # initialize rs2
bset x16, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x21, 0x8be63601370c8a9d # initialize rs1
li x22, 0x816e9280175c7bf7 # initialize rs2
bset x17, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x1, 0x19be670c7b886022 # initialize rs1
li x21, 0x9cf3c060e80fe0ad # initialize rs2
bset x18, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x14, 0x857e096f730509d0 # initialize rs1
li x29, 0x29e6447ef53ba5a2 # initialize rs2
bset x19, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x2, 0xf52637b28ded0210 # initialize rs1
li x28, 0x83a2c6a679505f5d # initialize rs2
bset x20, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x3, 0x22212a1f66b0bdc7 # initialize rs1
li x2, 0x5d76b05a5dc8e4a0 # initialize rs2
bset x21, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x17, 0xe2544775e22f1a4c # initialize rs1
li x14, 0x40a532f056d1e760 # initialize rs2
bset x22, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x19, 0xd120b66cd6e8bf87 # initialize rs1
li x24, 0x3a504ed2ef38a883 # initialize rs2
bset x23, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0x6648f35d7609e460 # initialize rs1
li x23, 0xe29e45b4243cec0c # initialize rs2
bset x24, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x20, 0xccc0a8afce3c2573 # initialize rs1
li x16, 0xbaaf9ceaea743f51 # initialize rs2
bset x25, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x12, 0xf7140a2b051cea5f # initialize rs1
li x17, 0x60031a4242c6fd3c # initialize rs2
bset x26, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x16, 0x13f1c7be882ce325 # initialize rs1
li x17, 0x77940eab407cc91f # initialize rs2
bset x27, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x8, 0xc4059d4eb730e9fe # initialize rs1
li x23, 0x8c1aa0b3d2be4b67 # initialize rs2
bset x28, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x1, 0x7403fb0a739c8828 # initialize rs1
li x3, 0x1345312402098f5b # initialize rs2
bset x29, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x17, 0x778ccb2722c07170 # initialize rs1
li x20, 0xa716d10c5adb0b28 # initialize rs2
bset x30, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x10, 0x5d3ad6203f8f4eee # initialize rs1
li x28, 0x0187c67d15e08556 # initialize rs2
bset x31, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x31, 0x0000000000000000 # initialize rs1
li x2, 0x8d45bf1b7be9dbf9 # initialize rs2
bset x1, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x3, 0x0000000000000001 # initialize rs1
li x6, 0x90487050f33bad15 # initialize rs2
bset x26, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x5, 0x0000000000000002 # initialize rs1
li x27, 0x1a27329f058db9c4 # initialize rs2
bset x29, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x1, 0x8000000000000000 # initialize rs1
li x12, 0x7107acb716518fd1 # initialize rs2
bset x6, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x23, 0x8000000000000001 # initialize rs1
li x28, 0xa501935b7f494290 # initialize rs2
bset x10, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x3, 0x7fffffffffffffff # initialize rs1
li x22, 0xd54f82ab3836a20c # initialize rs2
bset x8, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x13, 0x7ffffffffffffffe # initialize rs1
li x2, 0x88b74483eabc9ed3 # initialize rs2
bset x25, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x10, 0xffffffffffffffff # initialize rs1
li x15, 0x4876a1e651d77240 # initialize rs2
bset x12, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
li x25, 0xcd18caf915d4f886 # initialize rs2
bset x14, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0xd2f49fca37dd4a23 # initialize rs2
bset x22, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x9169a1a6ad860d18 # initialize rs2
bset x17, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x27, 0x5555555555555555 # initialize rs1
li x8, 0xc0622b4005f09e7b # initialize rs2
bset x16, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x1, 0x00000000ffffffff # initialize rs1
li x24, 0x86d2569d12c1513d # initialize rs2
bset x14, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x3, 0x0cb777f15a993b69 # initialize rs2
bset x29, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x21, 0x0000000100000000 # initialize rs1
li x17, 0xc51e19ce195b1e4d # initialize rs2
bset x16, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x20, 0x0000000100000001 # initialize rs1
li x19, 0xbbfeda92eefcf785 # initialize rs2
bset x23, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x7, 0xdc7c410555625c04 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
bset x10, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x29, 0x64239606d12db61b # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
bset x10, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x26, 0xcde302e2633e0394 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bset x1, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x8, 0x7450148e5f25cb59 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
bset x16, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x3, 0xcea766af634f1c17 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
bset x25, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x23, 0xb4758e2810e638d8 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
bset x2, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x14, 0x314032d4fca09ed5 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
bset x5, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x16, 0x63638fa79bb5642c # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
bset x2, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x1, 0xa93d310942a8ab57 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bset x8, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x27, 0xb0f2b0a61a6e73a3 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
bset x29, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x26, 0xa3ecc742d2308de1 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x2, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x19, 0xd237177851628f89 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
bset x12, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x7, 0x7063f8cc71c9abb7 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
bset x10, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x12, 0x6e8d99ce1fef66ae # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
bset x31, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x30, 0x39b2f46770aae9ac # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
bset x15, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x10, 0xf39d9f63934cf3ad # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
bset x7, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x27, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
bset x6, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x15, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
bset x13, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x21, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
bset x24, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x28, 0x0000000000000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bset x14, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x14, 0x0000000000000000 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
bset x31, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
bset x22, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x9, 0x0000000000000000 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
bset x12, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x6, 0x0000000000000000 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
bset x1, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000000000000 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
bset x26, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x13, 0x0000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
bset x12, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000000000000 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x25, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x23, 0x0000000000000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bset x7, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x7, 0x0000000000000000 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
bset x26, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x9, 0x0000000000000000 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bset x16, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x12, 0x0000000000000000 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
bset x29, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x1, 0x0000000000000000 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bset x2, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x15, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
bset x6, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x22, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bset x14, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x6, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
bset x13, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x2, 0x0000000000000001 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
bset x15, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x2, 0x0000000000000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
bset x17, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x18, 0x0000000000000001 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
bset x13, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000000000001 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
bset x18, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x28, 0x0000000000000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bset x23, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000000000001 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
bset x7, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x26, 0x0000000000000001 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
bset x29, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000000000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x7, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x29, 0x0000000000000001 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bset x7, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x1, 0x0000000000000001 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
bset x31, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x29, 0x0000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
bset x17, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x6, 0x0000000000000001 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
bset x5, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x5, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bset x7, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x28, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
bset x14, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x29, 0x0000000000000002 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
bset x19, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x23, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bset x31, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x5, 0x0000000000000002 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
bset x11, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x14, 0x0000000000000002 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
bset x13, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x30, 0x0000000000000002 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
bset x3, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000000000002 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
bset x25, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x29, 0x0000000000000002 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
bset x9, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000000000002 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
bset x10, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000000000002 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
bset x23, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000000000002 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x27, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x9, 0x0000000000000002 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
bset x31, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x9, 0x0000000000000002 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bset x21, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x13, 0x0000000000000002 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
bset x20, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x2, 0x0000000000000002 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
bset x12, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x30, 0x0000000000000002 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
bset x25, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x19, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
bset x30, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x27, 0x8000000000000000 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
bset x22, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x3, 0x8000000000000000 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bset x17, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x18, 0x8000000000000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
bset x14, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x30, 0x8000000000000000 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
bset x3, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x23, 0x8000000000000000 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
bset x31, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x27, 0x8000000000000000 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bset x17, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x5, 0x8000000000000000 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
bset x8, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x14, 0x8000000000000000 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bset x23, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x21, 0x8000000000000000 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
bset x15, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x8000000000000000 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x22, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x15, 0x8000000000000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
bset x7, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x9, 0x8000000000000000 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
bset x6, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x7, 0x8000000000000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
bset x25, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x21, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
bset x16, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x13, 0x8000000000000000 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bset x19, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x24, 0x8000000000000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bset x30, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x3, 0x8000000000000001 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
bset x15, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x19, 0x8000000000000001 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
bset x26, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x27, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
bset x18, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x20, 0x8000000000000001 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
bset x26, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x22, 0x8000000000000001 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bset x20, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x19, 0x8000000000000001 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
bset x3, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x30, 0x8000000000000001 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
bset x10, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x25, 0x8000000000000001 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
bset x18, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x15, 0x8000000000000001 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
bset x24, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x8000000000000001 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x10, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x17, 0x8000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
bset x10, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x24, 0x8000000000000001 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
bset x30, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x27, 0x8000000000000001 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
bset x11, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x17, 0x8000000000000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bset x22, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x8, 0x8000000000000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
bset x22, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x21, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
bset x3, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x29, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
bset x30, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x26, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
bset x8, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x17, 0x7fffffffffffffff # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
bset x22, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x25, 0x7fffffffffffffff # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
bset x20, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
bset x2, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x7, 0x7fffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bset x9, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x29, 0x7fffffffffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bset x22, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x3, 0x7fffffffffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
bset x23, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x6, 0x7fffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
bset x10, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x7fffffffffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x25, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x9, 0x7fffffffffffffff # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
bset x2, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
bset x25, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x22, 0x7fffffffffffffff # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
bset x28, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x14, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
bset x17, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x24, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
bset x1, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x17, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
bset x25, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x16, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
bset x23, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x29, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
bset x24, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x14, 0x7ffffffffffffffe # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
bset x24, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x14, 0x7ffffffffffffffe # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
bset x10, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x3, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
bset x13, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x23, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bset x26, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x14, 0x7ffffffffffffffe # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
bset x7, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x1, 0x7ffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
bset x28, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0x7ffffffffffffffe # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
bset x6, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x7ffffffffffffffe # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x27, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x31, 0x7ffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
bset x29, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x16, 0x7ffffffffffffffe # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bset x28, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
bset x5, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x14, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
bset x24, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x22, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
bset x3, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x19, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
bset x6, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x26, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
bset x25, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x5, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bset x1, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x24, 0xffffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bset x3, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x29, 0xffffffffffffffff # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
bset x16, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x25, 0xffffffffffffffff # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
bset x28, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x2, 0xffffffffffffffff # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
bset x3, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bset x19, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x22, 0xffffffffffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
bset x1, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x25, 0xffffffffffffffff # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
bset x19, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xffffffffffffffff # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x23, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x24, 0xffffffffffffffff # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
bset x31, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x30, 0xffffffffffffffff # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
bset x11, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x17, 0xffffffffffffffff # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bset x11, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x21, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
bset x1, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x16, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
bset x26, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x27, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bset x31, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x30, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bset x16, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x18, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bset x25, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x21, 0xfffffffffffffffe # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
bset x12, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x30, 0xfffffffffffffffe # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
bset x1, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bset x7, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bset x27, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x13, 0xfffffffffffffffe # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
bset x22, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
bset x29, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x8, 0xfffffffffffffffe # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
bset x25, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0xfffffffffffffffe # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x22, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x19, 0xfffffffffffffffe # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
bset x20, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x27, 0xfffffffffffffffe # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
bset x6, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x3, 0xfffffffffffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
bset x26, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x28, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
bset x14, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x16, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
bset x2, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bset x13, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
bset x1, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bset x25, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
bset x17, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
bset x23, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
bset x2, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bset x31, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
bset x31, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
bset x3, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
bset x29, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x23, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bset x5, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
bset x31, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
bset x15, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
bset x7, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
bset x8, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
bset x14, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
bset x5, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
bset x31, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
bset x28, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
bset x28, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bset x26, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bset x3, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bset x23, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
bset x1, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
bset x12, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x1, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
bset x16, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
bset x26, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
bset x11, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
bset x18, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bset x2, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x17, 0x5555555555555555 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
bset x29, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x5, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bset x25, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x1, 0x5555555555555555 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bset x26, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x15, 0x5555555555555555 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
bset x14, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x29, 0x5555555555555555 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
bset x8, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x22, 0x5555555555555555 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
bset x1, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x26, 0x5555555555555555 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bset x11, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bset x8, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x6, 0x5555555555555555 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
bset x21, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x20, 0x5555555555555555 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
bset x15, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x5555555555555555 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x31, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x31, 0x5555555555555555 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
bset x27, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x19, 0x5555555555555555 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
bset x21, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x11, 0x5555555555555555 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
bset x15, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x17, 0x5555555555555555 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
bset x20, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x16, 0x5555555555555555 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bset x30, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x8, 0x00000000ffffffff # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bset x16, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x7, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bset x10, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x23, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
bset x27, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x16, 0x00000000ffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bset x6, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x31, 0x00000000ffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bset x7, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x16, 0x00000000ffffffff # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
bset x11, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0x00000000ffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bset x14, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x2, 0x00000000ffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
bset x23, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x30, 0x00000000ffffffff # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
bset x13, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x20, 0x00000000ffffffff # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
bset x1, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x00000000ffffffff # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x31, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x1, 0x00000000ffffffff # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bset x24, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
bset x6, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x14, 0x00000000ffffffff # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
bset x18, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x1, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
bset x27, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x14, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
bset x11, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x27, 0x00000000fffffffe # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
bset x11, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x13, 0x00000000fffffffe # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
bset x10, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x19, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
bset x12, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x25, 0x00000000fffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
bset x1, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x25, 0x00000000fffffffe # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
bset x2, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x6, 0x00000000fffffffe # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
bset x10, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bset x30, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x28, 0x00000000fffffffe # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bset x25, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
bset x22, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x1, 0x00000000fffffffe # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
bset x3, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x00000000fffffffe # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x20, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x2, 0x00000000fffffffe # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
bset x23, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x27, 0x00000000fffffffe # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
bset x16, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
bset x6, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x6, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
bset x10, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x14, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
bset x3, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x9, 0x0000000100000000 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
bset x14, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x6, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
bset x9, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x29, 0x0000000100000000 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bset x18, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x18, 0x0000000100000000 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
bset x15, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x8, 0x0000000100000000 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
bset x25, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x23, 0x0000000100000000 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
bset x12, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000100000000 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bset x14, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x18, 0x0000000100000000 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
bset x9, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x2, 0x0000000100000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
bset x3, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000100000000 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
bset x8, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x0000000100000000 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x5, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x6, 0x0000000100000000 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bset x10, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x30, 0x0000000100000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
bset x28, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x29, 0x0000000100000000 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
bset x26, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x18, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
bset x8, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x25, 0x0000000100000000 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bset x16, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x18, 0x0000000100000001 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
bset x6, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x15, 0x0000000100000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
bset x21, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x11, 0x0000000100000001 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
bset x9, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x29, 0x0000000100000001 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
bset x2, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x2, 0x0000000100000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
bset x24, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x10, 0x0000000100000001 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
bset x23, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000100000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bset x13, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x20, 0x0000000100000001 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
bset x15, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x28, 0x0000000100000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bset x17, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x9, 0x0000000100000001 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
bset x23, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000100000001 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
bset x18, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x23, 0x0000000100000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
bset x9, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
bset x28, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x26, 0x0000000100000001 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bset x13, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x5, 0x0000000100000001 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
bset x7, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x10, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bset x15, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xb7957631cbe07ff4 # initialize rs1
li x0, 0xa505bfd960f3ae0c # initialize rs2
bset x11, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x6e02ad73c00e07d9 # initialize rs1
li x1, 0xddfb019cabbc5612 # initialize rs2
bset x29, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x578601259dabe7e5 # initialize rs1
li x2, 0x630923cd5e50db2b # initialize rs2
bset x7, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x57e1d5d6bce584b5 # initialize rs1
li x3, 0x0e16f0a655377b3d # initialize rs2
bset x29, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x47392392f7996b64 # initialize rs1
li x4, 0xecc074eefd6e6b2b # initialize rs2
bset x18, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x99e8bc1e041d570c # initialize rs1
li x5, 0x9d3fcb378913a13a # initialize rs2
bset x2, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x67c45d10a82d8062 # initialize rs1
li x6, 0xd646944a68a99f91 # initialize rs2
bset x1, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x1, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xfa6dbeb1b64f8d85 # initialize rs1
li x7, 0x3570d6829b242330 # initialize rs2
bset x11, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xdaa77d83708f8a1e # initialize rs1
li x8, 0x106a2eb2c923b3a8 # initialize rs2
bset x21, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x26ec47c27d70a119 # initialize rs1
li x9, 0x9b73401dc3b27fe9 # initialize rs2
bset x13, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd415dd98acfb8486 # initialize rs1
li x10, 0xc4596142781c30e4 # initialize rs2
bset x5, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x7d39ac3cbeff87d2 # initialize rs1
li x11, 0xbc66625b7fab8bca # initialize rs2
bset x26, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x3bf5e0c436c6ac24 # initialize rs1
li x12, 0x04d9152b90eb81ee # initialize rs2
bset x24, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x0cdf49e76396fa12 # initialize rs1
li x13, 0xf8313d2eb9ec59fc # initialize rs2
bset x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x5b1b06ddd532eb02 # initialize rs1
li x14, 0x8010a54169e388c5 # initialize rs2
bset x28, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x1ff1fe76ae30159d # initialize rs1
li x15, 0x16e818c974ee2b74 # initialize rs2
bset x24, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xa761e75c3e2c9be7 # initialize rs1
li x16, 0x1d70fe6ace9e5e14 # initialize rs2
bset x18, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x3ff5b5b130695550 # initialize rs1
li x17, 0xd12c2b8a192a7d7e # initialize rs2
bset x21, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xb19047b968c9043a # initialize rs1
li x18, 0x5d9464059af54788 # initialize rs2
bset x3, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x354b1e6cdf550a3e # initialize rs1
li x19, 0x74bf3fe8f69bfc1a # initialize rs2
bset x5, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xee3e8599fc5be268 # initialize rs1
li x20, 0x83b30ba2984733e7 # initialize rs2
bset x26, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xd385ccc83dda55b7 # initialize rs1
li x21, 0x39858123c943cfb7 # initialize rs2
bset x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xb2e8c9dd38846f08 # initialize rs1
li x22, 0xbb2fef67aae6b1f5 # initialize rs2
bset x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x897740b3053e9589 # initialize rs1
li x23, 0x851bdab8711e37c9 # initialize rs2
bset x16, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x9d97041b870d2202 # initialize rs1
li x24, 0xc238b5b0e0adb73b # initialize rs2
bset x17, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x830509147fe8f675 # initialize rs1
li x25, 0x233568f70c4a85b3 # initialize rs2
bset x23, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xeaad1b2985b0054a # initialize rs1
li x26, 0x4a09f88e8b567bb5 # initialize rs2
bset x8, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xdcf3795582773c88 # initialize rs1
li x27, 0x47d93276c6882676 # initialize rs2
bset x19, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xa8a3f64fe6456dd8 # initialize rs1
li x28, 0xa139093e5a39170e # initialize rs2
bset x21, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x88fa8aaab325575f # initialize rs1
li x29, 0x8398ef6012a54553 # initialize rs2
bset x30, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xf103c71f44345ea6 # initialize rs1
li x30, 0xece5f3603135469e # initialize rs2
bset x2, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xee84ffa356af96f7 # initialize rs1
li x31, 0xcba0e89799065b13 # initialize rs2
bset x1, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x8c55c28bb1c043fa # initialize rs1
li x14, 0x8b5493bf0e6ec09e # initialize rs2
bset x0, x0, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x3830e81ea8a78d19 # initialize rs1
li x30, 0xb129b0cc3972d5d0 # initialize rs2
bset x1, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xbff5c0b2fb1f03cb # initialize rs1
li x18, 0x14e678943fdf23ae # initialize rs2
bset x2, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x5154cab26c1250fa # initialize rs1
li x12, 0x43edba667c354d80 # initialize rs2
bset x3, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5fb06675ca1fbb23 # initialize rs1
li x13, 0x93f8d9d887f30276 # initialize rs2
bset x4, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbaacf4b86dfbef50 # initialize rs1
li x23, 0x2f3c4536d7a59e29 # initialize rs2
bset x5, x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbe181dea598f7247 # initialize rs1
li x22, 0xa757422713c5baf5 # initialize rs2
bset x6, x6, x22 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5974fea5d701d023 # initialize rs1
li x9, 0xe1c6bf3b942bbe47 # initialize rs2
bset x7, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xe8eac5b34729532b # initialize rs1
li x9, 0xb8c1d97140622825 # initialize rs2
bset x8, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x41452440b6fcd77a # initialize rs1
li x31, 0xfc80da476ce7aeec # initialize rs2
bset x9, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x5feedb7baa9b24df # initialize rs1
li x27, 0xe8e27fcf19b345e8 # initialize rs2
bset x10, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x1460164fc29edb35 # initialize rs1
li x24, 0xcc153163af8834e0 # initialize rs2
bset x11, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x61c3b73013372e77 # initialize rs1
li x18, 0xaade0422a1d548ac # initialize rs2
bset x12, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x2b6dab1698746ccc # initialize rs1
li x29, 0xcb0f4efdd4f67da7 # initialize rs2
bset x13, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xee75ecf62a83705f # initialize rs1
li x16, 0x237110965197b9e3 # initialize rs2
bset x14, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x74a91fe83bbc8fcf # initialize rs1
li x3, 0xae24582a4f7d36e8 # initialize rs2
bset x15, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xe273186763693da7 # initialize rs1
li x8, 0x26f3c79585fc2e79 # initialize rs2
bset x16, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xde557fbe1ff1fc06 # initialize rs1
li x31, 0xe68f88d5b12e1d4b # initialize rs2
bset x17, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xb165c7ee60a8e246 # initialize rs1
li x14, 0xcdbbefd2ddc3c360 # initialize rs2
bset x18, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xd690b65c0965df41 # initialize rs1
li x17, 0xcdb3204816356974 # initialize rs2
bset x19, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x34610d953fb1cf7b # initialize rs1
li x2, 0x1a4c43eaef9ecc32 # initialize rs2
bset x20, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x3bfaec8ffa44d967 # initialize rs1
li x31, 0x35e6f3d1bc26f2ed # initialize rs2
bset x21, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x72b8cd497c2c7a12 # initialize rs1
li x24, 0x86cfc04ee4513d20 # initialize rs2
bset x22, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xaaa7d830d15ad60f # initialize rs1
li x10, 0xf1d8dc6181c2f034 # initialize rs2
bset x23, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x2f659879c038ccd8 # initialize rs1
li x21, 0xba68814243467647 # initialize rs2
bset x24, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x8ed57393234d2eaa # initialize rs1
li x18, 0xb30da2f4eeb9339a # initialize rs2
bset x25, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x2d1d966a9394f070 # initialize rs1
li x15, 0x3d803ab332811a09 # initialize rs2
bset x26, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xddb358ef09e74e5c # initialize rs1
li x22, 0xf3fe663eb40b8881 # initialize rs2
bset x27, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x32b53347e7c35f46 # initialize rs1
li x27, 0xf0ae88441f693375 # initialize rs2
bset x28, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xf067fbbe0b5fa97a # initialize rs1
li x8, 0xa9038d0ca9ad93a1 # initialize rs2
bset x29, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xc10fbf22f122f384 # initialize rs1
li x18, 0xc9c9e810cff0eb13 # initialize rs2
bset x30, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x2f6a6f5380d2f54c # initialize rs1
li x10, 0xe700f9fb7b25661c # initialize rs2
bset x31, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x25, 0x459b00bb997191e2 # initialize rs1
li x0, 0xbbbbe5c317916909 # initialize rs2
bset x0, x25, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x29, 0x1e1fa1a18f62e36b # initialize rs1
li x1, 0xa19565c385ae29c0 # initialize rs2
bset x1, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x29, 0x710cb9c5b543afd3 # initialize rs1
li x2, 0xf462de29339e21a4 # initialize rs2
bset x2, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x15, 0xcec3c992283268c8 # initialize rs1
li x3, 0x238e69ea568ec039 # initialize rs2
bset x3, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0x4d6f3b4c333cccb2 # initialize rs1
li x4, 0x76d7589fe81ff807 # initialize rs2
bset x4, x18, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0x2661e50cd2360331 # initialize rs1
li x5, 0x7e512e33da3b5e42 # initialize rs2
bset x5, x30, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0xf5aba350a747a0c6 # initialize rs1
li x6, 0x45603d4040e27de2 # initialize rs2
bset x6, x27, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0x9b1bbbd8992a186c # initialize rs1
li x7, 0xfe523d94ae212c62 # initialize rs2
bset x7, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x31, 0xab9e955fa0eb0b3d # initialize rs1
li x8, 0x6d2fa2566fc7e013 # initialize rs2
bset x8, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x12, 0xe0eda5d9cbcbe4cc # initialize rs1
li x9, 0x6e6d38fc0a0a256d # initialize rs2
bset x9, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x11, 0xec855d62a1d3d192 # initialize rs1
li x10, 0xcdf71b5287d93e96 # initialize rs2
bset x10, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x3, 0xd37457801d9be11c # initialize rs1
li x11, 0x6c02cdfc35e8707a # initialize rs2
bset x11, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x3, 0x30e8e0b20b679386 # initialize rs1
li x12, 0x350bb706e9c3299f # initialize rs2
bset x12, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x12, 0x15a74e5f7b1bfef6 # initialize rs1
li x13, 0xbe2fe4347d04b6f2 # initialize rs2
bset x13, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x18, 0x46a8777c7e783e71 # initialize rs1
li x14, 0x50c649ee85886922 # initialize rs2
bset x14, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x8, 0xcafec1356b5c0ae9 # initialize rs1
li x15, 0x9dd7161202074098 # initialize rs2
bset x15, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x24, 0x1eb8337e0543f1a7 # initialize rs1
li x16, 0x10316783c7823036 # initialize rs2
bset x16, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x23, 0x3123e5004e5f3a03 # initialize rs1
li x17, 0x872aeab0163f9643 # initialize rs2
bset x17, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x5, 0xe3b8b95a294d0cc1 # initialize rs1
li x18, 0xeb09c786636aedd1 # initialize rs2
bset x18, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x26, 0xd9839e8379046d19 # initialize rs1
li x19, 0x58771833f29920dc # initialize rs2
bset x19, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x24, 0x872529ea146e1134 # initialize rs1
li x20, 0x203eb7e1aa8aa645 # initialize rs2
bset x20, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x3, 0xbd0c6ef8d2466b50 # initialize rs1
li x21, 0x7db2fa02e10757a7 # initialize rs2
bset x21, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x12, 0xe5c60665fc84c3ca # initialize rs1
li x22, 0xb3f54ea6006fbbb6 # initialize rs2
bset x22, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x15, 0xa0c3757a26faecd3 # initialize rs1
li x23, 0x79fc6573196ab4c0 # initialize rs2
bset x23, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x8, 0x1953c731fc9e5cf5 # initialize rs1
li x24, 0x0221b1c1501fdd76 # initialize rs2
bset x24, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x17, 0xf2dff3ee95d0fe93 # initialize rs1
li x25, 0x9ad3dab3bdb12afe # initialize rs2
bset x25, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x31, 0x2ad431acbabc87e8 # initialize rs1
li x26, 0xa053eade6eb29e66 # initialize rs2
bset x26, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x5, 0x71319cb9df3adbab # initialize rs1
li x27, 0x6ab5340a32ecc248 # initialize rs2
bset x27, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x22, 0x89656d93566b127f # initialize rs1
li x28, 0x44b71ded7dd4a1e3 # initialize rs2
bset x28, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x15, 0x086185d0f86de3d4 # initialize rs1
li x29, 0x517d99002bfa4121 # initialize rs2
bset x29, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x16, 0x9fa76f2cd0caf014 # initialize rs1
li x30, 0x9d76a448998ef3b6 # initialize rs2
bset x30, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x28, 0x0ead3ea76d3f47cb # initialize rs1
li x31, 0x368a0994d436767b # initialize rs2
bset x31, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xc28848557802fdf2 # initialize rs1
li x0, 0x694db8dbe1f7580d # initialize rs2
bset x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xb435854bfab4c448 # initialize rs1
li x1, 0x789d9040a3d7b7c1 # initialize rs2
bset x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x53f38d48a224e3e6 # initialize rs1
li x2, 0x38f1900fc7741e03 # initialize rs2
bset x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x46e2de442de4e932 # initialize rs1
li x3, 0x690d5fef1bcfef01 # initialize rs2
bset x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x64eafca9cbeae25d # initialize rs1
li x4, 0x7edf95104cb7991f # initialize rs2
bset x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf378f35d2127a63a # initialize rs1
li x5, 0xd7e68ddef647356f # initialize rs2
bset x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc963c295641d7e9b # initialize rs1
li x6, 0xfcc692a05d54c793 # initialize rs2
bset x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7f4a1d0ec83b0fe3 # initialize rs1
li x7, 0xf0b67fd013504c87 # initialize rs2
bset x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x6be10159cb60ab2e # initialize rs1
li x8, 0xa3a61489364cc8b7 # initialize rs2
bset x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xb316727f57458484 # initialize rs1
li x9, 0x8a55f68eed8992ac # initialize rs2
bset x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x9ce701b5157c9bf3 # initialize rs1
li x10, 0xd216197f07291195 # initialize rs2
bset x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x2dd062ee47c2c77c # initialize rs1
li x11, 0x15f5540b6a06d794 # initialize rs2
bset x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x12cdd7bbd562e173 # initialize rs1
li x12, 0x2bfff18c3d15e580 # initialize rs2
bset x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xad3ea02ed54d6520 # initialize rs1
li x13, 0x553cd163556d2474 # initialize rs2
bset x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x73d37271ecdb8d64 # initialize rs1
li x14, 0x944b8eff2eb9049b # initialize rs2
bset x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xff238096eb60c4d1 # initialize rs1
li x15, 0xcd9e183cd7d2c8a1 # initialize rs2
bset x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xedcee05b3bbc204c # initialize rs1
li x16, 0x8f1dbd1d568226a5 # initialize rs2
bset x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xa029e0b9adbf8951 # initialize rs1
li x17, 0xc3e5e4974225d045 # initialize rs2
bset x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x729ab93c2f007b2f # initialize rs1
li x18, 0xe64c1226c3a8ddd6 # initialize rs2
bset x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x7cbdee46985cd745 # initialize rs1
li x19, 0x6b1d406ce71573e4 # initialize rs2
bset x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x8cec5e5a99844c6a # initialize rs1
li x20, 0x7e3b9ecf4c142995 # initialize rs2
bset x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x19825496a2d60544 # initialize rs1
li x21, 0xfcff4765aac81129 # initialize rs2
bset x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x83bea238cf71f2ca # initialize rs1
li x22, 0xd37cbc9d4b50e0bd # initialize rs2
bset x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x5f554415fbeca821 # initialize rs1
li x23, 0x99be0fe4e5bff610 # initialize rs2
bset x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xf34aae4124dfe478 # initialize rs1
li x24, 0xed0b4d2536b137d0 # initialize rs2
bset x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x625de6e42ee68f1b # initialize rs1
li x25, 0x6013dd96dbdf35cc # initialize rs2
bset x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x91a6aeddb9f628fb # initialize rs1
li x26, 0x4ec5173e4179495a # initialize rs2
bset x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x67608a22bb9524c0 # initialize rs1
li x27, 0x5da2217378d4bb89 # initialize rs2
bset x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xc8638230ab845bf0 # initialize rs1
li x28, 0x3e804f9cd471df15 # initialize rs2
bset x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x56406a650b1373bd # initialize rs1
li x29, 0x10583732a8f2e41c # initialize rs2
bset x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x067c10a9a74d7000 # initialize rs1
li x30, 0x271894db7d57395b # initialize rs2
bset x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x4cf7467872c611c1 # initialize rs1
li x31, 0x6738d6434ad390dc # initialize rs2
bset x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x31, x8 # perform first operation
bset x29, x28, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x11, x10 # perform first operation
bset x18, x29, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x10, x13, x27 # perform first operation
bset x6, x8, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x3, x14 # perform first operation
bset x3, x22, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x19, x26 # perform first operation
bset x26, x10, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x14, x13 # perform first operation
bset x2, x21, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x15, x28 # perform first operation
bset x26, x27, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x21, x14 # perform first operation
bset x26, x15, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x12, x29 # perform first operation
bset x11, x22, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x16, x3 # perform first operation
bset x16, x15, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x13, x20 # perform first operation
bset x20, x9, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x9, x14, x12 # perform first operation
bset x1, x24, x8 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-bclr.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xae3868580824c925 # initialize rs1
li x9, 0xed7dcd7bca76a737 # initialize rs2
bclr x18, x0, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xbafb3b6e9d069a8d # initialize rs1
li x12, 0xbd7177fa65e8074c # initialize rs2
bclr x13, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x0541030819275ae1 # initialize rs1
li x24, 0x7a8567bb1822f036 # initialize rs2
bclr x20, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x65f0eeb1be3c8a99 # initialize rs1
li x16, 0xb7c6e46bc5b32932 # initialize rs2
bclr x23, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4b3a3048bf6b665d # initialize rs1
li x20, 0x97568d9a10880e75 # initialize rs2
bclr x8, x4, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1300a608ec692758 # initialize rs1
li x14, 0xdee68f8cae64dbb0 # initialize rs2
bclr x17, x5, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x9f4a0fc604b4c559 # initialize rs1
li x5, 0x9dcb30bef010998b # initialize rs2
bclr x28, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x28, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xad93b9e5844fb3ac # initialize rs1
li x24, 0xf99a65fa12bd59f0 # initialize rs2
bclr x15, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x2d7ec3dacfd11ebd # initialize rs1
li x6, 0x79ddc75db6cc53fd # initialize rs2
bclr x14, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xa3d557ec34fc2876 # initialize rs1
li x12, 0x82ef158d862c49f5 # initialize rs2
bclr x8, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x7c9e3c720e601d58 # initialize rs1
li x12, 0xd50e08f5c48b1678 # initialize rs2
bclr x6, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xf697f688024f7c6a # initialize rs1
li x13, 0xd478991675cbccc5 # initialize rs2
bclr x7, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x44648a7d05de0cdd # initialize rs1
li x7, 0x2282da21059401e9 # initialize rs2
bclr x18, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xb79f05b20e18f542 # initialize rs1
li x23, 0xd91c1e89913a5057 # initialize rs2
bclr x31, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x346973eaabb068ad # initialize rs1
li x12, 0x0b8767f16c2f598f # initialize rs2
bclr x8, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x0875960eee221cf9 # initialize rs1
li x29, 0x445174fbaafa6f20 # initialize rs2
bclr x6, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x774fc48739776bff # initialize rs1
li x1, 0x4863401ef8757dd6 # initialize rs2
bclr x18, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x767fc06655bed2a8 # initialize rs1
li x18, 0x5088287eda80f426 # initialize rs2
bclr x1, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x797562dd90bf8336 # initialize rs1
li x23, 0x92915f93c08406a4 # initialize rs2
bclr x15, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xf8cf10f243f548c9 # initialize rs1
li x11, 0x0fbb8fa61ecb3b21 # initialize rs2
bclr x16, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xccaf77fa7c0fba32 # initialize rs1
li x14, 0xd46516cd5eeaa11b # initialize rs2
bclr x15, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xea6d8db66115f1d8 # initialize rs1
li x5, 0xec94df402c8a3c8b # initialize rs2
bclr x23, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x230e2ddbe9ad3ec7 # initialize rs1
li x5, 0x1d112e885cd5d77c # initialize rs2
bclr x20, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x37b98049581dad56 # initialize rs1
li x21, 0xe98bf91a3702c332 # initialize rs2
bclr x19, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xe187a1ca702cac32 # initialize rs1
li x21, 0x356313b7fa93a2a5 # initialize rs2
bclr x6, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xd0c6c944e6965994 # initialize rs1
li x16, 0x932e00dd49c3ffc5 # initialize rs2
bclr x26, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x0564d1e796bc4186 # initialize rs1
li x21, 0x9e9283b9c0954303 # initialize rs2
bclr x7, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf79ace2bf682463a # initialize rs1
li x9, 0xad7628467e951ece # initialize rs2
bclr x23, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x21ab2a522eca276f # initialize rs1
li x2, 0x28ce5eb080fc52ed # initialize rs2
bclr x10, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x47f37edaaba5fe22 # initialize rs1
li x11, 0x09482e31caa9797b # initialize rs2
bclr x18, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x33689dd3b3382f2c # initialize rs1
li x31, 0xf5ece864e16db556 # initialize rs2
bclr x24, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x9c4532a8e529c264 # initialize rs1
li x10, 0x16a504a2ca66d698 # initialize rs2
bclr x16, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x20, 0xcef02e0f6c4e1948 # initialize rs1
li x0, 0x60b1ca1f8a37abc7 # initialize rs2
bclr x22, x20, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x11, 0xa47566776aa0451b # initialize rs1
li x1, 0x21c8162166caf55c # initialize rs2
bclr x18, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x1, 0xb6eae33a0055d42a # initialize rs1
li x2, 0x1742be5dc5e29525 # initialize rs2
bclr x3, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x24, 0x20a653ddc1c079f7 # initialize rs1
li x3, 0xca5fb1814b23206d # initialize rs2
bclr x19, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0x4516982953cbed11 # initialize rs1
li x4, 0x04129bdfa3db0870 # initialize rs2
bclr x10, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0x6a4816553ebc17d3 # initialize rs1
li x5, 0x3f7b4ff21bffd18e # initialize rs2
bclr x10, x21, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0xe4099199089496e4 # initialize rs1
li x6, 0xe62dd6816052827d # initialize rs2
bclr x25, x24, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x25, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x5bbff5fc2baa39d8 # initialize rs1
li x7, 0x14860cad0d05ccac # initialize rs2
bclr x28, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x12, 0x686a92329c57a2a9 # initialize rs1
li x8, 0x058f53db1ad50690 # initialize rs2
bclr x29, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x3, 0x9520ca860059bb83 # initialize rs1
li x9, 0xd0ac507cff2b7dd0 # initialize rs2
bclr x12, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x12, 0xe7db83ea28884951 # initialize rs1
li x10, 0x8fca52782d40e470 # initialize rs2
bclr x15, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x5, 0x7b15d486f5795f9b # initialize rs1
li x11, 0x601c2d2af3f0b65a # initialize rs2
bclr x21, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x5, 0x221e1b8c9c01cbd7 # initialize rs1
li x12, 0x3a452124a346cbb9 # initialize rs2
bclr x29, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0x0d643ba3dc2087de # initialize rs1
li x13, 0xad3ee456b9a53f29 # initialize rs2
bclr x29, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x10, 0x9c3f624a409f9606 # initialize rs1
li x14, 0x97451e04dfe1ac2e # initialize rs2
bclr x22, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x17, 0x266be878e111f7d4 # initialize rs1
li x15, 0x43cf799a43ff51c2 # initialize rs2
bclr x5, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x1, 0x806e0ae4018ed5fc # initialize rs1
li x16, 0xa850f29c8bb223e8 # initialize rs2
bclr x26, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x9, 0x5bad8b8a8bc54b33 # initialize rs1
li x17, 0xd4e087d68349b566 # initialize rs2
bclr x16, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x16, 0xa7027e2e8091d565 # initialize rs1
li x18, 0x9637210cfa2bbc1f # initialize rs2
bclr x9, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x9, 0xfe3715fa1997fe63 # initialize rs1
li x19, 0x4dfa50e9c77d7b70 # initialize rs2
bclr x21, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x17, 0x7f19a6f034d3d6e9 # initialize rs1
li x20, 0xb51a238dbe55a734 # initialize rs2
bclr x6, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x29, 0x94940d5be4dee460 # initialize rs1
li x21, 0xd6241f8b27e60b75 # initialize rs2
bclr x9, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x14, 0x656599421c720254 # initialize rs1
li x22, 0x8fe36a684364c21f # initialize rs2
bclr x23, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x6, 0x30c8f781d2a5e130 # initialize rs1
li x23, 0xfae6ba010fa4f2fe # initialize rs2
bclr x30, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x1, 0x0df14b0df2c04c2b # initialize rs1
li x24, 0xc3d531f40387d5cb # initialize rs2
bclr x8, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x26, 0xf55e95db537f6aee # initialize rs1
li x25, 0x6c7650e9950f5368 # initialize rs2
bclr x22, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x1, 0xb5bcc472fe826952 # initialize rs1
li x26, 0x9367e73622079b57 # initialize rs2
bclr x18, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x2, 0x268827f679d34ac9 # initialize rs1
li x27, 0x43967372e588b073 # initialize rs2
bclr x18, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x29, 0xc3c3a4846ac41619 # initialize rs1
li x28, 0x0f79313d82a3503e # initialize rs2
bclr x24, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x19, 0x3cd9b3974ab113a8 # initialize rs1
li x29, 0xd51f68cf02364e2d # initialize rs2
bclr x24, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x26, 0xbad07bef9726a4f2 # initialize rs1
li x30, 0xcfd839d178e2f088 # initialize rs2
bclr x9, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x23, 0x50e7199e144af054 # initialize rs1
li x31, 0x988271af4307e4b8 # initialize rs2
bclr x21, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 504)

# Testcase cp_rd (Test destination rd = x0)
li x31, 0x7cffdb253f8ccc2f # initialize rs1
li x1, 0x13573cb72015cbd1 # initialize rs2
bclr x0, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x25, 0x8697d759250adbc4 # initialize rs1
li x18, 0x10be2d6f8e97629c # initialize rs2
bclr x1, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0x4414bc3b64b84a78 # initialize rs1
li x19, 0x163b28db359dc0a7 # initialize rs2
bclr x2, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x15, 0x3d8d7976fb0aa92d # initialize rs1
li x3, 0xee4950e3ca569c4b # initialize rs2
bclr x3, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x442c9fd5a96b6869 # initialize rs1
li x5, 0xf67568d1e51ea7c1 # initialize rs2
bclr x4, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
li x7, 0xe7c3a2d973cb7c01 # initialize rs1
li x27, 0x7133f22e38fead71 # initialize rs2
bclr x5, x7, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0xea267116a8c90898 # initialize rs1
li x20, 0xbf451be5e5786c0a # initialize rs2
bclr x6, x30, x20 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0xc6fbba7ffdc0f69f # initialize rs1
li x30, 0x4da11914709449b7 # initialize rs2
bclr x7, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x20, 0x57047be119e9e171 # initialize rs1
li x25, 0x9d0bf8b6b6ae7816 # initialize rs2
bclr x8, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x17, 0xeb4014b32b89fa6d # initialize rs1
li x8, 0x45bbc5d17345a909 # initialize rs2
bclr x9, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x12, 0xd48221e12c4c4896 # initialize rs1
li x21, 0x134d7facee99ff9f # initialize rs2
bclr x10, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x2, 0xe7d291183fb2b168 # initialize rs1
li x3, 0x0b81e61830fcc399 # initialize rs2
bclr x11, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x18, 0x67458415968019c8 # initialize rs1
li x25, 0x76116bdda50f95a6 # initialize rs2
bclr x12, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x26, 0x9db287d5d79a8d36 # initialize rs1
li x3, 0xd23a093f1140d037 # initialize rs2
bclr x13, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x17, 0x3b4ce622bac4fd7b # initialize rs1
li x5, 0x3df30add50bb4544 # initialize rs2
bclr x14, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x28, 0x12df731af4036dcb # initialize rs1
li x3, 0x1e7e2ebd75d07cd6 # initialize rs2
bclr x15, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x5, 0x9c91bc779b66d868 # initialize rs1
li x29, 0x28f46ba0233ee621 # initialize rs2
bclr x16, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0x47207c10e3eae949 # initialize rs1
li x18, 0x177472c42935d2a6 # initialize rs2
bclr x17, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x1, 0x308e7ad5e4243e58 # initialize rs1
li x29, 0x9a49be3c794d07a2 # initialize rs2
bclr x18, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x11, 0x80b709dfc7e5a3bf # initialize rs1
li x6, 0x4cc2af04130ac333 # initialize rs2
bclr x19, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x30, 0xc559221a45aa2782 # initialize rs1
li x14, 0xb5008a8c510eac6b # initialize rs2
bclr x20, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x6, 0x7ff59543221e70ce # initialize rs1
li x11, 0xb99b678b48735c7c # initialize rs2
bclr x21, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x29, 0x3b1d8b19a0269b7b # initialize rs1
li x3, 0x1cf773d09b1e7dc9 # initialize rs2
bclr x22, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x8, 0x09b16b0693d21944 # initialize rs1
li x20, 0xd5279986c6ee14eb # initialize rs2
bclr x23, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x19, 0x353bdc888f0c1d4e # initialize rs1
li x1, 0xd1713d3c50df9f9f # initialize rs2
bclr x24, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x10, 0x75fec299fd10ec1e # initialize rs1
li x7, 0x5c2bc03417affbfa # initialize rs2
bclr x25, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x25, 0x1fd233c8b1589aab # initialize rs1
li x31, 0xa95e35db1ff24718 # initialize rs2
bclr x26, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x16, 0xab9762efe3855c62 # initialize rs1
li x8, 0x1772bfa5278a6f9e # initialize rs2
bclr x27, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x31, 0x19da5391f0bed131 # initialize rs1
li x11, 0x1f5fb4ac864479aa # initialize rs2
bclr x28, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0xa5969f1616a4e92a # initialize rs1
li x31, 0x15718eb1d0288ab0 # initialize rs2
bclr x29, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x22, 0x9f9c6bb4b7c323f9 # initialize rs1
li x13, 0x33df1695c814fad2 # initialize rs2
bclr x30, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x70d9c2cbefdaff60 # initialize rs1
li x30, 0x659e002faef3a048 # initialize rs2
bclr x31, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x0000000000000000 # initialize rs1
li x31, 0xdaa8db696bcc7667 # initialize rs2
bclr x29, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x23, 0x0000000000000001 # initialize rs1
li x24, 0xe30db72680ede2bb # initialize rs2
bclr x13, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x0000000000000002 # initialize rs1
li x20, 0xa7694f1ca4455b4e # initialize rs2
bclr x25, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x22, 0x8000000000000000 # initialize rs1
li x26, 0xf21e3db39ba12366 # initialize rs2
bclr x24, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x5, 0x8000000000000001 # initialize rs1
li x2, 0x7bead3d2fad24329 # initialize rs2
bclr x12, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x14, 0x7fffffffffffffff # initialize rs1
li x10, 0x7ed87a123521ef9b # initialize rs2
bclr x2, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x15, 0x7ffffffffffffffe # initialize rs1
li x14, 0x3819ac4429ba0dde # initialize rs2
bclr x21, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x27, 0x6bf2d708f7d19e50 # initialize rs2
bclr x13, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x2, 0xfffffffffffffffe # initialize rs1
li x23, 0xcf916628f892858d # initialize rs2
bclr x28, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x636098bbc496e1be # initialize rs2
bclr x6, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0xe2297a332a14c111 # initialize rs2
bclr x18, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x12, 0x5555555555555555 # initialize rs1
li x6, 0x353b3d9fb0944c9d # initialize rs2
bclr x23, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x2, 0x00000000ffffffff # initialize rs1
li x3, 0x4d31292732a0ca22 # initialize rs2
bclr x26, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x20, 0xd929a43aedf2a62f # initialize rs2
bclr x19, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x11, 0x0000000100000000 # initialize rs1
li x24, 0xedd03e7752527e40 # initialize rs2
bclr x3, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x17, 0x0000000100000001 # initialize rs1
li x2, 0xeeb9b36d0ae636a4 # initialize rs2
bclr x22, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x23, 0xaae60944f3b9dbf9 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
bclr x27, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x15, 0xe0e99795b8ea19f3 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bclr x27, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x4f60f13fdefd015b # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bclr x16, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x18, 0xa11a0cd9f14fa502 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bclr x22, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x29, 0xa3d9a04f63e97971 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
bclr x10, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x27, 0xbb7b70e68cdc2f09 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
bclr x31, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x24, 0x43e91e0764929dac # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
bclr x21, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x12, 0x6e9ed2bee9c38e0d # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
bclr x11, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x29, 0x0b8794e998a4216a # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
bclr x17, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x8, 0x629f18c0a89ade25 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
bclr x5, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0xd0db482c2557e38a # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x31, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x7, 0xddaf0f2c220f4d7f # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
bclr x16, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x8, 0xec0711ace0e2b033 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
bclr x18, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x30, 0x63f61e58739161ec # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
bclr x11, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x31, 0x7dd6604ac8299c2e # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bclr x22, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x25, 0x579c6b9d94a9e2f2 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
bclr x8, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x1, 0x0000000000000000 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
bclr x28, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x19, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bclr x15, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x2, 0x0000000000000000 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bclr x29, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x24, 0x0000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
bclr x14, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x3, 0x0000000000000000 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
bclr x26, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x1, 0x0000000000000000 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
bclr x18, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000000000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bclr x11, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x15, 0x0000000000000000 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bclr x2, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x12, 0x0000000000000000 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
bclr x15, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
bclr x10, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000000000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x29, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x16, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
bclr x21, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x5, 0x0000000000000000 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
bclr x7, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x6, 0x0000000000000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
bclr x5, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x1, 0x0000000000000000 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bclr x14, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x6, 0x0000000000000000 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
bclr x16, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x11, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
bclr x13, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x1, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bclr x30, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x3, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
bclr x26, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x10, 0x0000000000000001 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
bclr x12, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x29, 0x0000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
bclr x11, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000000000001 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
bclr x18, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x11, 0x0000000000000001 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
bclr x17, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x7, 0x0000000000000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bclr x9, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x20, 0x0000000000000001 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bclr x10, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000000000001 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
bclr x10, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x0000000000000001 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x30, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x30, 0x0000000000000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
bclr x16, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x20, 0x0000000000000001 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bclr x26, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x14, 0x0000000000000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
bclr x13, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x10, 0x0000000000000001 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
bclr x6, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x2, 0x0000000000000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
bclr x9, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x13, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bclr x21, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x13, 0x0000000000000002 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
bclr x10, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x22, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bclr x19, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x9, 0x0000000000000002 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
bclr x6, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x3, 0x0000000000000002 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
bclr x13, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x18, 0x0000000000000002 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
bclr x6, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x20, 0x0000000000000002 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bclr x23, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x23, 0x0000000000000002 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
bclr x5, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000000000002 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bclr x22, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000000000002 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
bclr x3, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000000000002 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x13, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x12, 0x0000000000000002 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
bclr x24, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x27, 0x0000000000000002 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
bclr x25, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x8, 0x0000000000000002 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
bclr x26, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x10, 0x0000000000000002 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
bclr x20, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x23, 0x0000000000000002 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
bclr x1, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x16, 0x8000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
bclr x22, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x24, 0x8000000000000000 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
bclr x21, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x8, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
bclr x7, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x8, 0x8000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
bclr x14, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x16, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
bclr x12, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x31, 0x8000000000000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bclr x26, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x29, 0x8000000000000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
bclr x24, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x7, 0x8000000000000000 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bclr x19, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x23, 0x8000000000000000 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
bclr x29, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x7, 0x8000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
bclr x17, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x8000000000000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x19, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x31, 0x8000000000000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
bclr x13, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x20, 0x8000000000000000 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
bclr x16, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x1, 0x8000000000000000 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
bclr x28, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x26, 0x8000000000000000 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
bclr x21, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x23, 0x8000000000000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bclr x12, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x18, 0x8000000000000001 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
bclr x2, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x14, 0x8000000000000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
bclr x12, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x19, 0x8000000000000001 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
bclr x13, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x14, 0x8000000000000001 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
bclr x28, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
bclr x23, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x30, 0x8000000000000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bclr x3, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x27, 0x8000000000000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
bclr x31, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x1, 0x8000000000000001 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
bclr x18, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x1, 0x8000000000000001 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
bclr x20, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x26, 0x8000000000000001 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
bclr x3, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x8000000000000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x27, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x15, 0x8000000000000001 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bclr x20, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x27, 0x8000000000000001 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bclr x21, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x19, 0x8000000000000001 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
bclr x25, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x11, 0x8000000000000001 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
bclr x3, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x30, 0x8000000000000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
bclr x29, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x5, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
bclr x6, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x21, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
bclr x19, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x25, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
bclr x17, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x2, 0x7fffffffffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
bclr x31, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x10, 0x7fffffffffffffff # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
bclr x17, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x13, 0x7fffffffffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
bclr x25, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0x7fffffffffffffff # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
bclr x6, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x6, 0x7fffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
bclr x24, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x31, 0x7fffffffffffffff # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bclr x7, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x15, 0x7fffffffffffffff # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
bclr x16, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x7fffffffffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x22, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x25, 0x7fffffffffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
bclr x12, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x28, 0x7fffffffffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
bclr x24, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x7, 0x7fffffffffffffff # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
bclr x30, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x21, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
bclr x12, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x14, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
bclr x19, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x19, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
bclr x18, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x13, 0x7ffffffffffffffe # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
bclr x2, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x3, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
bclr x20, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x11, 0x7ffffffffffffffe # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
bclr x15, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x23, 0x7ffffffffffffffe # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
bclr x15, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x31, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
bclr x13, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
bclr x1, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x8, 0x7ffffffffffffffe # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
bclr x21, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x31, 0x7ffffffffffffffe # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
bclr x10, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x11, 0x7ffffffffffffffe # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
bclr x26, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x7ffffffffffffffe # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x23, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x26, 0x7ffffffffffffffe # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bclr x21, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x15, 0x7ffffffffffffffe # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
bclr x20, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
bclr x30, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x1, 0x7ffffffffffffffe # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
bclr x13, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x21, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
bclr x25, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x22, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
bclr x2, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x5, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
bclr x24, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x3, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
bclr x31, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x21, 0xffffffffffffffff # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
bclr x13, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x1, 0xffffffffffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bclr x16, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x11, 0xffffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bclr x1, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x11, 0xffffffffffffffff # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
bclr x31, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
bclr x9, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x18, 0xffffffffffffffff # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bclr x12, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x19, 0xffffffffffffffff # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
bclr x8, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0xffffffffffffffff # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x11, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x13, 0xffffffffffffffff # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
bclr x3, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x22, 0xffffffffffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bclr x19, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x3, 0xffffffffffffffff # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
bclr x1, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x13, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
bclr x31, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x15, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
bclr x5, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x9, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
bclr x12, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x13, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
bclr x5, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x20, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bclr x28, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x22, 0xfffffffffffffffe # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bclr x29, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x7, 0xfffffffffffffffe # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
bclr x28, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x29, 0xfffffffffffffffe # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
bclr x12, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bclr x11, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x8, 0xfffffffffffffffe # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
bclr x3, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bclr x2, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x10, 0xfffffffffffffffe # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
bclr x8, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0xfffffffffffffffe # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x14, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x21, 0xfffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
bclr x8, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x25, 0xfffffffffffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bclr x14, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bclr x20, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x27, 0xfffffffffffffffe # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
bclr x26, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x27, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bclr x18, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bclr x13, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bclr x12, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
bclr x25, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
bclr x19, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
bclr x19, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
bclr x12, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bclr x15, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bclr x16, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
bclr x26, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
bclr x26, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x26, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bclr x16, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
bclr x15, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
bclr x26, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
bclr x19, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bclr x16, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
bclr x20, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
bclr x12, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bclr x11, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bclr x30, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
bclr x29, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bclr x18, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
bclr x13, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
bclr x29, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
bclr x3, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
bclr x10, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x13, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
bclr x10, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
bclr x27, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
bclr x15, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
bclr x9, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
bclr x27, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x12, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
bclr x11, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x24, 0x5555555555555555 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
bclr x14, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x19, 0x5555555555555555 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bclr x9, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x28, 0x5555555555555555 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
bclr x6, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x10, 0x5555555555555555 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
bclr x19, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
bclr x13, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x8, 0x5555555555555555 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
bclr x31, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x20, 0x5555555555555555 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
bclr x16, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x3, 0x5555555555555555 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bclr x15, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x27, 0x5555555555555555 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
bclr x2, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x5555555555555555 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x26, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x13, 0x5555555555555555 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
bclr x5, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x15, 0x5555555555555555 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
bclr x3, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x31, 0x5555555555555555 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
bclr x18, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x28, 0x5555555555555555 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
bclr x23, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x9, 0x5555555555555555 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
bclr x10, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x5, 0x00000000ffffffff # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
bclr x2, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x28, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
bclr x20, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x19, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
bclr x23, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x28, 0x00000000ffffffff # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
bclr x9, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x16, 0x00000000ffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
bclr x5, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x30, 0x00000000ffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
bclr x17, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x3, 0x00000000ffffffff # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
bclr x25, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x28, 0x00000000ffffffff # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
bclr x19, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x3, 0x00000000ffffffff # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
bclr x5, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x20, 0x00000000ffffffff # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
bclr x7, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x00000000ffffffff # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x28, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x15, 0x00000000ffffffff # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bclr x14, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
bclr x25, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x12, 0x00000000ffffffff # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
bclr x23, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x3, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bclr x24, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x24, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
bclr x29, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x26, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
bclr x28, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x15, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
bclr x9, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x24, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bclr x11, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x15, 0x00000000fffffffe # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bclr x29, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x11, 0x00000000fffffffe # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
bclr x8, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x2, 0x00000000fffffffe # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
bclr x7, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
bclr x27, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x6, 0x00000000fffffffe # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
bclr x28, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x20, 0x00000000fffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
bclr x9, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x22, 0x00000000fffffffe # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
bclr x26, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x00000000fffffffe # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x29, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x19, 0x00000000fffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
bclr x24, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x5, 0x00000000fffffffe # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
bclr x20, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x20, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
bclr x30, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x14, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
bclr x1, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x17, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
bclr x13, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x29, 0x0000000100000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
bclr x20, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x12, 0x0000000100000000 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
bclr x16, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x20, 0x0000000100000000 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
bclr x9, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x6, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bclr x22, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x7, 0x0000000100000000 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
bclr x2, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000000 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
bclr x1, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000100000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bclr x10, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x28, 0x0000000100000000 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
bclr x5, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000100000000 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
bclr x21, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000100000000 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
bclr x12, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x0000000100000000 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x24, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x15, 0x0000000100000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
bclr x29, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x6, 0x0000000100000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
bclr x29, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x26, 0x0000000100000000 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bclr x19, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x7, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
bclr x9, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x10, 0x0000000100000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
bclr x15, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x25, 0x0000000100000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
bclr x23, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x21, 0x0000000100000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
bclr x17, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x30, 0x0000000100000001 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bclr x22, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x10, 0x0000000100000001 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
bclr x30, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x29, 0x0000000100000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
bclr x19, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000100000001 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bclr x15, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
bclr x29, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
bclr x25, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x3, 0x0000000100000001 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
bclr x22, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x6, 0x0000000100000001 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
bclr x18, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000100000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bclr x22, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x6, 0x0000000100000001 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
bclr x27, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x10, 0x0000000100000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
bclr x20, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x2, 0x0000000100000001 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
bclr x25, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x16, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
bclr x8, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x2, 0x0000000100000001 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
bclr x8, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x27eb9c8fd9a2faf9 # initialize rs1
li x0, 0x7e648f64ef58222b # initialize rs2
bclr x13, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x60f8c9b367a1bf83 # initialize rs1
li x1, 0xdd6030d4a267de0f # initialize rs2
bclr x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x5e94c5a34a6a4b4a # initialize rs1
li x2, 0xec3a79e3b6aceb03 # initialize rs2
bclr x8, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x9eaf08f699ad742d # initialize rs1
li x3, 0xba65f31b10ed30d3 # initialize rs2
bclr x7, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x78596471b659403f # initialize rs1
li x4, 0xb10efcb1ce85e102 # initialize rs2
bclr x9, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8037c70eef23f168 # initialize rs1
li x5, 0xd80c7dc05d31ad78 # initialize rs2
bclr x27, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x00296ec273cc72eb # initialize rs1
li x6, 0xa14a58259ad38dbb # initialize rs2
bclr x14, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc80e4245a9b4fbed # initialize rs1
li x7, 0x8f3758eccccc5329 # initialize rs2
bclr x25, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6af4d99c2bcbd2fc # initialize rs1
li x8, 0xa0085377e8767ace # initialize rs2
bclr x15, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xfd56aefa33a5064f # initialize rs1
li x9, 0x679558ce59a3e443 # initialize rs2
bclr x20, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x7eedd1a772fbd7d2 # initialize rs1
li x10, 0x9ca085eb9ba5ad80 # initialize rs2
bclr x8, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xc43254be847e1cce # initialize rs1
li x11, 0x6654182e47dc5cd4 # initialize rs2
bclr x25, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x7dcf50ce7649e5cc # initialize rs1
li x12, 0xd67ea6558610f5e5 # initialize rs2
bclr x6, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x5fce521fba1664de # initialize rs1
li x13, 0x14e521984d8a4294 # initialize rs2
bclr x24, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x90b77ca5e9ba0614 # initialize rs1
li x14, 0xfd8f85f6dbc8f4c8 # initialize rs2
bclr x17, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x07be0aa96c6e786f # initialize rs1
li x15, 0x5af1e115a7c78b9b # initialize rs2
bclr x20, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xa4b660290f29ce74 # initialize rs1
li x16, 0xfb1c7bab1953bc0e # initialize rs2
bclr x15, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x90d90d8ec9d354c2 # initialize rs1
li x17, 0xf1948e6d162a7e36 # initialize rs2
bclr x1, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xc3abc155a7fc072e # initialize rs1
li x18, 0x70e7cd6c99e7b971 # initialize rs2
bclr x26, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x150f3448892b8d77 # initialize rs1
li x19, 0xc1258bcd1c6a5257 # initialize rs2
bclr x6, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x3db257536c698c32 # initialize rs1
li x20, 0x96f0d40d46d40796 # initialize rs2
bclr x19, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xbf0d5db33c2147a3 # initialize rs1
li x21, 0x8d468d20022563fa # initialize rs2
bclr x3, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x7159eaa48a440593 # initialize rs1
li x22, 0x21b04dbdb536bd79 # initialize rs2
bclr x23, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xfe36ee0861856d47 # initialize rs1
li x23, 0xa2045f6f9977d2c4 # initialize rs2
bclr x29, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x7ce4b63b59c3c843 # initialize rs1
li x24, 0x62d094b237a88f1b # initialize rs2
bclr x8, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x06acb5026f29f4bd # initialize rs1
li x25, 0x60e64b893a2d8c3d # initialize rs2
bclr x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xcad5d02f26a94f3f # initialize rs1
li x26, 0x89317dff54419f06 # initialize rs2
bclr x8, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x71fffd6d5cf6cfef # initialize rs1
li x27, 0x3e982fa97f2532c7 # initialize rs2
bclr x14, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xfe6a0b1814cae5be # initialize rs1
li x28, 0x30978288d669e495 # initialize rs2
bclr x5, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x9208a7ba97a262af # initialize rs1
li x29, 0xe187e8d7c67a440e # initialize rs2
bclr x12, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x2ff3eb9fc1491529 # initialize rs1
li x30, 0x8aa0e928159c779e # initialize rs2
bclr x8, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x56fca90430e58062 # initialize rs1
li x31, 0x2b284f4ac3c0f48c # initialize rs2
bclr x10, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x5bac5456431d6431 # initialize rs1
li x18, 0xbe5ebdc5b1e7afb1 # initialize rs2
bclr x0, x0, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x3f27d5de7632b507 # initialize rs1
li x10, 0xdcdc3732f2abf100 # initialize rs2
bclr x1, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x167a4cc640868b04 # initialize rs1
li x21, 0x2705188d0690d7ff # initialize rs2
bclr x2, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xab6f1dc6909f13a0 # initialize rs1
li x28, 0xb875e58fc40248b9 # initialize rs2
bclr x3, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xdc222418a9c5857e # initialize rs1
li x13, 0xbb864e51446ee2b6 # initialize rs2
bclr x4, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8dbb0beb0ce04b0c # initialize rs1
li x21, 0xa7d930eae29bb927 # initialize rs2
bclr x5, x5, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x959588ec8c25bbfe # initialize rs1
li x30, 0x4a18c5496408c3a0 # initialize rs2
bclr x6, x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x5bb692627fd0cc2a # initialize rs1
li x12, 0x85a682d4c05181c7 # initialize rs2
bclr x7, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xb476727ded70b2aa # initialize rs1
li x31, 0x97599b8dfdfb3ede # initialize rs2
bclr x8, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x93b40fc161b423f6 # initialize rs1
li x15, 0xd9f9e43d2159d044 # initialize rs2
bclr x9, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xa97f46b50fcbc8c7 # initialize rs1
li x23, 0xc8c9304d3e7cd897 # initialize rs2
bclr x10, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x7491b38295157d51 # initialize rs1
li x26, 0x8837a7e8bb4f8cbf # initialize rs2
bclr x11, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa24ac17f05c4a59b # initialize rs1
li x26, 0x0b39e09fcdd114d7 # initialize rs2
bclr x12, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd72aff1077d1c6b3 # initialize rs1
li x1, 0x940e4fd4db6ad5cc # initialize rs2
bclr x13, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xe5c32f7ea8482154 # initialize rs1
li x31, 0x8e462685c1e3d388 # initialize rs2
bclr x14, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x8f2ed4c2ba2e6825 # initialize rs1
li x7, 0x9334585e76340e9f # initialize rs2
bclr x15, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xa903c231faec9cb5 # initialize rs1
li x22, 0x2a1fadaef29ac8cb # initialize rs2
bclr x16, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xc5b0c9a68f29ec91 # initialize rs1
li x25, 0x6b025ae231f74392 # initialize rs2
bclr x17, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xa99978deafa92f81 # initialize rs1
li x31, 0x0911615ab1a365a5 # initialize rs2
bclr x18, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xf4e1302868113e23 # initialize rs1
li x20, 0x2498165ff3186926 # initialize rs2
bclr x19, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3e783e2b54e394de # initialize rs1
li x19, 0x3d0f528e47259083 # initialize rs2
bclr x20, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x89616db1f537f4d8 # initialize rs1
li x20, 0x976bb2f0c8357843 # initialize rs2
bclr x21, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x9e3f92d8075e3537 # initialize rs1
li x18, 0x61d00c9b38f99802 # initialize rs2
bclr x22, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xe0135a24ac57c412 # initialize rs1
li x26, 0x6dd8dc3a20571169 # initialize rs2
bclr x23, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x6e2c946c42928976 # initialize rs1
li x26, 0xaa6a0055ef084520 # initialize rs2
bclr x24, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x5d9c98405f0a3deb # initialize rs1
li x6, 0xca1d560649fbe2c8 # initialize rs2
bclr x25, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x7433a18b6cfd8b1f # initialize rs1
li x16, 0x023e43899e6d94fd # initialize rs2
bclr x26, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x898b7827bc2ffbce # initialize rs1
li x10, 0x4c4c7717409b2028 # initialize rs2
bclr x27, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x6cb33bb33190d2d4 # initialize rs1
li x30, 0x8775dfca8c9796bc # initialize rs2
bclr x28, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xd5c672e9c98eb86b # initialize rs1
li x8, 0x9e77ecb8998ffe3b # initialize rs2
bclr x29, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1b1688c8875ab0d4 # initialize rs1
li x1, 0x0bc81aa8253f0114 # initialize rs2
bclr x30, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x44fc0b04070e254f # initialize rs1
li x16, 0x8a68de90dab8a120 # initialize rs2
bclr x31, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x24, 0xf1afbf9dc4a3d2dd # initialize rs1
li x0, 0x0a08d925ae0970ba # initialize rs2
bclr x0, x24, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x11, 0x6bf98995d220085b # initialize rs1
li x1, 0xdd4419d94de37ae3 # initialize rs2
bclr x1, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x22, 0x405fc53a852f86fe # initialize rs1
li x2, 0x8ffbd8e50f06e308 # initialize rs2
bclr x2, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x15, 0x8fd4e72b813253f7 # initialize rs1
li x3, 0x6171d1bd60635a69 # initialize rs2
bclr x3, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0x038d16d3d2e4ec8e # initialize rs1
li x4, 0x6cbe8dd48a2faacb # initialize rs2
bclr x4, x10, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x39984f1886c606c2 # initialize rs1
li x5, 0x6462a7bf0e1c9b4e # initialize rs2
bclr x5, x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0xee2850aff6d67f4b # initialize rs1
li x6, 0xc8a8e4c141245f44 # initialize rs2
bclr x6, x8, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x72a63d3519bf5b82 # initialize rs1
li x7, 0x491e89dd768c0488 # initialize rs2
bclr x7, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x18, 0x7b0217a8ae7b7ded # initialize rs1
li x8, 0xb24373fd109ff267 # initialize rs2
bclr x8, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x22, 0xc1fbf55c1a38c8d7 # initialize rs1
li x9, 0x383f24437273c88c # initialize rs2
bclr x9, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x9, 0x9c70030923893a28 # initialize rs1
li x10, 0x8d62edc61f7167e8 # initialize rs2
bclr x10, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x20, 0xae0cfed0a1fac0c2 # initialize rs1
li x11, 0xb30ec2a9dbcd58e1 # initialize rs2
bclr x11, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x19, 0x7f074c8e29dcdf73 # initialize rs1
li x12, 0x9e1930468ea029d2 # initialize rs2
bclr x12, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x2, 0xacb1053a70f83634 # initialize rs1
li x13, 0x41909d3c34c8b71d # initialize rs2
bclr x13, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x12, 0x6bd6ca0beaa0ca45 # initialize rs1
li x14, 0xc802558ea7351803 # initialize rs2
bclr x14, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x5, 0x233d8a36376e487b # initialize rs1
li x15, 0xf1bb30225f949d95 # initialize rs2
bclr x15, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x24, 0x28b3749e3016c884 # initialize rs1
li x16, 0x159bd7b5fbb66441 # initialize rs2
bclr x16, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x27, 0x9633abe73c15c6c9 # initialize rs1
li x17, 0x7fb76d0c5bbdb139 # initialize rs2
bclr x17, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x8, 0xf98c8c14bad07dbd # initialize rs1
li x18, 0x015c2461c428cac9 # initialize rs2
bclr x18, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x9, 0x98b9d4fd67319bca # initialize rs1
li x19, 0x6ca462438779f363 # initialize rs2
bclr x19, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x17, 0xdec2164cc240f98c # initialize rs1
li x20, 0x078eb8b3e7976aa3 # initialize rs2
bclr x20, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x23, 0xee35450355b4d08c # initialize rs1
li x21, 0x9e7350f72d0d62bc # initialize rs2
bclr x21, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x19, 0x1aecbaba171ba3ca # initialize rs1
li x22, 0xfc08fe7516b01290 # initialize rs2
bclr x22, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x5, 0xd69fda818b91c87b # initialize rs1
li x23, 0xca6ac0251b1565bd # initialize rs2
bclr x23, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x29, 0x3b9b12b46b35c66c # initialize rs1
li x24, 0x552a6b5df1ffb7c4 # initialize rs2
bclr x24, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x27, 0x7d77f2b84ffd7e6c # initialize rs1
li x25, 0x2bbd206fc5dd8623 # initialize rs2
bclr x25, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x10, 0xdfcc9197df1ea9b4 # initialize rs1
li x26, 0x5944c1d426391151 # initialize rs2
bclr x26, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x21, 0xe66d502028835b88 # initialize rs1
li x27, 0x5fef09b92b6fc65b # initialize rs2
bclr x27, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x10, 0x6fc4eb612562b3ea # initialize rs1
li x28, 0x7111c625fa6ec6e7 # initialize rs2
bclr x28, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x23, 0xa29aa99d58171169 # initialize rs1
li x29, 0x80333138cff2389e # initialize rs2
bclr x29, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x28, 0xc5c1590ba09aab40 # initialize rs1
li x30, 0x093366adb47b449c # initialize rs2
bclr x30, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x19, 0xc0a33530256da47c # initialize rs1
li x31, 0xe4649c9fe42569b5 # initialize rs2
bclr x31, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x65ce069676ef361d # initialize rs1
li x0, 0x8c78eb60b38a766f # initialize rs2
bclr x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xf0927ebcd8345154 # initialize rs1
li x1, 0x52d417f2ddb1c915 # initialize rs2
bclr x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x8dbe7ba60b10cebe # initialize rs1
li x2, 0x8f7dc24347667d75 # initialize rs2
bclr x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x9a986b9d74251813 # initialize rs1
li x3, 0x386c590a6173c197 # initialize rs2
bclr x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd8097bafabdae94a # initialize rs1
li x4, 0x4ae687ffc1b24201 # initialize rs2
bclr x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x713181a612c49ce8 # initialize rs1
li x5, 0xdbf40594047e34dc # initialize rs2
bclr x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb3a8f94f8a46b729 # initialize rs1
li x6, 0x427506f0c8a6c4f3 # initialize rs2
bclr x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd7d38e26fdf56b2a # initialize rs1
li x7, 0x135dfe255e58936e # initialize rs2
bclr x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x8ccd67cb139cc06c # initialize rs1
li x8, 0x1a8842bf89f2a65c # initialize rs2
bclr x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x5011a72f461ea73a # initialize rs1
li x9, 0xdcc5aa250ded555f # initialize rs2
bclr x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x2e147da8150974b4 # initialize rs1
li x10, 0x716cf05fe85e822f # initialize rs2
bclr x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x1d1c7d345ad046f8 # initialize rs1
li x11, 0x739acc67cd13ef4f # initialize rs2
bclr x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xc165b97b77828bd5 # initialize rs1
li x12, 0xd6ff7ffdca31e4d3 # initialize rs2
bclr x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x7cdd5a5e1eec3ea1 # initialize rs1
li x13, 0x66b0c348d6fda5d1 # initialize rs2
bclr x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xa4f02a517b1bff07 # initialize rs1
li x14, 0x394304ce65f11cda # initialize rs2
bclr x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x10b3279e762a9a52 # initialize rs1
li x15, 0xaafe6ace7bd484ac # initialize rs2
bclr x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x071b18541c47034a # initialize rs1
li x16, 0x050ee1443d1f3fde # initialize rs2
bclr x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x1482e26f2e1ce97f # initialize rs1
li x17, 0xbf6c592687d9a713 # initialize rs2
bclr x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x23b19d79bbbcda73 # initialize rs1
li x18, 0x0233b6be8c594e28 # initialize rs2
bclr x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x86ec55eb2a5c5472 # initialize rs1
li x19, 0x24857b836a17e67b # initialize rs2
bclr x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x1aa8d086f8ac8aa7 # initialize rs1
li x20, 0xb8e2b335d9d4c951 # initialize rs2
bclr x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x02332d511713ea10 # initialize rs1
li x21, 0x8af6ea7a47ffe5d1 # initialize rs2
bclr x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xe30d93dd829c3db2 # initialize rs1
li x22, 0x575107e22cb07ee9 # initialize rs2
bclr x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x266ea5a820bdfbb7 # initialize rs1
li x23, 0xe34b679cc8617885 # initialize rs2
bclr x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xfd3205b38168e887 # initialize rs1
li x24, 0x49d54f8c492dc17e # initialize rs2
bclr x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xcb6499681f2bd725 # initialize rs1
li x25, 0x52398eefce16a589 # initialize rs2
bclr x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x2fa03da9cdeca00e # initialize rs1
li x26, 0x7f46dcefe0ee19c3 # initialize rs2
bclr x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x4bfb18a5c3080b31 # initialize rs1
li x27, 0xcf04a15d72e9be44 # initialize rs2
bclr x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x6577b5479eccc311 # initialize rs1
li x28, 0xa07bfdf7170c6d33 # initialize rs2
bclr x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xec3dd1ee3b82c15c # initialize rs1
li x29, 0x2056dc40008277bd # initialize rs2
bclr x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x14bc2065ad89f715 # initialize rs1
li x30, 0x3141663bf81f662c # initialize rs2
bclr x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x0ebebec70c4d7dc9 # initialize rs1
li x31, 0x22f78848bf28890a # initialize rs2
bclr x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x13, x11 # perform first operation
bclr x24, x29, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x1, x30 # perform first operation
bclr x12, x6, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x8, x6 # perform first operation
bclr x20, x24, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x14, x27 # perform first operation
bclr x27, x1, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x7, x10 # perform first operation
bclr x19, x12, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x11, x8, x12 # perform first operation
bclr x2, x9, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x31, x11 # perform first operation
bclr x23, x5, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x29, x11 # perform first operation
bclr x21, x19, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x18, x26, x29 # perform first operation
bclr x18, x8, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x11, x8 # perform first operation
bclr x11, x7, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x22, x3 # perform first operation
bclr x3, x16, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x19, x10 # perform first operation
bclr x7, x9, x22 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-bext.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x2c2a1ebd5ea9df94 # initialize rs1
li x2, 0x4c97097ab4464d1a # initialize rs2
bext x10, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x7118aa9fc4706ea6 # initialize rs1
li x29, 0x018ed108befc4096 # initialize rs2
bext x19, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x9e3c460fd68c4c89 # initialize rs1
li x1, 0x26845b82f03cb068 # initialize rs2
bext x30, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xde4912d6a2297629 # initialize rs1
li x21, 0xc2361cf1baf62e6a # initialize rs2
bext x8, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x04dbc0be37de4a1c # initialize rs1
li x11, 0x9bd38ad9ab396dec # initialize rs2
bext x14, x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd5b7a94480740e85 # initialize rs1
li x27, 0x192b70907637b294 # initialize rs2
bext x9, x5, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x24fe29fb8c451f05 # initialize rs1
li x17, 0xe4c604818603b0c1 # initialize rs2
bext x5, x6, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4f0f4b4df13b9cd9 # initialize rs1
li x21, 0x0602449cbc9ad8db # initialize rs2
bext x29, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x623fe40529a52393 # initialize rs1
li x10, 0x921453fad34bfe21 # initialize rs2
bext x11, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xb6a51011619e4431 # initialize rs1
li x21, 0xfd4bef9ed9f32a4e # initialize rs2
bext x6, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x63666402bafccc11 # initialize rs1
li x11, 0x5ce00f5e6d2588c7 # initialize rs2
bext x23, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x011d4410b816626c # initialize rs1
li x27, 0x37e2675ca063d70f # initialize rs2
bext x19, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xc2de77048126cd12 # initialize rs1
li x16, 0x98b97ff40db5f359 # initialize rs2
bext x3, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x7dc8dcbebeeabb68 # initialize rs1
li x31, 0x7d9d7843333fbe79 # initialize rs2
bext x25, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x178bc05d8eb3b5a7 # initialize rs1
li x30, 0x5f435d3000757962 # initialize rs2
bext x3, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x365d86a7730405ec # initialize rs1
li x25, 0xbac4fe6bb28abbc3 # initialize rs2
bext x20, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xc07c64ec74809125 # initialize rs1
li x25, 0x2dd759a0f28dc83c # initialize rs2
bext x27, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x384b3c02bcf2f0be # initialize rs1
li x14, 0x9d33f35df4ac15cc # initialize rs2
bext x18, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x8439716c2e0cc30d # initialize rs1
li x23, 0xe8658ea29ae40e6c # initialize rs2
bext x9, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x88b0b691936fee04 # initialize rs1
li x17, 0x586bbb25ec33448f # initialize rs2
bext x14, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xc1730e2549141b60 # initialize rs1
li x7, 0x81a2681e06aebb42 # initialize rs2
bext x28, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x0ada5032bd4cd78d # initialize rs1
li x25, 0xcbc2c43323628c6e # initialize rs2
bext x15, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x85a06456364f9cad # initialize rs1
li x3, 0x99226b42e16c21ed # initialize rs2
bext x20, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xe842431490863785 # initialize rs1
li x20, 0x51f636def4f1e6ab # initialize rs2
bext x26, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xa16aabc9fab2346a # initialize rs1
li x1, 0x66734bee29f987a7 # initialize rs2
bext x30, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x96b854856a819d35 # initialize rs1
li x27, 0x405eb1260d654b28 # initialize rs2
bext x23, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xfd6e3f356c6c585f # initialize rs1
li x12, 0x0ff9ac976a496813 # initialize rs2
bext x15, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xfe61dc905cfa3e90 # initialize rs1
li x10, 0xeaa21d6e0b1ddd4a # initialize rs2
bext x28, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xfb6ef78d559b6ea0 # initialize rs1
li x10, 0x571240ad321814c1 # initialize rs2
bext x8, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x313311a3780094ef # initialize rs1
li x25, 0xe85daa215684307e # initialize rs2
bext x12, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x40ad3e943cc43fa0 # initialize rs1
li x6, 0x80fbc0c32a9c824e # initialize rs2
bext x2, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xe78954e1ccae887c # initialize rs1
li x5, 0x9ef8c8a5b13334ac # initialize rs2
bext x1, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x24, 0xb74b32ce10816fe7 # initialize rs1
li x0, 0x0ca204ef1f7284d3 # initialize rs2
bext x6, x24, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x3, 0xba5cb2a35caea43f # initialize rs1
li x1, 0xaf9225f47e26a043 # initialize rs2
bext x23, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x28, 0xa1fdbef1da8dcfe9 # initialize rs1
li x2, 0xdf302807f980c0c5 # initialize rs2
bext x31, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x5, 0x3f27474ff98f9f0d # initialize rs1
li x3, 0x035f73d698349b50 # initialize rs2
bext x13, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0x9a262c1e723585c0 # initialize rs1
li x4, 0x34f75d0ff13ad652 # initialize rs2
bext x13, x30, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0xe6ccf738b933e5c6 # initialize rs1
li x5, 0xc6ce84a5a837d455 # initialize rs2
bext x19, x7, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0x98bb710d8a714cf4 # initialize rs1
li x6, 0x05652c9106b2e22c # initialize rs2
bext x19, x30, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0xc0418016ac56eb83 # initialize rs1
li x7, 0x1958e4ad8d2db7f7 # initialize rs2
bext x21, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x12, 0xd0bb0af881f82890 # initialize rs1
li x8, 0xd08c9743d597c879 # initialize rs2
bext x17, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x11, 0x21c21b78fcdf113d # initialize rs1
li x9, 0xbca42db575e50ecb # initialize rs2
bext x8, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0x9e5c6a8fb1cbe2d3 # initialize rs1
li x10, 0x8e8245dbd0655d07 # initialize rs2
bext x22, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x21, 0xaa736f241e57983c # initialize rs1
li x11, 0x736ccbf660cf76ce # initialize rs2
bext x26, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x30, 0x75ce642d2d8df3d7 # initialize rs1
li x12, 0x4d4e5b15ededd5a0 # initialize rs2
bext x16, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x19, 0x3466fa6d0e5f11db # initialize rs1
li x13, 0x3110b5dbed1ae1f6 # initialize rs2
bext x5, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x22, 0x9e5ef9d8674b4dc4 # initialize rs1
li x14, 0x09f2442d7b42a6a5 # initialize rs2
bext x1, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x8, 0x8d13e218a105289a # initialize rs1
li x15, 0x62b84d21d9b7fd07 # initialize rs2
bext x23, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x23, 0xbc0841c150d36b40 # initialize rs1
li x16, 0x76965cf36e2ab354 # initialize rs2
bext x1, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x13, 0xabcd5c4704b8a071 # initialize rs1
li x17, 0xb7eb73b806cbb96c # initialize rs2
bext x28, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x14, 0x4938b812caffff7f # initialize rs1
li x18, 0x43b6d79731d54bcd # initialize rs2
bext x19, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x11, 0x348725a4c51c30dd # initialize rs1
li x19, 0x5153d6db3469680b # initialize rs2
bext x5, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x7, 0x40ea89d7ca2e9a1c # initialize rs1
li x20, 0xd473809adde77bb6 # initialize rs2
bext x12, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x16, 0xcc1d3b902494a630 # initialize rs1
li x21, 0x96344a485777cbff # initialize rs2
bext x31, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x21, 0xd9ed86bf575f3361 # initialize rs1
li x22, 0x5d4d63b3f180c208 # initialize rs2
bext x2, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x9, 0x2f4b5b6d7454b96c # initialize rs1
li x23, 0x59c49876d0ef93ad # initialize rs2
bext x29, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x25, 0xe4c41764b82cf41e # initialize rs1
li x24, 0xcf84162be86f0e4e # initialize rs2
bext x19, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x14, 0x7d4e7f2cb2f303fb # initialize rs1
li x25, 0xaac2abb5cfca562a # initialize rs2
bext x29, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x29, 0x557a0f0948fa932f # initialize rs1
li x26, 0xf5e98ee6514a1b6c # initialize rs2
bext x9, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x15, 0x2f3de3819c35a423 # initialize rs1
li x27, 0xf4f9afc6b28fc7e1 # initialize rs2
bext x11, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x30, 0xfd85ce9e1a5f750d # initialize rs1
li x28, 0x4096af46f42afee5 # initialize rs2
bext x9, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x24, 0x5454bea28e56ca1a # initialize rs1
li x29, 0xb760427f674ad39a # initialize rs2
bext x30, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x19, 0x0f0027a0a64960cc # initialize rs1
li x30, 0xd5ac1a50e0bae115 # initialize rs2
bext x1, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x13, 0xa659afce270d95df # initialize rs1
li x31, 0x4d8662411d966b20 # initialize rs2
bext x12, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cp_rd (Test destination rd = x0)
li x8, 0x6cce3156f7d0e16a # initialize rs1
li x30, 0x6621fb20a175168b # initialize rs2
bext x0, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x13, 0xa1d0df06e3b321c3 # initialize rs1
li x31, 0xbcb8bcf4516a12c3 # initialize rs2
bext x1, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x10, 0x32ca5528f2cca095 # initialize rs1
li x27, 0x99015fa0be5159c4 # initialize rs2
bext x2, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x12, 0xae7b6608c1ce39e9 # initialize rs1
li x9, 0xf33d33b9dedfecf1 # initialize rs2
bext x3, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0x31f7a506a83ddf9f # initialize rs1
li x26, 0xdb28918d7cf8a2ae # initialize rs2
bext x4, x2, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x1d6b30f8ee1fd63c # initialize rs1
li x2, 0x10b4d496a9e74f17 # initialize rs2
bext x5, x25, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0x2080db4c60f659a4 # initialize rs1
li x17, 0x865631efd7095496 # initialize rs2
bext x6, x2, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xd746ef71ce649b45 # initialize rs1
li x12, 0x10a47465e3786bb2 # initialize rs2
bext x7, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x16, 0x4c40c8021a5b432c # initialize rs1
li x31, 0x580fac57f3e94859 # initialize rs2
bext x8, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x31, 0x07f69aba4e082b28 # initialize rs1
li x13, 0x5d3aea1400a99aa9 # initialize rs2
bext x9, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x11, 0x32482a688625e4b6 # initialize rs1
li x2, 0x6023d3aaf11bbb32 # initialize rs2
bext x10, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0xdfbcabbf7b6043b2 # initialize rs1
li x5, 0x96b546aa449b6c5f # initialize rs2
bext x11, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0xb0cb9ae6f63cd4f5 # initialize rs1
li x9, 0x4d7959b40543dff1 # initialize rs2
bext x12, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x15, 0x75c9b10b034da0e6 # initialize rs1
li x6, 0xafb02d8f7ea06941 # initialize rs2
bext x13, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0x473811936ef838f3 # initialize rs1
li x25, 0x48fc06773e06fabb # initialize rs2
bext x14, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x18, 0x40cfc720b5fa1a00 # initialize rs1
li x27, 0x2907406b5cbe557d # initialize rs2
bext x15, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x30, 0x28fe111a9e4d18fa # initialize rs1
li x17, 0xdd79841699237bad # initialize rs2
bext x16, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x7, 0x2df19105fdabc37b # initialize rs1
li x2, 0x2f47ea976d866d19 # initialize rs2
bext x17, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x5, 0x814d4af5e0ac3a69 # initialize rs1
li x3, 0xb88baac1a867d9e0 # initialize rs2
bext x18, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x2, 0xda93de3d0059cff1 # initialize rs1
li x25, 0xba412e3a3b00df61 # initialize rs2
bext x19, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x14, 0x57b880b06747face # initialize rs1
li x25, 0x37e05b8694375794 # initialize rs2
bext x20, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x23, 0x46b734a41da35e23 # initialize rs1
li x3, 0xb78e3a30c349748e # initialize rs2
bext x21, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x6, 0x020a4d564ad979a5 # initialize rs1
li x21, 0xaafa3c3d729c688c # initialize rs2
bext x22, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x13, 0x2737bba9f02f6c06 # initialize rs1
li x1, 0x22aecf5bdbe561aa # initialize rs2
bext x23, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x31, 0x5f68b7f61d44a135 # initialize rs1
li x14, 0xe030dda89b2858a7 # initialize rs2
bext x24, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x10, 0xb0da488845d2ce72 # initialize rs1
li x3, 0x1aa25973afaebf38 # initialize rs2
bext x25, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x15, 0xe9e99ce8cfd200c3 # initialize rs1
li x7, 0x12d88004732255bf # initialize rs2
bext x26, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x28, 0x6cb0af726fe0d353 # initialize rs1
li x5, 0xca359032d2b8807f # initialize rs2
bext x27, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x13, 0x54f12f769c77b02d # initialize rs1
li x30, 0x666c603280adbd4a # initialize rs2
bext x28, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x1, 0xd05a1ace64f1752a # initialize rs1
li x19, 0x177e5ce0fd20c9d2 # initialize rs2
bext x29, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x14, 0x817fa77558786e39 # initialize rs1
li x27, 0x1aa9cf70179ff039 # initialize rs2
bext x30, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x5, 0xa6ee3ec64b8dad3f # initialize rs1
li x13, 0xa4c54672141d8f48 # initialize rs2
bext x31, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x1, 0x0000000000000000 # initialize rs1
li x29, 0x7fcad0b5af6a9bca # initialize rs2
bext x12, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x0000000000000001 # initialize rs1
li x15, 0x8f3b3f9ef256618b # initialize rs2
bext x3, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0x0000000000000002 # initialize rs1
li x13, 0x41b0fb1f7c2e35de # initialize rs2
bext x30, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x7, 0x8000000000000000 # initialize rs1
li x11, 0xd5ea24646f344a38 # initialize rs2
bext x6, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x27, 0x8000000000000001 # initialize rs1
li x13, 0x3d0982b5f48f716b # initialize rs2
bext x23, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x9, 0x7fffffffffffffff # initialize rs1
li x13, 0x5cd7b536a008d64d # initialize rs2
bext x27, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x1, 0x7ffffffffffffffe # initialize rs1
li x14, 0xed7dcfcfc00602ea # initialize rs2
bext x11, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x16, 0xffffffffffffffff # initialize rs1
li x7, 0xac433cf958cf4d25 # initialize rs2
bext x25, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x3, 0xfffffffffffffffe # initialize rs1
li x5, 0x785c23145d6187d1 # initialize rs2
bext x19, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x3791bc90261db4bd # initialize rs2
bext x24, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xda66cc72d40a1a5e # initialize rs2
bext x5, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x5555555555555555 # initialize rs1
li x9, 0x58805a9e63919d1f # initialize rs2
bext x22, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x24, 0x00000000ffffffff # initialize rs1
li x8, 0xd8b8d292ec6dfd2a # initialize rs2
bext x26, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0x00000000fffffffe # initialize rs1
li x3, 0x2606f992e2586fb3 # initialize rs2
bext x15, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x15, 0x0000000100000000 # initialize rs1
li x21, 0xbdb4670496d0c7ba # initialize rs2
bext x7, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x8, 0x0000000100000001 # initialize rs1
li x27, 0x739843c98392eef8 # initialize rs2
bext x15, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x6, 0x7794530703163550 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
bext x17, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x5, 0x0f91ec8b9f141391 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
bext x2, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x23, 0x03b5b41255ef610a # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
bext x19, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x31, 0xba4f68177b907e89 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bext x1, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x25, 0x00633a535e2e4934 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
bext x15, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x10, 0x03b364c766d25388 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
bext x19, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x11, 0x4a8a16df5623a144 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
bext x12, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x16, 0x6ea1200991a0454f # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
bext x15, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x28, 0xaeb23e165c549d24 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
bext x22, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x28, 0x3a4fc58029854d37 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
bext x5, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xda7a6988c4eea932 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x12, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x7, 0x3b53a8c6901863f2 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
bext x20, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0xd83058e4f63d7573 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bext x5, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0xcbfee8a0a76835c4 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
bext x15, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x5, 0x11ef1cb63f4cb7f8 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bext x29, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x17, 0xe2a502275505bb20 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
bext x24, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
bext x13, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x30, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
bext x23, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x12, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bext x21, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x12, 0x0000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
bext x26, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x27, 0x0000000000000000 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bext x16, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bext x29, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000000000000 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
bext x7, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000000 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
bext x13, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000000000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
bext x29, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000000000000 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
bext x23, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0000000000000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x20, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x10, 0x0000000000000000 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
bext x2, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x10, 0x0000000000000000 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
bext x19, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x29, 0x0000000000000000 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bext x19, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x8, 0x0000000000000000 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
bext x18, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x1, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
bext x11, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x1, 0x0000000000000001 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
bext x14, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x11, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bext x20, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x8, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
bext x1, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x22, 0x0000000000000001 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
bext x24, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x12, 0x0000000000000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
bext x24, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000001 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bext x29, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000000000001 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bext x14, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x25, 0x0000000000000001 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
bext x26, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000001 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
bext x5, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x17, 0x0000000000000001 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
bext x15, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000000000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x10, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x28, 0x0000000000000001 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
bext x29, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x15, 0x0000000000000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
bext x19, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0x0000000000000001 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bext x24, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x17, 0x0000000000000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
bext x8, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x3, 0x0000000000000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
bext x30, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x20, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bext x15, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x20, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bext x28, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x28, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
bext x18, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x23, 0x0000000000000002 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
bext x29, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x14, 0x0000000000000002 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bext x19, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000002 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
bext x19, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000000000002 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bext x25, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000002 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
bext x2, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x9, 0x0000000000000002 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
bext x13, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000000000002 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
bext x3, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000000000002 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x24, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x17, 0x0000000000000002 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bext x30, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x8, 0x0000000000000002 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
bext x24, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
bext x8, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x31, 0x0000000000000002 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
bext x8, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x29, 0x0000000000000002 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
bext x11, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x8, 0x8000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
bext x13, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x27, 0x8000000000000000 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
bext x11, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x3, 0x8000000000000000 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bext x27, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x28, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
bext x29, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x11, 0x8000000000000000 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
bext x6, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x5, 0x8000000000000000 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
bext x10, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x7, 0x8000000000000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bext x14, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x28, 0x8000000000000000 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bext x15, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x29, 0x8000000000000000 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
bext x2, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x18, 0x8000000000000000 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
bext x28, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x8000000000000000 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x1, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x13, 0x8000000000000000 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bext x10, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x9, 0x8000000000000000 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
bext x16, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x3, 0x8000000000000000 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
bext x21, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x2, 0x8000000000000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
bext x24, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x12, 0x8000000000000000 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
bext x21, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x7, 0x8000000000000001 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
bext x27, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x15, 0x8000000000000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
bext x3, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x12, 0x8000000000000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
bext x2, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x28, 0x8000000000000001 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bext x11, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x6, 0x8000000000000001 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
bext x30, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x22, 0x8000000000000001 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
bext x10, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x21, 0x8000000000000001 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
bext x10, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x6, 0x8000000000000001 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
bext x9, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x23, 0x8000000000000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
bext x14, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x20, 0x8000000000000001 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
bext x18, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x8000000000000001 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x20, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x29, 0x8000000000000001 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bext x17, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x3, 0x8000000000000001 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
bext x13, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x10, 0x8000000000000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bext x27, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x9, 0x8000000000000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bext x14, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x2, 0x8000000000000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
bext x13, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x19, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
bext x6, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x26, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bext x5, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x29, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bext x24, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x6, 0x7fffffffffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bext x3, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x14, 0x7fffffffffffffff # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
bext x31, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
bext x10, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x12, 0x7fffffffffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
bext x21, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
bext x14, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x22, 0x7fffffffffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
bext x2, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x18, 0x7fffffffffffffff # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
bext x3, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x7fffffffffffffff # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x22, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x26, 0x7fffffffffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
bext x9, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
bext x6, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x31, 0x7fffffffffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
bext x17, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x22, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
bext x19, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x31, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
bext x22, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x1, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bext x12, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x3, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
bext x22, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x21, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
bext x11, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0x7ffffffffffffffe # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bext x15, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x29, 0x7ffffffffffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
bext x18, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x21, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bext x27, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x31, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bext x26, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
bext x1, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
bext x25, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x16, 0x7ffffffffffffffe # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
bext x15, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x7ffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x24, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x17, 0x7ffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
bext x18, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x16, 0x7ffffffffffffffe # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bext x22, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
bext x19, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x8, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
bext x14, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x18, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bext x21, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x18, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
bext x8, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x19, 0xffffffffffffffff # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bext x14, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x13, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bext x2, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x20, 0xffffffffffffffff # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
bext x30, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x2, 0xffffffffffffffff # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
bext x7, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
bext x6, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x13, 0xffffffffffffffff # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
bext x10, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x30, 0xffffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
bext x23, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x25, 0xffffffffffffffff # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
bext x13, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x1, 0xffffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
bext x11, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0xffffffffffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x30, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x2, 0xffffffffffffffff # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
bext x3, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x3, 0xffffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
bext x9, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x25, 0xffffffffffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bext x9, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x6, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
bext x22, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x1, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
bext x14, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x31, 0xfffffffffffffffe # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
bext x20, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x24, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bext x2, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x31, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bext x30, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x3, 0xfffffffffffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
bext x22, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x5, 0xfffffffffffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bext x10, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x24, 0xfffffffffffffffe # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
bext x13, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
bext x27, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x21, 0xfffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bext x31, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
bext x17, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x19, 0xfffffffffffffffe # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
bext x21, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xfffffffffffffffe # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x9, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x25, 0xfffffffffffffffe # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
bext x3, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x22, 0xfffffffffffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bext x6, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
bext x2, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x21, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
bext x5, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x22, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
bext x28, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
bext x9, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
bext x10, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
bext x16, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bext x3, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
bext x16, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
bext x25, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
bext x1, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
bext x23, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
bext x10, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
bext x25, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x14, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bext x24, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
bext x9, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
bext x24, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
bext x19, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bext x17, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
bext x9, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bext x8, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
bext x15, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
bext x22, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
bext x9, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
bext x31, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bext x16, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bext x25, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
bext x11, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
bext x26, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x30, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
bext x20, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bext x22, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
bext x1, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
bext x18, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
bext x1, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x7, 0x5555555555555555 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bext x14, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x2, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
bext x9, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x26, 0x5555555555555555 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
bext x5, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x20, 0x5555555555555555 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
bext x10, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x5, 0x5555555555555555 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
bext x31, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x1, 0x5555555555555555 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
bext x28, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x7, 0x5555555555555555 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bext x13, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x7, 0x5555555555555555 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
bext x30, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x29, 0x5555555555555555 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bext x26, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x20, 0x5555555555555555 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
bext x30, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x5555555555555555 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x10, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x20, 0x5555555555555555 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
bext x19, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
bext x23, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x16, 0x5555555555555555 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
bext x3, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x6, 0x5555555555555555 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
bext x14, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x29, 0x5555555555555555 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
bext x18, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x30, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
bext x6, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x30, 0x00000000ffffffff # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bext x24, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x2, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bext x26, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x12, 0x00000000ffffffff # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
bext x20, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x15, 0x00000000ffffffff # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
bext x31, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x30, 0x00000000ffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bext x12, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x22, 0x00000000ffffffff # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bext x27, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x9, 0x00000000ffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
bext x23, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x1, 0x00000000ffffffff # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
bext x29, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x31, 0x00000000ffffffff # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
bext x9, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x00000000ffffffff # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x5, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x10, 0x00000000ffffffff # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
bext x22, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x27, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
bext x1, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x20, 0x00000000ffffffff # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
bext x10, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x3, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
bext x13, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x24, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bext x11, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x10, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
bext x6, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x31, 0x00000000fffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
bext x28, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x25, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bext x1, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x7, 0x00000000fffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bext x25, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x2, 0x00000000fffffffe # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
bext x23, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x18, 0x00000000fffffffe # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bext x10, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bext x21, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x27, 0x00000000fffffffe # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
bext x28, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x6, 0x00000000fffffffe # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
bext x1, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x26, 0x00000000fffffffe # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
bext x5, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x00000000fffffffe # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x11, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x11, 0x00000000fffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
bext x21, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x3, 0x00000000fffffffe # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
bext x8, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x8, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
bext x2, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x22, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
bext x2, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x24, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
bext x15, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x22, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
bext x19, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x15, 0x0000000100000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bext x12, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x31, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
bext x30, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x30, 0x0000000100000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
bext x29, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x7, 0x0000000100000000 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
bext x11, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x13, 0x0000000100000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bext x27, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000100000000 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
bext x14, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x16, 0x0000000100000000 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bext x26, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000100000000 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bext x2, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000100000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
bext x12, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000100000000 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x12, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x25, 0x0000000100000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
bext x27, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x12, 0x0000000100000000 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
bext x9, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x27, 0x0000000100000000 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
bext x20, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x8, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
bext x9, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x31, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
bext x25, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x19, 0x0000000100000001 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
bext x12, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x24, 0x0000000100000001 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
bext x3, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x29, 0x0000000100000001 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
bext x27, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x3, 0x0000000100000001 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
bext x20, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x28, 0x0000000100000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
bext x13, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000100000001 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
bext x31, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000100000001 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bext x23, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x18, 0x0000000100000001 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
bext x12, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
bext x29, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x26, 0x0000000100000001 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
bext x27, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000100000001 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x24, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x14, 0x0000000100000001 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
bext x1, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x5, 0x0000000100000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
bext x9, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x26, 0x0000000100000001 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
bext x7, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x16, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bext x2, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x13, 0x0000000100000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
bext x27, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xc45cfe11942512f1 # initialize rs1
li x0, 0x7933d2054ba25a03 # initialize rs2
bext x12, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x9c05c896244f0d3f # initialize rs1
li x1, 0x05af91efaeeb44a7 # initialize rs2
bext x25, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xe776cb2b3fe3e2df # initialize rs1
li x2, 0xa85c52f629095730 # initialize rs2
bext x16, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x555341deb82a99eb # initialize rs1
li x3, 0x3f2a6ad002febc74 # initialize rs2
bext x2, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8f3f96d0e5905616 # initialize rs1
li x4, 0xcd1af32139abf34c # initialize rs2
bext x7, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x52894f7d05380564 # initialize rs1
li x5, 0x06c7b9cdab2585b9 # initialize rs2
bext x18, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb81e8ee0a6b96b8f # initialize rs1
li x6, 0x2842f8965c5f5e4d # initialize rs2
bext x19, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x60be9d2b8749d890 # initialize rs1
li x7, 0x70ac16f8c49f65d0 # initialize rs2
bext x19, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x459227f43cfb0779 # initialize rs1
li x8, 0x11a22ebfb9e20ae9 # initialize rs2
bext x13, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x3a64612e8e1def6d # initialize rs1
li x9, 0x60e58ee570d91e66 # initialize rs2
bext x2, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x58243e7d75618f5c # initialize rs1
li x10, 0x7c72d79f9622c0b9 # initialize rs2
bext x28, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x55200263728b4a1c # initialize rs1
li x11, 0x967fcc8f4926ffcb # initialize rs2
bext x31, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xd4c2474ca02374e1 # initialize rs1
li x12, 0xe44213dc60b79126 # initialize rs2
bext x19, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xe205597e7356d408 # initialize rs1
li x13, 0xfe1e7f10de991669 # initialize rs2
bext x31, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xfe47e81491ef8761 # initialize rs1
li x14, 0x1cb6de24171cef04 # initialize rs2
bext x21, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x6428cbe7e3e828f0 # initialize rs1
li x15, 0xccc9142bbb3664ed # initialize rs2
bext x13, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x9051093c067153ac # initialize rs1
li x16, 0x46525df7aa160003 # initialize rs2
bext x14, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x7c900015960595af # initialize rs1
li x17, 0x0debb8f72ae72d40 # initialize rs2
bext x8, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xccdbc9e315a8aa35 # initialize rs1
li x18, 0xcd5baddd4f59d9e2 # initialize rs2
bext x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x8c8f7f2027b4f3de # initialize rs1
li x19, 0x15ceb72553e09d71 # initialize rs2
bext x13, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x01edea8b26869737 # initialize rs1
li x20, 0xa8af4160d7757af3 # initialize rs2
bext x17, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xd6e5c57ab62bc229 # initialize rs1
li x21, 0x1299574593c077cc # initialize rs2
bext x14, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x078f25b6c06a6ef7 # initialize rs1
li x22, 0xf55e85fdd7ab6fed # initialize rs2
bext x31, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xb6e3e422154e7adb # initialize rs1
li x23, 0x37884289923f6832 # initialize rs2
bext x15, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x8c12580f33faaadc # initialize rs1
li x24, 0x300744040be9afde # initialize rs2
bext x21, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xd2e4dfe2cbabbf16 # initialize rs1
li x25, 0xaf686ec57add81e6 # initialize rs2
bext x30, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x38a2145d20606ff5 # initialize rs1
li x26, 0x6e29a0010e4bc372 # initialize rs2
bext x3, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xa166bf6487b26503 # initialize rs1
li x27, 0x1f8abcf9561d2965 # initialize rs2
bext x25, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x8e3c90c41a38ad8b # initialize rs1
li x28, 0xf5973a475e747a65 # initialize rs2
bext x9, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x988367165b5f0c87 # initialize rs1
li x29, 0x54c3390d990eb27e # initialize rs2
bext x30, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xab070d9049c3517d # initialize rs1
li x30, 0xf94ae338a94d4311 # initialize rs2
bext x22, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x53b3511e693cff8e # initialize rs1
li x31, 0x1bcdcf27cd642143 # initialize rs2
bext x16, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x23cbd96653b1a123 # initialize rs1
li x24, 0x3b30396077cb6834 # initialize rs2
bext x0, x0, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xd412ef80246edd7a # initialize rs1
li x27, 0xa6fcfacafc566fd8 # initialize rs2
bext x1, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7a8207d17a1ad160 # initialize rs1
li x29, 0x86dac65e3294d43c # initialize rs2
bext x2, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xad29b52f02e8103a # initialize rs1
li x17, 0xbb8830cf091bd6c7 # initialize rs2
bext x3, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x67d81293834a6957 # initialize rs1
li x17, 0xc7395cb9e4478f84 # initialize rs2
bext x4, x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf356612a21f096af # initialize rs1
li x11, 0x502cacadf1dbfce5 # initialize rs2
bext x5, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x84583aef3b55e132 # initialize rs1
li x30, 0x314fdb7570fce24f # initialize rs2
bext x6, x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1e58a76e85619243 # initialize rs1
li x18, 0x6a5b1248a5848742 # initialize rs2
bext x7, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xaef0206d92cdd268 # initialize rs1
li x20, 0x7f6355447069fc19 # initialize rs2
bext x8, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x944362900a4b67fb # initialize rs1
li x1, 0xbca2b545f08efd1f # initialize rs2
bext x9, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x224b2a2dd2a6c0a0 # initialize rs1
li x25, 0x8bf021efcbce1f43 # initialize rs2
bext x10, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa099a8b9baa1d771 # initialize rs1
li x3, 0x49ae9188ac24b795 # initialize rs2
bext x11, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xd54399ce58e3f756 # initialize rs1
li x6, 0xc839d99423417d74 # initialize rs2
bext x12, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x7aa57705d17bc045 # initialize rs1
li x26, 0xba68d9fe792dd597 # initialize rs2
bext x13, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x92aeb6912efafdc6 # initialize rs1
li x7, 0xb4cfbb13d357f4d0 # initialize rs2
bext x14, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2673e3a35d617cf4 # initialize rs1
li x8, 0xbf01cf4900bd5bbc # initialize rs2
bext x15, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x99c02d7273a67a0f # initialize rs1
li x1, 0xcc34e5ed521a6ce6 # initialize rs2
bext x16, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x7c00aa34ece9b8fa # initialize rs1
li x9, 0xf078ba5df25b64ba # initialize rs2
bext x17, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x04093983472227f1 # initialize rs1
li x5, 0xd3e5cbdddb80aa8e # initialize rs2
bext x18, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x53bf32a1f40ff411 # initialize rs1
li x22, 0xf956ee9a134cc99c # initialize rs2
bext x19, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x710c22d386fe09ca # initialize rs1
li x10, 0x79a3a51f9d3baf6c # initialize rs2
bext x20, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xb1b4cebc8348ae0a # initialize rs1
li x19, 0x3433b73df9fc454d # initialize rs2
bext x21, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x729311a04e7f5238 # initialize rs1
li x5, 0x1bec98eb751df03f # initialize rs2
bext x22, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x221f5add2d833f47 # initialize rs1
li x8, 0xffc362b32425071b # initialize rs2
bext x23, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xa335109f02fa8c25 # initialize rs1
li x15, 0x19c9cd560f9a2af2 # initialize rs2
bext x24, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x471bd0d2de929305 # initialize rs1
li x11, 0x144ee7df8aa0f48a # initialize rs2
bext x25, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x2b6a40666c56fd74 # initialize rs1
li x9, 0x131301e27282aaf0 # initialize rs2
bext x26, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xd90e1c48c8e8ff14 # initialize rs1
li x10, 0x1eaa6cd9fa1dd589 # initialize rs2
bext x27, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x93d945df6b68443f # initialize rs1
li x11, 0x50f295935661c2a8 # initialize rs2
bext x28, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x9ebd2a97fb587621 # initialize rs1
li x5, 0x5435a0a6d66b5239 # initialize rs2
bext x29, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1f084f3a0954da25 # initialize rs1
li x30, 0xbc815425aa9153bb # initialize rs2
bext x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xf2f4ea7b2ac337c1 # initialize rs1
li x24, 0x4365201720ee5867 # initialize rs2
bext x31, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x11, 0xb8b2a880041d4f84 # initialize rs1
li x0, 0xa0678d6146a8237f # initialize rs2
bext x0, x11, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x26, 0x404055310f356dce # initialize rs1
li x1, 0xc90c25b78ddaf3ae # initialize rs2
bext x1, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x13, 0xbfd7a7d919911b2f # initialize rs1
li x2, 0x86a281f3a4fd7d2d # initialize rs2
bext x2, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x9, 0x9d3b910dad73c9ca # initialize rs1
li x3, 0xa6f9726fe29dddb5 # initialize rs2
bext x3, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0x7bd4fa178426c0a4 # initialize rs1
li x4, 0x2da82afad768f910 # initialize rs2
bext x4, x28, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0x5b4c05562ffbd393 # initialize rs1
li x5, 0x15ba318722019675 # initialize rs2
bext x5, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x429175b6bcc14c87 # initialize rs1
li x6, 0x2fc2f8211bda2fff # initialize rs2
bext x6, x24, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x4d0535a4b526cd41 # initialize rs1
li x7, 0x8c314f1b0d9da6e4 # initialize rs2
bext x7, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x11, 0x3ed402268159d100 # initialize rs1
li x8, 0xbdad13ff26c6dcdb # initialize rs2
bext x8, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x6, 0xb4d5c33e154a2fbc # initialize rs1
li x9, 0xc5a36108b2df0f01 # initialize rs2
bext x9, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x17, 0x69c78732597b0847 # initialize rs1
li x10, 0xe1e4ca86c276798f # initialize rs2
bext x10, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x2, 0x900d1c4b9063e6dc # initialize rs1
li x11, 0xa2a00803d561acc8 # initialize rs2
bext x11, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x18, 0x085c46aa8ee883d0 # initialize rs1
li x12, 0xc603ca82f387d946 # initialize rs2
bext x12, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x29, 0xa56a632438951903 # initialize rs1
li x13, 0xdd3178518ed5af3f # initialize rs2
bext x13, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x22, 0xfe2d83445e451279 # initialize rs1
li x14, 0xd5ee7978308fa529 # initialize rs2
bext x14, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x14, 0xee7c9c2e222fec08 # initialize rs1
li x15, 0xb25aefb54f885569 # initialize rs2
bext x15, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x22, 0x7f003bb1edab6c08 # initialize rs1
li x16, 0x5dc79c26209ffbb4 # initialize rs2
bext x16, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x29, 0xf30a0b361721b734 # initialize rs1
li x17, 0x22ec503de4a571b2 # initialize rs2
bext x17, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x8, 0x0eaa9d9f1472818c # initialize rs1
li x18, 0x4a67485b87c2ad28 # initialize rs2
bext x18, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x25, 0xe89fc42f111f5108 # initialize rs1
li x19, 0xb7f6184f0f5f7370 # initialize rs2
bext x19, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x25, 0x7465dc73bd140ec0 # initialize rs1
li x20, 0x4a0b90d5d067df44 # initialize rs2
bext x20, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x16, 0x2ee21d560f98b448 # initialize rs1
li x21, 0x5ecefc23ad827b4e # initialize rs2
bext x21, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x13, 0x9eae136c1baed4df # initialize rs1
li x22, 0xfb82a64553567dc4 # initialize rs2
bext x22, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x9, 0x43453b5788e7df42 # initialize rs1
li x23, 0x02fa28478dd469a6 # initialize rs2
bext x23, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x3, 0xc563be0499543ff7 # initialize rs1
li x24, 0x5163eb58130e57be # initialize rs2
bext x24, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x10, 0x1efd08c2258d7948 # initialize rs1
li x25, 0x280771bf82d808cb # initialize rs2
bext x25, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x16, 0xfdfff42e5e53bf15 # initialize rs1
li x26, 0xe5ba837dbbc5db45 # initialize rs2
bext x26, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x1, 0x5818bbbcdefcfe76 # initialize rs1
li x27, 0x605defb224d1ecae # initialize rs2
bext x27, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x6, 0xd0e1482ed7b1e4ac # initialize rs1
li x28, 0xf3daf3a3df6f5764 # initialize rs2
bext x28, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x16, 0x37d79de9a5cc27ad # initialize rs1
li x29, 0xad84fc198257531b # initialize rs2
bext x29, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x1, 0xf8967dfa8df3f0f5 # initialize rs1
li x30, 0x3bbac6bdabb54293 # initialize rs2
bext x30, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x25, 0xa77401afacf2c8af # initialize rs1
li x31, 0xc943bc33d1b3f875 # initialize rs2
bext x31, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xc6e6175bf077d0c1 # initialize rs1
li x0, 0xae5232e08a813c23 # initialize rs2
bext x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x62c09e36e66ea231 # initialize rs1
li x1, 0xd4f1111c63a5584e # initialize rs2
bext x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x642e70d26a216d91 # initialize rs1
li x2, 0x691c0f2243e735c6 # initialize rs2
bext x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xaed2643abbee0c7c # initialize rs1
li x3, 0x68b70f9667359dcf # initialize rs2
bext x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x727401481a4f3620 # initialize rs1
li x4, 0x6951002a712c6fa8 # initialize rs2
bext x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9674c18d4174ea06 # initialize rs1
li x5, 0x49a97ee8a6373618 # initialize rs2
bext x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x57e0cc9184c950cf # initialize rs1
li x6, 0x4b0328c0e2e69dfc # initialize rs2
bext x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x849b611b995cf26d # initialize rs1
li x7, 0xd02706eb6f2d2a42 # initialize rs2
bext x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xa09bae38a1efd296 # initialize rs1
li x8, 0x7fbfb7677291edc2 # initialize rs2
bext x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x278d806aa450c484 # initialize rs1
li x9, 0xd0c31bfcdcf63a8f # initialize rs2
bext x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x2e989fd06e79d5b6 # initialize rs1
li x10, 0xd020442612f8efe1 # initialize rs2
bext x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x95f210670472c000 # initialize rs1
li x11, 0xd94fd9d37c1c127c # initialize rs2
bext x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xf5b3fd7f25639670 # initialize rs1
li x12, 0xe932bfb8138dd88d # initialize rs2
bext x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x792af48d507529f1 # initialize rs1
li x13, 0xb77ce84792932fb5 # initialize rs2
bext x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x8f15f6e4c973438e # initialize rs1
li x14, 0xc84164cb00ccefde # initialize rs2
bext x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x10b7777a76e26da0 # initialize rs1
li x15, 0x247134682168bc7e # initialize rs2
bext x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x47e143fb57ebca24 # initialize rs1
li x16, 0xdd4fffb3174793bb # initialize rs2
bext x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x125cdad8ea8bd51a # initialize rs1
li x17, 0x159bfef5203015e9 # initialize rs2
bext x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x60b97c89e89d02a4 # initialize rs1
li x18, 0x7bd24547735a934f # initialize rs2
bext x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xac0685ef4dda3c06 # initialize rs1
li x19, 0x335c9484546a64c8 # initialize rs2
bext x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xf2fff3e1dcf9d343 # initialize rs1
li x20, 0x7d5e70da02ba0ce4 # initialize rs2
bext x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x573a15a02ab4a339 # initialize rs1
li x21, 0xac888348811b27ef # initialize rs2
bext x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x80fa8009a3abc9b5 # initialize rs1
li x22, 0x8f5215153ae5bc18 # initialize rs2
bext x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x7afa4d8f9613d121 # initialize rs1
li x23, 0xb0c1db56cefed2a3 # initialize rs2
bext x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x7a7f4cd906286264 # initialize rs1
li x24, 0x43a725e9778611c5 # initialize rs2
bext x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x5e1aacc1496aac28 # initialize rs1
li x25, 0xf24a02e071ba9586 # initialize rs2
bext x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x289210f9720ac294 # initialize rs1
li x26, 0xa3daa289992415d1 # initialize rs2
bext x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x7b3d01c8a709476f # initialize rs1
li x27, 0xe8fdf1c66cf9a33b # initialize rs2
bext x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x3c44ab805fd0b56a # initialize rs1
li x28, 0x000f4bc01984fd8a # initialize rs2
bext x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x20bc90b16573af44 # initialize rs1
li x29, 0xa6a3bf0d192b7edf # initialize rs2
bext x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x35ad8a37d8abc292 # initialize rs1
li x30, 0xebcc5f108b9e5001 # initialize rs2
bext x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x8a3c0cf8e640e99a # initialize rs1
li x31, 0x5a7e1c88574b3f5d # initialize rs2
bext x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x19, x18 # perform first operation
bext x31, x16, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x14, x8 # perform first operation
bext x2, x16, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x20, x16 # perform first operation
bext x26, x19, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x1, x17 # perform first operation
bext x19, x27, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x25, x28 # perform first operation
bext x1, x2, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x23, x26 # perform first operation
bext x26, x31, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x1, x26 # perform first operation
bext x11, x28, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x14, x27 # perform first operation
bext x22, x8, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x9, x26 # perform first operation
bext x8, x21, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x23, x6 # perform first operation
bext x23, x24, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x17, x7 # perform first operation
bext x7, x12, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x22, x10 # perform first operation
bext x15, x18, x31 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-bexti.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xdb824e1115c0d51c # initialize rs1
bexti x9, x0, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x318315108a1d91ab # initialize rs1
bexti x29, x1, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb7c99ba4faaa07ec # initialize rs1
bexti x1, x2, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x65fd16ac6b516108 # initialize rs1
bexti x21, x3, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xd277d14d055182e6 # initialize rs1
bexti x10, x4, 2 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5921d2ba1e8140c2 # initialize rs1
bexti x18, x5, 30 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xbac5a2b4dab4556a # initialize rs1
bexti x5, x6, 24 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd4f2856d6ae865fa # initialize rs1
bexti x5, x7, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x08ffe17ab00f5279 # initialize rs1
bexti x16, x8, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x441987fa6cf250c6 # initialize rs1
bexti x1, x9, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x640899c1db67a5c1 # initialize rs1
bexti x7, x10, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x8899c399b4aa286e # initialize rs1
bexti x6, x11, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x081ffd9a940bcef2 # initialize rs1
bexti x18, x12, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x4b60a83167d38f40 # initialize rs1
bexti x23, x13, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x9e5f0ffaad3947a4 # initialize rs1
bexti x6, x14, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xef6442cfca1a812e # initialize rs1
bexti x11, x15, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x4a02a9be3a09c452 # initialize rs1
bexti x26, x16, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x1906969033bf27db # initialize rs1
bexti x25, x17, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x977e83d3eed55632 # initialize rs1
bexti x15, x18, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xf722a3ee74932597 # initialize rs1
bexti x13, x19, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x7f9aecf5ad782948 # initialize rs1
bexti x18, x20, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x1fbf9e964d307c99 # initialize rs1
bexti x12, x21, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xfffe297def711ec4 # initialize rs1
bexti x23, x22, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xaf1ae9dce5a38e81 # initialize rs1
bexti x30, x23, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xb0a59f0371760351 # initialize rs1
bexti x6, x24, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x695dc67b56dc3c05 # initialize rs1
bexti x13, x25, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x26f6c64777d06a00 # initialize rs1
bexti x2, x26, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xb50f46649aebbf0b # initialize rs1
bexti x28, x27, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xeaf0bfe1462aba8d # initialize rs1
bexti x19, x28, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x2224762e6c0386af # initialize rs1
bexti x5, x29, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xa6b561dcda72b2de # initialize rs1
bexti x10, x30, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xdbda561c77651a42 # initialize rs1
bexti x19, x31, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 248)

# Testcase cp_rd (Test destination rd = x0)
li x25, 0x03c9508067591ce4 # initialize rs1
bexti x0, x25, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x9, 0xc13078b32dbb4000 # initialize rs1
bexti x1, x9, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x30, 0x2ced576550a5289c # initialize rs1
bexti x2, x30, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x13, 0x3b59611ea9cdf2bc # initialize rs1
bexti x3, x13, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0xbe37bc7cea9d37d0 # initialize rs1
bexti x4, x25, 21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x861fa0a75948c0f3 # initialize rs1
bexti x5, x29, 60 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0xa279b06412903c3c # initialize rs1
bexti x6, x20, 27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x56155c0114830caf # initialize rs1
bexti x7, x21, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x9, 0xb0b0390d40174b69 # initialize rs1
bexti x8, x9, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x10, 0x56be213ac4f9bb02 # initialize rs1
bexti x9, x10, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xc04bf10d38d75936 # initialize rs1
bexti x10, x10, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x25, 0xcd58697d1af7219c # initialize rs1
bexti x11, x25, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x16, 0x52441a885a3eb794 # initialize rs1
bexti x12, x16, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x19, 0x99911dc785ddbcc4 # initialize rs1
bexti x13, x19, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x13, 0xfb091406d92d56db # initialize rs1
bexti x14, x13, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x16, 0x5dbc7e6cba107d9e # initialize rs1
bexti x15, x16, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x14, 0x66fb34f115d91a40 # initialize rs1
bexti x16, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x22, 0x0ded22c5ceaae417 # initialize rs1
bexti x17, x22, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x20, 0x037339de0c5a6022 # initialize rs1
bexti x18, x20, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x23, 0xc7fde8805aa9a1b4 # initialize rs1
bexti x19, x23, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xd6294d4f18a7978a # initialize rs1
bexti x20, x20, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0xf3905d024cc288de # initialize rs1
bexti x21, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x29, 0xfd2067b0803b519f # initialize rs1
bexti x22, x29, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x14, 0x1793f588ba0fa90e # initialize rs1
bexti x23, x14, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x31, 0x9b941441fa9f4830 # initialize rs1
bexti x24, x31, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x13, 0x65ca262bd91ce5fe # initialize rs1
bexti x25, x13, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x17, 0xf65ab7336b970abe # initialize rs1
bexti x26, x17, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x7, 0x28891d74fbe65112 # initialize rs1
bexti x27, x7, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x13, 0x6c3fffc5044c2f70 # initialize rs1
bexti x28, x13, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x5, 0x003da572bc3d9e03 # initialize rs1
bexti x29, x5, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x27, 0xa955369186a34851 # initialize rs1
bexti x30, x27, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x6, 0x0f21f4addc9d2e8a # initialize rs1
bexti x31, x6, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x0000000000000000 # initialize rs1
bexti x13, x2, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x15, 0x0000000000000001 # initialize rs1
bexti x31, x15, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x0000000000000002 # initialize rs1
bexti x9, x29, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x29, 0x8000000000000000 # initialize rs1
bexti x27, x29, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x17, 0x8000000000000001 # initialize rs1
bexti x23, x17, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x16, 0x7fffffffffffffff # initialize rs1
bexti x24, x16, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x1, 0x7ffffffffffffffe # initialize rs1
bexti x28, x1, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x1, 0xffffffffffffffff # initialize rs1
bexti x10, x1, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
bexti x5, x26, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x1, 0x5bbc887763ae86f2 # initialize rs1
bexti x8, x1, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
bexti x14, x7, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x19, 0x5555555555555555 # initialize rs1
bexti x14, x19, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0x00000000ffffffff # initialize rs1
bexti x6, x17, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x2, 0x00000000fffffffe # initialize rs1
bexti x6, x2, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x28, 0x0000000100000000 # initialize rs1
bexti x6, x28, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x18, 0x0000000100000001 # initialize rs1
bexti x16, x18, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa87509a385795de8 # initialize rs1
bexti x0, x0, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xb5ab4135c7b64b66 # initialize rs1
bexti x1, x1, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x69e7e7a674f04a64 # initialize rs1
bexti x2, x2, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xec6d7117f16076aa # initialize rs1
bexti x3, x3, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x22ea567611305aaa # initialize rs1
bexti x4, x4, 53 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3ed0bbe247071da3 # initialize rs1
bexti x5, x5, 63 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1bd39edc479ee0b4 # initialize rs1
bexti x6, x6, 34 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6f332baeb9089624 # initialize rs1
bexti x7, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x36031a4c22d247a7 # initialize rs1
bexti x8, x8, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xa98fe8b920581d35 # initialize rs1
bexti x9, x9, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x7019fb7bbf3774ee # initialize rs1
bexti x10, x10, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xb3c5a606c1941032 # initialize rs1
bexti x11, x11, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x4847e77031be57d0 # initialize rs1
bexti x12, x12, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x13ce459b0c578a3e # initialize rs1
bexti x13, x13, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xe5e8ce4927abc91e # initialize rs1
bexti x14, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x70e1c92ec3b83131 # initialize rs1
bexti x15, x15, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x921fbe52ecb343b6 # initialize rs1
bexti x16, x16, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x57043df6618d0482 # initialize rs1
bexti x17, x17, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xd3a6f81eaab13569 # initialize rs1
bexti x18, x18, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xd54307bdbec4a09b # initialize rs1
bexti x19, x19, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x7d5a403e8d320546 # initialize rs1
bexti x20, x20, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf9fc2852680a3e4f # initialize rs1
bexti x21, x21, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xe900e1bec6cdbf5c # initialize rs1
bexti x22, x22, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x0b3290491c7d066a # initialize rs1
bexti x23, x23, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x83d04abad4e5401a # initialize rs1
bexti x24, x24, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x7c0d04a3a037a5b0 # initialize rs1
bexti x25, x25, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0fb1c171f771bac3 # initialize rs1
bexti x26, x26, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x3d79561b6f91fcf3 # initialize rs1
bexti x27, x27, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa9b068f742a6415b # initialize rs1
bexti x28, x28, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x839d2e36e34aae29 # initialize rs1
bexti x29, x29, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x06af40a3f0b65b89 # initialize rs1
bexti x30, x30, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe27b554a528469d9 # initialize rs1
bexti x31, x31, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_uimm (Test bit = 0)
li x25, 0x829ae15825dfabe5 # initialize rs1
bexti x7, x25, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 896)

# Testcase cp_uimm (Test bit = 1)
li x6, 0x9a431f0eb9c55340 # initialize rs1
bexti x18, x6, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 904)

# Testcase cp_uimm (Test bit = 2)
li x26, 0x0de6563253f02813 # initialize rs1
bexti x24, x26, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 912)

# Testcase cp_uimm (Test bit = 3)
li x15, 0xcbe4ebc0f02d8fb2 # initialize rs1
bexti x1, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 920)

# Testcase cp_uimm (Test bit = 4)
li x19, 0x3b78de703f0a0751 # initialize rs1
bexti x11, x19, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 928)

# Testcase cp_uimm (Test bit = 5)
li x11, 0x4ff2f175fcc0945d # initialize rs1
bexti x5, x11, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 936)

# Testcase cp_uimm (Test bit = 6)
li x5, 0xde69f86b21bccc60 # initialize rs1
bexti x1, x5, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 944)

# Testcase cp_uimm (Test bit = 7)
li x18, 0xd91b60200aed6469 # initialize rs1
bexti x24, x18, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 952)

# Testcase cp_uimm (Test bit = 8)
li x5, 0x7b046bfb70761170 # initialize rs1
bexti x23, x5, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 960)

# Testcase cp_uimm (Test bit = 9)
li x12, 0x4fb32588e0627ded # initialize rs1
bexti x15, x12, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 968)

# Testcase cp_uimm (Test bit = 10)
li x18, 0xe8b019d55647cb7d # initialize rs1
bexti x6, x18, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 976)

# Testcase cp_uimm (Test bit = 11)
li x13, 0xe98065744beb67c9 # initialize rs1
bexti x9, x13, 11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 984)

# Testcase cp_uimm (Test bit = 12)
li x24, 0xa1498dc581280e9b # initialize rs1
bexti x31, x24, 12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 992)

# Testcase cp_uimm (Test bit = 13)
li x30, 0xf47f093a28e94dc7 # initialize rs1
bexti x24, x30, 13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1000)

# Testcase cp_uimm (Test bit = 14)
li x14, 0x6ab1d67182a18709 # initialize rs1
bexti x23, x14, 14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1008)

# Testcase cp_uimm (Test bit = 15)
li x12, 0x413ba08e5b8edcea # initialize rs1
bexti x3, x12, 15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1016)

# Testcase cp_uimm (Test bit = 16)
li x11, 0x119b4d3684193cce # initialize rs1
bexti x10, x11, 16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1024)

# Testcase cp_uimm (Test bit = 17)
li x16, 0xba25926ff05d8651 # initialize rs1
bexti x19, x16, 17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1032)

# Testcase cp_uimm (Test bit = 18)
li x6, 0x2a542ded809520aa # initialize rs1
bexti x29, x6, 18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1040)

# Testcase cp_uimm (Test bit = 19)
li x7, 0x113dff9ad573a00f # initialize rs1
bexti x6, x7, 19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1048)

# Testcase cp_uimm (Test bit = 20)
li x11, 0xffada4ba9c550324 # initialize rs1
bexti x25, x11, 20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1056)

# Testcase cp_uimm (Test bit = 21)
li x3, 0xfa6ef04df4e97754 # initialize rs1
bexti x20, x3, 21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1064)

# Testcase cp_uimm (Test bit = 22)
li x27, 0xa3ceb15b22307f26 # initialize rs1
bexti x9, x27, 22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1072)

# Testcase cp_uimm (Test bit = 23)
li x12, 0x6fb98f1ee69dd29e # initialize rs1
bexti x14, x12, 23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1080)

# Testcase cp_uimm (Test bit = 24)
li x14, 0xed7a18e4111098e6 # initialize rs1
bexti x21, x14, 24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1088)

# Testcase cp_uimm (Test bit = 25)
li x5, 0xb94264cc579268da # initialize rs1
bexti x26, x5, 25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1096)

# Testcase cp_uimm (Test bit = 26)
li x25, 0x050eece38b946e77 # initialize rs1
bexti x15, x25, 26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1104)

# Testcase cp_uimm (Test bit = 27)
li x5, 0x1b31c6f8cd1287f2 # initialize rs1
bexti x21, x5, 27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cp_uimm (Test bit = 28)
li x1, 0x1b41da61bfc96921 # initialize rs1
bexti x12, x1, 28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1120)

# Testcase cp_uimm (Test bit = 29)
li x27, 0x65e1eb95807de752 # initialize rs1
bexti x15, x27, 29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1128)

# Testcase cp_uimm (Test bit = 30)
li x27, 0x1491e4c9713b4863 # initialize rs1
bexti x18, x27, 30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cp_uimm (Test bit = 31)
li x3, 0xdbaa776cd76d216b # initialize rs1
bexti x6, x3, 31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1144)

# Testcase cp_uimm (Test bit = 32)
li x15, 0xb7c21eb30878d402 # initialize rs1
bexti x28, x15, 32 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1152)

# Testcase cp_uimm (Test bit = 33)
li x5, 0xc8eb61599ee636ea # initialize rs1
bexti x29, x5, 33 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1160)

# Testcase cp_uimm (Test bit = 34)
li x15, 0x8cafe883c75fd049 # initialize rs1
bexti x3, x15, 34 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1168)

# Testcase cp_uimm (Test bit = 35)
li x13, 0xed5fc6a297ee24dd # initialize rs1
bexti x3, x13, 35 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1176)

# Testcase cp_uimm (Test bit = 36)
li x29, 0xc55d9650e76e933c # initialize rs1
bexti x28, x29, 36 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1184)

# Testcase cp_uimm (Test bit = 37)
li x23, 0x0cc1d2eaa743ed17 # initialize rs1
bexti x24, x23, 37 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1192)

# Testcase cp_uimm (Test bit = 38)
li x31, 0xa5e5ce7caea7ca77 # initialize rs1
bexti x8, x31, 38 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1200)

# Testcase cp_uimm (Test bit = 39)
li x20, 0x599ab4a6abd3f2ea # initialize rs1
bexti x16, x20, 39 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1208)

# Testcase cp_uimm (Test bit = 40)
li x18, 0xabaadaeac1c364a4 # initialize rs1
bexti x7, x18, 40 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1216)

# Testcase cp_uimm (Test bit = 41)
li x10, 0x0c62862e861e9428 # initialize rs1
bexti x3, x10, 41 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1224)

# Testcase cp_uimm (Test bit = 42)
li x8, 0xc64aa167b7a1ef2d # initialize rs1
bexti x15, x8, 42 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1232)

# Testcase cp_uimm (Test bit = 43)
li x17, 0x2e410971ba30cfea # initialize rs1
bexti x7, x17, 43 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1240)

# Testcase cp_uimm (Test bit = 44)
li x26, 0xd2a22d8af7c6796e # initialize rs1
bexti x29, x26, 44 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1248)

# Testcase cp_uimm (Test bit = 45)
li x2, 0xbc6fb397bd875792 # initialize rs1
bexti x10, x2, 45 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1256)

# Testcase cp_uimm (Test bit = 46)
li x1, 0x6ad42d9f60e171ba # initialize rs1
bexti x19, x1, 46 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1264)

# Testcase cp_uimm (Test bit = 47)
li x14, 0x5146417f5b34571a # initialize rs1
bexti x18, x14, 47 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1272)

# Testcase cp_uimm (Test bit = 48)
li x5, 0xe353c93022af7c3a # initialize rs1
bexti x24, x5, 48 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cp_uimm (Test bit = 49)
li x29, 0xd336a0a757625143 # initialize rs1
bexti x2, x29, 49 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1288)

# Testcase cp_uimm (Test bit = 50)
li x29, 0xdc6cea047fee4faf # initialize rs1
bexti x20, x29, 50 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1296)

# Testcase cp_uimm (Test bit = 51)
li x19, 0xd8706c61a7a7e936 # initialize rs1
bexti x5, x19, 51 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1304)

# Testcase cp_uimm (Test bit = 52)
li x22, 0x01f553441361ce03 # initialize rs1
bexti x7, x22, 52 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1312)

# Testcase cp_uimm (Test bit = 53)
li x27, 0xebe6758706f6361c # initialize rs1
bexti x15, x27, 53 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1320)

# Testcase cp_uimm (Test bit = 54)
li x14, 0x8a6a63b8dd182a50 # initialize rs1
bexti x7, x14, 54 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1328)

# Testcase cp_uimm (Test bit = 55)
li x6, 0xedcbb6bf8e954c2e # initialize rs1
bexti x30, x6, 55 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1336)

# Testcase cp_uimm (Test bit = 56)
li x12, 0x69a51a76eead33f4 # initialize rs1
bexti x19, x12, 56 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1344)

# Testcase cp_uimm (Test bit = 57)
li x7, 0x34c31c226f188a6a # initialize rs1
bexti x23, x7, 57 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1352)

# Testcase cp_uimm (Test bit = 58)
li x10, 0x3024468d06913332 # initialize rs1
bexti x29, x10, 58 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1360)

# Testcase cp_uimm (Test bit = 59)
li x29, 0xf5bc2eb09a910650 # initialize rs1
bexti x14, x29, 59 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1368)

# Testcase cp_uimm (Test bit = 60)
li x22, 0x0e86b5434ed4fcd6 # initialize rs1
bexti x20, x22, 60 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1376)

# Testcase cp_uimm (Test bit = 61)
li x2, 0x5d1ba20237e5fec2 # initialize rs1
bexti x14, x2, 61 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1384)

# Testcase cp_uimm (Test bit = 62)
li x19, 0xf843a5e54725d22f # initialize rs1
bexti x23, x19, 62 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1392)

# Testcase cp_uimm (Test bit = 63)
li x26, 0x3c480e5664a63ea5 # initialize rs1
bexti x13, x26, 63 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1400)

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x24, x29 # perform first operation
bexti x14, x27, 2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x17, x13 # perform first operation
bexti x7, x18, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x11, x15, x1 # perform first operation
bexti x18, x9, 7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x28, x16 # perform first operation
bexti x16, x24, 17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x15, x28, x9 # perform first operation
bexti x12, x23, 12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x28, x7 # perform first operation
bexti x7, x30, 45 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x14, x12 # perform first operation
bexti x19, x11, 10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x25, x12 # perform first operation
bexti x8, x27, 47 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x7, x30 # perform first operation
bexti x19, x23, 35 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x20, x9 # perform first operation
bexti x20, x23, 28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x8, x5 # perform first operation
bexti x5, x22, 26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x20, x12 # perform first operation
bexti x13, x2, 10 # perform second (triggering) operation

#.EQU SIGSIZE,1408
.EQU SIGSIZE,22016 #combined


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
