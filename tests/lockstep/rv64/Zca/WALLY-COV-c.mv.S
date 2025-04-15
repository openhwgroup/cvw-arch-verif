///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zca/WALLY-COV-c.mv.S
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

    
# Testcase cp_rs2 (Test source rs2 = x1)
li x1, 0x25cb867c5f7cb9a7
c.mv x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs2 (Test source rs2 = x2)
li x2, 0x418f17a8eca4fe6c
c.mv x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs2 (Test source rs2 = x3)
li x3, 0x0f619deb0ca12fa4
c.mv x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x815b5ad8c43701d6
c.mv x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 24)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd601f67decaee562
c.mv x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 32)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x61c06041dce354bb
c.mv x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cp_rs2 (Test source rs2 = x7)
li x7, 0xf8e4ab17d0c20d5d
c.mv x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 48)

# Testcase cp_rs2 (Test source rs2 = x8)
li x8, 0xf1048aee32c271bd
c.mv x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_rs2 (Test source rs2 = x9)
li x9, 0x264ad7d5e7c98a12
c.mv x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 64)

# Testcase cp_rs2 (Test source rs2 = x10)
li x10, 0x183e8199d7772310
c.mv x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 72)

# Testcase cp_rs2 (Test source rs2 = x11)
li x11, 0x01430e509bef24c1
c.mv x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 80)

# Testcase cp_rs2 (Test source rs2 = x12)
li x12, 0xda7f03fa7c0eba2e
c.mv x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_rs2 (Test source rs2 = x13)
li x13, 0x90466b023323ebee
c.mv x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs2 (Test source rs2 = x14)
li x14, 0xcdbbe06af40ff1ef
c.mv x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cp_rs2 (Test source rs2 = x15)
li x15, 0x2e24671170c5900a
c.mv x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cp_rs2 (Test source rs2 = x16)
li x16, 0x454dd7c010b991eb
c.mv x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rs2 (Test source rs2 = x17)
li x17, 0xafdc609673732f16
c.mv x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_rs2 (Test source rs2 = x18)
li x18, 0x0b368f16d23e2728
c.mv x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 136)

# Testcase cp_rs2 (Test source rs2 = x19)
li x19, 0x2cfc443507dfbea0
c.mv x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cp_rs2 (Test source rs2 = x20)
li x20, 0xcbd3e39f741a4d7c
c.mv x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 152)

# Testcase cp_rs2 (Test source rs2 = x21)
li x21, 0x64b9cf1ebede8cdf
c.mv x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 160)

# Testcase cp_rs2 (Test source rs2 = x22)
li x22, 0x4554795efd8e7859
c.mv x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cp_rs2 (Test source rs2 = x23)
li x23, 0x1b6895741afbec17
c.mv x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rs2 (Test source rs2 = x24)
li x24, 0xe05942fe31b7eaf3
c.mv x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cp_rs2 (Test source rs2 = x25)
li x25, 0xb01a757f76feb355
c.mv x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rs2 (Test source rs2 = x26)
li x26, 0x875fddc71f066a91
c.mv x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 200)

# Testcase cp_rs2 (Test source rs2 = x27)
li x27, 0xfb8cf98277bc8e2c
c.mv x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cp_rs2 (Test source rs2 = x28)
li x28, 0x45b34f735287b750
c.mv x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cp_rs2 (Test source rs2 = x29)
li x29, 0x9fb2885e8dd69a31
c.mv x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_rs2 (Test source rs2 = x30)
li x30, 0xb5676a927889b1ae
c.mv x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 232)

# Testcase cp_rs2 (Test source rs2 = x31)
li x31, 0x7634dc8c3205625e
c.mv x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 240)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0xede4a79960484348
c.mv x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cp_rd (Test destination rd = x2)
li x18, 0x9aa72df34482de1b
c.mv x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cp_rd (Test destination rd = x3)
li x21, 0x8e8df87663b8d93f
c.mv x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0xc260f149ed400e90
c.mv x4, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0x07a7d08d9541f96e
c.mv x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x11, 0x96ad1ea3ac36e153
c.mv x6, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x6d0520f961a6b20e
c.mv x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xe10f5cb7ebfcf7cf
c.mv x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cp_rd (Test destination rd = x9)
li x14, 0xe15cffbfcfdf3636
c.mv x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cp_rd (Test destination rd = x10)
li x24, 0x9dd663c28c2d390e
c.mv x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cp_rd (Test destination rd = x11)
li x10, 0xf0b662469ca653ea
c.mv x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cp_rd (Test destination rd = x12)
li x15, 0x338c303c41edae8f
c.mv x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cp_rd (Test destination rd = x13)
li x27, 0xdb23c730a539f8b5
c.mv x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cp_rd (Test destination rd = x14)
li x10, 0x267f235b454dc325
c.mv x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cp_rd (Test destination rd = x15)
li x1, 0x1e97fb0ce3328376
c.mv x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cp_rd (Test destination rd = x16)
li x12, 0x9de2fe4136a188a5
c.mv x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cp_rd (Test destination rd = x17)
li x3, 0xf69126070522ee02
c.mv x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cp_rd (Test destination rd = x18)
li x31, 0x4afce4e9088f66cb
c.mv x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cp_rd (Test destination rd = x19)
li x17, 0xced4d5293c3a27d0
c.mv x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cp_rd (Test destination rd = x20)
li x9, 0x6899086033febed7
c.mv x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cp_rd (Test destination rd = x21)
li x1, 0xc354fca3d621a73f
c.mv x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_rd (Test destination rd = x22)
li x30, 0x4ed3c86d5179dfdd
c.mv x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cp_rd (Test destination rd = x23)
li x22, 0x79637700958be8b0
c.mv x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cp_rd (Test destination rd = x24)
li x26, 0xd2ebaba2ac4d1c29
c.mv x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cp_rd (Test destination rd = x25)
li x1, 0x7e126b5d055d4d24
c.mv x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cp_rd (Test destination rd = x26)
li x31, 0x82764938c3640d66
c.mv x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cp_rd (Test destination rd = x27)
li x10, 0xd22548e2ae330957
c.mv x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cp_rd (Test destination rd = x28)
li x2, 0xaef775b82eb0e330
c.mv x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cp_rd (Test destination rd = x29)
li x12, 0xa4b1e132d29fc57d
c.mv x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cp_rd (Test destination rd = x30)
li x13, 0xa0d0357c4c22bd7f
c.mv x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cp_rd (Test destination rd = x31)
li x11, 0x5260bb97861c6582
c.mv x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x1, 0x0000000000000000
c.mv x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0x0000000000000001
c.mv x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 504)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x18, 0x0000000000000002
c.mv x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x22, 0x8000000000000000
c.mv x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 520)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x21, 0x8000000000000001
c.mv x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 528)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x2, 0x7fffffffffffffff
c.mv x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 536)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x14, 0x7ffffffffffffffe
c.mv x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 544)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x29, 0xffffffffffffffff
c.mv x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 552)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x6, 0xfffffffffffffffe
c.mv x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x21, 0x5bbc887763ae86f2
c.mv x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 568)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x18, 0xaaaaaaaaaaaaaaaa
c.mv x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 576)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x27, 0x5555555555555555
c.mv x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 584)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0x00000000ffffffff
c.mv x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0x00000000fffffffe
c.mv x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 600)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x7, 0x0000000100000000
c.mv x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 608)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x1, 0x0000000100000001
c.mv x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 616)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x1, 0xd1f1702c1b4ee425
c.mv x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 624)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x2, 0xf2716b58f4d4079f
c.mv x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x3, 0xb3db4d5a37868ffa
c.mv x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 640)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xaf47a1174e4c0b01
c.mv x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 648)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc64eb02be5a74439
c.mv x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 656)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7412c4bcb085d3c0
c.mv x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 664)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x29dd1341d776f57b
c.mv x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 672)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x8, 0x2981c7f648c82250
c.mv x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 680)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x5f8017b0b8c42203
c.mv x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 688)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x10, 0xfc6f9658a4c2691a
c.mv x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 696)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x11, 0xa9096844f557eca7
c.mv x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 704)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x809f941b15489080
c.mv x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 712)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x13, 0xa330f4ecc60f3664
c.mv x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 720)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x808ea4f89afcb76a
c.mv x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 728)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x15, 0xb2a411a1d67496e9
c.mv x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xec72c5b7d8c6a337
c.mv x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 744)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x17, 0xf6d6dcd947cee1e8
c.mv x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 752)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x18, 0x065999f67e569489
c.mv x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 760)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x1e37d1fd143156da
c.mv x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 768)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x20, 0x275d6e2baa92fc33
c.mv x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0x982841eeebd1704e
c.mv x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0x60c364c93c1a6b27
c.mv x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 792)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x23, 0x20b57fb5f1633f37
c.mv x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 800)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x24, 0x5c139da748239e45
c.mv x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 808)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x7804470e7f9d533c
c.mv x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x26, 0x1e539e2faf231fe8
c.mv x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 824)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x27, 0xcba810330ece95cb
c.mv x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 832)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x28, 0x6732afc2d6a45cdc
c.mv x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 840)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x29, 0xe235eeca3a211ee0
c.mv x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x30, 0x3ad9aee33b3b4c26
c.mv x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 856)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x31, 0xdf4a6d8f9eb4ae37
c.mv x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 864)

.EQU SIGSIZE,872


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
