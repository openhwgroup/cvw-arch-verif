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
// Tests from: WALLY-COV-clmulh.S
// ******************


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

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-clmul.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xf07f937ad0acea86 # initialize rs1
li x22, 0xad2483ca261f6994 # initialize rs2
clmul x15, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x71118cefc7d41a60 # initialize rs1
li x17, 0xe2631f6e763696a7 # initialize rs2
clmul x13, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xfd39daecc4b56c5e # initialize rs1
li x17, 0x902dd939e97723f7 # initialize rs2
clmul x26, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x8ff4036c4ba6e02a # initialize rs1
li x24, 0x6292b7e4202b2d5c # initialize rs2
clmul x13, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc011610a52dfdde1 # initialize rs1
li x30, 0x257988ab1993b326 # initialize rs2
clmul x13, x4, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3dd204ad1fec8170 # initialize rs1
li x14, 0x7cb4582f17b6c207 # initialize rs2
clmul x3, x5, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x183ffebb7df06b88 # initialize rs1
li x16, 0xa0e13617faf7af76 # initialize rs2
clmul x11, x6, x16 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7de62a1a2e91eb8d # initialize rs1
li x16, 0x963ec0c9eb27c0f5 # initialize rs2
clmul x6, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x10e619efe3b93081 # initialize rs1
li x2, 0x651a8823626c1514 # initialize rs2
clmul x10, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x312086d9d0077ca5 # initialize rs1
li x1, 0xe37a6d85955037f9 # initialize rs2
clmul x22, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x81b4b6f449b56efc # initialize rs1
li x25, 0x222346706f2849cf # initialize rs2
clmul x24, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa3544fea58d4d4ce # initialize rs1
li x13, 0xd352a186eb9de260 # initialize rs2
clmul x12, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xff0524c7a198f442 # initialize rs1
li x2, 0xd1eb333c0269179f # initialize rs2
clmul x7, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xf8aee28e60fa8b46 # initialize rs1
li x1, 0x9b879d4c7400ae85 # initialize rs2
clmul x7, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xceb00eb59dff3e01 # initialize rs1
li x11, 0x5e19620d4d05c4e8 # initialize rs2
clmul x24, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xa57c792f7b1910d1 # initialize rs1
li x27, 0xa457ccc59f7ec7ea # initialize rs2
clmul x13, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x319443cd51efc1c3 # initialize rs1
li x31, 0xe986741ee5872f67 # initialize rs2
clmul x10, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x43abca12875e2bc0 # initialize rs1
li x26, 0x323aafc86557c859 # initialize rs2
clmul x16, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x7c6e23422d72ea3b # initialize rs1
li x10, 0x9e779c3ca6d53f54 # initialize rs2
clmul x2, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x8a6bc4a69872d45e # initialize rs1
li x6, 0x6bd7caef43e3288e # initialize rs2
clmul x26, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x453b0910d930b9e5 # initialize rs1
li x13, 0x2714dfca539b23a0 # initialize rs2
clmul x5, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xfd549b89aefc87aa # initialize rs1
li x11, 0x7b13c5a9432efc13 # initialize rs2
clmul x13, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xf5888c5a7e7ceed8 # initialize rs1
li x18, 0x57fd63e7327ad9b1 # initialize rs2
clmul x3, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x5ebd210578255dc6 # initialize rs1
li x21, 0xfdeb41f3dce457f2 # initialize rs2
clmul x7, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x86a0910e0d485922 # initialize rs1
li x17, 0x2e4d80263e7e12dc # initialize rs2
clmul x5, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x1b64011eee525495 # initialize rs1
li x10, 0x842aafa2baab0c89 # initialize rs2
clmul x12, x25, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x1dc3d31518ce5c18 # initialize rs1
li x30, 0xc05f917517d04cb8 # initialize rs2
clmul x17, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xd043b378528c142e # initialize rs1
li x3, 0xcda2472dfdea316d # initialize rs2
clmul x28, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xfa65accc5bc1099f # initialize rs1
li x18, 0xa1e529189bf3615d # initialize rs2
clmul x11, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xc9f4611694636d5c # initialize rs1
li x19, 0x5b4e3630d847c554 # initialize rs2
clmul x16, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x775e8f66178312be # initialize rs1
li x8, 0x9096cfd0e9630c16 # initialize rs2
clmul x9, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xb41f17227f0a6d57 # initialize rs1
li x24, 0x448dc9114ec42dc5 # initialize rs2
clmul x12, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x1, 0x079ba8be709410dd # initialize rs1
li x0, 0xb4d6b1aea6455294 # initialize rs2
clmul x8, x1, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x21, 0x96ad90715cc17ae3 # initialize rs1
li x1, 0x9fa460dfa8249dfe # initialize rs2
clmul x16, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x21, 0x81d0730e642e9752 # initialize rs1
li x2, 0xba51f4ecbc6ebd24 # initialize rs2
clmul x28, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x27, 0x4199670072a864c1 # initialize rs1
li x3, 0xdf256780850be8ce # initialize rs2
clmul x11, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x18, 0xe12a8a53a47f43dc # initialize rs1
li x4, 0x7ec67da38b06239f # initialize rs2
clmul x17, x18, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0xb6eaac892a4ab017 # initialize rs1
li x5, 0x28255220c35145d0 # initialize rs2
clmul x8, x24, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x11, 0xe1572a38c630b284 # initialize rs1
li x6, 0xc9d4f4f3bc9a1d7b # initialize rs2
clmul x17, x11, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x17, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x12, 0x7a4a6fc25901db60 # initialize rs1
li x7, 0x195c91041035f57d # initialize rs2
clmul x20, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x15, 0xc01daa8262d6bb4a # initialize rs1
li x8, 0xf39ef45f96ad4429 # initialize rs2
clmul x30, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x6, 0x84fe283c46fe37fa # initialize rs1
li x9, 0x2a056331c0a71e73 # initialize rs2
clmul x7, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x11, 0xae18c3f986c6b958 # initialize rs1
li x10, 0x62f1a61a7b83ee33 # initialize rs2
clmul x26, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x24, 0xf22bdc8ed91d9af2 # initialize rs1
li x11, 0x66fcd9348498608f # initialize rs2
clmul x6, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x28, 0x994e4788496844a9 # initialize rs1
li x12, 0xc1f194089117f16a # initialize rs2
clmul x20, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x21, 0x1a6dcadef928b6af # initialize rs1
li x13, 0x7b7594ece60e6d90 # initialize rs2
clmul x8, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x27, 0x929d20624a5c914a # initialize rs1
li x14, 0xc50f5e239632fd64 # initialize rs2
clmul x18, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x14, 0x13e5015d7b5dab7a # initialize rs1
li x15, 0xa490985d2d2591ef # initialize rs2
clmul x19, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x28, 0xac7b4dee385b3bc9 # initialize rs1
li x16, 0x77fa8b05c2e6b646 # initialize rs2
clmul x7, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x21, 0x6b74eab8d53a2608 # initialize rs1
li x17, 0xae6964f9d8f66a5e # initialize rs2
clmul x8, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x3, 0x7b87b03434c4207e # initialize rs1
li x18, 0x22c617c7ed553cc3 # initialize rs2
clmul x11, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x5, 0xee9cb36050c1f269 # initialize rs1
li x19, 0x79d748cc1059fd14 # initialize rs2
clmul x23, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x26, 0x2cb55610e870fc3a # initialize rs1
li x20, 0xaf288d16f20bc91a # initialize rs2
clmul x5, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x3, 0x128711b8f1f1187c # initialize rs1
li x21, 0xb03ae992bccc9873 # initialize rs2
clmul x2, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x30, 0x9983611d6de6af5a # initialize rs1
li x22, 0xad80837bf1f74ba3 # initialize rs2
clmul x3, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x21, 0x27e8056dbb0dceae # initialize rs1
li x23, 0x98f7e302df1ef592 # initialize rs2
clmul x19, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x20, 0x802aca65458632d8 # initialize rs1
li x24, 0xf07c164938df4b6e # initialize rs2
clmul x29, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x31, 0xf70a2db0a56e42d7 # initialize rs1
li x25, 0x3dc234dc34c9905f # initialize rs2
clmul x19, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x11, 0xdb64e57247e9c34c # initialize rs1
li x26, 0x8754594e887bb79e # initialize rs2
clmul x17, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x21, 0x06597a632aae2f2e # initialize rs1
li x27, 0x2a23d1ee5f68edab # initialize rs2
clmul x17, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x29, 0x00a0af23f1bd1d1e # initialize rs1
li x28, 0xa6f95d87f915b4e9 # initialize rs2
clmul x3, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x31, 0x20dddb6d023e1474 # initialize rs1
li x29, 0x221261cb095b5819 # initialize rs2
clmul x26, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x28, 0x2cdcbc894eafe990 # initialize rs1
li x30, 0xbefba981765826a6 # initialize rs2
clmul x8, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x13, 0x59822af190e51bb5 # initialize rs1
li x31, 0xc1409e0e4c0fbd89 # initialize rs2
clmul x24, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 504)

# Testcase cp_rd (Test destination rd = x0)
li x20, 0xbb64e01548b89c2a # initialize rs1
li x21, 0x5d4fada207b4848f # initialize rs2
clmul x0, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x13, 0x3b5c9cc9e805bfc4 # initialize rs1
li x8, 0x5e9df7d418406b4b # initialize rs2
clmul x1, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0x66154f09601506bb # initialize rs1
li x9, 0xd260f43b6442b293 # initialize rs2
clmul x2, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x8, 0x8d736d8b09987205 # initialize rs1
li x21, 0x4a7bed7f17356eeb # initialize rs2
clmul x3, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x17, 0x34b51ed9d03fce56 # initialize rs1
li x1, 0xa10a1f5803c2b112 # initialize rs2
clmul x4, x17, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0x6bb250d66ed96d29 # initialize rs1
li x21, 0x993b11aedd3bd61b # initialize rs2
clmul x5, x24, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x19, 0xe1f932feba1b7c1d # initialize rs1
li x29, 0xd0f9ed4237c72a10 # initialize rs2
clmul x6, x19, x29 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x19, 0xa43b29d971d892a4 # initialize rs1
li x20, 0x00e9b736cd1807f5 # initialize rs2
clmul x7, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x5, 0xdc55c1315190ccad # initialize rs1
li x6, 0x29b1f150fb130007 # initialize rs2
clmul x8, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x3, 0x6917d7a7e1d3a222 # initialize rs1
li x27, 0x1e61cced6d35435d # initialize rs2
clmul x9, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x16, 0x1725d90258b3319f # initialize rs1
li x12, 0x82101bf0422a51db # initialize rs2
clmul x10, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x28, 0xd427fdb82f1f747b # initialize rs1
li x16, 0x7e430b91eec72a81 # initialize rs2
clmul x11, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x1, 0xe5d71c5573728f8a # initialize rs1
li x30, 0xbdd80c1748ee01dd # initialize rs2
clmul x12, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x15, 0x94c0e0b65548d909 # initialize rs1
li x19, 0x4b3a545e72f75afc # initialize rs2
clmul x13, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0x129e4b1d8e13ceb4 # initialize rs1
li x25, 0xfc78635b7702d84b # initialize rs2
clmul x14, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x9, 0x536cd71767a84479 # initialize rs1
li x8, 0xde7aab7afaac2891 # initialize rs2
clmul x15, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x18, 0x2db58d0847dd530c # initialize rs1
li x8, 0x6def251c1c8bdbb9 # initialize rs2
clmul x16, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x9, 0x2ee8b3641d8183a7 # initialize rs1
li x31, 0x59eaf54ac264a0a0 # initialize rs2
clmul x17, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x30, 0x63314f5a92ba8bb8 # initialize rs1
li x31, 0x141f7f89bd638463 # initialize rs2
clmul x18, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x17, 0x318ac2f4df65f5e7 # initialize rs1
li x31, 0x710691fd982adc8e # initialize rs2
clmul x19, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x30, 0x403a8f6eae688e2b # initialize rs1
li x31, 0x2a71972bad235999 # initialize rs2
clmul x20, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0x0c271f53b463ee91 # initialize rs1
li x25, 0x76e8e09c4c512700 # initialize rs2
clmul x21, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x13, 0x9c56e048ba241775 # initialize rs1
li x6, 0xc5ca07b35bc1b12d # initialize rs2
clmul x22, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x30, 0xd81d3ab88cd98286 # initialize rs1
li x26, 0xd335180890fa1eee # initialize rs2
clmul x23, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x18, 0x15ed53dca83fc4f1 # initialize rs1
li x1, 0x34d95d9d6cd43123 # initialize rs2
clmul x24, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x24, 0xfe00db2550cda1ec # initialize rs1
li x25, 0x312da787da354c18 # initialize rs2
clmul x25, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x10, 0xc35bbc7bbc68f8e1 # initialize rs1
li x18, 0x27c32e6d2841a425 # initialize rs2
clmul x26, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x13, 0xb4cdfca04697c63b # initialize rs1
li x21, 0x3bfec37566a9bdbf # initialize rs2
clmul x27, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x8, 0x46942a6a2ea37837 # initialize rs1
li x31, 0xe6b63b56c94cde5a # initialize rs2
clmul x28, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x6, 0x1a244be6f68f6d72 # initialize rs1
li x9, 0xfc4fcb1b2b1e9212 # initialize rs2
clmul x29, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x25, 0x34416c9ddb6e4d9d # initialize rs1
li x31, 0xd13ffeacfd2b60b8 # initialize rs2
clmul x30, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x17, 0x0edd3160035882ff # initialize rs1
li x7, 0xbb2338f7c3cca22c # initialize rs2
clmul x31, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x21, 0x0000000000000000 # initialize rs1
li x29, 0x00e2973630d43133 # initialize rs2
clmul x16, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x19, 0x0000000000000001 # initialize rs1
li x18, 0xeb44b77d7a67f575 # initialize rs2
clmul x27, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x10, 0x0000000000000002 # initialize rs1
li x21, 0x03157bac62f89c44 # initialize rs2
clmul x24, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs1
li x17, 0x88595aa92c826a94 # initialize rs2
clmul x14, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x8, 0x8000000000000001 # initialize rs1
li x15, 0x3dd3aeb611b13d67 # initialize rs2
clmul x12, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x21, 0x7fffffffffffffff # initialize rs1
li x1, 0xd502a21e7278c06d # initialize rs2
clmul x5, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x2, 0x7ffffffffffffffe # initialize rs1
li x30, 0x1429717e0ae8daab # initialize rs2
clmul x21, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x26, 0xffffffffffffffff # initialize rs1
li x25, 0xbd310e483a887a17 # initialize rs2
clmul x31, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x12, 0xfffffffffffffffe # initialize rs1
li x6, 0x3294194205fc108c # initialize rs2
clmul x26, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x65da197b7990836f # initialize rs2
clmul x30, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x4ea166140a3eed01 # initialize rs2
clmul x22, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x30, 0x5555555555555555 # initialize rs1
li x1, 0xbcdb03fc919a64bf # initialize rs2
clmul x25, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x2, 0x00000000ffffffff # initialize rs1
li x13, 0x7f8d8cacd9a47e37 # initialize rs2
clmul x9, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x15, 0x00000000fffffffe # initialize rs1
li x20, 0x7d62e75abe38d2a0 # initialize rs2
clmul x24, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x30, 0x0000000100000000 # initialize rs1
li x8, 0xfd75d4406bf17bdf # initialize rs2
clmul x17, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x13, 0x0000000100000001 # initialize rs1
li x21, 0x2e961ba80eaa0b96 # initialize rs2
clmul x14, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x15, 0xf63c985034a9ba8f # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
clmul x2, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x23, 0xc8710d6aa5639c07 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
clmul x21, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x22, 0xed09676528e171bc # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
clmul x28, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x31, 0x7033a53c12719ca2 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
clmul x28, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x28, 0x38932894181acdd9 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
clmul x5, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x23, 0x318bc152c00911e8 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
clmul x26, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x20, 0x853fcc2cca40e5da # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
clmul x7, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x15, 0x58f331e0823baa55 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
clmul x14, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x7, 0x2599cf3765582ff3 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
clmul x25, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x12, 0xaf2c0e19880e4ff4 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
clmul x7, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0xbf763de00234ce91 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x9, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x17, 0xab57cec834a62561 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
clmul x10, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x20, 0x1dd514c6b08ebb27 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
clmul x8, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0x6b7c1b4e418d2958 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
clmul x11, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x6, 0xbe220c0c176785b5 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
clmul x22, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x19, 0x7418e9062e1409cb # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
clmul x31, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x16, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
clmul x1, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x30, 0x0000000000000000 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
clmul x27, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x23, 0x0000000000000000 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
clmul x8, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x28, 0x0000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
clmul x9, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x27, 0x0000000000000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
clmul x12, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x16, 0x0000000000000000 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
clmul x11, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000000000000 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
clmul x25, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x19, 0x0000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
clmul x28, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x26, 0x0000000000000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
clmul x25, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x6, 0x0000000000000000 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
clmul x29, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000000000000 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x9, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x28, 0x0000000000000000 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
clmul x7, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x17, 0x0000000000000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
clmul x19, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x25, 0x0000000000000000 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
clmul x19, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x1, 0x0000000000000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
clmul x7, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x22, 0x0000000000000000 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
clmul x14, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x25, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
clmul x17, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x9, 0x0000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
clmul x22, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x23, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
clmul x16, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x21, 0x0000000000000001 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
clmul x2, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x25, 0x0000000000000001 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
clmul x18, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
clmul x14, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000000000001 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
clmul x2, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x15, 0x0000000000000001 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
clmul x30, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x27, 0x0000000000000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
clmul x23, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x1, 0x0000000000000001 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
clmul x17, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000000000001 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x31, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x11, 0x0000000000000001 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
clmul x1, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x14, 0x0000000000000001 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
clmul x23, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x5, 0x0000000000000001 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
clmul x20, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x18, 0x0000000000000001 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
clmul x10, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x3, 0x0000000000000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
clmul x18, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x16, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
clmul x18, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x7, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
clmul x25, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x8, 0x0000000000000002 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
clmul x28, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x19, 0x0000000000000002 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
clmul x23, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x24, 0x0000000000000002 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
clmul x20, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x12, 0x0000000000000002 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
clmul x14, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000000000002 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
clmul x26, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000002 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
clmul x18, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000002 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
clmul x28, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000000000002 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
clmul x28, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x0000000000000002 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x17, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x29, 0x0000000000000002 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
clmul x8, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x24, 0x0000000000000002 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
clmul x31, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x14, 0x0000000000000002 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
clmul x21, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x14, 0x0000000000000002 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
clmul x26, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x31, 0x0000000000000002 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
clmul x15, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x14, 0x8000000000000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
clmul x28, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x29, 0x8000000000000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
clmul x24, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x9, 0x8000000000000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
clmul x29, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x28, 0x8000000000000000 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
clmul x29, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x5, 0x8000000000000000 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
clmul x19, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x22, 0x8000000000000000 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
clmul x13, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x15, 0x8000000000000000 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
clmul x31, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x9, 0x8000000000000000 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
clmul x25, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x23, 0x8000000000000000 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
clmul x6, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x8, 0x8000000000000000 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
clmul x18, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x8000000000000000 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x3, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x13, 0x8000000000000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
clmul x27, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x13, 0x8000000000000000 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
clmul x2, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x10, 0x8000000000000000 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
clmul x8, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x16, 0x8000000000000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
clmul x11, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x13, 0x8000000000000000 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
clmul x2, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x1, 0x8000000000000001 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
clmul x9, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x17, 0x8000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
clmul x19, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x19, 0x8000000000000001 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
clmul x20, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x27, 0x8000000000000001 # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
clmul x31, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x3, 0x8000000000000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
clmul x16, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x26, 0x8000000000000001 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
clmul x16, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x13, 0x8000000000000001 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
clmul x21, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x22, 0x8000000000000001 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
clmul x12, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x10, 0x8000000000000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
clmul x30, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x6, 0x8000000000000001 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
clmul x1, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x8000000000000001 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x27, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x17, 0x8000000000000001 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
clmul x3, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x26, 0x8000000000000001 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
clmul x28, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x28, 0x8000000000000001 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
clmul x26, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x23, 0x8000000000000001 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
clmul x27, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x24, 0x8000000000000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
clmul x14, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x12, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
clmul x15, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x6, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
clmul x20, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x2, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
clmul x24, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x27, 0x7fffffffffffffff # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
clmul x13, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x16, 0x7fffffffffffffff # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
clmul x24, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x3, 0x7fffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
clmul x13, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x1, 0x7fffffffffffffff # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
clmul x16, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
clmul x31, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x31, 0x7fffffffffffffff # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
clmul x7, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x31, 0x7fffffffffffffff # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
clmul x1, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x7fffffffffffffff # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x12, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x2, 0x7fffffffffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
clmul x24, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
clmul x15, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x24, 0x7fffffffffffffff # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
clmul x23, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x28, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
clmul x20, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x31, 0x7fffffffffffffff # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
clmul x2, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x14, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
clmul x16, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x7, 0x7ffffffffffffffe # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
clmul x6, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x28, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
clmul x16, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x26, 0x7ffffffffffffffe # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
clmul x13, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x14, 0x7ffffffffffffffe # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
clmul x22, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x20, 0x7ffffffffffffffe # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
clmul x15, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x15, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
clmul x31, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x19, 0x7ffffffffffffffe # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
clmul x2, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
clmul x2, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x18, 0x7ffffffffffffffe # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
clmul x5, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x7ffffffffffffffe # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x9, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x9, 0x7ffffffffffffffe # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
clmul x20, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x9, 0x7ffffffffffffffe # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
clmul x6, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x2, 0x7ffffffffffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
clmul x25, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x6, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
clmul x16, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x1, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
clmul x30, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x21, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
clmul x18, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x21, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
clmul x18, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x6, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
clmul x23, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x16, 0xffffffffffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
clmul x2, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x28, 0xffffffffffffffff # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
clmul x15, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x31, 0xffffffffffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
clmul x11, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x26, 0xffffffffffffffff # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
clmul x20, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x11, 0xffffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
clmul x25, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x5, 0xffffffffffffffff # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
clmul x2, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x29, 0xffffffffffffffff # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
clmul x14, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xffffffffffffffff # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x6, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x15, 0xffffffffffffffff # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
clmul x28, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x16, 0xffffffffffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
clmul x10, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x31, 0xffffffffffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
clmul x10, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x26, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
clmul x6, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x28, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
clmul x29, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x17, 0xfffffffffffffffe # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
clmul x3, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x6, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
clmul x11, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x8, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
clmul x30, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x7, 0xfffffffffffffffe # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
clmul x26, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x22, 0xfffffffffffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
clmul x8, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x2, 0xfffffffffffffffe # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
clmul x21, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
clmul x23, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x31, 0xfffffffffffffffe # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
clmul x14, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
clmul x8, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x6, 0xfffffffffffffffe # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
clmul x10, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0xfffffffffffffffe # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x13, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x16, 0xfffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
clmul x18, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x1, 0xfffffffffffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
clmul x11, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x17, 0xfffffffffffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
clmul x24, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x10, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
clmul x27, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x9, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
clmul x19, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
clmul x14, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
clmul x14, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
clmul x8, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
clmul x12, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
clmul x7, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
clmul x13, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
clmul x6, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
clmul x30, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
clmul x24, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
clmul x16, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x25, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
clmul x28, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
clmul x10, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
clmul x3, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
clmul x2, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
clmul x8, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
clmul x8, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
clmul x28, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
clmul x17, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
clmul x24, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
clmul x24, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
clmul x7, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
clmul x8, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
clmul x25, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
clmul x29, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
clmul x5, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x7, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
clmul x7, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
clmul x21, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
clmul x2, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000100000000 # initialize rs2
clmul x15, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
clmul x18, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x8, 0x5555555555555555 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
clmul x21, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x13, 0x5555555555555555 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
clmul x8, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x24, 0x5555555555555555 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
clmul x26, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x9, 0x5555555555555555 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
clmul x18, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x24, 0x5555555555555555 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
clmul x10, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x5, 0x5555555555555555 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
clmul x19, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x11, 0x5555555555555555 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
clmul x3, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x3, 0x5555555555555555 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
clmul x20, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x9, 0x5555555555555555 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
clmul x17, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x3, 0x5555555555555555 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
clmul x21, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x5555555555555555 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x24, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x3, 0x5555555555555555 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
clmul x19, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x20, 0x5555555555555555 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
clmul x22, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x25, 0x5555555555555555 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
clmul x19, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x28, 0x5555555555555555 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
clmul x16, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x12, 0x5555555555555555 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
clmul x26, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x22, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
clmul x10, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x12, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
clmul x31, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x25, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
clmul x18, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x27, 0x00000000ffffffff # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
clmul x7, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x30, 0x00000000ffffffff # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
clmul x9, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x22, 0x00000000ffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
clmul x11, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x26, 0x00000000ffffffff # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
clmul x11, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x27, 0x00000000ffffffff # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
clmul x22, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x21, 0x00000000ffffffff # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
clmul x18, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x27, 0x00000000ffffffff # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
clmul x18, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x00000000ffffffff # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x22, x11, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x30, 0x00000000ffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
clmul x13, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x22, 0x00000000ffffffff # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
clmul x25, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0x00000000ffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
clmul x1, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x6, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
clmul x29, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x22, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
clmul x8, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x20, 0x00000000fffffffe # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
clmul x30, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x17, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
clmul x3, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x13, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
clmul x3, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x15, 0x00000000fffffffe # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
clmul x8, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x15, 0x00000000fffffffe # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
clmul x18, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x9, 0x00000000fffffffe # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
clmul x27, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x20, 0x00000000fffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
clmul x3, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x15, 0x00000000fffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
clmul x24, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
clmul x8, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x20, 0x00000000fffffffe # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
clmul x26, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x00000000fffffffe # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x21, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x21, 0x00000000fffffffe # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
clmul x22, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x25, 0x00000000fffffffe # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
clmul x23, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x17, 0x00000000fffffffe # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
clmul x10, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x3, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
clmul x7, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x17, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
clmul x3, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x25, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
clmul x11, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x12, 0x0000000100000000 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
clmul x21, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x2, 0x0000000100000000 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
clmul x5, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x17, 0x0000000100000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
clmul x13, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x20, 0x0000000100000000 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
clmul x2, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x27, 0x0000000100000000 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
clmul x28, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000100000000 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
clmul x31, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x19, 0x0000000100000000 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
clmul x25, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000100000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
clmul x19, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x18, 0x0000000100000000 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
clmul x20, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x0000000100000000 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x20, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x15, 0x0000000100000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
clmul x31, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x10, 0x0000000100000000 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
clmul x22, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x23, 0x0000000100000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
clmul x20, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x6, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
clmul x26, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x31, 0x0000000100000000 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
clmul x1, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x21, 0x0000000100000001 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
clmul x27, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x31, 0x0000000100000001 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
clmul x13, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x1, 0x0000000100000001 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
clmul x13, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x17, 0x0000000100000001 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
clmul x22, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x28, 0x0000000100000001 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
clmul x8, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
clmul x24, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000100000001 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
clmul x15, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x9, 0x0000000100000001 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
clmul x18, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000100000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
clmul x6, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000100000001 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
clmul x16, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000100000001 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
clmul x17, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x6, 0x0000000100000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
clmul x11, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x19, 0x0000000100000001 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
clmul x16, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x20, 0x0000000100000001 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
clmul x5, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x15, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
clmul x20, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x23, 0x0000000100000001 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
clmul x15, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x32b00b1219618044 # initialize rs1
li x0, 0x9da62a7b1e36f4e1 # initialize rs2
clmul x11, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xe6b1441edcbd6cba # initialize rs1
li x1, 0x81d1e2c102b1f7b4 # initialize rs2
clmul x26, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x2806375a611e4ad5 # initialize rs1
li x2, 0xab0f607fcb345200 # initialize rs2
clmul x16, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x20601968116412df # initialize rs1
li x3, 0x29835d057d057a07 # initialize rs2
clmul x1, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4a0b10ab58077f71 # initialize rs1
li x4, 0xb9b40e3771bddd68 # initialize rs2
clmul x29, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xfb4ab52b9f1a6c82 # initialize rs1
li x5, 0xf875b30ab37abf6c # initialize rs2
clmul x31, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x4310ba480a55cfb3 # initialize rs1
li x6, 0xadd5cadb5ce54bb6 # initialize rs2
clmul x14, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf3b31f237c23e002 # initialize rs1
li x7, 0xebfa7b70ff268503 # initialize rs2
clmul x1, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xafff13a2b5456e3c # initialize rs1
li x8, 0x878f23ba11161d76 # initialize rs2
clmul x24, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x78dc1e289169d315 # initialize rs1
li x9, 0x440dfc5297403ea5 # initialize rs2
clmul x7, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x1afb53fdbe79a3ba # initialize rs1
li x10, 0x7a2d6cdeab755b10 # initialize rs2
clmul x21, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xdcee7379cad7a060 # initialize rs1
li x11, 0x4ee085243670d676 # initialize rs2
clmul x8, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xd69e0c49cb0e8f49 # initialize rs1
li x12, 0xc4004b6cd018e08d # initialize rs2
clmul x25, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xc35b19d1249a8f8c # initialize rs1
li x13, 0x8c3fc82d4b0b7a2e # initialize rs2
clmul x26, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x7376756b1791d4e1 # initialize rs1
li x14, 0xb97f6cfeb9443180 # initialize rs2
clmul x11, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xb6768092679248ca # initialize rs1
li x15, 0x750af008069c0a0a # initialize rs2
clmul x23, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x978842907f644d91 # initialize rs1
li x16, 0x66f564765c2092d9 # initialize rs2
clmul x7, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x33300bbecebdbd1f # initialize rs1
li x17, 0x1ade994b9856d20d # initialize rs2
clmul x8, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xcb5f950f5a75c244 # initialize rs1
li x18, 0x747ee30d67e95a29 # initialize rs2
clmul x10, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xbd541065436ae6af # initialize rs1
li x19, 0xabe3271a3b63782a # initialize rs2
clmul x5, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xb78c4e49f1efbf5e # initialize rs1
li x20, 0x25fdc0b78f3ea0fc # initialize rs2
clmul x8, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xd0955e0d15890167 # initialize rs1
li x21, 0xf5486a479d4029f2 # initialize rs2
clmul x26, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xdd66587f47788a3f # initialize rs1
li x22, 0x7ff0037f502dd1c4 # initialize rs2
clmul x5, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x0bcbd00ed5404671 # initialize rs1
li x23, 0xc97ebfaf4d794b27 # initialize rs2
clmul x3, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xe2efb5ec80d33fa7 # initialize rs1
li x24, 0xdb383c6bda6299eb # initialize rs2
clmul x28, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x64f96ced535863bb # initialize rs1
li x25, 0xaabc5b8bc17032a9 # initialize rs2
clmul x19, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x7e452bb0d61c97ab # initialize rs1
li x26, 0x2b709964d5c7e357 # initialize rs2
clmul x29, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x8e59a7084094eb33 # initialize rs1
li x27, 0x13eb260a641a5ed1 # initialize rs2
clmul x8, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x572b7c49e1b081d3 # initialize rs1
li x28, 0x5e1bc195c07d7d1a # initialize rs2
clmul x10, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x82859930431b09cd # initialize rs1
li x29, 0x376f2896a4c955f7 # initialize rs2
clmul x15, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x2fa79c17ce2db5f3 # initialize rs1
li x30, 0x035e0a2e42f6933b # initialize rs2
clmul x11, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0xfb7ad49469e27d15 # initialize rs1
li x31, 0x7d28e4c7eb1798d5 # initialize rs2
clmul x8, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xa989f9fba1a301b9 # initialize rs1
li x13, 0x24261c3afe0c8163 # initialize rs2
clmul x0, x0, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x101e275393a57f76 # initialize rs1
li x3, 0x3a78c2ad5b4ca887 # initialize rs2
clmul x1, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7b807e44c367f8e4 # initialize rs1
li x11, 0x7c32cb1bdb348b45 # initialize rs2
clmul x2, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x78e72c40736dc606 # initialize rs1
li x11, 0xe1a22e409250b415 # initialize rs2
clmul x3, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8866dc83f38004f5 # initialize rs1
li x13, 0x5a89d2506f0f3307 # initialize rs2
clmul x4, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x38ecf795b553c7ad # initialize rs1
li x28, 0x333e0c64dcd62ffc # initialize rs2
clmul x5, x5, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf51317331c17a152 # initialize rs1
li x15, 0xff7307ffd06bb21a # initialize rs2
clmul x6, x6, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x2019945cabe06d63 # initialize rs1
li x24, 0x724c50302f039e1a # initialize rs2
clmul x7, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x88fb8aadf996eb9d # initialize rs1
li x20, 0xc3d4307f2e2aab87 # initialize rs2
clmul x8, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x2801b867c56a83f8 # initialize rs1
li x21, 0xc50d2c3c3b0dfd5b # initialize rs2
clmul x9, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x55002a4139a48090 # initialize rs1
li x18, 0x1b5ba4c32261afd8 # initialize rs2
clmul x10, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x363bab33418c5ac4 # initialize rs1
li x17, 0x9f6a6797d6524d50 # initialize rs2
clmul x11, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x021e21be20975aa7 # initialize rs1
li x19, 0x2fec79e7a546ada8 # initialize rs2
clmul x12, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x5084f2874b21e441 # initialize rs1
li x30, 0xacf9f5fa459951d1 # initialize rs2
clmul x13, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xcdf1817f1b69b6b5 # initialize rs1
li x19, 0x4fb6da86692e0a2f # initialize rs2
clmul x14, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x678c59b98c0d8b41 # initialize rs1
li x9, 0x5e94d2f6029b12d7 # initialize rs2
clmul x15, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xfff6651c5976ccc1 # initialize rs1
li x22, 0xc2e581c09013edc1 # initialize rs2
clmul x16, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x2f0a052b4fdf83d9 # initialize rs1
li x14, 0x63155c5dac3e5346 # initialize rs2
clmul x17, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x5df765d3bb1c3ff0 # initialize rs1
li x16, 0x286f0383d24a50ac # initialize rs2
clmul x18, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x8bbcaddebfb000be # initialize rs1
li x25, 0xdd20af08fe9485d2 # initialize rs2
clmul x19, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xe14274eac51778cd # initialize rs1
li x1, 0xeb17602f94136eaf # initialize rs2
clmul x20, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xb05203ddd2ab172b # initialize rs1
li x23, 0xcf4d2b5e74947636 # initialize rs2
clmul x21, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3fc57ed99a37014b # initialize rs1
li x3, 0x79ac09fd6eb3f4e8 # initialize rs2
clmul x22, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x88de55bf02c2b055 # initialize rs1
li x18, 0xa9fa5f403ae0aee3 # initialize rs2
clmul x23, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x1a81d270df72223d # initialize rs1
li x19, 0x50578cf9257a4419 # initialize rs2
clmul x24, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x565839efacc6bf24 # initialize rs1
li x12, 0x0bddab02b7b665d5 # initialize rs2
clmul x25, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x4a0a135b2b2a207d # initialize rs1
li x30, 0xe3994b2671c56427 # initialize rs2
clmul x26, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x5f350d0b285e64bd # initialize rs1
li x2, 0xd2842313c7319dfb # initialize rs2
clmul x27, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x9187875eebce854f # initialize rs1
li x10, 0x1c7a733dd7b54695 # initialize rs2
clmul x28, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xa0aaea646fc3cf86 # initialize rs1
li x17, 0x6f1d6dca91cc3e94 # initialize rs2
clmul x29, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x517a53cbf380b29e # initialize rs1
li x3, 0x538c4c96683a9123 # initialize rs2
clmul x30, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x9fcc1c681c791c5a # initialize rs1
li x21, 0x64d96b58df11dc82 # initialize rs2
clmul x31, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x22, 0x048ee7a2d923f31a # initialize rs1
li x0, 0xb401a8be743a6b25 # initialize rs2
clmul x0, x22, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x19, 0x98f8dd0126d19fef # initialize rs1
li x1, 0x7bf11276cca7223a # initialize rs2
clmul x1, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x1, 0x6db318c681267923 # initialize rs1
li x2, 0x8b539f6e54bbd599 # initialize rs2
clmul x2, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x6, 0x9aade8a7cb836ff3 # initialize rs1
li x3, 0xe57be7dfb60d4f41 # initialize rs2
clmul x3, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0xfdaaec0b5b63970c # initialize rs1
li x4, 0x202cbfd8611f3517 # initialize rs2
clmul x4, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x23, 0xf20b85035f381b83 # initialize rs1
li x5, 0x70aa1ffc482ece3d # initialize rs2
clmul x5, x23, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x28, 0xd733d2fd3d4b87f8 # initialize rs1
li x6, 0xcbbf2ecf8f1a1d48 # initialize rs2
clmul x6, x28, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x3, 0x75665719fd8db1f7 # initialize rs1
li x7, 0x99e536bf9a6a0da7 # initialize rs2
clmul x7, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x1, 0xdc1fdd0be4d32375 # initialize rs1
li x8, 0xd9537774ec4bd6f8 # initialize rs2
clmul x8, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x28, 0x0c46cd75fe9becaa # initialize rs1
li x9, 0x57f5c5062a47a75a # initialize rs2
clmul x9, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x28, 0x123f113c5dae9b20 # initialize rs1
li x10, 0xbf4607505c957a4a # initialize rs2
clmul x10, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x8, 0xd5046d7952f2fa8d # initialize rs1
li x11, 0xf09b4f53376da108 # initialize rs2
clmul x11, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x23, 0x234a1b57bbdedb61 # initialize rs1
li x12, 0xac5cd43c26731499 # initialize rs2
clmul x12, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x22, 0x55b7dad6f042f5de # initialize rs1
li x13, 0x26fc6c4a9fce9468 # initialize rs2
clmul x13, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x30, 0x5aeef89c396ecd37 # initialize rs1
li x14, 0x36d4414f64de203a # initialize rs2
clmul x14, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x13, 0xa14dff0047439d06 # initialize rs1
li x15, 0xef0dae9e4141ea24 # initialize rs2
clmul x15, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0x2ceb1e3cfe905afb # initialize rs1
li x16, 0x4529565c7911571f # initialize rs2
clmul x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x27, 0x167414dfdc5147f1 # initialize rs1
li x17, 0xa13f2786e33ab9e0 # initialize rs2
clmul x17, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x31, 0x96483e2ccff45a25 # initialize rs1
li x18, 0x15c60b1a7bd00141 # initialize rs2
clmul x18, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x24, 0xdae93a2bcb65f61c # initialize rs1
li x19, 0x987cda6e919da2c5 # initialize rs2
clmul x19, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x7, 0x29e80e2d763cff26 # initialize rs1
li x20, 0x8b3d69a33f9a0879 # initialize rs2
clmul x20, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x12, 0x033719c16db4159e # initialize rs1
li x21, 0xc3a95889645cfe8c # initialize rs2
clmul x21, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x30, 0x481cd42546a1e375 # initialize rs1
li x22, 0x7bef3b2c503fac90 # initialize rs2
clmul x22, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x18, 0x5d9957756a147c6c # initialize rs1
li x23, 0xc2e2345ded04df5d # initialize rs2
clmul x23, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x20, 0x3390d44f326c8d7b # initialize rs1
li x24, 0x5535d446e34a4702 # initialize rs2
clmul x24, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x14, 0xba6167f441bf6591 # initialize rs1
li x25, 0xc052b025b22afaba # initialize rs2
clmul x25, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x18, 0xc264af0a3bd20db6 # initialize rs1
li x26, 0x9ba50cdb60d3cbaf # initialize rs2
clmul x26, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x16, 0x3da36bdfd654db49 # initialize rs1
li x27, 0x47fc682aa0a3f86c # initialize rs2
clmul x27, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x2, 0xbd536ee375abf4b4 # initialize rs1
li x28, 0x97b8c6f6e99c95a2 # initialize rs2
clmul x28, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x17, 0xac2e5ba0fd9ea672 # initialize rs1
li x29, 0xd4614c5dd437d447 # initialize rs2
clmul x29, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x21, 0x54060a54e46d27f9 # initialize rs1
li x30, 0x36bad6955d57523b # initialize rs2
clmul x30, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x7, 0x38174ba746cc4564 # initialize rs1
li x31, 0x01e94aefcfe8b06d # initialize rs2
clmul x31, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xa43438acdb4e04d8 # initialize rs1
li x0, 0x5dda788f70730ce9 # initialize rs2
clmul x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x6542a3b7b8335425 # initialize rs1
li x1, 0x807a6712a1a0775d # initialize rs2
clmul x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xfe6379f43d2856c5 # initialize rs1
li x2, 0xf6621446e619f485 # initialize rs2
clmul x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x40a75d393a8f656a # initialize rs1
li x3, 0x14beae857d337cc7 # initialize rs2
clmul x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf0e237cb82f08f53 # initialize rs1
li x4, 0x6722f4eb701becc4 # initialize rs2
clmul x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x18629f2a28b6e7d9 # initialize rs1
li x5, 0xdb085867c5f3907a # initialize rs2
clmul x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1491168a50e92c7b # initialize rs1
li x6, 0x3bcd19f44ec7bcad # initialize rs2
clmul x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd690d7319755f688 # initialize rs1
li x7, 0x822ff74504e93a6b # initialize rs2
clmul x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xc2d439d380a68ed2 # initialize rs1
li x8, 0x6290111e10c45c89 # initialize rs2
clmul x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xcdfcb6dfbf5dc4f6 # initialize rs1
li x9, 0xd222593a180e5ee0 # initialize rs2
clmul x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x2e6a3120a03ed30e # initialize rs1
li x10, 0x88ab4e18e7c128d6 # initialize rs2
clmul x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x832811570aadf0b5 # initialize rs1
li x11, 0x4528a5c028fda010 # initialize rs2
clmul x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x1eaeb9905c124ca7 # initialize rs1
li x12, 0x5664172748fe6c69 # initialize rs2
clmul x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x2610e2a256f3c367 # initialize rs1
li x13, 0x1b6b6e457e575bdf # initialize rs2
clmul x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x8ca2e43fd9149e1a # initialize rs1
li x14, 0x96836b05fb7d1995 # initialize rs2
clmul x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xbb89b1f4e24a1f92 # initialize rs1
li x15, 0x0f512f9de33835b9 # initialize rs2
clmul x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x679800f71fd45c9a # initialize rs1
li x16, 0x46d015c8bfb253ba # initialize rs2
clmul x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x0884623607ab76de # initialize rs1
li x17, 0x6dc0a86a78bbe946 # initialize rs2
clmul x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x36a1c37c90ded030 # initialize rs1
li x18, 0x431a5e9ebe3b44b8 # initialize rs2
clmul x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xd702f5e6d4ed7a06 # initialize rs1
li x19, 0x146c4e630e2dde2f # initialize rs2
clmul x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x0a94bc9aa9dfaba2 # initialize rs1
li x20, 0x97208229ac2202f8 # initialize rs2
clmul x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x5b99f11fe38917a4 # initialize rs1
li x21, 0x46f6e2f97a14f805 # initialize rs2
clmul x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x60fd38d8907c500b # initialize rs1
li x22, 0x7a484f1636f24b5c # initialize rs2
clmul x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xcb0fd0e1d9cad087 # initialize rs1
li x23, 0xfbe727ae2aa70ef6 # initialize rs2
clmul x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x5945eb3e96417fc0 # initialize rs1
li x24, 0x194c01f035acf7ce # initialize rs2
clmul x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xb7d4b27bb5793645 # initialize rs1
li x25, 0xbdf372d59d1c4714 # initialize rs2
clmul x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xaf1c569689b860de # initialize rs1
li x26, 0x3cc7565c5c47f57e # initialize rs2
clmul x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x4add287884ac4086 # initialize rs1
li x27, 0xa01e970488ef14a9 # initialize rs2
clmul x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x8405c3abcded9a57 # initialize rs1
li x28, 0x43028382b9ce4e81 # initialize rs2
clmul x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x4112fd135d2b4772 # initialize rs1
li x29, 0x3e3fb12d739811d6 # initialize rs2
clmul x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xce809854710a417d # initialize rs1
li x30, 0xb8c3e443bd9fa4de # initialize rs2
clmul x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x4388595d5af3603b # initialize rs1
li x31, 0x334d8e5e0c8b6510 # initialize rs2
clmul x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x7, x14 # perform first operation
clmul x20, x17, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x1, x30 # perform first operation
clmul x22, x31, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x27, x1, x23 # perform first operation
clmul x10, x14, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x16, x17 # perform first operation
clmul x6, x26, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x5, x14 # perform first operation
clmul x5, x31, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x2, x25, x7 # perform first operation
clmul x2, x11, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x15, x5, x21 # perform first operation
clmul x15, x31, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x14, x1, x12 # perform first operation
clmul x14, x13, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x27, x30 # perform first operation
clmul x11, x16, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x3, x9 # perform first operation
clmul x3, x19, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x28, x2 # perform first operation
clmul x2, x19, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x15, x22, x16 # perform first operation
clmul x11, x21, x7 # perform second (triggering) operation

#.EQU SIGSIZE,4096
.EQU SIGSIZE,8192 #combined


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
