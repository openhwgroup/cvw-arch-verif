///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbc/WALLY-COV-clmulh.S
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
li x0, 0x9acbd27438231aba # initialize rs1
li x30, 0x3cce37c9ae210fbc # initialize rs2
clmulh x24, x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x7b6f225e94897b05 # initialize rs1
li x15, 0x3c24ee43143d9775 # initialize rs2
clmulh x23, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x70da6f4be0475d9e # initialize rs1
li x3, 0xb3f6738b1f49f3c7 # initialize rs2
clmulh x10, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x9ad0f95404ff1c32 # initialize rs1
li x5, 0xd6ee14680cfcba81 # initialize rs2
clmulh x2, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb8cc29157127f25b # initialize rs1
li x23, 0x5e6752fa66d41bed # initialize rs2
clmulh x19, x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbfadcdb7bb6b6cda # initialize rs1
li x12, 0xb6c2fb9f5d4e7269 # initialize rs2
clmulh x25, x5, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa7c850743491368c # initialize rs1
li x7, 0xb9084824cf49d340 # initialize rs2
clmulh x20, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0x01a7f1cad2e4d1a8 # initialize rs1
li x27, 0x3ef65b1a42090702 # initialize rs2
clmulh x3, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xf13e5591569b6532 # initialize rs1
li x26, 0xb3acc60d441fa5e7 # initialize rs2
clmulh x17, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x8db508598fa0bbf2 # initialize rs1
li x14, 0xf564719923ad6c51 # initialize rs2
clmulh x30, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xe194116e4ee47912 # initialize rs1
li x6, 0xc5b59993befcab86 # initialize rs2
clmulh x18, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x5b93de0424a070f2 # initialize rs1
li x6, 0xc52f61b178a4a3b3 # initialize rs2
clmulh x8, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xa1d0d61ab5e8ebc9 # initialize rs1
li x25, 0x35381ea9097bccc6 # initialize rs2
clmulh x9, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xee7c528d18d5cb57 # initialize rs1
li x28, 0xc34ff8d996e341ac # initialize rs2
clmulh x23, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x0e38cdc38843198f # initialize rs1
li x22, 0xda3c0c4514b716f1 # initialize rs2
clmulh x6, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x019e36f36ad9c381 # initialize rs1
li x16, 0x70501fdf0849bb4c # initialize rs2
clmulh x2, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x6ab7a322984b2603 # initialize rs1
li x7, 0x183e6d890d96dc96 # initialize rs2
clmulh x13, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x68e6b2c224c337d4 # initialize rs1
li x25, 0x519ece53489a0443 # initialize rs2
clmulh x3, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xbf0d304be0957cc1 # initialize rs1
li x11, 0xaf8d3e7c2b7ab466 # initialize rs2
clmulh x21, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x421272faa3969faa # initialize rs1
li x11, 0xa9b4373049514cfb # initialize rs2
clmulh x29, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xd6cc606490c93340 # initialize rs1
li x1, 0x0ff8f6b8a0873340 # initialize rs2
clmulh x6, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x3a581c24f5452bb7 # initialize rs1
li x8, 0xfe0c7d03f1df0296 # initialize rs2
clmulh x17, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x85f623250a71c149 # initialize rs1
li x20, 0x3dd36e33fb8588a1 # initialize rs2
clmulh x16, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x89ff63efd5745b8e # initialize rs1
li x22, 0x2fb9ddef48ff5dd9 # initialize rs2
clmulh x12, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x2ad7cbe7f5f5a7e1 # initialize rs1
li x3, 0x9af046681f16dfa3 # initialize rs2
clmulh x18, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x7357bc1053d189a7 # initialize rs1
li x18, 0x47b54026c56566af # initialize rs2
clmulh x15, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x3c7b372d2cd966b6 # initialize rs1
li x18, 0x3ef39249155176d2 # initialize rs2
clmulh x12, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x5969b0fce9bb2c40 # initialize rs1
li x25, 0xbc0618573537c45c # initialize rs2
clmulh x2, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x1196aef9894e4876 # initialize rs1
li x25, 0xa9d0299c41103e58 # initialize rs2
clmulh x11, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xe83a5f2cd4b36216 # initialize rs1
li x22, 0x1d6b02f3414f2343 # initialize rs2
clmulh x23, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xe469e3ed36e130e0 # initialize rs1
li x13, 0x922cdc51a6a1fd0a # initialize rs2
clmulh x23, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x656294aeadc4680b # initialize rs1
li x15, 0xff273585a9687365 # initialize rs2
clmulh x28, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x7, 0x9b9d77423aff6a85 # initialize rs1
li x0, 0x5dc80f2d33a90192 # initialize rs2
clmulh x16, x7, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x3, 0x0f81ee70c73890b4 # initialize rs1
li x1, 0xb00c7e259217b0bf # initialize rs2
clmulh x12, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x6, 0x33175d1756c47bc5 # initialize rs1
li x2, 0xab712bb0f16b366e # initialize rs2
clmulh x11, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x25, 0xe4d15f9d8b751e38 # initialize rs1
li x3, 0x485e031c889cca04 # initialize rs2
clmulh x22, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x1f407034a40d1e59 # initialize rs1
li x4, 0x6af190267452cf41 # initialize rs2
clmulh x29, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0xa71d38c0b8eeceb3 # initialize rs1
li x5, 0xd902f7d456ad6121 # initialize rs2
clmulh x25, x18, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0x57ad48b00d49d3c6 # initialize rs1
li x6, 0xf43916304ff57d97 # initialize rs2
clmulh x5, x14, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x17, 0x6a3c2fa535ba6f49 # initialize rs1
li x7, 0x27a022a5e316778d # initialize rs2
clmulh x23, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x3, 0x48635e336d511246 # initialize rs1
li x8, 0x3d951da02dd88419 # initialize rs2
clmulh x23, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x22, 0xbf813f7c39dd5cfc # initialize rs1
li x9, 0x3e4439beb88cc3fc # initialize rs2
clmulh x20, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x11, 0xb2f1db09bd788d2f # initialize rs1
li x10, 0x7e06faa5b3c5ca2b # initialize rs2
clmulh x29, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0x8afcec8013d772c3 # initialize rs1
li x11, 0x3ebbe0109a22cd9a # initialize rs2
clmulh x31, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x10, 0x8ad144ee6283c6ab # initialize rs1
li x12, 0x70b71d7c721034fe # initialize rs2
clmulh x25, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x5, 0x40338ccad2f5a358 # initialize rs1
li x13, 0x3c5b010ac192b03d # initialize rs2
clmulh x31, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x18, 0xa4e8fd6266ba410d # initialize rs1
li x14, 0x697ef793d90d2d38 # initialize rs2
clmulh x30, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x29, 0x91ba652d086f54b7 # initialize rs1
li x15, 0xf4a8db00a22fb3a3 # initialize rs2
clmulh x16, x29, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x20, 0x12ae2f051ce489f3 # initialize rs1
li x16, 0x5b5accd46e00949d # initialize rs2
clmulh x2, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x24, 0x0041ba8782c7b151 # initialize rs1
li x17, 0xc7ad8d2e5f5ed0cc # initialize rs2
clmulh x12, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x25, 0x6490fd79cd59be56 # initialize rs1
li x18, 0x9a6678acbdd73462 # initialize rs2
clmulh x5, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x31, 0x97ce412e4d68ae6c # initialize rs1
li x19, 0xa21992ad5456baa2 # initialize rs2
clmulh x27, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x11, 0x398a93d5b376f114 # initialize rs1
li x20, 0xc5aa6e26e1288b75 # initialize rs2
clmulh x22, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x13, 0x63820d9539276b97 # initialize rs1
li x21, 0x06613f571adc28f5 # initialize rs2
clmulh x18, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x27, 0x8f1eefea74327cda # initialize rs1
li x22, 0x57a913428dd8fccd # initialize rs2
clmulh x15, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x6, 0xe392530bd3d518a5 # initialize rs1
li x23, 0x7a267b9c377e9500 # initialize rs2
clmulh x19, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x9, 0x69e4e7fadbec63f8 # initialize rs1
li x24, 0xfce2c02c5a27d12a # initialize rs2
clmulh x11, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x19, 0xc0eb2318190ad332 # initialize rs1
li x25, 0x55c66267cf7c00bf # initialize rs2
clmulh x8, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x21, 0x51c40a70a15985d2 # initialize rs1
li x26, 0xffc2c5cb1d989490 # initialize rs2
clmulh x5, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x19, 0xd9ef5c53a0fdeb0d # initialize rs1
li x27, 0x66dfcc34a10943a5 # initialize rs2
clmulh x13, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x2, 0x3a26f8e5b091c6fe # initialize rs1
li x28, 0xbe02841e5499c7fa # initialize rs2
clmulh x7, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x19, 0x52f2d79c1f58c16c # initialize rs1
li x29, 0x95e891bd32565013 # initialize rs2
clmulh x6, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x25, 0xd4a1676e60aaa391 # initialize rs1
li x30, 0x8ea7ff0f3c15cb2d # initialize rs2
clmulh x16, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x15, 0x652ef49cef374c0d # initialize rs1
li x31, 0x99421f7af13a5d5f # initialize rs2
clmulh x26, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 504)

# Testcase cp_rd (Test destination rd = x0)
li x14, 0x2758073fabc6551b # initialize rs1
li x27, 0x17573fed8d77a6eb # initialize rs2
clmulh x0, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x31, 0x39c30886493363f7 # initialize rs1
li x18, 0x52cda77b7ac19877 # initialize rs2
clmulh x1, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x24, 0x5a29a2d0e4a27d00 # initialize rs1
li x25, 0x24664853f9195e8e # initialize rs2
clmulh x2, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x16, 0xdea0224f90d61c57 # initialize rs1
li x25, 0xf436aaf94070d940 # initialize rs2
clmulh x3, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0xb91f2cecbe5576ee # initialize rs1
li x7, 0xfef066147c40c2fb # initialize rs2
clmulh x4, x28, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0xef39af0a7cfba2d3 # initialize rs1
li x20, 0xfcf4b2360a5464eb # initialize rs2
clmulh x5, x18, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0x93dec7b0a95e46e9 # initialize rs1
li x16, 0x1e85d8cc86519be6 # initialize rs2
clmulh x6, x13, x16 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0x4e5a6a586a9cd97f # initialize rs1
li x31, 0x499e24ef493f8e97 # initialize rs2
clmulh x7, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x6, 0xbca233c86b65c816 # initialize rs1
li x14, 0xc081f39d409aac7c # initialize rs2
clmulh x8, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x12, 0x2e5be6abc1eb889e # initialize rs1
li x25, 0x58709c2c2e0216e4 # initialize rs2
clmulh x9, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x5, 0x9ad513f3108dd410 # initialize rs1
li x17, 0xe637012bdaee6ed1 # initialize rs2
clmulh x10, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x31, 0x8178e57082fcda1c # initialize rs1
li x19, 0x22e58708ae25398f # initialize rs2
clmulh x11, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x20, 0x40322061fe242aba # initialize rs1
li x19, 0x2e6d8c20f3b7fb72 # initialize rs2
clmulh x12, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x3, 0x4776641cb1ec998b # initialize rs1
li x29, 0x94d8a0e9b620ac65 # initialize rs2
clmulh x13, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x21, 0x481dff0f7ba3d67c # initialize rs1
li x24, 0x50fdf9c5a4323d1a # initialize rs2
clmulh x14, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x21, 0xd819d7e68ff2818e # initialize rs1
li x26, 0xa9b96cb64a9f7d8a # initialize rs2
clmulh x15, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x6, 0x19d711e101b96da2 # initialize rs1
li x20, 0x66e0da8f73cdbec6 # initialize rs2
clmulh x16, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x3, 0xc8d2b0d24c84c03a # initialize rs1
li x30, 0x1c4eca33d6ec5f81 # initialize rs2
clmulh x17, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x26, 0x9f7e3deb8927ede5 # initialize rs1
li x20, 0xadfdf89916b75167 # initialize rs2
clmulh x18, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x27, 0xd15e7f9a55bb009e # initialize rs1
li x29, 0xcf6b31cc58d1fb3a # initialize rs2
clmulh x19, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x23, 0x7b687d1ad1c8a4e5 # initialize rs1
li x19, 0x41d61e257e26ae6f # initialize rs2
clmulh x20, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x24, 0xc5672d5a8a28252d # initialize rs1
li x31, 0xf5c687da588b70b2 # initialize rs2
clmulh x21, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x8, 0x9cb9c928ae0ecb03 # initialize rs1
li x14, 0x4ef1b278340104f9 # initialize rs2
clmulh x22, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x9, 0x2bbaa972f5d74887 # initialize rs1
li x12, 0xe328e4211955e5e7 # initialize rs2
clmulh x23, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x7, 0x1269aab34cd2a744 # initialize rs1
li x1, 0x657f7312314095ab # initialize rs2
clmulh x24, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x20, 0x4eb959112e06bb46 # initialize rs1
li x10, 0x463503efab603607 # initialize rs2
clmulh x25, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x19, 0x72f7f6362802f8eb # initialize rs1
li x9, 0x9b16ce2e18d3583d # initialize rs2
clmulh x26, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x58ed63c2690a1be2 # initialize rs1
li x16, 0x5bb9480654b45778 # initialize rs2
clmulh x27, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x2, 0x2fe8266fa09bf276 # initialize rs1
li x8, 0x4147e8e26af66ca6 # initialize rs2
clmulh x28, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x25, 0x0103c2c70eff9373 # initialize rs1
li x14, 0x52bf344a06e4548b # initialize rs2
clmulh x29, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x23, 0xa67e3ab3c70b8396 # initialize rs1
li x22, 0x8affc655ea1cc0d0 # initialize rs2
clmulh x30, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x26, 0xed58e12a384f43bc # initialize rs1
li x21, 0x92ffd234cc122213 # initialize rs2
clmulh x31, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x25, 0x0000000000000000 # initialize rs1
li x18, 0x93afe940b33e6698 # initialize rs2
clmulh x19, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x27, 0x0000000000000001 # initialize rs1
li x1, 0x09a5f9fe9337ba0b # initialize rs2
clmulh x2, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0x0000000000000002 # initialize rs1
li x15, 0x0411d049109bb492 # initialize rs2
clmulh x27, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x27, 0x8000000000000000 # initialize rs1
li x28, 0xcf77d1156b854bdd # initialize rs2
clmulh x1, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x8, 0x8000000000000001 # initialize rs1
li x30, 0x748d6b2d95fc7441 # initialize rs2
clmulh x5, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x2, 0x7fffffffffffffff # initialize rs1
li x24, 0xb37641736334ab94 # initialize rs2
clmulh x8, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rs1
li x13, 0xa31b5769c8a6e0e2 # initialize rs2
clmulh x10, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x16, 0xffffffffffffffff # initialize rs1
li x15, 0x36da7b07c2ca0813 # initialize rs2
clmulh x9, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x26, 0x01eb8a8c151cb4ee # initialize rs2
clmulh x13, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x02f10c4e6a2f5085 # initialize rs2
clmulh x16, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x47a5e1a9c5f2a6a4 # initialize rs2
clmulh x29, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x19, 0x5555555555555555 # initialize rs1
li x16, 0x5478c449dc82f86d # initialize rs2
clmulh x21, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x17, 0x00000000ffffffff # initialize rs1
li x11, 0x370320120ff40a74 # initialize rs2
clmulh x18, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x29, 0xaae231b3e652ab80 # initialize rs2
clmulh x1, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x3, 0x0000000100000000 # initialize rs1
li x12, 0xb7df8df74cef0c17 # initialize rs2
clmulh x9, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x20, 0x0000000100000001 # initialize rs1
li x16, 0x6cfc43279217e4a9 # initialize rs2
clmulh x27, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x5, 0x72f639bbba4811a3 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
clmulh x16, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x18, 0x53813e4a02d91588 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
clmulh x11, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x31, 0x6cee35eea7d524b2 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
clmulh x29, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x20, 0xfb102cfe8259bf6e # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
clmulh x17, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x22, 0x9bba84398cee6ef4 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
clmulh x1, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x11, 0xc2b21c6cbe81d5ec # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
clmulh x10, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x27, 0x94322a2b2f2b1bbf # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
clmulh x9, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x26, 0x505f8182bf6ddd85 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
clmulh x16, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x3, 0xc4fff928ccf519af # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
clmulh x5, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x25, 0xc2ff829dc8ab7289 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
clmulh x27, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0x8ed151e1ebbd0e9b # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x28, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x11, 0x0b4c265b202032a1 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
clmulh x2, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x13, 0x06a714cdef213ece # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
clmulh x28, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x26, 0xb7f5a97fbc1f6070 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
clmulh x22, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x3, 0x008e0bd9b468391f # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
clmulh x10, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x27, 0x61acda244f822136 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
clmulh x19, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x15, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
clmulh x29, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x28, 0x0000000000000000 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
clmulh x23, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x25, 0x0000000000000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
clmulh x10, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x28, 0x0000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
clmulh x12, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x16, 0x0000000000000000 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
clmulh x24, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000000000000 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
clmulh x30, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000000000000 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
clmulh x7, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x29, 0x0000000000000000 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
clmulh x1, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x31, 0x0000000000000000 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
clmulh x3, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000000000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
clmulh x3, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000000000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x9, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x25, 0x0000000000000000 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
clmulh x10, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x26, 0x0000000000000000 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
clmulh x28, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x12, 0x0000000000000000 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
clmulh x18, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x28, 0x0000000000000000 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
clmulh x27, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x23, 0x0000000000000000 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
clmulh x18, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x18, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
clmulh x8, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x25, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
clmulh x29, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x3, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
clmulh x13, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x12, 0x0000000000000001 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
clmulh x21, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x18, 0x0000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
clmulh x15, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000001 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
clmulh x23, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000000000001 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
clmulh x20, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x22, 0x0000000000000001 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
clmulh x5, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000001 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
clmulh x12, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x27, 0x0000000000000001 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
clmulh x29, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x0000000000000001 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x6, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x14, 0x0000000000000001 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
clmulh x21, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x27, 0x0000000000000001 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
clmulh x10, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x21, 0x0000000000000001 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
clmulh x30, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x9, 0x0000000000000001 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
clmulh x10, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x23, 0x0000000000000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
clmulh x19, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x19, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
clmulh x24, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x31, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
clmulh x27, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x21, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
clmulh x1, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x11, 0x0000000000000002 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
clmulh x16, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x1, 0x0000000000000002 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
clmulh x17, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000000000002 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
clmulh x30, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x11, 0x0000000000000002 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
clmulh x5, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x11, 0x0000000000000002 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
clmulh x28, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x12, 0x0000000000000002 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
clmulh x23, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000000000002 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
clmulh x12, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000000000002 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x24, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x19, 0x0000000000000002 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
clmulh x29, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x26, 0x0000000000000002 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
clmulh x23, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x16, 0x0000000000000002 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
clmulh x21, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x10, 0x0000000000000002 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
clmulh x27, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x20, 0x0000000000000002 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
clmulh x29, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x1, 0x8000000000000000 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
clmulh x30, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x30, 0x8000000000000000 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
clmulh x12, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x28, 0x8000000000000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
clmulh x10, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x19, 0x8000000000000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
clmulh x25, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x3, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
clmulh x14, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x7, 0x8000000000000000 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
clmulh x18, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x15, 0x8000000000000000 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
clmulh x9, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x14, 0x8000000000000000 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
clmulh x15, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x9, 0x8000000000000000 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
clmulh x16, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x21, 0x8000000000000000 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
clmulh x24, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x8000000000000000 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x24, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x1, 0x8000000000000000 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
clmulh x9, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x11, 0x8000000000000000 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
clmulh x27, x11, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x2, 0x8000000000000000 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
clmulh x1, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x18, 0x8000000000000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
clmulh x15, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x1, 0x8000000000000000 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
clmulh x15, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x18, 0x8000000000000001 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
clmulh x17, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x11, 0x8000000000000001 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
clmulh x5, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x15, 0x8000000000000001 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
clmulh x18, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x11, 0x8000000000000001 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
clmulh x8, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x14, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
clmulh x5, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x28, 0x8000000000000001 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
clmulh x13, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x16, 0x8000000000000001 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
clmulh x27, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x2, 0x8000000000000001 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
clmulh x30, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x6, 0x8000000000000001 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
clmulh x23, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x21, 0x8000000000000001 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
clmulh x28, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x8000000000000001 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x6, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x16, 0x8000000000000001 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
clmulh x13, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x16, 0x8000000000000001 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
clmulh x17, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x27, 0x8000000000000001 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
clmulh x24, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x9, 0x8000000000000001 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
clmulh x3, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x29, 0x8000000000000001 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
clmulh x18, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x22, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
clmulh x3, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x1, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
clmulh x8, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x13, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
clmulh x17, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x1, 0x7fffffffffffffff # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
clmulh x20, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x2, 0x7fffffffffffffff # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
clmulh x25, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x30, 0x7fffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
clmulh x18, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x14, 0x7fffffffffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
clmulh x31, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x28, 0x7fffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
clmulh x7, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x10, 0x7fffffffffffffff # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
clmulh x18, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x2, 0x7fffffffffffffff # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
clmulh x10, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x7fffffffffffffff # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x6, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x2, 0x7fffffffffffffff # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
clmulh x6, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x3, 0x7fffffffffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
clmulh x15, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x15, 0x7fffffffffffffff # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
clmulh x16, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x27, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
clmulh x29, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x29, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
clmulh x20, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x18, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
clmulh x6, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x25, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
clmulh x16, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x20, 0x7ffffffffffffffe # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
clmulh x7, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x6, 0x7ffffffffffffffe # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
clmulh x23, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x22, 0x7ffffffffffffffe # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
clmulh x7, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x6, 0x7ffffffffffffffe # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
clmulh x8, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
clmulh x26, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
clmulh x14, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x20, 0x7ffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
clmulh x3, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x24, 0x7ffffffffffffffe # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
clmulh x30, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x7ffffffffffffffe # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x20, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x16, 0x7ffffffffffffffe # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
clmulh x2, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x18, 0x7ffffffffffffffe # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
clmulh x22, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x29, 0x7ffffffffffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
clmulh x22, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x12, 0x7ffffffffffffffe # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
clmulh x2, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x16, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
clmulh x19, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x8, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
clmulh x30, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x25, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
clmulh x15, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x15, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
clmulh x23, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x2, 0xffffffffffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
clmulh x25, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x5, 0xffffffffffffffff # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
clmulh x27, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
clmulh x1, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x30, 0xffffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
clmulh x11, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x9, 0xffffffffffffffff # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
clmulh x24, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x22, 0xffffffffffffffff # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
clmulh x12, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x27, 0xffffffffffffffff # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
clmulh x2, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xffffffffffffffff # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x11, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x28, 0xffffffffffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
clmulh x16, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x15, 0xffffffffffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
clmulh x13, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x19, 0xffffffffffffffff # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
clmulh x11, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x9, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
clmulh x25, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x31, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
clmulh x20, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x10, 0xfffffffffffffffe # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
clmulh x27, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x9, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
clmulh x19, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x1, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
clmulh x13, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x11, 0xfffffffffffffffe # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
clmulh x28, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x25, 0xfffffffffffffffe # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
clmulh x27, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x6, 0xfffffffffffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
clmulh x30, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
clmulh x11, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x22, 0xfffffffffffffffe # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
clmulh x23, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
clmulh x21, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x17, 0xfffffffffffffffe # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
clmulh x26, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xfffffffffffffffe # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x19, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x12, 0xfffffffffffffffe # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
clmulh x30, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x14, 0xfffffffffffffffe # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
clmulh x9, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
clmulh x28, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x5, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
clmulh x19, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x7, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
clmulh x8, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
clmulh x13, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
clmulh x8, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
clmulh x26, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
clmulh x9, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
clmulh x26, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
clmulh x1, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
clmulh x25, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
clmulh x18, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
clmulh x12, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
clmulh x28, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x10, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
clmulh x12, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
clmulh x23, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
clmulh x13, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
clmulh x23, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
clmulh x2, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
clmulh x9, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
clmulh x5, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
clmulh x29, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
clmulh x2, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
clmulh x13, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
clmulh x5, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
clmulh x13, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
clmulh x2, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
clmulh x14, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
clmulh x28, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x20, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
clmulh x16, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
clmulh x3, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
clmulh x5, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
clmulh x27, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
clmulh x30, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x21, 0x5555555555555555 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
clmulh x10, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x27, 0x5555555555555555 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
clmulh x23, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x7, 0x5555555555555555 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
clmulh x10, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x2, 0x5555555555555555 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
clmulh x28, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x8, 0x5555555555555555 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
clmulh x7, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x9, 0x5555555555555555 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
clmulh x15, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x1, 0x5555555555555555 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
clmulh x19, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x16, 0x5555555555555555 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
clmulh x28, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x6, 0x5555555555555555 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
clmulh x20, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x23, 0x5555555555555555 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
clmulh x26, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x5555555555555555 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x24, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x14, 0x5555555555555555 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
clmulh x22, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x2, 0x5555555555555555 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
clmulh x26, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x14, 0x5555555555555555 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
clmulh x17, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x2, 0x5555555555555555 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
clmulh x13, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x26, 0x5555555555555555 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
clmulh x16, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x13, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
clmulh x17, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x22, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
clmulh x6, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x14, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
clmulh x11, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x19, 0x00000000ffffffff # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
clmulh x8, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x28, 0x00000000ffffffff # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
clmulh x17, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x3, 0x00000000ffffffff # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
clmulh x2, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x21, 0x00000000ffffffff # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
clmulh x16, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x21, 0x00000000ffffffff # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
clmulh x15, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x6, 0x00000000ffffffff # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
clmulh x22, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x5, 0x00000000ffffffff # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
clmulh x6, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x00000000ffffffff # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x22, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x31, 0x00000000ffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
clmulh x6, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
clmulh x23, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0x00000000ffffffff # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
clmulh x30, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x12, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
clmulh x5, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x22, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
clmulh x24, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x18, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
clmulh x30, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x31, 0x00000000fffffffe # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
clmulh x27, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x13, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
clmulh x23, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x28, 0x00000000fffffffe # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
clmulh x26, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x19, 0x00000000fffffffe # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
clmulh x21, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
clmulh x25, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x31, 0x00000000fffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
clmulh x10, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x30, 0x00000000fffffffe # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
clmulh x24, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x20, 0x00000000fffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
clmulh x25, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x29, 0x00000000fffffffe # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
clmulh x2, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x00000000fffffffe # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x17, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x26, 0x00000000fffffffe # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
clmulh x6, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x28, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
clmulh x10, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
clmulh x6, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x29, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
clmulh x10, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x17, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
clmulh x21, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x2, 0x0000000100000000 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
clmulh x31, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x25, 0x0000000100000000 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
clmulh x30, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x30, 0x0000000100000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
clmulh x24, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x21, 0x0000000100000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
clmulh x16, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x8, 0x0000000100000000 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
clmulh x15, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x28, 0x0000000100000000 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
clmulh x5, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x11, 0x0000000100000000 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
clmulh x27, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x24, 0x0000000100000000 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
clmulh x2, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x31, 0x0000000100000000 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
clmulh x19, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000100000000 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
clmulh x13, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x0000000100000000 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x14, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x6, 0x0000000100000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
clmulh x1, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x16, 0x0000000100000000 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
clmulh x3, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x18, 0x0000000100000000 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
clmulh x16, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x14, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
clmulh x24, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x20, 0x0000000100000000 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
clmulh x1, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x19, 0x0000000100000001 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
clmulh x17, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x24, 0x0000000100000001 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
clmulh x5, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x29, 0x0000000100000001 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
clmulh x10, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x30, 0x0000000100000001 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
clmulh x27, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x23, 0x0000000100000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
clmulh x29, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000100000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
clmulh x30, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000100000001 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
clmulh x29, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x17, 0x0000000100000001 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
clmulh x20, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x28, 0x0000000100000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
clmulh x14, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x10, 0x0000000100000001 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
clmulh x9, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000100000001 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmulh x13, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x25, 0x0000000100000001 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
clmulh x29, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x17, 0x0000000100000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
clmulh x27, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x8, 0x0000000100000001 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
clmulh x28, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x30, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
clmulh x28, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x9, 0x0000000100000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
clmulh x24, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x5f1a1504053abf9b # initialize rs1
li x0, 0x0a800196fc36d5a8 # initialize rs2
clmulh x8, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x8067e8db59348443 # initialize rs1
li x1, 0x3c53933cf204838e # initialize rs2
clmulh x19, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc742c8cbd371ffa2 # initialize rs1
li x2, 0x2baf866e25bf53e2 # initialize rs2
clmulh x25, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x957f57f6e7c195e8 # initialize rs1
li x3, 0x4c5f18e8cc5d60b2 # initialize rs2
clmulh x30, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe8e80cfc99c890f2 # initialize rs1
li x4, 0x6a815343ed7d8466 # initialize rs2
clmulh x29, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9f9a007538e067a3 # initialize rs1
li x5, 0x6998ec0d9efbbf75 # initialize rs2
clmulh x26, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc3351e0cb5c0801f # initialize rs1
li x6, 0x39de07271434412c # initialize rs2
clmulh x12, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9fd1739c7c3c180d # initialize rs1
li x7, 0xbc989189d335eac9 # initialize rs2
clmulh x14, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x261af9360c86a06f # initialize rs1
li x8, 0xbd67b7d33b92a909 # initialize rs2
clmulh x6, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x370d0d9d9a7571a6 # initialize rs1
li x9, 0x7d8a9b9158787b29 # initialize rs2
clmulh x7, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xd76eaca86a29bc9e # initialize rs1
li x10, 0x423d38cfadaeb6ea # initialize rs2
clmulh x21, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xdcb5e7720e6d2d8d # initialize rs1
li x11, 0xb913becdbfacd1ec # initialize rs2
clmulh x3, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x65f566f67577eae2 # initialize rs1
li x12, 0x72f55a1a8fc1226f # initialize rs2
clmulh x26, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x65ddc862f3a68f49 # initialize rs1
li x13, 0x0f327b229529f053 # initialize rs2
clmulh x11, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xd47ebef558723e53 # initialize rs1
li x14, 0x7bda467afa9556a2 # initialize rs2
clmulh x18, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xf22f1071595c55d6 # initialize rs1
li x15, 0xeab84587793fe495 # initialize rs2
clmulh x11, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xee47cf5f40a7ac0c # initialize rs1
li x16, 0x8ad0db5d0264c549 # initialize rs2
clmulh x25, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x940df86ead8f4fac # initialize rs1
li x17, 0x62248bbd0ea479e2 # initialize rs2
clmulh x31, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x978648af53c111cd # initialize rs1
li x18, 0x29741d9fc3e520cd # initialize rs2
clmulh x26, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x6efabee51be9e058 # initialize rs1
li x19, 0x9d116f4b977683c8 # initialize rs2
clmulh x10, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x9a36b1928171c75b # initialize rs1
li x20, 0x320426e0056c88d3 # initialize rs2
clmulh x19, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x6d0554f42771616c # initialize rs1
li x21, 0x0b649407b4bad141 # initialize rs2
clmulh x23, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x59a259d0b1f6aedf # initialize rs1
li x22, 0x911d58c733611077 # initialize rs2
clmulh x9, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x7313b1057a358fca # initialize rs1
li x23, 0x7bbba3c79dde0c35 # initialize rs2
clmulh x27, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x4a00d2ada209c311 # initialize rs1
li x24, 0xd06a791b43d4fad2 # initialize rs2
clmulh x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x00aa178b90b51175 # initialize rs1
li x25, 0x3ae45435092510b0 # initialize rs2
clmulh x11, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x1117f05e07fffa5a # initialize rs1
li x26, 0xe80b3bef372af609 # initialize rs2
clmulh x17, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xfce9b3047e45e5d9 # initialize rs1
li x27, 0x5ab8ed5bb86d6253 # initialize rs2
clmulh x18, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x38f5638fc0a1cc3a # initialize rs1
li x28, 0x0e66d0d6becb8092 # initialize rs2
clmulh x25, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x4b2fe7f7a0c64cda # initialize rs1
li x29, 0x2e7239f6799424fa # initialize rs2
clmulh x6, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x8323008a96140630 # initialize rs1
li x30, 0xd392536751d06114 # initialize rs2
clmulh x6, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x4e775f11c2c16708 # initialize rs1
li x31, 0xeee08c795d71b3f6 # initialize rs2
clmulh x5, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x166151426c4dd487 # initialize rs1
li x13, 0xd49dd6aedd805f00 # initialize rs2
clmulh x0, x0, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x50f05f3b03f00158 # initialize rs1
li x23, 0xabdae213ee488739 # initialize rs2
clmulh x1, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xf1e61f39cd07fb46 # initialize rs1
li x7, 0x7f3c571ca6f05bd3 # initialize rs2
clmulh x2, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x8744aeef7d23bee0 # initialize rs1
li x26, 0xc1cad01498e69439 # initialize rs2
clmulh x3, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x453279dfc814e37b # initialize rs1
li x11, 0xbfffca9456197f46 # initialize rs2
clmulh x4, x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x08ee7e8074cfc002 # initialize rs1
li x16, 0xc5dff5634cd65c20 # initialize rs2
clmulh x5, x5, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x74c3351864fc6408 # initialize rs1
li x27, 0x418988b9a209061f # initialize rs2
clmulh x6, x6, x27 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x48b52d51ed5fafa4 # initialize rs1
li x19, 0x29609b638314d677 # initialize rs2
clmulh x7, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x1e17d84c03398c20 # initialize rs1
li x28, 0x53662b516c2e44fa # initialize rs2
clmulh x8, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xd30384fbd3a129a2 # initialize rs1
li x3, 0x474a806faa0c7915 # initialize rs2
clmulh x9, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x6bb49d83b985606b # initialize rs1
li x17, 0x20752fa73848fc31 # initialize rs2
clmulh x10, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x0ca26205c1feb040 # initialize rs1
li x25, 0x2fb0f6170815c51c # initialize rs2
clmulh x11, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xb54690142d46048c # initialize rs1
li x15, 0xf6d9522e947cb194 # initialize rs2
clmulh x12, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe216d593f045a30d # initialize rs1
li x13, 0x3462a1a619be54f4 # initialize rs2
clmulh x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x081100fccd1d9bae # initialize rs1
li x22, 0x43bc36cb37959aaf # initialize rs2
clmulh x14, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xc535da72a1f23761 # initialize rs1
li x17, 0x201f0838b5f118b1 # initialize rs2
clmulh x15, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x3fd787ef2f1182cb # initialize rs1
li x14, 0x38e600a26bbded3f # initialize rs2
clmulh x16, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x9969724cc6a384ea # initialize rs1
li x28, 0xb553ba106e2f8f09 # initialize rs2
clmulh x17, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x634bacec47cd12a7 # initialize rs1
li x12, 0xa6225d5aabd11f3f # initialize rs2
clmulh x18, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x3985cf84ad837216 # initialize rs1
li x23, 0x99da6901af175e4d # initialize rs2
clmulh x19, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x7eeb4cb19b443ca8 # initialize rs1
li x13, 0xc434c7db7d260fd8 # initialize rs2
clmulh x20, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x9be1c92957495738 # initialize rs1
li x29, 0x19659998145b0d6d # initialize rs2
clmulh x21, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xa6dec3c9f3440fac # initialize rs1
li x9, 0xd17df86873828685 # initialize rs2
clmulh x22, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x192c6540acbd5da0 # initialize rs1
li x19, 0xcead67c22602d6e6 # initialize rs2
clmulh x23, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xedd6b8386ad54713 # initialize rs1
li x16, 0x8ac9d232d0315915 # initialize rs2
clmulh x24, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x226cf43deeef63fc # initialize rs1
li x28, 0x268ba1ed87750b40 # initialize rs2
clmulh x25, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x5ebd7b84f2dfab6d # initialize rs1
li x24, 0x5fa890043ab6d063 # initialize rs2
clmulh x26, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xbb76994f1ffecf42 # initialize rs1
li x17, 0x8631bb6836994778 # initialize rs2
clmulh x27, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x9b110eb155d0b599 # initialize rs1
li x5, 0xbeb42c92a0ad04c0 # initialize rs2
clmulh x28, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xb4360ca426106f33 # initialize rs1
li x3, 0xc1a46a42d82fc2e7 # initialize rs2
clmulh x29, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x11430077b1eb1171 # initialize rs1
li x8, 0xa0d57bc9a65fb804 # initialize rs2
clmulh x30, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x30db3b7d6d69b239 # initialize rs1
li x25, 0x4b7363bb9b358362 # initialize rs2
clmulh x31, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x27, 0xcf462fe5a3582eec # initialize rs1
li x0, 0x5cbda8d2b7071eaa # initialize rs2
clmulh x0, x27, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x22, 0x5c84c719e0903787 # initialize rs1
li x1, 0x1e5565f608bdb096 # initialize rs2
clmulh x1, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x29, 0x833684c9a45ed517 # initialize rs1
li x2, 0xf218554bf1bca39e # initialize rs2
clmulh x2, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x7, 0x887bda26cc806278 # initialize rs1
li x3, 0x1ca0a428d4fcaa9c # initialize rs2
clmulh x3, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x31e336fc8e56f351 # initialize rs1
li x4, 0xe512efefe3c5ae92 # initialize rs2
clmulh x4, x11, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x6, 0x2050146a57638d84 # initialize rs1
li x5, 0x5db7c576d6cfb1ee # initialize rs2
clmulh x5, x6, x5 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
li x24, 0x21960551f489d8db # initialize rs1
li x6, 0x657101b049a9a4b8 # initialize rs2
clmulh x6, x24, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x31, 0xd29f4cc0653ec380 # initialize rs1
li x7, 0x60bf2429724a0bf2 # initialize rs2
clmulh x7, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x9, 0xdfb4e359e26aa47c # initialize rs1
li x8, 0x12eeed4f579ed607 # initialize rs2
clmulh x8, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x25, 0x559b72efba436661 # initialize rs1
li x9, 0x7de82c03678a93f5 # initialize rs2
clmulh x9, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x23, 0x039419303921a038 # initialize rs1
li x10, 0xc5574c6e2a2a9559 # initialize rs2
clmulh x10, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x23, 0x1fc49df4550f463c # initialize rs1
li x11, 0x4eb91f03bd3fcc0f # initialize rs2
clmulh x11, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x2, 0x3d60f69485d94f9b # initialize rs1
li x12, 0xc915529d084ea439 # initialize rs2
clmulh x12, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x19, 0xcac50c1e47218d86 # initialize rs1
li x13, 0xe8cba8818825c638 # initialize rs2
clmulh x13, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x14, 0x263ded29bc11a46f # initialize rs1
li x14, 0x04b41cb8cd0a5183 # initialize rs2
clmulh x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x2, 0x218adf6ae1044aa5 # initialize rs1
li x15, 0xf0e9250f962fe06d # initialize rs2
clmulh x15, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x27, 0x8251972358739e74 # initialize rs1
li x16, 0x90ca740712eadd0f # initialize rs2
clmulh x16, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x10, 0xba5df0371109dbfa # initialize rs1
li x17, 0x15042426df82f177 # initialize rs2
clmulh x17, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x14, 0xc8b120b985ccb0f9 # initialize rs1
li x18, 0x9cec642fc04b319b # initialize rs2
clmulh x18, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x27, 0xbac2c1a5075579a4 # initialize rs1
li x19, 0x2e5b9099731c2252 # initialize rs2
clmulh x19, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x14, 0xcf7ec3cf47ce52ad # initialize rs1
li x20, 0xa50aa11859d7adc3 # initialize rs2
clmulh x20, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x11, 0x1e7e15a52977bf83 # initialize rs1
li x21, 0x38b4e4fc0fc7b2df # initialize rs2
clmulh x21, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x12, 0x73217bedbd893a0a # initialize rs1
li x22, 0x7cbf327fb5276895 # initialize rs2
clmulh x22, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x10, 0x651f0435ed4c6424 # initialize rs1
li x23, 0x6a0f56000bf7da4b # initialize rs2
clmulh x23, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x31, 0xd736e1583b6eee2b # initialize rs1
li x24, 0xf7977ac97769344f # initialize rs2
clmulh x24, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x12, 0x66e380bae5fe62cc # initialize rs1
li x25, 0x357dd4e3a5f1c4df # initialize rs2
clmulh x25, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x28, 0xa5334397826af3b9 # initialize rs1
li x26, 0x6b7eefaa045b1e07 # initialize rs2
clmulh x26, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x14, 0xdaaeabdd2cffb115 # initialize rs1
li x27, 0x2e8900154c157fe5 # initialize rs2
clmulh x27, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x16, 0xf6f8518a0f4564ac # initialize rs1
li x28, 0x86fb72c6aafa38d0 # initialize rs2
clmulh x28, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x26, 0xd02beede35ba098e # initialize rs1
li x29, 0xc502672f803e0258 # initialize rs2
clmulh x29, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x2, 0x32553f434540c39b # initialize rs1
li x30, 0x3764386fc39410cf # initialize rs2
clmulh x30, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x11, 0x88eae145a8c466ce # initialize rs1
li x31, 0xe88cda466fd85583 # initialize rs2
clmulh x31, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x936041e1326edc90 # initialize rs1
li x0, 0xf5353c873cd2324c # initialize rs2
clmulh x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x74e9a8b4078fc407 # initialize rs1
li x1, 0xf1c7ac2115d796f1 # initialize rs2
clmulh x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x48eb7d26b9b8eb40 # initialize rs1
li x2, 0x0ffae00056ecd28c # initialize rs2
clmulh x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xf116bb254eb98f62 # initialize rs1
li x3, 0x86f65c8c2af3d17f # initialize rs2
clmulh x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x31fa5cef0e3b0578 # initialize rs1
li x4, 0xea5a6d5d850a2ffa # initialize rs2
clmulh x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd66d7d6cc65eae22 # initialize rs1
li x5, 0x48c92e9440b69dbd # initialize rs2
clmulh x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x536c99f302b0ea11 # initialize rs1
li x6, 0xb9d5c45561eca9d0 # initialize rs2
clmulh x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x52ae7ad14d076399 # initialize rs1
li x7, 0x62994fb0df4470c0 # initialize rs2
clmulh x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xcf4286c4f0927475 # initialize rs1
li x8, 0xbd2485d5c18657d6 # initialize rs2
clmulh x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xd143f8415d9a7d87 # initialize rs1
li x9, 0x64a34d452b80d374 # initialize rs2
clmulh x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x54aa31a5dbec759f # initialize rs1
li x10, 0xc07b58fe70e0b41d # initialize rs2
clmulh x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x98236920a633b862 # initialize rs1
li x11, 0x19684e67cd940be7 # initialize rs2
clmulh x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x76b4f73acf76156d # initialize rs1
li x12, 0x1c39230f18c5c125 # initialize rs2
clmulh x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x79effa2602f49e92 # initialize rs1
li x13, 0x8fef52c6d23a3ed3 # initialize rs2
clmulh x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x696b0faa38c76dc7 # initialize rs1
li x14, 0xc1d19d92b5388266 # initialize rs2
clmulh x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x7bef6bf222415e84 # initialize rs1
li x15, 0x9b6da8e00b0499e7 # initialize rs2
clmulh x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xa7cc7d53c9d82a09 # initialize rs1
li x16, 0xbea4111d1c016db6 # initialize rs2
clmulh x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x510d676f2faf8bc6 # initialize rs1
li x17, 0x1ab5e8219c9231c8 # initialize rs2
clmulh x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x137c0ae78ce27055 # initialize rs1
li x18, 0x2e8f9d71b28394f3 # initialize rs2
clmulh x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xad6d8a654aef622b # initialize rs1
li x19, 0x75b42f34d96cb33d # initialize rs2
clmulh x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x1b700f44841f92f2 # initialize rs1
li x20, 0xf8275c914478eca3 # initialize rs2
clmulh x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x92f1e0fec1c272b1 # initialize rs1
li x21, 0xb40e7d0850477651 # initialize rs2
clmulh x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x91f74179ce52593d # initialize rs1
li x22, 0xbc8c2124a0402cd4 # initialize rs2
clmulh x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x94a34605e9c3fa3c # initialize rs1
li x23, 0x36cf8cd68d64f4b0 # initialize rs2
clmulh x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x406020ea58a1923e # initialize rs1
li x24, 0xf6a5d1f02ac0effb # initialize rs2
clmulh x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xfc8ed98a949a13b5 # initialize rs1
li x25, 0x1b30cc451b090fa8 # initialize rs2
clmulh x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xc207ef31bd06d84c # initialize rs1
li x26, 0x51d1e23df9ba85af # initialize rs2
clmulh x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xc6dedcb276ec8089 # initialize rs1
li x27, 0x983ebc98c98935aa # initialize rs2
clmulh x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xc64f981323c136e3 # initialize rs1
li x28, 0xdee80a561eae39fa # initialize rs2
clmulh x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x05dde0103d97f162 # initialize rs1
li x29, 0xcc284fe8dc7b7c3b # initialize rs2
clmulh x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xcfe53c5c332f21f4 # initialize rs1
li x30, 0xa7b84c4df212cf01 # initialize rs2
clmulh x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xea68a3b7fdbeabfd # initialize rs1
li x31, 0x20fced10d9ce8b28 # initialize rs2
clmulh x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x6, x16 # perform first operation
clmulh x25, x17, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x14, x28 # perform first operation
clmulh x8, x27, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x14, x28 # perform first operation
clmulh x6, x2, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x6, x7 # perform first operation
clmulh x6, x20, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x3, x15, x5 # perform first operation
clmulh x10, x5, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x14, x9 # perform first operation
clmulh x6, x24, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x26, x1 # perform first operation
clmulh x6, x2, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x25, x20 # perform first operation
clmulh x30, x11, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x13, x27, x12 # perform first operation
clmulh x13, x5, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x7, x5, x8 # perform first operation
clmulh x5, x9, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x17, x25 # perform first operation
clmulh x25, x1, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x24, x9 # perform first operation
clmulh x29, x21, x30 # perform second (triggering) operation

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
