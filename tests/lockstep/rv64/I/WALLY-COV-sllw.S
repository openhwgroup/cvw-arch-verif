///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-sllw.S
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
li x0, 0x63e576537ee31caa # initialize rs1
li x10, 0xdabf6cf386d911fc # initialize rs2
sllw x20, x0, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xa4d1f884423f94d5 # initialize rs1
li x28, 0x1066e7a97ef2d9dc # initialize rs2
sllw x29, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x7387f68df2c55d29 # initialize rs1
li x20, 0x05291b8702073a14 # initialize rs2
sllw x30, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x7733c1ad62a2cc39 # initialize rs1
li x12, 0xe02fad193b3ed479 # initialize rs2
sllw x19, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb100b4278a940424 # initialize rs1
li x13, 0xd0bf290d2c62278d # initialize rs2
sllw x23, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xa5cebc8e3eb547cd # initialize rs1
li x3, 0x7a45e7d122fea919 # initialize rs2
sllw x24, x5, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x261bc6338a92623b # initialize rs1
li x11, 0xdf9381678eaf753f # initialize rs2
sllw x4, x6, x11 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8e3a5d23410735b2 # initialize rs1
li x21, 0xd80e6911a79722a2 # initialize rs2
sllw x11, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x24e67e49d7fbdad3 # initialize rs1
li x28, 0xc7e4821d2e9c384b # initialize rs2
sllw x21, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x0b1447d17c0de43a # initialize rs1
li x26, 0x2e537d57ca13b5d3 # initialize rs2
sllw x22, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x3fb17860c7eb6b84 # initialize rs1
li x5, 0xcb34d5fdd030abf1 # initialize rs2
sllw x21, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x9a87c27494da296b # initialize rs1
li x31, 0x5015be530f48c09d # initialize rs2
sllw x5, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xfc90a64557f21e7c # initialize rs1
li x25, 0xf62d2ae41a9e5514 # initialize rs2
sllw x1, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x412e0ec49eacbad1 # initialize rs1
li x1, 0x22bd637b27df736c # initialize rs2
sllw x17, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x4e2e3d429b4b64f7 # initialize rs1
li x19, 0x36f0117d5835bc36 # initialize rs2
sllw x10, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xff5355fb47adc489 # initialize rs1
li x11, 0x6360b76a5ce55664 # initialize rs2
sllw x26, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x8b393f7ba1a4b93b # initialize rs1
li x5, 0x3223eddb382b6d8e # initialize rs2
sllw x24, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x33c812037d761d2a # initialize rs1
li x6, 0x5984039ffc2db4b6 # initialize rs2
sllw x29, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xb941ea8539ef2889 # initialize rs1
li x9, 0xcbea44ec22768699 # initialize rs2
sllw x2, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x5b48136d73780f1a # initialize rs1
li x14, 0x94bdf477bb7a4212 # initialize rs2
sllw x30, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xf5bc54038128345c # initialize rs1
li x8, 0x3d5d60cb34df114b # initialize rs2
sllw x26, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x8f2351357a87152e # initialize rs1
li x24, 0x1d0b85fca1eb6f7d # initialize rs2
sllw x26, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x129cd277b042a7b4 # initialize rs1
li x30, 0x001c3580e94eb2c1 # initialize rs2
sllw x24, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x613c341e4e0b00bb # initialize rs1
li x5, 0x38b3fc2df0ebfa1b # initialize rs2
sllw x31, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x6329718cfe93a69c # initialize rs1
li x29, 0x1663d1bf52369166 # initialize rs2
sllw x6, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x782139a4a52f9286 # initialize rs1
li x17, 0x842debffe6894354 # initialize rs2
sllw x28, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x2303817f08d0babb # initialize rs1
li x14, 0x226cc5b451a892bf # initialize rs2
sllw x1, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x99efc718830769dc # initialize rs1
li x16, 0x5b7e2bed686c4f82 # initialize rs2
sllw x15, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x2d0a11ab110d1e55 # initialize rs1
li x14, 0x93b503bf523d05f9 # initialize rs2
sllw x21, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xce817771224bbae0 # initialize rs1
li x17, 0xff60fb2e366b5a8b # initialize rs2
sllw x16, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xe2500e015b0017a1 # initialize rs1
li x2, 0x0431bde05a7a90ab # initialize rs2
sllw x3, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x7f6d24e131743e20 # initialize rs1
li x5, 0xa69eec2f69d482db # initialize rs2
sllw x1, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x12, 0x48fab09598248de6 # initialize rs1
li x0, 0xf0fa23e9fb8e8700 # initialize rs2
sllw x21, x12, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x23, 0x87f078c86382b71e # initialize rs1
li x1, 0xd551bdfb8485152d # initialize rs2
sllw x16, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x19, 0x4d8cf1344e928dfd # initialize rs1
li x2, 0x696383d27f3674d7 # initialize rs2
sllw x15, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x1, 0x10ca45f9ac789455 # initialize rs1
li x3, 0x9b17d4fe054f53e7 # initialize rs2
sllw x6, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0xa417378a5ec1f245 # initialize rs1
li x4, 0x4c85083b3b732c83 # initialize rs2
sllw x21, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x2908593477d9bd8c # initialize rs1
li x5, 0x5a629f94afd45c7a # initialize rs2
sllw x21, x11, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0x16bea1b74b499743 # initialize rs1
li x6, 0x5b41b4e7aa994c5f # initialize rs2
sllw x15, x2, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0xcaf9c489b2f02e18 # initialize rs1
li x7, 0x6c0a133e8d41f9a7 # initialize rs2
sllw x31, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x3, 0xa0b4798fcefada01 # initialize rs1
li x8, 0xfb8fd4f0f794d25b # initialize rs2
sllw x7, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x27, 0x3229ed6b7c4d19d6 # initialize rs1
li x9, 0x274a74955aa9b486 # initialize rs2
sllw x23, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x1, 0x81f29b92f2bdb766 # initialize rs1
li x10, 0x33acef56002f316e # initialize rs2
sllw x14, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x31, 0xa3d56f96eb570c62 # initialize rs1
li x11, 0x5cdade3d72db78e2 # initialize rs2
sllw x23, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x19, 0x5a503bbe83dc84dd # initialize rs1
li x12, 0xafe137a50dd5f8d4 # initialize rs2
sllw x8, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x14, 0x32549aab81f66e8b # initialize rs1
li x13, 0x3d31084fb0f2a78f # initialize rs2
sllw x27, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x17, 0x7defdb0dea9ad1a9 # initialize rs1
li x14, 0x63af805ff38f67e9 # initialize rs2
sllw x21, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x7, 0x8be4db7020136941 # initialize rs1
li x15, 0xb332e6e5c1d9730f # initialize rs2
sllw x1, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x29, 0x94760ba06b1ceb30 # initialize rs1
li x16, 0x74c6f409ea9e3390 # initialize rs2
sllw x25, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x30, 0x651c3270fb97757f # initialize rs1
li x17, 0x74e5b9f2f82453fb # initialize rs2
sllw x11, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x1, 0x728a05ece475ec62 # initialize rs1
li x18, 0x57001ff43add1f01 # initialize rs2
sllw x7, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x18, 0x3f4092ff0a965780 # initialize rs1
li x19, 0xa8465258d043453c # initialize rs2
sllw x7, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x24, 0xeaed25c6977f3b0a # initialize rs1
li x20, 0xa337a806ee619938 # initialize rs2
sllw x17, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x5, 0xaa9446e5718c3d5f # initialize rs1
li x21, 0x0dcee2e9be26a94f # initialize rs2
sllw x1, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x10, 0x20aadb023fd0d149 # initialize rs1
li x22, 0x9d2b13f63110ecc3 # initialize rs2
sllw x6, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x5, 0x6ab491327cf7c140 # initialize rs1
li x23, 0xd045f64af4daf880 # initialize rs2
sllw x31, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x17, 0xab0d77dbb5f8be7a # initialize rs1
li x24, 0x4a2ca87057a70c3d # initialize rs2
sllw x18, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x26, 0xcb1f4ea6e0b1f25a # initialize rs1
li x25, 0xdb266c56fa4bd323 # initialize rs2
sllw x13, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x10, 0x3fae69dd1ebb7b1f # initialize rs1
li x26, 0x428d8da7a61e3ebb # initialize rs2
sllw x12, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x23, 0x63b685686e963dfa # initialize rs1
li x27, 0x1438ddabf6a870f1 # initialize rs2
sllw x12, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x5, 0x94c55497c243cff0 # initialize rs1
li x28, 0xc2419f662c8f1b9d # initialize rs2
sllw x3, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x15, 0x31a456138046437c # initialize rs1
li x29, 0x73f5b89bf7ed1b72 # initialize rs2
sllw x11, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x22, 0x5f76b3fbc60f62e0 # initialize rs1
li x30, 0x5b2b8557dd3547a4 # initialize rs2
sllw x23, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x15, 0xdd105e617d85034d # initialize rs1
li x31, 0xb5ae68a7f7a04e4d # initialize rs2
sllw x25, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 504)

# Testcase cp_rd (Test destination rd = x0)
li x31, 0xd3cd5aee24bf95d8 # initialize rs1
li x19, 0x4606343679adcb62 # initialize rs2
sllw x0, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x16, 0x8a40527696855d9e # initialize rs1
li x15, 0x90a00878be730c61 # initialize rs2
sllw x1, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x16, 0x24b36bed6d532b62 # initialize rs1
li x6, 0x324297d07cc7f8b6 # initialize rs2
sllw x2, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x22, 0x37b313b1b5cb7a23 # initialize rs1
li x1, 0x097d79c98a6a0b38 # initialize rs2
sllw x3, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x12, 0x3846cc2e12425808 # initialize rs1
li x16, 0x98c61e813761dd2e # initialize rs2
sllw x4, x12, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0x98123f2c977b171d # initialize rs1
li x19, 0x3bb6f908e7e8cf1c # initialize rs2
sllw x5, x12, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0x59912a68ff5f5338 # initialize rs1
li x29, 0x603ebe043f001613 # initialize rs2
sllw x6, x8, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0xdf087f5e81661ebc # initialize rs1
li x20, 0x71d8c7315bde41a6 # initialize rs2
sllw x7, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0x42feaa46847490e5 # initialize rs1
li x18, 0x8bd532215170cb53 # initialize rs2
sllw x8, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x1, 0x5a71a3054285c864 # initialize rs1
li x7, 0x3e9e410459745684 # initialize rs2
sllw x9, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x12, 0xdf28ed3f3fe3b20a # initialize rs1
li x24, 0xf59c077b8d1ff3a1 # initialize rs2
sllw x10, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x10, 0x1d40f2e51e7c7308 # initialize rs1
li x27, 0x1f3779e29a2c8764 # initialize rs2
sllw x11, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x2, 0x2c294cfb72a62d38 # initialize rs1
li x28, 0x5c1bbba90a189272 # initialize rs2
sllw x12, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x28, 0x48cf826fd1a1dc46 # initialize rs1
li x8, 0x7ab625f26d69ef39 # initialize rs2
sllw x13, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x31, 0x1450a41e019b41e3 # initialize rs1
li x17, 0xdbfb623529bbec09 # initialize rs2
sllw x14, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x31, 0x5d4b409711bea44e # initialize rs1
li x20, 0x7be62c0e10b54350 # initialize rs2
sllw x15, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x19, 0x48152b77aa27711a # initialize rs1
li x30, 0x55add629cbcad5de # initialize rs2
sllw x16, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x12, 0x5dca6586e92c78df # initialize rs1
li x9, 0x18dfcae4fce7f322 # initialize rs2
sllw x17, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x16, 0xca06d7d8ee6ffb2e # initialize rs1
li x10, 0x9413ace72f9b0175 # initialize rs2
sllw x18, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x18, 0x2f3eef3ab1784f9c # initialize rs1
li x9, 0xb0fe3a09705d99b1 # initialize rs2
sllw x19, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x29, 0x8f30b000738cef92 # initialize rs1
li x6, 0x935b9ea59847dfbf # initialize rs2
sllw x20, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x8, 0x12d9cc4e286a92e5 # initialize rs1
li x18, 0x1092edcc4b12b8b5 # initialize rs2
sllw x21, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x5, 0x170e293d941bc67d # initialize rs1
li x31, 0x3b45f413f1d8ad88 # initialize rs2
sllw x22, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x2, 0xdf25ac2b24954bb0 # initialize rs1
li x24, 0xa166e2bfa452af4b # initialize rs2
sllw x23, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x18, 0x76b218c63573e522 # initialize rs1
li x31, 0x78e7e475692d7357 # initialize rs2
sllw x24, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x7, 0x1d4c49ad4cc4f062 # initialize rs1
li x23, 0x439931b2abce96e0 # initialize rs2
sllw x25, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x20, 0xdca9eca243848f99 # initialize rs1
li x1, 0xcdfbcd814f3a8914 # initialize rs2
sllw x26, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x29, 0x17cfadd63ac069bf # initialize rs1
li x26, 0xfe72a833b83ef438 # initialize rs2
sllw x27, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x3, 0x68bc5f89fb71c95f # initialize rs1
li x12, 0xf7c87da8d0e44e40 # initialize rs2
sllw x28, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x26, 0xebe8e2c48fdd6f6b # initialize rs1
li x5, 0x0467f788c25e3fc1 # initialize rs2
sllw x29, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x20, 0xa76c3a0d14a491cf # initialize rs1
li x1, 0x1477d7c38143b597 # initialize rs2
sllw x30, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x21, 0xbc1c91d359715de0 # initialize rs1
li x13, 0x2d46721ce11b19a6 # initialize rs2
sllw x31, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x12, 0x0000000000000000 # initialize rs1
li x8, 0x78ed7b1de35db1bc # initialize rs2
sllw x10, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x0000000000000001 # initialize rs1
li x12, 0xc9692bde27a241ac # initialize rs2
sllw x3, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x0000000000000002 # initialize rs1
li x11, 0x7bac71749e1863d5 # initialize rs2
sllw x30, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x9, 0x8000000000000000 # initialize rs1
li x18, 0xae09877169ac7c31 # initialize rs2
sllw x8, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x27, 0x8000000000000001 # initialize rs1
li x29, 0x28511fc4ffdd2dbd # initialize rs2
sllw x7, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs1
li x1, 0x4e3d3ae75ee2249c # initialize rs2
sllw x3, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x29, 0x7ffffffffffffffe # initialize rs1
li x26, 0xdd0f8d2e572ab419 # initialize rs2
sllw x8, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x28, 0xffffffffffffffff # initialize rs1
li x3, 0xc53e8ac75b4c69b1 # initialize rs2
sllw x18, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
li x28, 0x095e887ab3e7e698 # initialize rs2
sllw x3, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0xfcfdbcf661301457 # initialize rs2
sllw x2, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x63f85e1e1006b722 # initialize rs2
sllw x24, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x20, 0x5555555555555555 # initialize rs1
li x14, 0x42e2387bb09179c2 # initialize rs2
sllw x26, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x5, 0xf47075c146223159 # initialize rs2
sllw x2, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x2, 0x12f2292aa68d91c0 # initialize rs2
sllw x24, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x8, 0x0000000100000000 # initialize rs1
li x27, 0xd5be7e03628c108c # initialize rs2
sllw x24, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x15, 0x0000000100000001 # initialize rs1
li x13, 0xdb58798e3cc43483 # initialize rs2
sllw x14, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x24, 0x69800a0497ce0a54 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
sllw x12, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x29, 0x34044ec258e3ccf1 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sllw x6, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x24, 0x42aaf5837542ea69 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
sllw x20, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x24, 0x2350361bef410f54 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
sllw x29, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x2, 0x07984009558b24c5 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
sllw x22, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x18, 0x69e329586a178b0d # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
sllw x25, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x29, 0xff6b041426cbae8e # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
sllw x26, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x17, 0xad9297297eb5bdeb # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
sllw x11, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x14, 0xf3c68081e59b656d # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
sllw x10, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x18, 0xe1ffeef25e898c02 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
sllw x16, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0x50405474518c471b # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x19, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x13, 0xd4524f17e94fcaed # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sllw x8, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x28, 0x8e785bbf6f7fd75e # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
sllw x16, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x11, 0xae82fc7c19d68d38 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
sllw x15, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x1, 0x5e1cedcdef440438 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
sllw x7, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x11, 0x0eb13448443df8b3 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
sllw x30, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x27, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
sllw x9, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x8, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
sllw x16, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x26, 0x0000000000000000 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
sllw x1, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x29, 0x0000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
sllw x13, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x29, 0x0000000000000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sllw x9, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000000000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
sllw x31, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000000000000 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
sllw x26, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x18, 0x0000000000000000 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
sllw x28, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x27, 0x0000000000000000 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
sllw x15, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000000000000 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
sllw x22, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x0000000000000000 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x11, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x3, 0x0000000000000000 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
sllw x2, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x13, 0x0000000000000000 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
sllw x19, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x10, 0x0000000000000000 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
sllw x20, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x14, 0x0000000000000000 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
sllw x18, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x24, 0x0000000000000000 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sllw x17, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x26, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
sllw x14, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x11, 0x0000000000000001 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
sllw x27, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x2, 0x0000000000000001 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
sllw x16, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x9, 0x0000000000000001 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
sllw x8, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x2, 0x0000000000000001 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
sllw x23, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000000000001 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
sllw x18, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000000000001 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
sllw x1, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x9, 0x0000000000000001 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
sllw x24, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x15, 0x0000000000000001 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
sllw x19, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x10, 0x0000000000000001 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
sllw x20, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000000000001 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x27, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x3, 0x0000000000000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sllw x21, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x3, 0x0000000000000001 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
sllw x8, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x12, 0x0000000000000001 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
sllw x30, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x1, 0x0000000000000001 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
sllw x21, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x12, 0x0000000000000001 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
sllw x11, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x22, 0x0000000000000002 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
sllw x16, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x26, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
sllw x1, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x23, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
sllw x5, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x27, 0x0000000000000002 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
sllw x30, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x19, 0x0000000000000002 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
sllw x23, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000002 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
sllw x7, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x26, 0x0000000000000002 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
sllw x19, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x26, 0x0000000000000002 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
sllw x10, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x3, 0x0000000000000002 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sllw x17, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x7, 0x0000000000000002 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
sllw x31, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x0000000000000002 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x16, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x6, 0x0000000000000002 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sllw x8, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x10, 0x0000000000000002 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sllw x28, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x11, 0x0000000000000002 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
sllw x26, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x3, 0x0000000000000002 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sllw x6, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x23, 0x0000000000000002 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
sllw x30, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x6, 0x8000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
sllw x1, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x11, 0x8000000000000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
sllw x17, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x31, 0x8000000000000000 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
sllw x14, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x16, 0x8000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
sllw x27, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x12, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
sllw x19, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x8, 0x8000000000000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
sllw x20, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
sllw x21, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x19, 0x8000000000000000 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
sllw x31, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
sllw x2, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x17, 0x8000000000000000 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
sllw x8, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x8000000000000000 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x19, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x19, 0x8000000000000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
sllw x6, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x3, 0x8000000000000000 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sllw x24, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x31, 0x8000000000000000 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
sllw x16, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x29, 0x8000000000000000 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
sllw x31, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x11, 0x8000000000000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
sllw x5, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x21, 0x8000000000000001 # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
sllw x3, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x25, 0x8000000000000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
sllw x27, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x18, 0x8000000000000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
sllw x22, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x31, 0x8000000000000001 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
sllw x22, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x23, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
sllw x31, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x22, 0x8000000000000001 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
sllw x2, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x27, 0x8000000000000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
sllw x5, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x3, 0x8000000000000001 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
sllw x19, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x18, 0x8000000000000001 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
sllw x3, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x6, 0x8000000000000001 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sllw x23, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x8000000000000001 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x2, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x9, 0x8000000000000001 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
sllw x15, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x11, 0x8000000000000001 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
sllw x31, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x1, 0x8000000000000001 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
sllw x8, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x10, 0x8000000000000001 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
sllw x22, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x11, 0x8000000000000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
sllw x29, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x8, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sllw x11, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x14, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
sllw x5, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x27, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
sllw x10, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x28, 0x7fffffffffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sllw x10, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x2, 0x7fffffffffffffff # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
sllw x5, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x22, 0x7fffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
sllw x10, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x2, 0x7fffffffffffffff # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
sllw x9, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
sllw x22, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x7, 0x7fffffffffffffff # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
sllw x6, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x18, 0x7fffffffffffffff # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
sllw x15, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x7fffffffffffffff # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x18, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x19, 0x7fffffffffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
sllw x22, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x23, 0x7fffffffffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
sllw x5, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x11, 0x7fffffffffffffff # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
sllw x31, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x31, 0x7fffffffffffffff # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
sllw x21, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x2, 0x7fffffffffffffff # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sllw x23, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x15, 0x7ffffffffffffffe # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
sllw x23, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x30, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
sllw x3, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x10, 0x7ffffffffffffffe # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
sllw x6, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x24, 0x7ffffffffffffffe # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
sllw x10, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x3, 0x7ffffffffffffffe # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
sllw x5, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x22, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
sllw x21, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
sllw x23, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x17, 0x7ffffffffffffffe # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
sllw x15, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x22, 0x7ffffffffffffffe # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sllw x20, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x7, 0x7ffffffffffffffe # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
sllw x22, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x7ffffffffffffffe # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x14, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x21, 0x7ffffffffffffffe # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
sllw x18, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sllw x29, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
sllw x5, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x9, 0x7ffffffffffffffe # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
sllw x31, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x15, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sllw x28, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x27, 0xffffffffffffffff # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
sllw x7, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x27, 0xffffffffffffffff # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
sllw x30, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x30, 0xffffffffffffffff # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
sllw x7, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x2, 0xffffffffffffffff # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
sllw x17, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x20, 0xffffffffffffffff # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sllw x27, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x28, 0xffffffffffffffff # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
sllw x25, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x23, 0xffffffffffffffff # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
sllw x26, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
sllw x22, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x7, 0xffffffffffffffff # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
sllw x27, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x30, 0xffffffffffffffff # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
sllw x11, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0xffffffffffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x29, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x3, 0xffffffffffffffff # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
sllw x17, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x25, 0xffffffffffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
sllw x2, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x14, 0xffffffffffffffff # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
sllw x13, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x18, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sllw x16, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x19, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
sllw x31, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x24, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sllw x23, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x20, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
sllw x8, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x22, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
sllw x23, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x30, 0xfffffffffffffffe # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sllw x11, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x27, 0xfffffffffffffffe # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
sllw x16, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
sllw x25, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x19, 0xfffffffffffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
sllw x17, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
sllw x23, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x20, 0xfffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
sllw x12, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x27, 0xfffffffffffffffe # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
sllw x23, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0xfffffffffffffffe # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x24, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x30, 0xfffffffffffffffe # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sllw x10, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x30, 0xfffffffffffffffe # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
sllw x1, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
sllw x20, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x9, 0xfffffffffffffffe # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sllw x26, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x20, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sllw x23, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
sllw x14, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
sllw x25, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sllw x6, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
sllw x7, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
sllw x13, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sllw x3, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sllw x25, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
sllw x18, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sllw x17, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
sllw x8, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x28, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
sllw x22, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
sllw x1, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
sllw x22, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
sllw x9, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
sllw x17, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
sllw x2, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sllw x17, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
sllw x11, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
sllw x2, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
sllw x16, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
sllw x24, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
sllw x1, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
sllw x24, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
sllw x15, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
sllw x6, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x25, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sllw x14, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
sllw x13, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
sllw x20, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
sllw x11, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
sllw x16, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x25, 0x5555555555555555 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
sllw x3, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x3, 0x5555555555555555 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
sllw x21, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x24, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sllw x27, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x11, 0x5555555555555555 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sllw x3, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x9, 0x5555555555555555 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
sllw x2, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x17, 0x5555555555555555 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
sllw x29, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x30, 0x5555555555555555 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
sllw x28, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x24, 0x5555555555555555 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
sllw x15, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x16, 0x5555555555555555 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
sllw x9, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x21, 0x5555555555555555 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
sllw x20, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x5555555555555555 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x29, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x16, 0x5555555555555555 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
sllw x15, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x23, 0x5555555555555555 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
sllw x1, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x30, 0x5555555555555555 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
sllw x20, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x26, 0x5555555555555555 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sllw x23, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x17, 0x5555555555555555 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
sllw x23, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x10, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
sllw x9, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x23, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
sllw x21, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x19, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
sllw x9, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x3, 0x00000000ffffffff # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
sllw x9, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x2, 0x00000000ffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sllw x13, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
sllw x22, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x24, 0x00000000ffffffff # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
sllw x7, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x12, 0x00000000ffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
sllw x23, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x17, 0x00000000ffffffff # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
sllw x12, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x5, 0x00000000ffffffff # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
sllw x23, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x00000000ffffffff # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x16, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x9, 0x00000000ffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
sllw x23, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x13, 0x00000000ffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
sllw x25, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x8, 0x00000000ffffffff # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
sllw x28, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x16, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
sllw x25, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x12, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
sllw x22, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x12, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sllw x9, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x28, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sllw x17, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x11, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sllw x1, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x13, 0x00000000fffffffe # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
sllw x31, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x12, 0x00000000fffffffe # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
sllw x10, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
sllw x31, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x17, 0x00000000fffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
sllw x6, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
sllw x14, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x21, 0x00000000fffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
sllw x2, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x5, 0x00000000fffffffe # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
sllw x28, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x00000000fffffffe # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x10, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x24, 0x00000000fffffffe # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sllw x16, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x26, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
sllw x29, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x12, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
sllw x17, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x25, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sllw x11, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x1, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sllw x29, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x27, 0x0000000100000000 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
sllw x5, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x10, 0x0000000100000000 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
sllw x27, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x22, 0x0000000100000000 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
sllw x25, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x24, 0x0000000100000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
sllw x13, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x28, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sllw x2, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000100000000 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
sllw x10, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000100000000 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
sllw x23, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x8, 0x0000000100000000 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
sllw x7, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x21, 0x0000000100000000 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
sllw x27, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x28, 0x0000000100000000 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
sllw x29, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x0000000100000000 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x3, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x30, 0x0000000100000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
sllw x6, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x8, 0x0000000100000000 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
sllw x21, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x20, 0x0000000100000000 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
sllw x1, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x12, 0x0000000100000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
sllw x18, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x1, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
sllw x15, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x27, 0x0000000100000001 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
sllw x1, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x2, 0x0000000100000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
sllw x23, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x5, 0x0000000100000001 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
sllw x1, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x1, 0x0000000100000001 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
sllw x25, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x1, 0x0000000100000001 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
sllw x30, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000100000001 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
sllw x19, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x29, 0x0000000100000001 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
sllw x23, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x7, 0x0000000100000001 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
sllw x29, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
sllw x26, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x9, 0x0000000100000001 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
sllw x30, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x0000000100000001 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
sllw x21, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x1, 0x0000000100000001 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
sllw x22, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x12, 0x0000000100000001 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
sllw x28, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x17, 0x0000000100000001 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
sllw x16, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x27, 0x0000000100000001 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sllw x2, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x16, 0x0000000100000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
sllw x10, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x3feb3debbdf0fbe1 # initialize rs1
li x0, 0x10bf2da7660d74af # initialize rs2
sllw x18, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x89b5bd8389694429 # initialize rs1
li x1, 0x656bdc7de8165c22 # initialize rs2
sllw x12, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc8011ae292a8da0c # initialize rs1
li x2, 0xc253a5a54d43f156 # initialize rs2
sllw x5, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x75d0c66dce23c95b # initialize rs1
li x3, 0xfe58d5258fa4f3b8 # initialize rs2
sllw x23, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x571b143e65454860 # initialize rs1
li x4, 0x30c57e75e8f3a058 # initialize rs2
sllw x5, x4, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x5, 0xd40bf47f891a27cd # initialize rs1
li x5, 0x7115b551695e981c # initialize rs2
sllw x31, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd2ab2630d438fffd # initialize rs1
li x6, 0x5d052863d4cc19d5 # initialize rs2
sllw x4, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x61cb50a40d95844b # initialize rs1
li x7, 0xc8dc1fd2fbbee7a6 # initialize rs2
sllw x4, x7, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xb397b2507d791cf1 # initialize rs1
li x8, 0xed427783161234d3 # initialize rs2
sllw x15, x8, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x4d748010dc090a94 # initialize rs1
li x9, 0xdf22024980b76aaf # initialize rs2
sllw x21, x9, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x5b67dcfbfc2f0ad0 # initialize rs1
li x10, 0x428e39012af28ece # initialize rs2
sllw x8, x10, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xce89de98190aeca8 # initialize rs1
li x11, 0xd1576d049dafab0e # initialize rs2
sllw x9, x11, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x2681b4fc37fa0406 # initialize rs1
li x12, 0xc9c267b3a5a5cb89 # initialize rs2
sllw x6, x12, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x479e8b2d4425741e # initialize rs1
li x13, 0xf9afdbc759c3cef9 # initialize rs2
sllw x14, x13, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xe9326171a801496c # initialize rs1
li x14, 0x3e235477e11deddd # initialize rs2
sllw x15, x14, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x563c009c52e016b5 # initialize rs1
li x15, 0xd196bc20d5fc3b78 # initialize rs2
sllw x2, x15, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x4ecce87e6d25e0bb # initialize rs1
li x16, 0x002770d89cbc2c14 # initialize rs2
sllw x20, x16, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x2605e36138d95d49 # initialize rs1
li x17, 0x3701b0ae285fc030 # initialize rs2
sllw x14, x17, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x4377fedc5030f8db # initialize rs1
li x18, 0x207c8dbe9582a934 # initialize rs2
sllw x6, x18, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xb3247788d8a591dd # initialize rs1
li x19, 0xf285b761eb2b0366 # initialize rs2
sllw x13, x19, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x0316d3e628101a45 # initialize rs1
li x20, 0x05547bbf509ca5d1 # initialize rs2
sllw x22, x20, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x29114c9e57f34024 # initialize rs1
li x21, 0x6ccd209c61136749 # initialize rs2
sllw x13, x21, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xac9ccf8920a56c4a # initialize rs1
li x22, 0xacee336c7a0043c4 # initialize rs2
sllw x12, x22, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x763d7670076f3aa9 # initialize rs1
li x23, 0x8417436acd2fc50f # initialize rs2
sllw x29, x23, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x2c5463eea7054923 # initialize rs1
li x24, 0x765d6616cbf09a1e # initialize rs2
sllw x11, x24, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x5f29a7943459e473 # initialize rs1
li x25, 0xd27a858d5b3f9fbc # initialize rs2
sllw x21, x25, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xf0c98db94113b14c # initialize rs1
li x26, 0xf4dfb7792c3dfc98 # initialize rs2
sllw x18, x26, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x087d14585a1848b0 # initialize rs1
li x27, 0x0377892e41f74981 # initialize rs2
sllw x3, x27, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xa28c9ed9f671c9d3 # initialize rs1
li x28, 0xa32cc4492185a1d5 # initialize rs2
sllw x1, x28, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x06d0e6b382afdb7a # initialize rs1
li x29, 0x62661204d4b400a9 # initialize rs2
sllw x24, x29, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x4739ad4cf85fc4fd # initialize rs1
li x30, 0xac98e2fa95ce7e33 # initialize rs2
sllw x13, x30, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x6e52a40647605cc6 # initialize rs1
li x31, 0x1af87bf83b6b2d9a # initialize rs2
sllw x16, x31, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xe0fa0207fd5d0630 # initialize rs1
li x23, 0x6cd0c49bcfc07ac8 # initialize rs2
sllw x0, x0, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x4618090f7822911c # initialize rs1
li x20, 0xec0324e05b161477 # initialize rs2
sllw x1, x1, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x5a6e9eafa2124677 # initialize rs1
li x18, 0x150a99c0aca02b2e # initialize rs2
sllw x2, x2, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x2d71d0f4e60f2021 # initialize rs1
li x4, 0x54ed3b5edb147b0e # initialize rs2
sllw x3, x3, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x25576389b30b50ef # initialize rs1
li x23, 0x56e48012f06f8bac # initialize rs2
sllw x4, x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8330435473573a6e # initialize rs1
li x31, 0xb40965f61d6e734a # initialize rs2
sllw x5, x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4a1a7a7c4287f1bb # initialize rs1
li x30, 0x965486a6b81da9d9 # initialize rs2
sllw x6, x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x580fa7b10f84bdda # initialize rs1
li x14, 0x6be3482e62e87e59 # initialize rs2
sllw x7, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf1d225153f7d5e96 # initialize rs1
li x23, 0x1f8f9c11ab301c16 # initialize rs2
sllw x8, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x5e5c5f8e2ed28364 # initialize rs1
li x20, 0xb793e992c0f7ffcb # initialize rs2
sllw x9, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xbeb34fd01ce7b7d9 # initialize rs1
li x30, 0xbf8e55c746626e5c # initialize rs2
sllw x10, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xf1a990e6fba46280 # initialize rs1
li x31, 0x7bd9c49dac0b5789 # initialize rs2
sllw x11, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xc2d17b051d7114c8 # initialize rs1
li x22, 0x170695d1f801d8f8 # initialize rs2
sllw x12, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x0c0b76fef5b225a9 # initialize rs1
li x20, 0xdbb547246234f23b # initialize rs2
sllw x13, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x0d89c2433d2112eb # initialize rs1
li x16, 0xc0a960b83be315a6 # initialize rs2
sllw x14, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x6b6a6172206ba1fa # initialize rs1
li x18, 0xde5e9c5e4f449147 # initialize rs2
sllw x15, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x6be848fde6c5d6f5 # initialize rs1
li x19, 0xedf9cc871401b24f # initialize rs2
sllw x16, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xdd720c24c3b56392 # initialize rs1
li x25, 0xddb85f2aa36b27e0 # initialize rs2
sllw x17, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x93f00f3ed0ce8865 # initialize rs1
li x17, 0x23778f39cf10596a # initialize rs2
sllw x18, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x405bc7fc55eafb01 # initialize rs1
li x27, 0x42adceca691ecaca # initialize rs2
sllw x19, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x37125ddd34efd7fb # initialize rs1
li x7, 0x5e536a5a614f0cbb # initialize rs2
sllw x20, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x92e1d4644846af97 # initialize rs1
li x1, 0x7c4b91702bb0c6e9 # initialize rs2
sllw x21, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xc511836b5110eca0 # initialize rs1
li x13, 0x9b211b9ca12d61e4 # initialize rs2
sllw x22, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x7be2e1a9f905dc58 # initialize rs1
li x11, 0xdaea5a302fc89147 # initialize rs2
sllw x23, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xd3bff243ecee9504 # initialize rs1
li x24, 0xa89bc394128429f6 # initialize rs2
sllw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x36b31aa0e99c071f # initialize rs1
li x17, 0xceb7f30729717107 # initialize rs2
sllw x25, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xe905b7e0fa201fcb # initialize rs1
li x5, 0xba230a28846cede2 # initialize rs2
sllw x26, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x09bcaadc2ad5cfe9 # initialize rs1
li x22, 0x3bfaf26b3a0142ba # initialize rs2
sllw x27, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x26c693e89bbd8bb9 # initialize rs1
li x19, 0x4b1d2d2d898f136b # initialize rs2
sllw x28, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x82041961467ab737 # initialize rs1
li x29, 0x86801640d578549e # initialize rs2
sllw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xa3cafcfcce5343e5 # initialize rs1
li x15, 0x99ae0a1d79278594 # initialize rs2
sllw x30, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x5717a7bbde83739a # initialize rs1
li x10, 0xedf3e68f95bb457f # initialize rs2
sllw x31, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x5, 0x3250cc27f78c21a7 # initialize rs1
li x0, 0xf5d54f8a37d7aa7b # initialize rs2
sllw x0, x5, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x22, 0xc994d8f90c65af5d # initialize rs1
li x1, 0x7aeba2b43329c22f # initialize rs2
sllw x1, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x27, 0x5d8abb5bd489926b # initialize rs1
li x2, 0x97d5e35cc06ce862 # initialize rs2
sllw x2, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x16, 0x999e453c34a77a81 # initialize rs1
li x3, 0xe68140f331c3c2f8 # initialize rs2
sllw x3, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x77fdb9fffe733d73 # initialize rs1
li x4, 0x3377b3a7ecf68c52 # initialize rs2
sllw x4, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x31, 0xe81492e5c09e58ab # initialize rs1
li x5, 0xbf3cfc898cbc7ad8 # initialize rs2
sllw x5, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x43bd44c57b6d693b # initialize rs1
li x6, 0xf176e375bc182fad # initialize rs2
sllw x6, x10, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0xa294f47c0b482e52 # initialize rs1
li x7, 0x9f6aabccc59c480a # initialize rs2
sllw x7, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x22, 0x9f4e75e8f6082224 # initialize rs1
li x8, 0x5b39701e64f362e1 # initialize rs2
sllw x8, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x15, 0x01112905dc1771a6 # initialize rs1
li x9, 0xb30c1a970f7e6a4d # initialize rs2
sllw x9, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x18, 0xd2561708c3aadad2 # initialize rs1
li x10, 0x5dc54b152aa70970 # initialize rs2
sllw x10, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x23, 0xbd0826ad48398b91 # initialize rs1
li x11, 0x8c28d9bf4d98201b # initialize rs2
sllw x11, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x30, 0x38d147b8d8f147a2 # initialize rs1
li x12, 0xd5818f56e2f1a078 # initialize rs2
sllw x12, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x16, 0xc8e0537857f8ebc6 # initialize rs1
li x13, 0xc336a6a20a900b3a # initialize rs2
sllw x13, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x19, 0x220f0e2a940cffa3 # initialize rs1
li x14, 0xaf80b33b900c6354 # initialize rs2
sllw x14, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x3, 0x303b59c366fddd21 # initialize rs1
li x15, 0x7df0ea545ad40848 # initialize rs2
sllw x15, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x27, 0xce8291aca7d91091 # initialize rs1
li x16, 0xd8385da5a9c16413 # initialize rs2
sllw x16, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x19, 0x511db7518e235c6a # initialize rs1
li x17, 0x7096dfd1f4ad70b0 # initialize rs2
sllw x17, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x11, 0xa295d72771a20309 # initialize rs1
li x18, 0x518d3101b50b3497 # initialize rs2
sllw x18, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x26, 0x57a21e970b8b5b25 # initialize rs1
li x19, 0x1fa53206f96ed5cb # initialize rs2
sllw x19, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x17, 0x96fa1ea80f2d3f7e # initialize rs1
li x20, 0x6deff64e7ab4d3e1 # initialize rs2
sllw x20, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x5, 0x84cdd8d45be2b92e # initialize rs1
li x21, 0x93f7d507dd98f8a0 # initialize rs2
sllw x21, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x11, 0x92e720671977e7dc # initialize rs1
li x22, 0xd1f86ce2aac1dacb # initialize rs2
sllw x22, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x11, 0x5d98dbb0ff09bebd # initialize rs1
li x23, 0xf58a949d3bc9841c # initialize rs2
sllw x23, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x3, 0xe9c6a1496c17e12c # initialize rs1
li x24, 0xd20d19dca7c2acfd # initialize rs2
sllw x24, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x9, 0x40659f41d51a7202 # initialize rs1
li x25, 0x491c0e71ec4911b9 # initialize rs2
sllw x25, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x11, 0xea142f8c5bcfd611 # initialize rs1
li x26, 0x3a637559091e272d # initialize rs2
sllw x26, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x14, 0x7b0ae5508a62ae5e # initialize rs1
li x27, 0xb9e830b2d3a2524e # initialize rs2
sllw x27, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x11, 0x58ccb927a937e9f1 # initialize rs1
li x28, 0x5548c6c7533a982c # initialize rs2
sllw x28, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x13, 0x6c67f2859710cd89 # initialize rs1
li x29, 0xe9e0f58e6d73b400 # initialize rs2
sllw x29, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x15, 0x50cc90b2ced35020 # initialize rs1
li x30, 0x8e8b1ce3203c3d40 # initialize rs2
sllw x30, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x28, 0x393a334389b9ea14 # initialize rs1
li x31, 0x59e02fc8efc8e277 # initialize rs2
sllw x31, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe587e469f3a5c718 # initialize rs1
li x0, 0xc15714b343404282 # initialize rs2
sllw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x5fe7e4dd122c05cc # initialize rs1
li x1, 0xe84cc58a3649415f # initialize rs2
sllw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x40d4f3d1ac8df4e2 # initialize rs1
li x2, 0x83353b4ee747c979 # initialize rs2
sllw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x9e02d90ca5ff17f1 # initialize rs1
li x3, 0xfd057adc672f8fb4 # initialize rs2
sllw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x72e3781a6e4ce947 # initialize rs1
li x4, 0xf940ba3047a89726 # initialize rs2
sllw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9b6809ab021f0a85 # initialize rs1
li x5, 0x03893d1a63f50f4c # initialize rs2
sllw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xe933df3895f0474d # initialize rs1
li x6, 0xc7a1eb5faa6ccc70 # initialize rs2
sllw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4b9e44057587e0d9 # initialize rs1
li x7, 0xf8a3b369ef63a2f9 # initialize rs2
sllw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xa5e6506067134cb5 # initialize rs1
li x8, 0x83019454d57f3fb7 # initialize rs2
sllw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x4f37df7611c95606 # initialize rs1
li x9, 0x1d42a689b9bd1db0 # initialize rs2
sllw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x0e9f2d46a21b9b60 # initialize rs1
li x10, 0x9621c3cbcefd505f # initialize rs2
sllw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xad8ff646378fbb91 # initialize rs1
li x11, 0xcd14220c9ab9bf8a # initialize rs2
sllw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xa1c59fbd193c1f85 # initialize rs1
li x12, 0x3ab84104b8972463 # initialize rs2
sllw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x31194d4f66c0d947 # initialize rs1
li x13, 0x5178177555201dff # initialize rs2
sllw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x5b8cd58872a949e2 # initialize rs1
li x14, 0xe6bdef9900b4bdc2 # initialize rs2
sllw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xc78efb6513a43b56 # initialize rs1
li x15, 0xbbf079b17e02eb30 # initialize rs2
sllw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x651975ac7b71d421 # initialize rs1
li x16, 0x95606ef8293f629a # initialize rs2
sllw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x251f38a620f079a2 # initialize rs1
li x17, 0x68affb864d79a309 # initialize rs2
sllw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x338db1036f343292 # initialize rs1
li x18, 0xec949d30e75c8b0a # initialize rs2
sllw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x38b15e1b8d401853 # initialize rs1
li x19, 0x2388be6b2964d6cc # initialize rs2
sllw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x58a34f267da354fa # initialize rs1
li x20, 0x5259768cc1c87497 # initialize rs2
sllw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc60ab05b94399637 # initialize rs1
li x21, 0x95ebcf1c725b8c14 # initialize rs2
sllw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x607a0feecbdde26a # initialize rs1
li x22, 0xb8a16957a0c67b93 # initialize rs2
sllw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xbccf2525080024f6 # initialize rs1
li x23, 0xbe19fcfb3b9777e2 # initialize rs2
sllw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xbbafd089e1a5a1c2 # initialize rs1
li x24, 0xe20ee37adced7d8f # initialize rs2
sllw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x37fd5e4baef74773 # initialize rs1
li x25, 0x344ce260f42aea26 # initialize rs2
sllw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x7ba7d073dd29bf74 # initialize rs1
li x26, 0x9e6e8c111e994039 # initialize rs2
sllw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xdf1409348a541277 # initialize rs1
li x27, 0x50ce659c4f1458e2 # initialize rs2
sllw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x133814aef3112e3e # initialize rs1
li x28, 0x3aa25c66263684d0 # initialize rs2
sllw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x9b61e6460a772723 # initialize rs1
li x29, 0x0a88db45f2d0f093 # initialize rs2
sllw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x913bc4cf723538a9 # initialize rs1
li x30, 0x04690486bd2fdaf4 # initialize rs2
sllw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xa110331a93b53318 # initialize rs1
li x31, 0x487e33af91d02f52 # initialize rs2
sllw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x31, x16 # perform first operation
sllw x18, x3, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x5, x16 # perform first operation
sllw x22, x30, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x13, x24, x7 # perform first operation
sllw x6, x28, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x16, x5 # perform first operation
sllw x16, x23, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x30, x26 # perform first operation
sllw x26, x30, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x25, x2 # perform first operation
sllw x11, x16, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x10, x23 # perform first operation
sllw x6, x20, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x15, x11 # perform first operation
sllw x30, x26, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x26, x27, x31 # perform first operation
sllw x26, x24, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x16, x25, x21 # perform first operation
sllw x25, x10, x19 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x7, x26 # perform first operation
sllw x26, x29, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x13, x23, x22 # perform first operation
sllw x29, x31, x11 # perform second (triggering) operation

.EQU SIGSIZE,4096


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
