///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbs/WALLY-COV-bseti.S
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
