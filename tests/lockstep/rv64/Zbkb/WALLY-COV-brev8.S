///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbkb/WALLY-COV-brev8.S
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
li x0, 0x589413fefc9c0d76 # initialize rs1
brev8 x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xdc9d486e64fd88b3 # initialize rs1
brev8 x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x3011af1c6a5bec2c # initialize rs1
brev8 x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xd6b98dd5548d7e81 # initialize rs1
brev8 x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x7f5b83d395cde5e1 # initialize rs1
brev8 x8, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6db834ce1c717604 # initialize rs1
brev8 x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0xf925c5966638fb3e # initialize rs1
brev8 x2, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x042e06a8b2b98934 # initialize rs1
brev8 x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x6cb4a58a515fccd2 # initialize rs1
brev8 x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x53bbdbee8c1f89be # initialize rs1
brev8 x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xe05ad3ef625ca4c4 # initialize rs1
brev8 x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x6e3dbff5833c34a0 # initialize rs1
brev8 x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x662e4d6b3f498981 # initialize rs1
brev8 x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x52233cc8c623aa9f # initialize rs1
brev8 x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x9cdd1cbf2a03b7fc # initialize rs1
brev8 x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x42a6f643c0b5fb1d # initialize rs1
brev8 x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x15b17036a580240b # initialize rs1
brev8 x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe62fb65f786b32b9 # initialize rs1
brev8 x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x556fdc6fea8869e1 # initialize rs1
brev8 x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x7e3675069cd22d70 # initialize rs1
brev8 x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x3f0f318dfd647caa # initialize rs1
brev8 x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x2e6a6e3e0a7a8b25 # initialize rs1
brev8 x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x3ad809f1936ad42e # initialize rs1
brev8 x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x3d2c0dbb24b1cb91 # initialize rs1
brev8 x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xf208a4355d8a1dc8 # initialize rs1
brev8 x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x44fee0305946bdda # initialize rs1
brev8 x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xcdb8f0392adb445b # initialize rs1
brev8 x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xa758af546a61b77a # initialize rs1
brev8 x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x31c39d8dc66bf7f1 # initialize rs1
brev8 x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x241ba5b9fdca2546 # initialize rs1
brev8 x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x7cfc0bec73820aff # initialize rs1
brev8 x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x8cbf879737cb720b # initialize rs1
brev8 x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 248)

# Testcase cp_rd (Test destination rd = x0)
li x28, 0xc88c65b84ea85e46 # initialize rs1
brev8 x0, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x13, 0xdf64bc9d307c670f # initialize rs1
brev8 x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x23, 0xbffaeaa8a3428e5c # initialize rs1
brev8 x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x25, 0xdcfe4748cbf53b50 # initialize rs1
brev8 x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x4796f7ac90d69063 # initialize rs1
brev8 x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x88143f31332359ba # initialize rs1
brev8 x5, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x18, 0x4ebd668e90d19c6b # initialize rs1
brev8 x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0x48f649adf2c69a0e # initialize rs1
brev8 x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x18, 0x8841a8cd1ae7aaba # initialize rs1
brev8 x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x5, 0x62679abe9a3ef45e # initialize rs1
brev8 x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x18, 0x3a3d73ec38f2c008 # initialize rs1
brev8 x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0x78451b7cc3f54a65 # initialize rs1
brev8 x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x17, 0xd28b7c0478d651e8 # initialize rs1
brev8 x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x2, 0x529e0d9ac70bd8d2 # initialize rs1
brev8 x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x11, 0x33644d7f5831c492 # initialize rs1
brev8 x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x23, 0x528aaced7975e161 # initialize rs1
brev8 x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x13, 0xe61cf87eb93a21d1 # initialize rs1
brev8 x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x14, 0x0f4a4fc7e2b6e5f7 # initialize rs1
brev8 x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x3e36836d1ea352f1 # initialize rs1
brev8 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x3, 0x3d774eee8986148e # initialize rs1
brev8 x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x12, 0x4d8d2df73e3ceddf # initialize rs1
brev8 x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x3, 0x385836a78493b67e # initialize rs1
brev8 x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x14, 0x3a09a3efa474a234 # initialize rs1
brev8 x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0xbe1bd5b5408975ed # initialize rs1
brev8 x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x19, 0xd6b73cb38eb831f2 # initialize rs1
brev8 x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x11, 0xb843adf3c6b2bd5f # initialize rs1
brev8 x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x9, 0x4ca927a199272696 # initialize rs1
brev8 x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x20, 0xd12c85cf2708ecb4 # initialize rs1
brev8 x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x11, 0x9ceb1ddba7886423 # initialize rs1
brev8 x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x18, 0x7fae93ceb647a989 # initialize rs1
brev8 x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x8, 0x788ae386ccbb6aec # initialize rs1
brev8 x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x11, 0x76a779428ea8b07a # initialize rs1
brev8 x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x24, 0x0000000000000000 # initialize rs1
brev8 x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x7, 0x0000000000000001 # initialize rs1
brev8 x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x12, 0x0000000000000002 # initialize rs1
brev8 x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x31, 0x8000000000000000 # initialize rs1
brev8 x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x5, 0x8000000000000001 # initialize rs1
brev8 x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
brev8 x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
brev8 x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
brev8 x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x17, 0xfffffffffffffffe # initialize rs1
brev8 x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x26, 0x5bbc887763ae86f2 # initialize rs1
brev8 x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
brev8 x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x3, 0x5555555555555555 # initialize rs1
brev8 x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs1
brev8 x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x21, 0x00000000fffffffe # initialize rs1
brev8 x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x14, 0x0000000100000000 # initialize rs1
brev8 x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x3, 0x0000000100000001 # initialize rs1
brev8 x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa67418e0e1c8b8e3 # initialize rs1
brev8 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7c1e164b9405c984 # initialize rs1
brev8 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xf6309dce0b52cf7b # initialize rs1
brev8 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x6ed171b98e52f2d0 # initialize rs1
brev8 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xba2fe64c7c68d85a # initialize rs1
brev8 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4d4309e81fe6d046 # initialize rs1
brev8 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2b8b79769513e31f # initialize rs1
brev8 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2011dd887c338f5b # initialize rs1
brev8 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf37a7d5aceba8570 # initialize rs1
brev8 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x02d67bb5902fa1eb # initialize rs1
brev8 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x4981ed59e80faf18 # initialize rs1
brev8 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xaef3ef52e31ebc8b # initialize rs1
brev8 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x02ea33030ad00709 # initialize rs1
brev8 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe97a409da3943fab # initialize rs1
brev8 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x65307b439067c460 # initialize rs1
brev8 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xa431af47e0e50274 # initialize rs1
brev8 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xcfad0c4449f6962e # initialize rs1
brev8 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xa7e2c679c3c1aca2 # initialize rs1
brev8 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x0608f9db01fa4701 # initialize rs1
brev8 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xe6ffade90d346d4c # initialize rs1
brev8 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xf8036838493976f8 # initialize rs1
brev8 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xfd8eaf48b7ba6e3e # initialize rs1
brev8 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x2a0a66c323e19be3 # initialize rs1
brev8 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xb06ce09738e50939 # initialize rs1
brev8 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc3e4cc8cd2d7d047 # initialize rs1
brev8 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xe2e0e00a807af7e0 # initialize rs1
brev8 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x52248416b43fe299 # initialize rs1
brev8 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xa92588e26ae89c02 # initialize rs1
brev8 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa62877b15fab7154 # initialize rs1
brev8 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xbec04f9ae9692570 # initialize rs1
brev8 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xdaa79b1d2a930e3b # initialize rs1
brev8 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x00bc3bb9c11a22be # initialize rs1
brev8 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x31, x15, x18 # perform first operation
brev8 x17, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x16, x5 # perform first operation
brev8 x18, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x18, x29 # perform first operation
brev8 x17, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x6, x25 # perform first operation
brev8 x25, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x25, x15 # perform first operation
brev8 x27, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x25, x16 # perform first operation
brev8 x20, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x31, x20 # perform first operation
brev8 x24, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x12, x9 # perform first operation
brev8 x7, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x29, x3 # perform first operation
brev8 x8, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x15, x13 # perform first operation
brev8 x15, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x14, x15 # perform first operation
brev8 x15, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x24, x17, x5 # perform first operation
brev8 x12, x3 # perform second (triggering) operation

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
