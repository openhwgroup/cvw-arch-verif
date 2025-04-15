///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zknh/WALLY-COV-sha512sum0.S
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
li x0, 0x27bd982a1fd587e8 # initialize rs1
sha512sum0 x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xa4b1faf145782725 # initialize rs1
sha512sum0 x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xb3f89754cf035ed5 # initialize rs1
sha512sum0 x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xbae114e8fc46f534 # initialize rs1
sha512sum0 x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x005c58c9d748f563 # initialize rs1
sha512sum0 x12, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7629d76aad38a432 # initialize rs1
sha512sum0 x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0xf5b220761342c8c4 # initialize rs1
sha512sum0 x22, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x22, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x76f1ad9eea402e29 # initialize rs1
sha512sum0 x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xb91d305c47a10f32 # initialize rs1
sha512sum0 x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x0d8a24dddc167bd0 # initialize rs1
sha512sum0 x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x467a7374984fa914 # initialize rs1
sha512sum0 x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xbec5806077e399d7 # initialize rs1
sha512sum0 x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x9bd527ccf6d5a60a # initialize rs1
sha512sum0 x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa62171ded3cae6cd # initialize rs1
sha512sum0 x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xf8a5f168acb47cef # initialize rs1
sha512sum0 x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xe8726229abe81407 # initialize rs1
sha512sum0 x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xa670357886b6663a # initialize rs1
sha512sum0 x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xc3a1a378696a85ae # initialize rs1
sha512sum0 x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x9b9e4e9364ef0381 # initialize rs1
sha512sum0 x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x77d7f019c002ab10 # initialize rs1
sha512sum0 x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xdd873ee890b0de1d # initialize rs1
sha512sum0 x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x2321b1d293096f13 # initialize rs1
sha512sum0 x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xf5278967f690bd84 # initialize rs1
sha512sum0 x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x50d4a6d7cb11c6bc # initialize rs1
sha512sum0 x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xd1567d1de8a572b6 # initialize rs1
sha512sum0 x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x803b7a22f2fda111 # initialize rs1
sha512sum0 x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x2d50a3eb94dc6664 # initialize rs1
sha512sum0 x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd3e27e4df505772c # initialize rs1
sha512sum0 x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x53bb9f8c83e068ba # initialize rs1
sha512sum0 x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xf2d380146b868015 # initialize rs1
sha512sum0 x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xb13716e53a521639 # initialize rs1
sha512sum0 x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xb72a8983e684eecd # initialize rs1
sha512sum0 x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rd (Test destination rd = x0)
li x25, 0x1013596cff99b0a9 # initialize rs1
sha512sum0 x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x24, 0xcbcf3e696314fcec # initialize rs1
sha512sum0 x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0x4cc086aa805ee562 # initialize rs1
sha512sum0 x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x24, 0x28efa2c303bdf128 # initialize rs1
sha512sum0 x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0xe1313135df752924 # initialize rs1
sha512sum0 x4, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0xd0a678dcb311b2c5 # initialize rs1
sha512sum0 x5, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x16, 0xfc13028d54d7f149 # initialize rs1
sha512sum0 x6, x16 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x21, 0xee4166d34aeb11c7 # initialize rs1
sha512sum0 x7, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x29, 0xbcc1891551dc653b # initialize rs1
sha512sum0 x8, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0xcf3a051147085307 # initialize rs1
sha512sum0 x9, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x7, 0x145587a8a02bf53b # initialize rs1
sha512sum0 x10, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x22, 0x2b8926e25e3d9a91 # initialize rs1
sha512sum0 x11, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x9, 0x3fa9cd15bbb0dbeb # initialize rs1
sha512sum0 x12, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x1, 0x04f4d6266aa93d5c # initialize rs1
sha512sum0 x13, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0x8f64d1b7ba4296b7 # initialize rs1
sha512sum0 x14, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x24, 0x3e3ae243357684fd # initialize rs1
sha512sum0 x15, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x13, 0x792b6ce359b3cf12 # initialize rs1
sha512sum0 x16, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x2, 0xb6ad2c7c66f9096d # initialize rs1
sha512sum0 x17, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x7, 0x727b0348b577690f # initialize rs1
sha512sum0 x18, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x4, 0xbb713e29e4a35933 # initialize rs1
sha512sum0 x19, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x14, 0x004d1aef9e5cf994 # initialize rs1
sha512sum0 x20, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x25, 0xb3e78490c1a0b502 # initialize rs1
sha512sum0 x21, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x15, 0xcf7ca2c2687bee6d # initialize rs1
sha512sum0 x22, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x27, 0xf01f72bbc1a5c429 # initialize rs1
sha512sum0 x23, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x20, 0xa36df4c22764bef1 # initialize rs1
sha512sum0 x24, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x18, 0x6fcc905f4507c5fb # initialize rs1
sha512sum0 x25, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x15, 0xe248d6307bd3b48c # initialize rs1
sha512sum0 x26, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x20, 0x84a0c77809b8e1dc # initialize rs1
sha512sum0 x27, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x27, 0x2d0db8743692425c # initialize rs1
sha512sum0 x28, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x19, 0xbf2f019260970bb5 # initialize rs1
sha512sum0 x29, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x7, 0xf55422e82019b30b # initialize rs1
sha512sum0 x30, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x3, 0x8768c60bfbb88698 # initialize rs1
sha512sum0 x31, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x2, 0x0000000000000000 # initialize rs1
sha512sum0 x22, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x0000000000000001 # initialize rs1
sha512sum0 x3, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x0000000000000002 # initialize rs1
sha512sum0 x20, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x9, 0x8000000000000000 # initialize rs1
sha512sum0 x22, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x16, 0x8000000000000001 # initialize rs1
sha512sum0 x6, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x7, 0x7fffffffffffffff # initialize rs1
sha512sum0 x12, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rs1
sha512sum0 x19, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
sha512sum0 x2, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
sha512sum0 x12, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x3, 0x5bbc887763ae86f2 # initialize rs1
sha512sum0 x1, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
sha512sum0 x10, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x6, 0x5555555555555555 # initialize rs1
sha512sum0 x15, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x3, 0x00000000ffffffff # initialize rs1
sha512sum0 x25, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0x00000000fffffffe # initialize rs1
sha512sum0 x13, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x21, 0x0000000100000000 # initialize rs1
sha512sum0 x22, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x19, 0x0000000100000001 # initialize rs1
sha512sum0 x31, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xc1b490c212ec6644 # initialize rs1
sha512sum0 x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xf979ddace363289e # initialize rs1
sha512sum0 x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x442a68b6164b5035 # initialize rs1
sha512sum0 x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xe3e5dc73380f8d23 # initialize rs1
sha512sum0 x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x82afe653d9edae1c # initialize rs1
sha512sum0 x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb4797f0503497d5d # initialize rs1
sha512sum0 x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb9205afb7b50908d # initialize rs1
sha512sum0 x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xba1039617e7e5bc6 # initialize rs1
sha512sum0 x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x6ebb2368bce31b12 # initialize rs1
sha512sum0 x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x15e8013594d9c924 # initialize rs1
sha512sum0 x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x14c0e235a5e21969 # initialize rs1
sha512sum0 x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xbf337fe31558868f # initialize rs1
sha512sum0 x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xa0eb0a987d3caf5c # initialize rs1
sha512sum0 x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xd8f1c8890ff30111 # initialize rs1
sha512sum0 x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x36bfe2ea1d7edd48 # initialize rs1
sha512sum0 x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x0270710e573a2cf5 # initialize rs1
sha512sum0 x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x2f04217c93ff8439 # initialize rs1
sha512sum0 x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x22089fc490c8bb3c # initialize rs1
sha512sum0 x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x8e74ea5edf35daed # initialize rs1
sha512sum0 x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xe026e4b7c4bfd9b7 # initialize rs1
sha512sum0 x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x52fa78e7b91b6b12 # initialize rs1
sha512sum0 x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x5b9c0f7f70d8ad98 # initialize rs1
sha512sum0 x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x769f44f33e9c77b9 # initialize rs1
sha512sum0 x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd386524f6256b40f # initialize rs1
sha512sum0 x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xb7e0c5c68279875c # initialize rs1
sha512sum0 x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x23bacb37d15d6da8 # initialize rs1
sha512sum0 x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xf375cf1c133315d6 # initialize rs1
sha512sum0 x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x0ca48be31e29fb57 # initialize rs1
sha512sum0 x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x6d2b28c02cff1eb8 # initialize rs1
sha512sum0 x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x81b1d60c3aa5dfcc # initialize rs1
sha512sum0 x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x75443d56bdffd8d3 # initialize rs1
sha512sum0 x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe5b570d97b2da70c # initialize rs1
sha512sum0 x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_gpr/fpr_hazard nohaz test
add x17, x23, x2 # perform first operation
sha512sum0 x14, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x30, x7, x25 # perform first operation
sha512sum0 x1, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x8, x1 # perform first operation
sha512sum0 x28, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x14, x7 # perform first operation
sha512sum0 x14, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x12, x29 # perform first operation
sha512sum0 x24, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x18, x6 # perform first operation
sha512sum0 x6, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x25, x11 # perform first operation
sha512sum0 x23, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x9, x2, x14 # perform first operation
sha512sum0 x9, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x29, x21 # perform first operation
sha512sum0 x25, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x27, x21 # perform first operation
sha512sum0 x27, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x9, x18 # perform first operation
sha512sum0 x18, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x7, x10 # perform first operation
sha512sum0 x2, x31 # perform second (triggering) operation

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
