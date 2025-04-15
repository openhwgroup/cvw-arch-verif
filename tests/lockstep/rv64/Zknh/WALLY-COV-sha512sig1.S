///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zknh/WALLY-COV-sha512sig1.S
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
li x0, 0x7be5347704c0de1e # initialize rs1
sha512sig1 x1, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x1f8b5072ab3f3342 # initialize rs1
sha512sig1 x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x9b9ce65ee007d1b3 # initialize rs1
sha512sig1 x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x12b27b7132038dd5 # initialize rs1
sha512sig1 x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x87bc6874bd2c0c25 # initialize rs1
sha512sig1 x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x837236e3288a211b # initialize rs1
sha512sig1 x27, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x66a7e3a2b5511c8c # initialize rs1
sha512sig1 x5, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x922bfd87eab66885 # initialize rs1
sha512sig1 x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x839a8ed81b84f63b # initialize rs1
sha512sig1 x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x04a05114bbcd54f3 # initialize rs1
sha512sig1 x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x71001662c4ed0621 # initialize rs1
sha512sig1 x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x67a132d8ba161abf # initialize rs1
sha512sig1 x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x12895025ee6c2915 # initialize rs1
sha512sig1 x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xcffe749dc1f0925b # initialize rs1
sha512sig1 x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xead927415947402f # initialize rs1
sha512sig1 x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x820ac4adc58dc38c # initialize rs1
sha512sig1 x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x754b1f2d8b260a9e # initialize rs1
sha512sig1 x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8a6ab93dac367b7a # initialize rs1
sha512sig1 x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xa03279cfd276f575 # initialize rs1
sha512sig1 x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x91b8ba79e8573ce8 # initialize rs1
sha512sig1 x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xdc4205a241a627d3 # initialize rs1
sha512sig1 x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x8dd45d2f6bf260cd # initialize rs1
sha512sig1 x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xed48bcdef09c90fd # initialize rs1
sha512sig1 x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xd3bb971bfcc98ff2 # initialize rs1
sha512sig1 x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xac010660b905c5f0 # initialize rs1
sha512sig1 x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xcd3deb3eab0ec8a2 # initialize rs1
sha512sig1 x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x51f639bad1a6a4e4 # initialize rs1
sha512sig1 x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x80280ca91779ebdf # initialize rs1
sha512sig1 x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xf321fe101117d7d6 # initialize rs1
sha512sig1 x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x0f721d5ed3c26c8f # initialize rs1
sha512sig1 x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xce34ff40eef8920e # initialize rs1
sha512sig1 x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x4287d592cc9f1408 # initialize rs1
sha512sig1 x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rd (Test destination rd = x0)
li x22, 0x2584583fd3115135 # initialize rs1
sha512sig1 x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x17, 0xe7e5807a82366cb7 # initialize rs1
sha512sig1 x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0x996b0bca6eca27cd # initialize rs1
sha512sig1 x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x27, 0x373690c1bb2266c9 # initialize rs1
sha512sig1 x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x8a58b8a50e6be2b5 # initialize rs1
sha512sig1 x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0xc02fb037d0fef46e # initialize rs1
sha512sig1 x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x5, 0x7b2cdfd368be0887 # initialize rs1
sha512sig1 x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xa6d5819f69ab7d6a # initialize rs1
sha512sig1 x7, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x14, 0x6ddc0181311c0b44 # initialize rs1
sha512sig1 x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x6, 0x4e22390b580226bf # initialize rs1
sha512sig1 x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x7, 0x3f370c7defba8ead # initialize rs1
sha512sig1 x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x18, 0x488bbfd9859489aa # initialize rs1
sha512sig1 x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x5, 0x9889b939364ce187 # initialize rs1
sha512sig1 x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x30, 0x7b873f1ea6a1ef25 # initialize rs1
sha512sig1 x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x19, 0x9d53ce815372e866 # initialize rs1
sha512sig1 x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x9, 0xe9d6b23f58d409f7 # initialize rs1
sha512sig1 x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x9, 0x24d21974a6894e3e # initialize rs1
sha512sig1 x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x18, 0xd65c8e3adf4b200e # initialize rs1
sha512sig1 x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x31, 0xe50f0eed72c47ca9 # initialize rs1
sha512sig1 x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x27, 0xe4cfcad4e723f4e8 # initialize rs1
sha512sig1 x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x4fd148270e058671 # initialize rs1
sha512sig1 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x8, 0x0459fdcff36fcfe8 # initialize rs1
sha512sig1 x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x7, 0xfc2bf9bc5740f036 # initialize rs1
sha512sig1 x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x7, 0x47b821c943788c4b # initialize rs1
sha512sig1 x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x27, 0x0ff8db26c7d1eae4 # initialize rs1
sha512sig1 x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x17, 0x9181e70c7899ba23 # initialize rs1
sha512sig1 x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x28, 0xc5b5fad563c3eb77 # initialize rs1
sha512sig1 x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0x5056efb0a2dc8e6a # initialize rs1
sha512sig1 x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x26, 0x2a6668d019401b50 # initialize rs1
sha512sig1 x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x25, 0x3db0c48046250985 # initialize rs1
sha512sig1 x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x3, 0x42f55edb67eeb65c # initialize rs1
sha512sig1 x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x3, 0x890996ac689cc78b # initialize rs1
sha512sig1 x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x0000000000000000 # initialize rs1
sha512sig1 x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x0000000000000001 # initialize rs1
sha512sig1 x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0x0000000000000002 # initialize rs1
sha512sig1 x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x28, 0x8000000000000000 # initialize rs1
sha512sig1 x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x24, 0x8000000000000001 # initialize rs1
sha512sig1 x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
sha512sig1 x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
sha512sig1 x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
sha512sig1 x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs1
sha512sig1 x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
sha512sig1 x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
sha512sig1 x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x2, 0x5555555555555555 # initialize rs1
sha512sig1 x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
sha512sig1 x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x6, 0x00000000fffffffe # initialize rs1
sha512sig1 x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x10, 0x0000000100000000 # initialize rs1
sha512sig1 x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x16, 0x0000000100000001 # initialize rs1
sha512sig1 x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xb7f47773158aeda9 # initialize rs1
sha512sig1 x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x0bbb295603d55a18 # initialize rs1
sha512sig1 x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x280ce8e98ef817fa # initialize rs1
sha512sig1 x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xbf54ea776bd705c3 # initialize rs1
sha512sig1 x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6c9c7985068a56d4 # initialize rs1
sha512sig1 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd6d1a0964af4057d # initialize rs1
sha512sig1 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4ac7d4929b4c9f01 # initialize rs1
sha512sig1 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8f074e1e97a835a5 # initialize rs1
sha512sig1 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8073817eaba86752 # initialize rs1
sha512sig1 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x30fca257b944ce6f # initialize rs1
sha512sig1 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x2a53df96435c18b7 # initialize rs1
sha512sig1 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x79c13772eaf00126 # initialize rs1
sha512sig1 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xf3dd24b1b770305e # initialize rs1
sha512sig1 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x04f04af8ae457067 # initialize rs1
sha512sig1 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x5a68b4ac7d0bd531 # initialize rs1
sha512sig1 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd5179ca13bbeb18d # initialize rs1
sha512sig1 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x206af569f7c60324 # initialize rs1
sha512sig1 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xd30b35051af44be9 # initialize rs1
sha512sig1 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xec558d07d4221962 # initialize rs1
sha512sig1 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xbb66a3165d49acbc # initialize rs1
sha512sig1 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x40161b5cff95b824 # initialize rs1
sha512sig1 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x913d00267d13ac07 # initialize rs1
sha512sig1 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xed989700f7a40e63 # initialize rs1
sha512sig1 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x139583cbc1b15f31 # initialize rs1
sha512sig1 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x6f983e2fe94cdc1c # initialize rs1
sha512sig1 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x82dac771ad30b08b # initialize rs1
sha512sig1 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xbbf81c920fe9e8d2 # initialize rs1
sha512sig1 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x05ae94e928c9c5b5 # initialize rs1
sha512sig1 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x67b84b3ef8e2d348 # initialize rs1
sha512sig1 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xdf89923d1338d970 # initialize rs1
sha512sig1 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x8d5643ae64b53b50 # initialize rs1
sha512sig1 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xcfbe387bdfe75ab5 # initialize rs1
sha512sig1 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x18, x26 # perform first operation
sha512sig1 x16, x12 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x16, x20 # perform first operation
sha512sig1 x8, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x3, x17 # perform first operation
sha512sig1 x1, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x11, x6 # perform first operation
sha512sig1 x15, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x3, x7 # perform first operation
sha512sig1 x12, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x18, x24 # perform first operation
sha512sig1 x25, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x24, x18, x25 # perform first operation
sha512sig1 x24, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x3, x30 # perform first operation
sha512sig1 x29, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x10, x21 # perform first operation
sha512sig1 x15, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x5, x17 # perform first operation
sha512sig1 x5, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x15, x3 # perform first operation
sha512sig1 x3, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x19, x13 # perform first operation
sha512sig1 x15, x7 # perform second (triggering) operation

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
