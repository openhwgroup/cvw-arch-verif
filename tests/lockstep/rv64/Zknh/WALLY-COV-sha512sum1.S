///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zknh/WALLY-COV-sha512sum1.S
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
