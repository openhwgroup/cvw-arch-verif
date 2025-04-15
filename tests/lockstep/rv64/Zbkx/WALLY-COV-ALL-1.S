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
// Tests from: WALLY-COV-xperm4.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x3416ac5d482666a5 # initialize rs1
li x16, 0x67dcabcc7b86eea8 # initialize rs2
xperm4 x22, x0, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x06ebf28a7592b63d # initialize rs1
li x6, 0x370a96fc4e5604e2 # initialize rs2
xperm4 x18, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xc4e9b6151912f4ba # initialize rs1
li x5, 0x13482ef78c158af2 # initialize rs2
xperm4 x19, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xc5baebf6e9c785c0 # initialize rs1
li x30, 0x711f148c57df791d # initialize rs2
xperm4 x8, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf55890c60a7e38f7 # initialize rs1
li x21, 0x7cdc021a0a8d4b2b # initialize rs2
xperm4 x14, x4, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x7, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x4cb4befa7656f2a7 # initialize rs1
li x22, 0xf969d9ed264dec8c # initialize rs2
xperm4 x6, x5, x22 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
li x6, 0xcf86fa16f28ba88f # initialize rs1
li x26, 0x514802a0cb25a413 # initialize rs2
xperm4 x4, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdbfdeb7e27d24469 # initialize rs1
li x9, 0x53b8724221bf8b75 # initialize rs2
xperm4 x25, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xe0e96c89fcf44460 # initialize rs1
li x9, 0x8ee7de9a36a701c0 # initialize rs2
xperm4 x14, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x0a6d0490db36dc69 # initialize rs1
li x13, 0x18f0b01206aefa12 # initialize rs2
xperm4 x31, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x4b31603a2f13640c # initialize rs1
li x27, 0x1ea2071628045227 # initialize rs2
xperm4 x29, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x315207f6e65ac43c # initialize rs1
li x19, 0xd073d3818b2cb88e # initialize rs2
xperm4 x17, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x57150d90d5c79ecf # initialize rs1
li x5, 0x0fc5bd7cb2e7320b # initialize rs2
xperm4 x10, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x2e1d73cb01d733a1 # initialize rs1
li x31, 0x1ce1704a405b0a3c # initialize rs2
xperm4 x8, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x186d000bc975b356 # initialize rs1
li x18, 0x9221c7636c457ded # initialize rs2
xperm4 x17, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1a8f749c09d4f66c # initialize rs1
li x3, 0xf6c20e2c66e5dcfc # initialize rs2
xperm4 x9, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xd480dc354bd00038 # initialize rs1
li x18, 0x090dba3ce3003d85 # initialize rs2
xperm4 x10, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x174570d71b17260c # initialize rs1
li x31, 0x318f9a5b45552123 # initialize rs2
xperm4 x27, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xc6c1ea3331e934ce # initialize rs1
li x3, 0xb2d5520feeb720f8 # initialize rs2
xperm4 x14, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xecaffb6dede14904 # initialize rs1
li x28, 0x6fe696e3d8512bf2 # initialize rs2
xperm4 x14, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xbddd4ce6be00c21e # initialize rs1
li x26, 0x23a801c4b8bb0d95 # initialize rs2
xperm4 x2, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x82e5240ae64f7811 # initialize rs1
li x12, 0x6abbbc36e2a90e85 # initialize rs2
xperm4 x28, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xa8ca4a401b2471dc # initialize rs1
li x25, 0x7674c8f3473b5ede # initialize rs2
xperm4 x24, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x7295cddfa3754fac # initialize rs1
li x31, 0x4ba5a6c8f5a16563 # initialize rs2
xperm4 x29, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xf82bcbcac81883b0 # initialize rs1
li x25, 0xf4a4637475e0e45f # initialize rs2
xperm4 x21, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xc6711a714a75eefc # initialize rs1
li x14, 0xd61e8d9600a7eb89 # initialize rs2
xperm4 x30, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x665d6983cd5f1b9f # initialize rs1
li x11, 0x1ac3b0e044a0f259 # initialize rs2
xperm4 x15, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xda59f3f4388ce8db # initialize rs1
li x11, 0x6edd7267ae1190f9 # initialize rs2
xperm4 x31, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x7cac9ae467b74eab # initialize rs1
li x12, 0x6ad26f89a7e6539d # initialize rs2
xperm4 x9, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xfb06ba412a1cb05a # initialize rs1
li x21, 0x9e5e9ba94763b22a # initialize rs2
xperm4 x14, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x2de64a36f78f9f78 # initialize rs1
li x1, 0x20315f35dafbd120 # initialize rs2
xperm4 x9, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x6029b363831b55ef # initialize rs1
li x25, 0xe527885f248421dd # initialize rs2
xperm4 x8, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x26, 0x4505bdba199c9661 # initialize rs1
li x0, 0xecad088f38cda7db # initialize rs2
xperm4 x30, x26, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x25, 0xe080899b1f666df7 # initialize rs1
li x1, 0x4a5d152650829b61 # initialize rs2
xperm4 x12, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x21, 0x36338fcb60074dc9 # initialize rs1
li x2, 0x2777929ec0c383f8 # initialize rs2
xperm4 x19, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x14, 0x0bac8bd8bd81524d # initialize rs1
li x3, 0x84f4022a31ae31f3 # initialize rs2
xperm4 x27, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0x17ad9a975f492204 # initialize rs1
li x4, 0x9c7e375aaff07fb9 # initialize rs2
xperm4 x24, x1, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x3ba876fc00e4411f # initialize rs1
li x5, 0x27bc9853d8397e35 # initialize rs2
xperm4 x19, x11, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0xc5a2106e5d0c0687 # initialize rs1
li x6, 0x37cf4b6c44f533f2 # initialize rs2
xperm4 x9, x27, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0x512db7139bb10553 # initialize rs1
li x7, 0xd0594da46eb68082 # initialize rs2
xperm4 x16, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0xf6b155bc4edb0a08 # initialize rs1
li x8, 0x839c3df3f83cd76c # initialize rs2
xperm4 x3, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x26, 0xfff6db6ee0c2b836 # initialize rs1
li x9, 0x669237892f481291 # initialize rs2
xperm4 x3, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x15, 0xc90413083f9aa018 # initialize rs1
li x10, 0xb0ba9b335c273f4b # initialize rs2
xperm4 x20, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x27, 0xdbcaf3918217f629 # initialize rs1
li x11, 0xb1adec96fdca024a # initialize rs2
xperm4 x29, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x9, 0xb0285a4b36a45a7b # initialize rs1
li x12, 0xd63ef7a8e5948ad6 # initialize rs2
xperm4 x22, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x14, 0xbe673ed7cc88bc22 # initialize rs1
li x13, 0x2635b7aedacd06e3 # initialize rs2
xperm4 x12, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x30, 0x38e914bc42413820 # initialize rs1
li x14, 0x735c64ab6e2a2178 # initialize rs2
xperm4 x27, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x22, 0x2e9ddfeab70495ed # initialize rs1
li x15, 0x8c4893527663fb77 # initialize rs2
xperm4 x2, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x2, 0xb61f969013b899d3 # initialize rs1
li x16, 0xe90f20a2957a9f3c # initialize rs2
xperm4 x17, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x13, 0x53d3461a7bc68f21 # initialize rs1
li x17, 0xa82e1a730c3cb4b7 # initialize rs2
xperm4 x22, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x12, 0x30520e21c696e6c6 # initialize rs1
li x18, 0x1559e4a03ae73bea # initialize rs2
xperm4 x21, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x3, 0x7959a48a69b3a5b7 # initialize rs1
li x19, 0x038d08b57e41bef6 # initialize rs2
xperm4 x9, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x26, 0xdb50c8dfc18389e0 # initialize rs1
li x20, 0xa0e15bb79a1a1bf1 # initialize rs2
xperm4 x8, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x9, 0xe194c3263c4e809d # initialize rs1
li x21, 0x52227e6b04ac2c9a # initialize rs2
xperm4 x22, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x28, 0x5ba81a583dbac979 # initialize rs1
li x22, 0x2d5948ef4b484190 # initialize rs2
xperm4 x1, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x22, 0xea03918480ccee2e # initialize rs1
li x23, 0xa6adc03b5dda426e # initialize rs2
xperm4 x28, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x14, 0xe8e2cc29c37cc8dd # initialize rs1
li x24, 0x17921e8e96df5a20 # initialize rs2
xperm4 x7, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x2, 0xe2d91c13caa300e7 # initialize rs1
li x25, 0xeaab6d74d1788eff # initialize rs2
xperm4 x21, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x25, 0x4640bf595b4a2559 # initialize rs1
li x26, 0x504435df8b94c9c2 # initialize rs2
xperm4 x18, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x10, 0x590117348e3887d8 # initialize rs1
li x27, 0xf931195dc4342815 # initialize rs2
xperm4 x26, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x15, 0xaf6f0930ba9df09f # initialize rs1
li x28, 0xb314818c658eb54c # initialize rs2
xperm4 x2, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x13, 0xf312b4c000ed6415 # initialize rs1
li x29, 0x5beb13a7bc892fe8 # initialize rs2
xperm4 x7, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x3, 0xaf7fa53e50fa891b # initialize rs1
li x30, 0x0f2961de24613857 # initialize rs2
xperm4 x9, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x9, 0x9617be58d91b718b # initialize rs1
li x31, 0xb3fe0e60132b1721 # initialize rs2
xperm4 x17, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 504)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0x9f06d56e320a036a # initialize rs1
li x25, 0x4b94c8084bc2eee0 # initialize rs2
xperm4 x0, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x22, 0x9b0eeece25429083 # initialize rs1
li x24, 0x0dfb7d702c37d27f # initialize rs2
xperm4 x1, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x10, 0x752f7f37110e60f7 # initialize rs1
li x12, 0x36bf7f23b0aa436f # initialize rs2
xperm4 x2, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0x46ab30e8d707f5da # initialize rs1
li x19, 0xb6de7e1b2ccaa47b # initialize rs2
xperm4 x3, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x08adb06e06fcbdbc # initialize rs1
li x10, 0x1bd7f4b19c812644 # initialize rs2
xperm4 x4, x6, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x20, 0x6beecfa9ecc69eff # initialize rs1
li x30, 0x7103a54c7d07a7a9 # initialize rs2
xperm4 x5, x20, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0x4a73caeda6737120 # initialize rs1
li x21, 0x68e77a463cadc210 # initialize rs2
xperm4 x6, x2, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0xa7fdf06e8cad89f9 # initialize rs1
li x14, 0xf574557d96decee8 # initialize rs2
xperm4 x7, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x13, 0x4047c7febacf2ee1 # initialize rs1
li x26, 0x8c08ccaa0c21d8fc # initialize rs2
xperm4 x8, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x19, 0xa07e5ea07629838d # initialize rs1
li x3, 0x5c8123b3edbe2b58 # initialize rs2
xperm4 x9, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x19, 0x86199179e5a7fe7e # initialize rs1
li x18, 0xe092c341cee73c7b # initialize rs2
xperm4 x10, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x21, 0x47de1a6845005d86 # initialize rs1
li x25, 0x58c7e922005b42ac # initialize rs2
xperm4 x11, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x27, 0x7d29c30fe7cf362e # initialize rs1
li x2, 0x6fdd0ff31afffa46 # initialize rs2
xperm4 x12, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xb21b02c3900856ce # initialize rs1
li x7, 0xb85f01df02c3c93b # initialize rs2
xperm4 x13, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x5, 0xe760bfb367540719 # initialize rs1
li x23, 0x364df94c4225dd0d # initialize rs2
xperm4 x14, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x12, 0x68be8eb492d983ad # initialize rs1
li x2, 0xa2c832c8d0a3dc80 # initialize rs2
xperm4 x15, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x13, 0x90068e1196dab110 # initialize rs1
li x5, 0x40a85d318bac4055 # initialize rs2
xperm4 x16, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x30, 0xca8bed6443bef00e # initialize rs1
li x18, 0x295f5b262e813dc7 # initialize rs2
xperm4 x17, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x19, 0xa619f3d8f6f4e20f # initialize rs1
li x26, 0x78063a62e5d23ec0 # initialize rs2
xperm4 x18, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x7, 0xb2e8ba5313b2985f # initialize rs1
li x31, 0x849ea48d508326a8 # initialize rs2
xperm4 x19, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x25, 0xc45501e693400641 # initialize rs1
li x8, 0xa65e24e0a589541d # initialize rs2
xperm4 x20, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x29, 0xf4211f8c4dc7f7ce # initialize rs1
li x16, 0x9d649857a04b3db6 # initialize rs2
xperm4 x21, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x18, 0xea459ac0d8e7d023 # initialize rs1
li x3, 0x7f817f209657a9e9 # initialize rs2
xperm4 x22, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x19, 0x4f085d1e52ededcb # initialize rs1
li x30, 0x6fc220ef9bf49b6c # initialize rs2
xperm4 x23, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x29, 0x1f71a77d1e220534 # initialize rs1
li x28, 0x11f0884ddb70bdb1 # initialize rs2
xperm4 x24, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x12, 0xd28f2a9339176662 # initialize rs1
li x6, 0x9a4c5ef096617025 # initialize rs2
xperm4 x25, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x20, 0xdbc37ae7c20e778b # initialize rs1
li x25, 0xf70e7b2dbec2e21b # initialize rs2
xperm4 x26, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x30, 0xb07eaa7a40f19e51 # initialize rs1
li x9, 0x9ec2808cf3897125 # initialize rs2
xperm4 x27, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x18, 0x8e512a8329303cb7 # initialize rs1
li x24, 0xfd4d4d0deb4a735e # initialize rs2
xperm4 x28, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x21, 0x2e555b1415f4530b # initialize rs1
li x6, 0x5bfa6f773c04efa3 # initialize rs2
xperm4 x29, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x12, 0x61b89ac8efe3cbae # initialize rs1
li x23, 0xee82033ffba37f0f # initialize rs2
xperm4 x30, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x11, 0x14c96d8f85f99035 # initialize rs1
li x3, 0x937882e273b30b15 # initialize rs2
xperm4 x31, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x30, 0x0000000000000000 # initialize rs1
li x14, 0x469ac6d0bf4dd91d # initialize rs2
xperm4 x19, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x8, 0x0000000000000001 # initialize rs1
li x31, 0x06d37ee85eb17afc # initialize rs2
xperm4 x17, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x26, 0x0000000000000002 # initialize rs1
li x15, 0x16be29e1b52e4305 # initialize rs2
xperm4 x20, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x18, 0x8000000000000000 # initialize rs1
li x24, 0x978d9e81731630da # initialize rs2
xperm4 x2, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x1, 0x8000000000000001 # initialize rs1
li x17, 0xaa390819b434db32 # initialize rs2
xperm4 x22, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x28, 0x7fffffffffffffff # initialize rs1
li x7, 0x39b35cc9b1724724 # initialize rs2
xperm4 x25, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rs1
li x18, 0x9490691758cd7f6d # initialize rs2
xperm4 x19, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x27, 0xffffffffffffffff # initialize rs1
li x20, 0xae5865378b5abcc9 # initialize rs2
xperm4 x7, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
li x5, 0x22ec0962511b0f35 # initialize rs2
xperm4 x15, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x19ada23d87e8d3ad # initialize rs2
xperm4 x25, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x57910a60800598da # initialize rs2
xperm4 x13, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x10, 0x5555555555555555 # initialize rs1
li x7, 0x89e2553eedeaf487 # initialize rs2
xperm4 x1, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x25, 0x00000000ffffffff # initialize rs1
li x18, 0x1362b83f957667f0 # initialize rs2
xperm4 x14, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x17, 0x00000000fffffffe # initialize rs1
li x5, 0xc3ee087bd853509d # initialize rs2
xperm4 x31, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x6, 0x0000000100000000 # initialize rs1
li x24, 0x31f19e3585357799 # initialize rs2
xperm4 x22, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x12, 0x0000000100000001 # initialize rs1
li x30, 0xa36ef264f97fd9ee # initialize rs2
xperm4 x22, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x14, 0x80ffd169c5e07022 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
xperm4 x31, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x24, 0x58994c26793e075e # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
xperm4 x23, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x16, 0x23c51bed7f86bcac # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
xperm4 x9, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x20, 0xde322a8f151617af # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
xperm4 x7, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x11, 0x6d53ef7985d0c1a5 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
xperm4 x10, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x31, 0x4bcc71b03ce02282 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
xperm4 x8, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x20, 0xea442702e8d7ad17 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
xperm4 x30, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x23, 0xb20c8f203dc5aac3 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
xperm4 x10, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x19, 0x0237eadd9b185c24 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
xperm4 x12, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x28, 0xb1024702acc8c4d8 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x7, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x7, 0x277c3d7d4af609d8 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x29, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x29, 0x562fb89cc95c42b6 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
xperm4 x9, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x19, 0xcb7e0fc9629cddeb # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
xperm4 x9, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x23, 0x092c9c88868aafdc # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
xperm4 x10, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x29, 0x8751df3a4e219824 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
xperm4 x14, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x28, 0xacf8d1c8426df8f9 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
xperm4 x26, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x23, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
xperm4 x9, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x12, 0x0000000000000000 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
xperm4 x15, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x26, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
xperm4 x28, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x10, 0x0000000000000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
xperm4 x17, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x13, 0x0000000000000000 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
xperm4 x17, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000000000000 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
xperm4 x5, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x9, 0x0000000000000000 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
xperm4 x16, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x18, 0x0000000000000000 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
xperm4 x6, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000000000000 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
xperm4 x31, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x7, 0x0000000000000000 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x27, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x0000000000000000 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x8, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x7, 0x0000000000000000 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
xperm4 x23, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x17, 0x0000000000000000 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
xperm4 x6, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x19, 0x0000000000000000 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
xperm4 x1, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x17, 0x0000000000000000 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
xperm4 x13, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x8, 0x0000000000000000 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
xperm4 x5, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x8, 0x0000000000000001 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
xperm4 x14, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x24, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
xperm4 x13, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x18, 0x0000000000000001 # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
xperm4 x15, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x28, 0x0000000000000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
xperm4 x27, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x22, 0x0000000000000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
xperm4 x25, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x9, 0x0000000000000001 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
xperm4 x16, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x9, 0x0000000000000001 # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
xperm4 x17, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x11, 0x0000000000000001 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
xperm4 x30, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x23, 0x0000000000000001 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
xperm4 x17, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x8, 0x0000000000000001 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x2, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000000000001 # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x8, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x17, 0x0000000000000001 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
xperm4 x27, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x2, 0x0000000000000001 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
xperm4 x11, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x24, 0x0000000000000001 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
xperm4 x23, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x8, 0x0000000000000001 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
xperm4 x25, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x3, 0x0000000000000001 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
xperm4 x30, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x23, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
xperm4 x18, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x26, 0x0000000000000002 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
xperm4 x30, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x25, 0x0000000000000002 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
xperm4 x21, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x24, 0x0000000000000002 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
xperm4 x20, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x29, 0x0000000000000002 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
xperm4 x7, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000000000002 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
xperm4 x18, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000000000002 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
xperm4 x28, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x9, 0x0000000000000002 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
xperm4 x22, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000000000002 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
xperm4 x23, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000000000002 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x28, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x0000000000000002 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x6, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x27, 0x0000000000000002 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
xperm4 x6, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x19, 0x0000000000000002 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
xperm4 x20, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
xperm4 x26, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x12, 0x0000000000000002 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
xperm4 x9, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x11, 0x0000000000000002 # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
xperm4 x31, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x16, 0x8000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
xperm4 x6, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x10, 0x8000000000000000 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
xperm4 x9, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x12, 0x8000000000000000 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
xperm4 x19, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
xperm4 x2, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x7, 0x8000000000000000 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
xperm4 x31, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x12, 0x8000000000000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
xperm4 x19, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x2, 0x8000000000000000 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
xperm4 x29, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x5, 0x8000000000000000 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
xperm4 x3, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x5, 0x8000000000000000 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
xperm4 x1, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x7, 0x8000000000000000 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x19, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x8000000000000000 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x14, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x17, 0x8000000000000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
xperm4 x11, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x21, 0x8000000000000000 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
xperm4 x22, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x5, 0x8000000000000000 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
xperm4 x29, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x24, 0x8000000000000000 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
xperm4 x29, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x7, 0x8000000000000000 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
xperm4 x20, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x1, 0x8000000000000001 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
xperm4 x27, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x30, 0x8000000000000001 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
xperm4 x26, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x15, 0x8000000000000001 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
xperm4 x22, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x30, 0x8000000000000001 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
xperm4 x3, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x23, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
xperm4 x12, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x9, 0x8000000000000001 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
xperm4 x28, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x16, 0x8000000000000001 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
xperm4 x25, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x18, 0x8000000000000001 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
xperm4 x31, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x30, 0x8000000000000001 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
xperm4 x18, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x21, 0x8000000000000001 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x7, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x8000000000000001 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x7, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x22, 0x8000000000000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
xperm4 x10, x22, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x27, 0x8000000000000001 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
xperm4 x31, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x19, 0x8000000000000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
xperm4 x2, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x13, 0x8000000000000001 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
xperm4 x20, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x12, 0x8000000000000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
xperm4 x26, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x10, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
xperm4 x15, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x20, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
xperm4 x6, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x5, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
xperm4 x12, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x31, 0x7fffffffffffffff # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
xperm4 x21, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x23, 0x7fffffffffffffff # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
xperm4 x14, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
xperm4 x11, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x16, 0x7fffffffffffffff # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
xperm4 x24, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
xperm4 x8, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x23, 0x7fffffffffffffff # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
xperm4 x10, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x19, 0x7fffffffffffffff # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x29, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x7fffffffffffffff # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x29, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x17, 0x7fffffffffffffff # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
xperm4 x3, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x13, 0x7fffffffffffffff # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
xperm4 x25, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x6, 0x7fffffffffffffff # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
xperm4 x31, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x5, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
xperm4 x15, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x13, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
xperm4 x7, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x8, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
xperm4 x12, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x5, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
xperm4 x24, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x20, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
xperm4 x5, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x2, 0x7ffffffffffffffe # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
xperm4 x29, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x13, 0x7ffffffffffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
xperm4 x10, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x30, 0x7ffffffffffffffe # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
xperm4 x17, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
xperm4 x26, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x9, 0x7ffffffffffffffe # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
xperm4 x11, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x22, 0x7ffffffffffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
xperm4 x20, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x8, 0x7ffffffffffffffe # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x18, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x7ffffffffffffffe # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x6, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x8, 0x7ffffffffffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
xperm4 x31, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x9, 0x7ffffffffffffffe # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
xperm4 x8, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
xperm4 x12, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x27, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
xperm4 x20, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x3, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
xperm4 x26, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x12, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
xperm4 x24, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x22, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
xperm4 x21, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x27, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
xperm4 x30, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x16, 0xffffffffffffffff # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
xperm4 x26, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x13, 0xffffffffffffffff # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
xperm4 x21, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
xperm4 x30, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x2, 0xffffffffffffffff # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
xperm4 x20, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x30, 0xffffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
xperm4 x14, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x3, 0xffffffffffffffff # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
xperm4 x7, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x17, 0xffffffffffffffff # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x13, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0xffffffffffffffff # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x10, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x23, 0xffffffffffffffff # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
xperm4 x29, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
xperm4 x13, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x21, 0xffffffffffffffff # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
xperm4 x28, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x13, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
xperm4 x21, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x3, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
xperm4 x23, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x29, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
xperm4 x14, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x23, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
xperm4 x18, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x14, 0xfffffffffffffffe # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
xperm4 x12, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x5, 0xfffffffffffffffe # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
xperm4 x16, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x3, 0xfffffffffffffffe # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
xperm4 x26, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x6, 0xfffffffffffffffe # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
xperm4 x9, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0xfffffffffffffffe # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
xperm4 x3, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x13, 0xfffffffffffffffe # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
xperm4 x21, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
xperm4 x2, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x21, 0xfffffffffffffffe # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x27, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0xfffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x24, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x26, 0xfffffffffffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
xperm4 x22, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x25, 0xfffffffffffffffe # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
xperm4 x30, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
xperm4 x17, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x23, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
xperm4 x5, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x25, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
xperm4 x23, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
xperm4 x31, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
xperm4 x9, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
xperm4 x26, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
xperm4 x11, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
xperm4 x12, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
xperm4 x18, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
xperm4 x24, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
xperm4 x28, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
xperm4 x1, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x8, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x13, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
xperm4 x19, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
xperm4 x10, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
xperm4 x27, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
xperm4 x6, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
xperm4 x9, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
xperm4 x12, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
xperm4 x30, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
xperm4 x23, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
xperm4 x30, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
xperm4 x26, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
xperm4 x24, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
xperm4 x21, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
xperm4 x2, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
xperm4 x27, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x3, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x24, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
xperm4 x30, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
xperm4 x15, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
xperm4 x13, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
xperm4 x5, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
xperm4 x29, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x18, 0x5555555555555555 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
xperm4 x25, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x29, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
xperm4 x9, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x10, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
xperm4 x2, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x5, 0x5555555555555555 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
xperm4 x15, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x3, 0x5555555555555555 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
xperm4 x7, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
xperm4 x18, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x28, 0x5555555555555555 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
xperm4 x26, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x5, 0x5555555555555555 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
xperm4 x21, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x23, 0x5555555555555555 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
xperm4 x24, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x8, 0x5555555555555555 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x23, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x5555555555555555 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x3, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x2, 0x5555555555555555 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
xperm4 x12, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x25, 0x5555555555555555 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
xperm4 x23, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x18, 0x5555555555555555 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
xperm4 x5, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x16, 0x5555555555555555 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
xperm4 x14, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x31, 0x5555555555555555 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
xperm4 x3, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x29, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
xperm4 x24, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x16, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
xperm4 x26, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x31, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
xperm4 x14, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x25, 0x00000000ffffffff # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
xperm4 x14, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x23, 0x00000000ffffffff # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
xperm4 x12, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
xperm4 x17, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
xperm4 x8, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x11, 0x00000000ffffffff # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
xperm4 x16, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x31, 0x00000000ffffffff # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
xperm4 x12, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x9, 0x00000000ffffffff # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x25, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x00000000ffffffff # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x23, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x10, 0x00000000ffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
xperm4 x30, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x10, 0x00000000ffffffff # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
xperm4 x12, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x18, 0x00000000ffffffff # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
xperm4 x20, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x31, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
xperm4 x25, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x25, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
xperm4 x12, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x26, 0x00000000fffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
xperm4 x12, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x16, 0x00000000fffffffe # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
xperm4 x24, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x7, 0x00000000fffffffe # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
xperm4 x15, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x6, 0x00000000fffffffe # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
xperm4 x8, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x23, 0x00000000fffffffe # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
xperm4 x31, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x27, 0x00000000fffffffe # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
xperm4 x11, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x12, 0x00000000fffffffe # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
xperm4 x14, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x6, 0x00000000fffffffe # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
xperm4 x26, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x1, 0x00000000fffffffe # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
xperm4 x18, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x3, 0x00000000fffffffe # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x13, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x00000000fffffffe # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x12, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x30, 0x00000000fffffffe # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
xperm4 x1, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x10, 0x00000000fffffffe # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
xperm4 x31, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
xperm4 x27, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x30, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
xperm4 x22, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x21, 0x00000000fffffffe # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
xperm4 x27, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x3, 0x0000000100000000 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
xperm4 x23, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x14, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
xperm4 x5, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x10, 0x0000000100000000 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
xperm4 x1, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x10, 0x0000000100000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
xperm4 x29, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x11, 0x0000000100000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
xperm4 x6, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x27, 0x0000000100000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
xperm4 x6, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x29, 0x0000000100000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
xperm4 x1, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x19, 0x0000000100000000 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
xperm4 x26, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000100000000 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
xperm4 x9, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000100000000 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x28, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x0000000100000000 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x7, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x18, 0x0000000100000000 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
xperm4 x10, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x31, 0x0000000100000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
xperm4 x12, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x31, 0x0000000100000000 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
xperm4 x25, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x30, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
xperm4 x17, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x6, 0x0000000100000000 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
xperm4 x30, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x8, 0x0000000100000001 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
xperm4 x5, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x2, 0x0000000100000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
xperm4 x27, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x3, 0x0000000100000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
xperm4 x16, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x28, 0x0000000100000001 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
xperm4 x25, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x6, 0x0000000100000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
xperm4 x30, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x2, 0x0000000100000001 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
xperm4 x13, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x22, 0x0000000100000001 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
xperm4 x19, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x26, 0x0000000100000001 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
xperm4 x19, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x6, 0x0000000100000001 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
xperm4 x8, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x5, 0x0000000100000001 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
xperm4 x1, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000100000001 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm4 x12, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x28, 0x0000000100000001 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
xperm4 x12, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x27, 0x0000000100000001 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
xperm4 x6, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x26, 0x0000000100000001 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
xperm4 x27, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x15, 0x0000000100000001 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
xperm4 x6, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x26, 0x0000000100000001 # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
xperm4 x18, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x08229a6d96c19a19 # initialize rs1
li x0, 0x5c43a3406ebd86a5 # initialize rs2
xperm4 x24, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x27aea664d6999b2c # initialize rs1
li x1, 0xaae10d23dc9222a5 # initialize rs2
xperm4 x23, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x8ecfc59e3c512e56 # initialize rs1
li x2, 0x436fc5f6fd253618 # initialize rs2
xperm4 x13, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xf76a6c58234bf06f # initialize rs1
li x3, 0x54c11f4dc1c3c2bb # initialize rs2
xperm4 x28, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4db3369c3f79d49b # initialize rs1
li x4, 0x107c4a6fa2a2c6e2 # initialize rs2
xperm4 x20, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x685adf31abe6a22d # initialize rs1
li x5, 0x246164626122dba3 # initialize rs2
xperm4 x18, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x18e61e19b07ffe89 # initialize rs1
li x6, 0x781b73e7f8ee170a # initialize rs2
xperm4 x23, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x23, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6fb01ed9d1462bc0 # initialize rs1
li x7, 0x3d3050ab03f95279 # initialize rs2
xperm4 x27, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xd8ae3baaa641cc58 # initialize rs1
li x8, 0xd401f78959c5ccf5 # initialize rs2
xperm4 x23, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x47f228fe4092914b # initialize rs1
li x9, 0xa102e5cbef25850f # initialize rs2
xperm4 x15, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x7283a429eea9ec8d # initialize rs1
li x10, 0xe57c098fdb75cee1 # initialize rs2
xperm4 x6, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x703921e8fa80bb78 # initialize rs1
li x11, 0x44080b3c01aec7bf # initialize rs2
xperm4 x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xea558d924e00c1e4 # initialize rs1
li x12, 0xf7648ad6f9fd0a9d # initialize rs2
xperm4 x28, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xb0e272d625bd69b4 # initialize rs1
li x13, 0x5887c1249e0072ea # initialize rs2
xperm4 x1, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xc1cfb54c7f81f822 # initialize rs1
li x14, 0xf8ccfd5de4968d55 # initialize rs2
xperm4 x10, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x15e52763ee716a6b # initialize rs1
li x15, 0x23d0e7bdf445f0d3 # initialize rs2
xperm4 x5, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xc5962dce7e73b1a6 # initialize rs1
li x16, 0x62b171b6cc6f1673 # initialize rs2
xperm4 x29, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x258a1736b502a11f # initialize rs1
li x17, 0x4af5238a318f4120 # initialize rs2
xperm4 x14, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xfb7c41dbd18ceeb4 # initialize rs1
li x18, 0x6dbe4760cd2239be # initialize rs2
xperm4 x28, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x0c0bbd0950cf5df0 # initialize rs1
li x19, 0x1f03457d4e34e0ac # initialize rs2
xperm4 x12, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x045aeb6485bcb6c9 # initialize rs1
li x20, 0xee0bf9d804f1be77 # initialize rs2
xperm4 x12, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xf263ff6e81c2d316 # initialize rs1
li x21, 0xce3e29e287faf4ea # initialize rs2
xperm4 x7, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x2e31ae69a1c571c8 # initialize rs1
li x22, 0xe4b2c3230d86d7cc # initialize rs2
xperm4 x25, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x4a1a4972b11ca74b # initialize rs1
li x23, 0x975a9273316984f4 # initialize rs2
xperm4 x19, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xc8de23aa4ff52a7e # initialize rs1
li x24, 0x0d9aa69f047c0483 # initialize rs2
xperm4 x2, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x090e6e528ee34bdf # initialize rs1
li x25, 0x64ab41517663a2e1 # initialize rs2
xperm4 x9, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x75f0b3a03dc4ddfc # initialize rs1
li x26, 0xf55afd831efb71e6 # initialize rs2
xperm4 x1, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xad9ff528370cda97 # initialize rs1
li x27, 0x5d4d84e5150b1777 # initialize rs2
xperm4 x12, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xe393ea11d65acbcb # initialize rs1
li x28, 0x665ca561d53b6507 # initialize rs2
xperm4 x6, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x3eea412480c64939 # initialize rs1
li x29, 0xc4a231d09e579138 # initialize rs2
xperm4 x11, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x32db2adae3315dcc # initialize rs1
li x30, 0xac2c2606c36cd7d5 # initialize rs2
xperm4 x29, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x0de70c417277572c # initialize rs1
li x31, 0x83a909ec0f087478 # initialize rs2
xperm4 x29, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xfa99659cca87ab2b # initialize rs1
li x23, 0x850050eba5c49319 # initialize rs2
xperm4 x0, x0, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x9a8fdfaec9d93dc2 # initialize rs1
li x11, 0xc014a850dc78a855 # initialize rs2
xperm4 x1, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x13e31ec480ecaf8f # initialize rs1
li x23, 0x2b32ca980c9002cb # initialize rs2
xperm4 x2, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xdf95ce03594aae26 # initialize rs1
li x30, 0xb9a3d0f70d126b13 # initialize rs2
xperm4 x3, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4ff36588ca7bfdee # initialize rs1
li x31, 0x2960d2fab39f2f90 # initialize rs2
xperm4 x4, x4, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xecb04d48a92826d6 # initialize rs1
li x19, 0xe1d7116fecaad777 # initialize rs2
xperm4 x5, x5, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x020ea036614be8fd # initialize rs1
li x30, 0xe1093f3a4da0a16b # initialize rs2
xperm4 x6, x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x53da1949746d37da # initialize rs1
li x23, 0xe8cc4c55dd670c9b # initialize rs2
xperm4 x7, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf39e40fe0146a7c1 # initialize rs1
li x2, 0x83fcb92dc31f3cd1 # initialize rs2
xperm4 x8, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xe7ba569dda8d78d9 # initialize rs1
li x13, 0x2b715ad3f16001a9 # initialize rs2
xperm4 x9, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xce9f520b85f5971f # initialize rs1
li x23, 0x5a3761b3dbe00051 # initialize rs2
xperm4 x10, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x614aa552da7bfca2 # initialize rs1
li x19, 0x58d942216e688db5 # initialize rs2
xperm4 x11, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xe8c1bda688b31d10 # initialize rs1
li x26, 0xdc236ddb8101af0a # initialize rs2
xperm4 x12, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x100963ce3bb58e6d # initialize rs1
li x20, 0xbead22a3a5fc50b3 # initialize rs2
xperm4 x13, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x851fa152c6f6f97f # initialize rs1
li x15, 0x35bd3ed5f22e93ec # initialize rs2
xperm4 x14, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd43f1a270c80eabc # initialize rs1
li x2, 0xa1af0870d79e2b62 # initialize rs2
xperm4 x15, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xea312907de53c468 # initialize rs1
li x2, 0x81c9f8f42f8b5adc # initialize rs2
xperm4 x16, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x4fe9c39c2c36bd6d # initialize rs1
li x6, 0xc0de239eb07ecc5a # initialize rs2
xperm4 x17, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x799c4a3dd4c5b9c6 # initialize rs1
li x2, 0x39a019b48a83fca5 # initialize rs2
xperm4 x18, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x848aa5db344410bf # initialize rs1
li x15, 0x98b8ee4aa479e63c # initialize rs2
xperm4 x19, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x588967553c08582c # initialize rs1
li x23, 0x115171cb58a420b2 # initialize rs2
xperm4 x20, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xf407dfc1802cccf1 # initialize rs1
li x24, 0x50013198bde02a9f # initialize rs2
xperm4 x21, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3da25bb811c063d4 # initialize rs1
li x27, 0x847dd8937c036afe # initialize rs2
xperm4 x22, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x905ae6866383fb73 # initialize rs1
li x6, 0xf59cd311c99d6398 # initialize rs2
xperm4 x23, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xc6686667d2948242 # initialize rs1
li x29, 0x26035150a32221fc # initialize rs2
xperm4 x24, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xb78b2aae5f3f9d9e # initialize rs1
li x15, 0x8eea566aa3b23390 # initialize rs2
xperm4 x25, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0897ee9c9eb9ece2 # initialize rs1
li x15, 0xad28bc5db83267d7 # initialize rs2
xperm4 x26, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x33e0ee6b6b403179 # initialize rs1
li x31, 0x98f1065b50198c7a # initialize rs2
xperm4 x27, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x03ce88816a537a4d # initialize rs1
li x2, 0x2fd38d4751a7fd8f # initialize rs2
xperm4 x28, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xde834fd992d781e5 # initialize rs1
li x25, 0x640c112019b43887 # initialize rs2
xperm4 x29, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x81f51ddd1632d6de # initialize rs1
li x18, 0xfac1c6ed0e6f3a92 # initialize rs2
xperm4 x30, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x6fa01be283140291 # initialize rs1
li x15, 0x04187c2163d28eb6 # initialize rs2
xperm4 x31, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x10, 0x0a12c41715c09c50 # initialize rs1
li x0, 0x8fe8b4b33a67f051 # initialize rs2
xperm4 x0, x10, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x28, 0x07dd7bb7c3efb8b1 # initialize rs1
li x1, 0x2aa16d392df3d52e # initialize rs2
xperm4 x1, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x26, 0xd5e62580767388b8 # initialize rs1
li x2, 0xb7c622012636b59d # initialize rs2
xperm4 x2, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x29, 0xce161ef00fe8a0a7 # initialize rs1
li x3, 0x5473658d7c7d6055 # initialize rs2
xperm4 x3, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0x2d997f76b8629412 # initialize rs1
li x4, 0x2f34d335013fc661 # initialize rs2
xperm4 x4, x28, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0xa8c1cebcbf34deb4 # initialize rs1
li x5, 0xaa0bd203e4690acd # initialize rs2
xperm4 x5, x29, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x8, 0x471ec8dbbeea8f72 # initialize rs1
li x6, 0xaeb8b7e9c75c3f3c # initialize rs2
xperm4 x6, x8, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0xb6080d884f2a68af # initialize rs1
li x7, 0x38a572b9c06d1020 # initialize rs2
xperm4 x7, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x24, 0xf5473462da0a7075 # initialize rs1
li x8, 0xa4dea7a8d5ce2e94 # initialize rs2
xperm4 x8, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x25, 0x778d30fc0cac83d5 # initialize rs1
li x9, 0x026c3d642a234038 # initialize rs2
xperm4 x9, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x19, 0x7e9e1ef986e5601f # initialize rs1
li x10, 0x99525ae8bac80444 # initialize rs2
xperm4 x10, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x15, 0x6a47d225ae419e18 # initialize rs1
li x11, 0xd019e02c27bc51fe # initialize rs2
xperm4 x11, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x22, 0xa16ef4ad20c840bb # initialize rs1
li x12, 0x5363fdc7ae4753c6 # initialize rs2
xperm4 x12, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x12, 0xd8dafcdc48513d2b # initialize rs1
li x13, 0xa6974785d7833d2a # initialize rs2
xperm4 x13, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x5, 0x0a98f6ccd5f49e28 # initialize rs1
li x14, 0xb3a567db63be6254 # initialize rs2
xperm4 x14, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x12, 0x563fe3653129a664 # initialize rs1
li x15, 0x96271371d4dc739a # initialize rs2
xperm4 x15, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x28, 0x9726788e72777e11 # initialize rs1
li x16, 0x2cec66a1bd6831f3 # initialize rs2
xperm4 x16, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x13, 0x9a8be82d39f78a72 # initialize rs1
li x17, 0xa7bffee9c03ad1cf # initialize rs2
xperm4 x17, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x13, 0xd55168bfafc6566d # initialize rs1
li x18, 0xd1864f0240954f25 # initialize rs2
xperm4 x18, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x24, 0xd94689a7b7a901f9 # initialize rs1
li x19, 0xb9a5967a2cd66bfc # initialize rs2
xperm4 x19, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x15, 0x0f99dc1d8a21184f # initialize rs1
li x20, 0xfe9016577479959b # initialize rs2
xperm4 x20, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x12, 0xd636e7bf2f86865b # initialize rs1
li x21, 0x7c33ee13806ee3c8 # initialize rs2
xperm4 x21, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x16, 0x1d05ea4229b0b6a1 # initialize rs1
li x22, 0x88ccc03a95194237 # initialize rs2
xperm4 x22, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x28, 0x0803c024d712a8a1 # initialize rs1
li x23, 0xa861591552bf027b # initialize rs2
xperm4 x23, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x22, 0xece2a0ac17afe8cd # initialize rs1
li x24, 0x890a5e079c6ef45d # initialize rs2
xperm4 x24, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x15, 0xfee7edd7ce5259b8 # initialize rs1
li x25, 0xd815b1dc1337be10 # initialize rs2
xperm4 x25, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x20, 0x328f1d21eca1419e # initialize rs1
li x26, 0x43963cfbe5d236d6 # initialize rs2
xperm4 x26, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x21, 0xda030c5d7a0b1204 # initialize rs1
li x27, 0xb06f6e9fb8cbf65f # initialize rs2
xperm4 x27, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x20, 0x3c89266707136172 # initialize rs1
li x28, 0x547a7b47963d8c8b # initialize rs2
xperm4 x28, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x1, 0xa98cc633ac94aee6 # initialize rs1
li x29, 0x3f30098e6c787cd4 # initialize rs2
xperm4 x29, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x24, 0xb400f2c5f3101ef3 # initialize rs1
li x30, 0x9a3b540b1fb19779 # initialize rs2
xperm4 x30, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x2, 0xfffca19b6dd1fd67 # initialize rs1
li x31, 0x0b7156861bf1871e # initialize rs2
xperm4 x31, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xd156e4a401f5cdf6 # initialize rs1
li x0, 0xabae1a7fe822a8b0 # initialize rs2
xperm4 x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x2d8538c65d7c4951 # initialize rs1
li x1, 0xa4f7bbcc577caef5 # initialize rs2
xperm4 x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xbc2acc5199dc6315 # initialize rs1
li x2, 0xf51bb8202af2f8cc # initialize rs2
xperm4 x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xb31213aac83e6040 # initialize rs1
li x3, 0x3c6fe61afa3b025e # initialize rs2
xperm4 x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x35811f16d8137ad0 # initialize rs1
li x4, 0x41ff5599b5caa300 # initialize rs2
xperm4 x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xba13f0ad2304424e # initialize rs1
li x5, 0xb5ef9af61f87ce28 # initialize rs2
xperm4 x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6858ccc97890f763 # initialize rs1
li x6, 0x4dc55edba0bcf867 # initialize rs2
xperm4 x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd9b3cd1fe85a974e # initialize rs1
li x7, 0x7976157eb3293cea # initialize rs2
xperm4 x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x3601208414f11b21 # initialize rs1
li x8, 0xe49723f246a06c4f # initialize rs2
xperm4 x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xf2e67c71363bf90b # initialize rs1
li x9, 0xac1ab6d0a1698711 # initialize rs2
xperm4 x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xb18326c613b402b0 # initialize rs1
li x10, 0xa9a2fc4309552ecf # initialize rs2
xperm4 x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x923e802a3f8a3f80 # initialize rs1
li x11, 0x91fd98e2cbaacacd # initialize rs2
xperm4 x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x71c660bf69fde78a # initialize rs1
li x12, 0xd6d5b1e4ec1073ea # initialize rs2
xperm4 x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x13294423195959e4 # initialize rs1
li x13, 0xac0de4c3645dac62 # initialize rs2
xperm4 x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x0da9a4783312ebd8 # initialize rs1
li x14, 0x67e9327dd66aefcf # initialize rs2
xperm4 x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xacb39686df461fc8 # initialize rs1
li x15, 0x615090d53a807b90 # initialize rs2
xperm4 x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x37fb654bbd0c4e06 # initialize rs1
li x16, 0x9c89163454c667b1 # initialize rs2
xperm4 x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x6b72aceb53cf3b61 # initialize rs1
li x17, 0x1a87df4745531f9d # initialize rs2
xperm4 x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xd822fb818b3579d2 # initialize rs1
li x18, 0x8ffc32f6f0b591c4 # initialize rs2
xperm4 x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x86fec3a9ee53c0fa # initialize rs1
li x19, 0xaa5450e13c1fa168 # initialize rs2
xperm4 x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xad1f01ff146c800d # initialize rs1
li x20, 0xc72f378fa90a1dac # initialize rs2
xperm4 x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xba7176f38c8d20f1 # initialize rs1
li x21, 0x1edcacee05a4a374 # initialize rs2
xperm4 x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x2d55f575c63bd74a # initialize rs1
li x22, 0x5ba095bb01d9d7d7 # initialize rs2
xperm4 x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x27d0ed7e45d2ea28 # initialize rs1
li x23, 0x31f7fcad9c3c958a # initialize rs2
xperm4 x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x7c0e7c54aede6282 # initialize rs1
li x24, 0xb64b572e1a4872c9 # initialize rs2
xperm4 x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xc1652614856ce4a1 # initialize rs1
li x25, 0x2e32429b80a8ccb1 # initialize rs2
xperm4 x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x46cdc3bd6202604c # initialize rs1
li x26, 0xb762a6a62d6de678 # initialize rs2
xperm4 x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x8527483d627d4735 # initialize rs1
li x27, 0x09b6a28e0dc2bb72 # initialize rs2
xperm4 x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x5bc81a1eb953ece1 # initialize rs1
li x28, 0x7c6866c379ea5610 # initialize rs2
xperm4 x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x4f7171aeafd18294 # initialize rs1
li x29, 0xdbb10be98b747f0d # initialize rs2
xperm4 x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x3aaa7cb841df61c9 # initialize rs1
li x30, 0x5377c94c82ae22dc # initialize rs2
xperm4 x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x1397818712e527d1 # initialize rs1
li x31, 0xc788d1cfec742c72 # initialize rs2
xperm4 x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x25, x26 # perform first operation
xperm4 x29, x18, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x3, x24, x2 # perform first operation
xperm4 x22, x25, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x25, x19, x29 # perform first operation
xperm4 x6, x2, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x29, x14 # perform first operation
xperm4 x26, x26, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x9, x12, x26 # perform first operation
xperm4 x12, x8, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x19, x28 # perform first operation
xperm4 x28, x23, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x19, x14 # perform first operation
xperm4 x21, x27, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x29, x9, x7 # perform first operation
xperm4 x29, x1, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x27, x16 # perform first operation
xperm4 x1, x23, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x14, x25 # perform first operation
xperm4 x14, x20, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x31, x5 # perform first operation
xperm4 x5, x30, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x19, x20 # perform first operation
xperm4 x26, x1, x10 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-xperm8.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x3d692e5b375a1843 # initialize rs1
li x21, 0x3f61d98eebb9f309 # initialize rs2
xperm8 x16, x0, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xb48cd4269b7577b4 # initialize rs1
li x28, 0xb5402d17b4ce8ad8 # initialize rs2
xperm8 x21, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x02c13a6eaf27ea5b # initialize rs1
li x14, 0xbca8ec1a73a3b2ae # initialize rs2
xperm8 x17, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xeb6ae4f98cef2a52 # initialize rs1
li x26, 0x603b30aab4c1c2ca # initialize rs2
xperm8 x8, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x2280d001dc33999f # initialize rs1
li x18, 0xc05ed479aa0726c6 # initialize rs2
xperm8 x10, x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x721ae77d708ea82a # initialize rs1
li x2, 0xfc8f6b36d6105ddb # initialize rs2
xperm8 x13, x5, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xa89cbb47a79e4224 # initialize rs1
li x1, 0x59c1d01d38782f18 # initialize rs2
xperm8 x26, x6, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x26, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xff5d735e746479ef # initialize rs1
li x18, 0xe3b20bf05c76f013 # initialize rs2
xperm8 x8, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x577211ea2cb3ce58 # initialize rs1
li x6, 0x6166c40abbe2a138 # initialize rs2
xperm8 x23, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x3f9bd15a490bd9c3 # initialize rs1
li x25, 0x5d1459c4c0246230 # initialize rs2
xperm8 x30, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xbe8f6bd6bd3ad486 # initialize rs1
li x20, 0x077639983589f1a1 # initialize rs2
xperm8 x22, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x77aa36e64ab2d72f # initialize rs1
li x2, 0xcabf9f266dd1abc0 # initialize rs2
xperm8 x13, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x6624efbd07bed38f # initialize rs1
li x17, 0xb2c5b0cacd755628 # initialize rs2
xperm8 x3, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xefeeda211372e499 # initialize rs1
li x1, 0x4593cc31ba597060 # initialize rs2
xperm8 x6, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x602047ba5ce287cb # initialize rs1
li x15, 0x7da1d2a91c37a2d5 # initialize rs2
xperm8 x24, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x06e5a8ceeb558378 # initialize rs1
li x29, 0xc8d751ba3a631c08 # initialize rs2
xperm8 x18, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x15c1a9d90734815b # initialize rs1
li x27, 0xb436b36d3d63dc89 # initialize rs2
xperm8 x12, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x272e78b578efe40a # initialize rs1
li x6, 0x83857d1bc939a40f # initialize rs2
xperm8 x27, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xcec6e8834e6bf39f # initialize rs1
li x29, 0x0e28937441fd20fb # initialize rs2
xperm8 x24, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xc1790a7ec0ecc518 # initialize rs1
li x17, 0x1034aba76cb3a460 # initialize rs2
xperm8 x24, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x17996146f780007b # initialize rs1
li x10, 0x114f189cb799daf7 # initialize rs2
xperm8 x21, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x02b6e4b65143de9f # initialize rs1
li x27, 0x1df1958c87cff857 # initialize rs2
xperm8 x6, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x9e4437f81a65b347 # initialize rs1
li x27, 0xd4e51abf04804bf1 # initialize rs2
xperm8 x6, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x4a40a9f3a4921304 # initialize rs1
li x9, 0x042bb69290d85073 # initialize rs2
xperm8 x29, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x16eb32eb5859c91c # initialize rs1
li x6, 0x1dbf1f6849d068de # initialize rs2
xperm8 x9, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x76e6d0c826c94372 # initialize rs1
li x23, 0xc5d03fa27ad1c43d # initialize rs2
xperm8 x9, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xbaacd2c79bf4b116 # initialize rs1
li x2, 0x99b460f902ae2885 # initialize rs2
xperm8 x19, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x9c2374e1ba94baea # initialize rs1
li x6, 0x63a49c26b6b8ef96 # initialize rs2
xperm8 x30, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xf83407ff15526f43 # initialize rs1
li x6, 0xd8b53b444e06505e # initialize rs2
xperm8 x19, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x0c947e36470fcb50 # initialize rs1
li x13, 0x2887fc7d5a9f7b10 # initialize rs2
xperm8 x9, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x261bca2dbff1dd10 # initialize rs1
li x17, 0xf05cac43733334ce # initialize rs2
xperm8 x10, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x7bad9f6e1fde6e4b # initialize rs1
li x23, 0x50063fcdd4e8fa95 # initialize rs2
xperm8 x7, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x18, 0x82f6eec13aca5444 # initialize rs1
li x0, 0x1adcb3f4b8208fbe # initialize rs2
xperm8 x28, x18, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x16, 0x474b0db09900a650 # initialize rs1
li x1, 0xd58c2d9b83e963e1 # initialize rs2
xperm8 x3, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x7, 0xcdb398c44f3dae0e # initialize rs1
li x2, 0x99c47c1551e5c96a # initialize rs2
xperm8 x19, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x19, 0x1685527bd5c9bb70 # initialize rs1
li x3, 0xbeea40fa7fb6b7da # initialize rs2
xperm8 x20, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x16, 0x10d5a8ee141fea57 # initialize rs1
li x4, 0x95c0ed66bbf049a4 # initialize rs2
xperm8 x1, x16, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x14, 0xe5a02631627de5c1 # initialize rs1
li x5, 0xbe99711cb6d2402a # initialize rs2
xperm8 x27, x14, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x5950708d8917ba6c # initialize rs1
li x6, 0xe8a873a862821d5c # initialize rs2
xperm8 x8, x27, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x8, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0xfb8489755917c49f # initialize rs1
li x7, 0xe513a8de85c7190d # initialize rs2
xperm8 x25, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x25, 0xdef4210890f63565 # initialize rs1
li x8, 0xb196e6f5e0e4275f # initialize rs2
xperm8 x7, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x20, 0x63b5781d6abc6561 # initialize rs1
li x9, 0xb1d469fa9004f28f # initialize rs2
xperm8 x10, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x27, 0x1106c62677564a7a # initialize rs1
li x10, 0x79b4055fe8e07ba5 # initialize rs2
xperm8 x29, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x9, 0xdc305dd01f4b9565 # initialize rs1
li x11, 0xfa6ccee2e33bc8c6 # initialize rs2
xperm8 x16, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x23, 0xa14e2b23ac7c57cd # initialize rs1
li x12, 0xb813a8d9ef441784 # initialize rs2
xperm8 x1, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x9, 0xedfaafa2ea162f5d # initialize rs1
li x13, 0x605d242e20f78703 # initialize rs2
xperm8 x26, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x13, 0x26962d84f14ea2ea # initialize rs1
li x14, 0x99c13cc0371f2025 # initialize rs2
xperm8 x16, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x28, 0xce5f05c957adebbc # initialize rs1
li x15, 0x328ca1226400bfbd # initialize rs2
xperm8 x20, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x31, 0x4c41c0296ba50e8f # initialize rs1
li x16, 0x659ab2e3c837dcb7 # initialize rs2
xperm8 x11, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x19, 0x17a328f4601dcc9b # initialize rs1
li x17, 0x8a46620f479e3372 # initialize rs2
xperm8 x11, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x25, 0x821e8ff66c6c1b94 # initialize rs1
li x18, 0xa31c59215abe3f77 # initialize rs2
xperm8 x30, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x30, 0x1b3041f7053e4928 # initialize rs1
li x19, 0xefefed8eee57a705 # initialize rs2
xperm8 x29, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x19, 0x72125b1013d91b81 # initialize rs1
li x20, 0x276552eb10776129 # initialize rs2
xperm8 x7, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x19, 0x30b2e12b0e994ca8 # initialize rs1
li x21, 0x63f9d163626a5b88 # initialize rs2
xperm8 x6, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x24, 0x09a8cce5ab57f058 # initialize rs1
li x22, 0x1b21996592432b5c # initialize rs2
xperm8 x21, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x12, 0x1fac7103ea1abf9a # initialize rs1
li x23, 0xd0b2eedd4378902f # initialize rs2
xperm8 x17, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x11, 0x9ec17a353606dfdb # initialize rs1
li x24, 0xbcbcd98e41e14b46 # initialize rs2
xperm8 x19, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x23, 0xee591520d186742a # initialize rs1
li x25, 0xecc1c48e55940ec7 # initialize rs2
xperm8 x7, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x14, 0xd4bc15f195308eb4 # initialize rs1
li x26, 0x0683f7d4ed0f1e8c # initialize rs2
xperm8 x12, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x23, 0x87b04d8e7046f9ff # initialize rs1
li x27, 0x4fc349b000582da4 # initialize rs2
xperm8 x12, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x3, 0x6a5fa39accfdc3f4 # initialize rs1
li x28, 0x7188dad8b37d2e5f # initialize rs2
xperm8 x13, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x6, 0x8e75d39bf42279f7 # initialize rs1
li x29, 0x797e1c37a0f9688e # initialize rs2
xperm8 x5, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x1, 0x0153aa1bb085c500 # initialize rs1
li x30, 0x6cb8325f7ce8b1ba # initialize rs2
xperm8 x13, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x11, 0x3f4f33148da04b29 # initialize rs1
li x31, 0x4dd6ca7dfc357ce0 # initialize rs2
xperm8 x17, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 504)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0xbe4f888d852203b6 # initialize rs1
li x3, 0xcb323609f8caeece # initialize rs2
xperm8 x0, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x7, 0xa7b0ecdd04fbfe70 # initialize rs1
li x27, 0x455bd810ae9c2b2c # initialize rs2
xperm8 x1, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x16, 0x7c966a5b83f15e5c # initialize rs1
li x21, 0x3d1a7bc898f6cf8a # initialize rs2
xperm8 x2, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x24, 0xbeb732cff2e76095 # initialize rs1
li x9, 0x0a0074f70966fbb9 # initialize rs2
xperm8 x3, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x24, 0x402b6c50f5fc6c02 # initialize rs1
li x14, 0x9d433c3863d76a93 # initialize rs2
xperm8 x4, x24, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0x5ba7c1aed786d9ce # initialize rs1
li x28, 0xce9fc2ac58839f54 # initialize rs2
xperm8 x5, x15, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x10, 0x654f62de509bd21b # initialize rs1
li x3, 0xa33a6a87569550c0 # initialize rs2
xperm8 x6, x10, x3 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0xe31af1a8cdeb060c # initialize rs1
li x14, 0xab1689d0d8e36667 # initialize rs2
xperm8 x7, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x6, 0xbc118841928d5258 # initialize rs1
li x5, 0x767cb3fa29ed65ca # initialize rs2
xperm8 x8, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x28, 0x926471137c4e32a4 # initialize rs1
li x27, 0xcb6ac1538d8ac141 # initialize rs2
xperm8 x9, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x8, 0xbedc9f9b952c4835 # initialize rs1
li x28, 0xcd430f639c644988 # initialize rs2
xperm8 x10, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x20, 0x66d0a6157a665c8b # initialize rs1
li x16, 0x3a78289bff30c003 # initialize rs2
xperm8 x11, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0x0b7d5fc3c3a275b3 # initialize rs1
li x13, 0x549c69f290755c00 # initialize rs2
xperm8 x12, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x20, 0x8f9085ddd8bda463 # initialize rs1
li x2, 0x32a2f634a5514cce # initialize rs2
xperm8 x13, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x7, 0x9d91d8b92e64ef80 # initialize rs1
li x2, 0x8104cd103ccc876f # initialize rs2
xperm8 x14, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x18, 0x4e1782c8e4142d3b # initialize rs1
li x14, 0xf93c7e0481722b9e # initialize rs2
xperm8 x15, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x11, 0xd6938ad30f70b966 # initialize rs1
li x20, 0x9c77615a78922055 # initialize rs2
xperm8 x16, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x30, 0xd9b13f188b8acb9b # initialize rs1
li x21, 0xa0eef70d778f3656 # initialize rs2
xperm8 x17, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x7, 0x4572896d5e77012c # initialize rs1
li x5, 0x7a5721020da5a47c # initialize rs2
xperm8 x18, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x2, 0xac5fc3b133c92945 # initialize rs1
li x23, 0x9ae3034924b7d119 # initialize rs2
xperm8 x19, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x18, 0x5cc578a5e07b19f9 # initialize rs1
li x24, 0xac5e6c17562e3dc6 # initialize rs2
xperm8 x20, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x19, 0xdfd2f140680553bc # initialize rs1
li x8, 0xc0ec3c977be98da9 # initialize rs2
xperm8 x21, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x20, 0x335bc44d98f230d0 # initialize rs1
li x13, 0xbd9bfc6b3a6b3320 # initialize rs2
xperm8 x22, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x24, 0x5cfe8faacd0b6e8c # initialize rs1
li x10, 0x8fb55de06f132330 # initialize rs2
xperm8 x23, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x9, 0x7a6928cb353ebed0 # initialize rs1
li x22, 0x60c266a6f1364584 # initialize rs2
xperm8 x24, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0x9e0474317804e7db # initialize rs1
li x17, 0x7c71dee3ccf6dfc5 # initialize rs2
xperm8 x25, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x13, 0xa4b9b1a502ee429c # initialize rs1
li x18, 0xd1ca0963ae845288 # initialize rs2
xperm8 x26, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0x62c3cfc0568b450f # initialize rs1
li x14, 0x4753cd4af4fdd2c0 # initialize rs2
xperm8 x27, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x19, 0xc97f12eb75cd7474 # initialize rs1
li x22, 0x5e8113056cf0fabd # initialize rs2
xperm8 x28, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x21, 0xa7425418740e3e6d # initialize rs1
li x24, 0x05443e7fdd27d843 # initialize rs2
xperm8 x29, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x5d70128607af27ab # initialize rs1
li x25, 0x98e5bae68093f899 # initialize rs2
xperm8 x30, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0x75c3aa9f4d0746ac # initialize rs1
li x29, 0x8e3b9e46e7055a38 # initialize rs2
xperm8 x31, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x10, 0x0000000000000000 # initialize rs1
li x15, 0x3e86e61777255b5c # initialize rs2
xperm8 x31, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x21, 0x0000000000000001 # initialize rs1
li x28, 0x7a48a115834a5d00 # initialize rs2
xperm8 x27, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x11, 0x0000000000000002 # initialize rs1
li x5, 0x12e57aac54bc02df # initialize rs2
xperm8 x30, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x23, 0x8000000000000000 # initialize rs1
li x27, 0x16bf80a9812ee1e6 # initialize rs2
xperm8 x5, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x11, 0x8000000000000001 # initialize rs1
li x17, 0xaf0972e818c667f7 # initialize rs2
xperm8 x30, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x27, 0x287063ec4ebf887c # initialize rs2
xperm8 x15, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x14, 0x7ffffffffffffffe # initialize rs1
li x25, 0x891ec298df0cd718 # initialize rs2
xperm8 x31, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x8, 0xffffffffffffffff # initialize rs1
li x18, 0x3f4740546d534065 # initialize rs2
xperm8 x3, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
li x23, 0x303486a177426992 # initialize rs2
xperm8 x24, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x7d679c7af2fae1d8 # initialize rs2
xperm8 x19, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xf8b76c213be9b25d # initialize rs2
xperm8 x19, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x29, 0x5555555555555555 # initialize rs1
li x3, 0x0f36e820c1ed194b # initialize rs2
xperm8 x28, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x11, 0x00000000ffffffff # initialize rs1
li x30, 0x2d43bb439fd2646f # initialize rs2
xperm8 x6, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0x00000000fffffffe # initialize rs1
li x14, 0xf7fd194308d7d60b # initialize rs2
xperm8 x2, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x6, 0x0000000100000000 # initialize rs1
li x27, 0x4748f5392b38fda1 # initialize rs2
xperm8 x26, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x3, 0x0000000100000001 # initialize rs1
li x27, 0xa679f065daf2e8ee # initialize rs2
xperm8 x29, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x18, 0xb6692d3a5ef1bce6 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
xperm8 x28, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x21, 0x3150fa076003e147 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
xperm8 x17, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x3, 0xf34bd694aba5ac23 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
xperm8 x17, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x24, 0x7b3c98200ee8a540 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
xperm8 x9, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x5, 0x72386de5c2150e56 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
xperm8 x13, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x5, 0x3a66d55ed315db1a # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
xperm8 x8, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x29, 0x552e297865a4d0c6 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
xperm8 x19, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x29, 0xbb0d347fe002faa3 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
xperm8 x24, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x15, 0x6edc5c93b4ef1561 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
xperm8 x27, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x14, 0x881dba73fa1fb647 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x8, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xf43c05b60c3970ef # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x27, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x29, 0x6535a5f0cc1a2897 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
xperm8 x20, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x9, 0x3ddc9c53c1b30af0 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
xperm8 x7, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x26, 0x9a4d42679c6b250a # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
xperm8 x22, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x17, 0x67ecdcd46f57a545 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
xperm8 x11, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x9, 0x443a7d3fb1405325 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
xperm8 x22, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x3, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
xperm8 x6, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x20, 0x0000000000000000 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
xperm8 x24, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x16, 0x0000000000000000 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
xperm8 x26, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x27, 0x0000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
xperm8 x3, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x7, 0x0000000000000000 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
xperm8 x24, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x27, 0x0000000000000000 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
xperm8 x2, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000000000000 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
xperm8 x28, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x10, 0x0000000000000000 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
xperm8 x17, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x31, 0x0000000000000000 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
xperm8 x3, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x7, 0x0000000000000000 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x6, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x0000000000000000 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x31, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x15, 0x0000000000000000 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
xperm8 x25, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x17, 0x0000000000000000 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
xperm8 x19, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x3, 0x0000000000000000 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
xperm8 x16, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x24, 0x0000000000000000 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
xperm8 x27, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x22, 0x0000000000000000 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
xperm8 x2, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x28, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
xperm8 x19, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x27, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
xperm8 x28, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x29, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
xperm8 x1, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x27, 0x0000000000000001 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
xperm8 x6, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x20, 0x0000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
xperm8 x17, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x9, 0x0000000000000001 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
xperm8 x11, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000000000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
xperm8 x12, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x25, 0x0000000000000001 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
xperm8 x11, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000000000001 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
xperm8 x28, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000000000001 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x16, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x0000000000000001 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x29, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x9, 0x0000000000000001 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
xperm8 x28, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x15, 0x0000000000000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
xperm8 x2, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x8, 0x0000000000000001 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
xperm8 x1, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x6, 0x0000000000000001 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
xperm8 x17, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x11, 0x0000000000000001 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
xperm8 x1, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x10, 0x0000000000000002 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
xperm8 x3, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x2, 0x0000000000000002 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
xperm8 x9, x2, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x7, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
xperm8 x28, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x16, 0x0000000000000002 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
xperm8 x23, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x6, 0x0000000000000002 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
xperm8 x28, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000000000002 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
xperm8 x9, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x30, 0x0000000000000002 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
xperm8 x9, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x10, 0x0000000000000002 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
xperm8 x19, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x12, 0x0000000000000002 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
xperm8 x26, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000000000002 # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x31, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000000000002 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x26, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x22, 0x0000000000000002 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
xperm8 x16, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x11, 0x0000000000000002 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
xperm8 x10, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
xperm8 x23, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x14, 0x0000000000000002 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
xperm8 x24, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x16, 0x0000000000000002 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
xperm8 x6, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x8, 0x8000000000000000 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
xperm8 x11, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x15, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
xperm8 x23, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x23, 0x8000000000000000 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
xperm8 x12, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x18, 0x8000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
xperm8 x19, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x29, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
xperm8 x22, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x25, 0x8000000000000000 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
xperm8 x8, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
xperm8 x29, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x24, 0x8000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
xperm8 x19, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x17, 0x8000000000000000 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
xperm8 x3, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x23, 0x8000000000000000 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x28, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x8000000000000000 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x16, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x11, 0x8000000000000000 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
xperm8 x26, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x15, 0x8000000000000000 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
xperm8 x19, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x26, 0x8000000000000000 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
xperm8 x1, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x18, 0x8000000000000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
xperm8 x2, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x28, 0x8000000000000000 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
xperm8 x12, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x12, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
xperm8 x3, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x31, 0x8000000000000001 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
xperm8 x5, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x13, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
xperm8 x27, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x24, 0x8000000000000001 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
xperm8 x20, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x20, 0x8000000000000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
xperm8 x22, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x19, 0x8000000000000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
xperm8 x5, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x22, 0x8000000000000001 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
xperm8 x17, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x1, 0x8000000000000001 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
xperm8 x9, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x29, 0x8000000000000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
xperm8 x5, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x18, 0x8000000000000001 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x11, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x8000000000000001 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x3, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x8, 0x8000000000000001 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
xperm8 x31, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x20, 0x8000000000000001 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
xperm8 x28, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x10, 0x8000000000000001 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
xperm8 x11, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x17, 0x8000000000000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
xperm8 x2, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x9, 0x8000000000000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
xperm8 x20, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x7, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
xperm8 x9, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x26, 0x7fffffffffffffff # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
xperm8 x8, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x23, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
xperm8 x19, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x9, 0x7fffffffffffffff # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
xperm8 x3, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x10, 0x7fffffffffffffff # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
xperm8 x11, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
xperm8 x26, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x28, 0x7fffffffffffffff # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
xperm8 x17, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
xperm8 x8, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x6, 0x7fffffffffffffff # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
xperm8 x8, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x31, 0x7fffffffffffffff # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x11, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x7fffffffffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x20, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x3, 0x7fffffffffffffff # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
xperm8 x29, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x29, 0x7fffffffffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
xperm8 x8, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x7, 0x7fffffffffffffff # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
xperm8 x11, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x14, 0x7fffffffffffffff # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
xperm8 x27, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x1, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
xperm8 x10, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x2, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
xperm8 x8, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x19, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
xperm8 x10, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x7, 0x7ffffffffffffffe # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
xperm8 x27, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x24, 0x7ffffffffffffffe # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
xperm8 x16, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x6, 0x7ffffffffffffffe # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
xperm8 x11, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x22, 0x7ffffffffffffffe # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
xperm8 x17, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x30, 0x7ffffffffffffffe # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
xperm8 x7, x30, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x11, 0x7ffffffffffffffe # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
xperm8 x15, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
xperm8 x31, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x30, 0x7ffffffffffffffe # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x20, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x7ffffffffffffffe # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x3, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x11, 0x7ffffffffffffffe # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
xperm8 x24, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x7, 0x7ffffffffffffffe # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
xperm8 x17, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x28, 0x7ffffffffffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
xperm8 x6, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x7, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
xperm8 x3, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x30, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
xperm8 x12, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x5, 0xffffffffffffffff # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
xperm8 x27, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x17, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
xperm8 x11, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x15, 0xffffffffffffffff # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
xperm8 x24, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x24, 0xffffffffffffffff # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
xperm8 x25, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x18, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
xperm8 x19, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x6, 0xffffffffffffffff # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
xperm8 x2, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x30, 0xffffffffffffffff # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
xperm8 x29, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x12, 0xffffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
xperm8 x9, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x22, 0xffffffffffffffff # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
xperm8 x2, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x2, 0xffffffffffffffff # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x28, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0xffffffffffffffff # initialize rs1
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x16, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x21, 0xffffffffffffffff # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
xperm8 x1, x21, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
xperm8 x5, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x22, 0xffffffffffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
xperm8 x15, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x27, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
xperm8 x1, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x27, 0xffffffffffffffff # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
xperm8 x2, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x9, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
xperm8 x3, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x13, 0xfffffffffffffffe # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
xperm8 x15, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x1, 0xfffffffffffffffe # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
xperm8 x21, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x3, 0xfffffffffffffffe # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
xperm8 x27, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x15, 0xfffffffffffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
xperm8 x23, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x21, 0xfffffffffffffffe # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
xperm8 x31, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x14, 0xfffffffffffffffe # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
xperm8 x9, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x30, 0xfffffffffffffffe # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
xperm8 x13, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
xperm8 x12, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x15, 0xfffffffffffffffe # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x24, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xfffffffffffffffe # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x5, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x20, 0xfffffffffffffffe # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
xperm8 x17, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x22, 0xfffffffffffffffe # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
xperm8 x21, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
xperm8 x29, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x13, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
xperm8 x17, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x8, 0xfffffffffffffffe # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
xperm8 x9, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
xperm8 x26, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
xperm8 x19, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
xperm8 x8, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
xperm8 x29, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
xperm8 x25, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
xperm8 x10, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
xperm8 x14, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
xperm8 x22, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
xperm8 x15, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x31, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x17, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
xperm8 x18, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
xperm8 x28, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
xperm8 x17, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
xperm8 x21, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
xperm8 x27, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
xperm8 x2, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
xperm8 x31, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
xperm8 x8, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
xperm8 x1, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
xperm8 x9, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
xperm8 x22, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
xperm8 x28, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
xperm8 x5, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
xperm8 x24, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x16, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x18, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
xperm8 x24, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
xperm8 x19, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
xperm8 x13, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
xperm8 x21, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
xperm8 x17, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x2, 0x5555555555555555 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
xperm8 x20, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x19, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
xperm8 x8, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x16, 0x5555555555555555 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
xperm8 x11, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x29, 0x5555555555555555 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
xperm8 x15, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x19, 0x5555555555555555 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
xperm8 x2, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x17, 0x5555555555555555 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
xperm8 x6, x17, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x19, 0x5555555555555555 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
xperm8 x16, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x16, 0x5555555555555555 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
xperm8 x31, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x28, 0x5555555555555555 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
xperm8 x15, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x27, 0x5555555555555555 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x29, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x5555555555555555 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x16, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x9, 0x5555555555555555 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
xperm8 x25, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
xperm8 x29, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x27, 0x5555555555555555 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
xperm8 x24, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x5, 0x5555555555555555 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
xperm8 x30, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x16, 0x5555555555555555 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
xperm8 x30, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x30, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
xperm8 x15, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x20, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
xperm8 x30, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x13, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
xperm8 x31, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x9, 0x00000000ffffffff # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
xperm8 x19, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x28, 0x00000000ffffffff # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
xperm8 x26, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x1, 0x00000000ffffffff # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
xperm8 x22, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x28, 0x00000000ffffffff # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
xperm8 x19, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
xperm8 x26, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x9, 0x00000000ffffffff # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
xperm8 x5, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x29, 0x00000000ffffffff # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x31, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x00000000ffffffff # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x13, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x11, 0x00000000ffffffff # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
xperm8 x23, x11, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x16, 0x00000000ffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
xperm8 x5, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x8, 0x00000000ffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
xperm8 x3, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x15, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
xperm8 x13, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x12, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
xperm8 x30, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x14, 0x00000000fffffffe # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
xperm8 x13, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x5, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
xperm8 x17, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x1, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
xperm8 x31, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x11, 0x00000000fffffffe # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
xperm8 x15, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x30, 0x00000000fffffffe # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
xperm8 x5, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x11, 0x00000000fffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
xperm8 x14, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
xperm8 x30, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x2, 0x00000000fffffffe # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
xperm8 x11, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x31, 0x00000000fffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
xperm8 x29, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x26, 0x00000000fffffffe # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x21, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x00000000fffffffe # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x1, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x21, 0x00000000fffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
xperm8 x10, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x1, 0x00000000fffffffe # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
xperm8 x22, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x30, 0x00000000fffffffe # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
xperm8 x11, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x20, 0x00000000fffffffe # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
xperm8 x13, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x19, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
xperm8 x12, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x12, 0x0000000100000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
xperm8 x15, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x12, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000001 # initialize rs2
xperm8 x23, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x14, 0x0000000100000000 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
xperm8 x27, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x29, 0x0000000100000000 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
xperm8 x26, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x25, 0x0000000100000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
xperm8 x9, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x19, 0x0000000100000000 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
xperm8 x30, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x6, 0x0000000100000000 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
xperm8 x12, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x15, 0x0000000100000000 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
xperm8 x24, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000100000000 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
xperm8 x30, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x6, 0x0000000100000000 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x26, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x0000000100000000 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x15, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x18, 0x0000000100000000 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
xperm8 x15, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x13, 0x0000000100000000 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
xperm8 x2, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x30, 0x0000000100000000 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
xperm8 x20, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x19, 0x0000000100000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
xperm8 x9, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x31, 0x0000000100000000 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
xperm8 x3, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x2, 0x0000000100000001 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
xperm8 x8, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x6, 0x0000000100000001 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
xperm8 x10, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x14, 0x0000000100000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
xperm8 x20, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x3, 0x0000000100000001 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
xperm8 x21, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x21, 0x0000000100000001 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
xperm8 x22, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000001 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
xperm8 x7, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x19, 0x0000000100000001 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
xperm8 x5, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x11, 0x0000000100000001 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
xperm8 x28, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x2, 0x0000000100000001 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
xperm8 x14, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x10, 0x0000000100000001 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
xperm8 x28, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x0000000100000001 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
xperm8 x23, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x22, 0x0000000100000001 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
xperm8 x3, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x3, 0x0000000100000001 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
xperm8 x21, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x25, 0x0000000100000001 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
xperm8 x2, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x30, 0x0000000100000001 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
xperm8 x15, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x12, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
xperm8 x23, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x83daf43482272907 # initialize rs1
li x0, 0xac39dda6adb4bbb4 # initialize rs2
xperm8 x28, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x53ece73ecf6f5761 # initialize rs1
li x1, 0x535a70f6a9a07e9d # initialize rs2
xperm8 x13, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x1cbf1fc5ea63e72e # initialize rs1
li x2, 0xf20306c5837e7fb7 # initialize rs2
xperm8 x9, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x86d96ace10f9501d # initialize rs1
li x3, 0xf0b65a2aea351a57 # initialize rs2
xperm8 x25, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x5359706ee20e6f89 # initialize rs1
li x4, 0xacdca10df3b6afd2 # initialize rs2
xperm8 x7, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x93e7e06414759123 # initialize rs1
li x5, 0x48da1863c9b4f87d # initialize rs2
xperm8 x24, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd6b1b85065442aad # initialize rs1
li x6, 0x99b3bfa7261e9627 # initialize rs2
xperm8 x15, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x15, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x48acbc14e60a7ac7 # initialize rs1
li x7, 0x874c9e4ca87d2d5a # initialize rs2
xperm8 x18, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x84fa30ff98302a93 # initialize rs1
li x8, 0x6dc9a49dc6258d5d # initialize rs2
xperm8 x19, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xa9c7077edb539c2e # initialize rs1
li x9, 0xd18384110b0ba1fc # initialize rs2
xperm8 x30, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xbf25071694e0797b # initialize rs1
li x10, 0x415c23c20c2c0834 # initialize rs2
xperm8 x28, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xf2b92c2886e8e656 # initialize rs1
li x11, 0x1d4457f3b03dc585 # initialize rs2
xperm8 x23, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x788a83a6f5bf825b # initialize rs1
li x12, 0x643b7240707f9582 # initialize rs2
xperm8 x2, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x2dc1f28b143b42fa # initialize rs1
li x13, 0xb53539472d5ebc4b # initialize rs2
xperm8 x14, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xba8c1cdbd2388082 # initialize rs1
li x14, 0x9cc586763c195ea7 # initialize rs2
xperm8 x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x431f449f1083a231 # initialize rs1
li x15, 0xeea997d87d418b83 # initialize rs2
xperm8 x20, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x12e0bc3ff780d713 # initialize rs1
li x16, 0xdef88583373391f2 # initialize rs2
xperm8 x10, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xfbd66b90c852b38b # initialize rs1
li x17, 0xa99462429b53f34d # initialize rs2
xperm8 x9, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x3462431a64fe712b # initialize rs1
li x18, 0xd1838169cb81d9ce # initialize rs2
xperm8 x17, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xa8fda49220d20097 # initialize rs1
li x19, 0x16888798faccd4ca # initialize rs2
xperm8 x28, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xdbba329b9d86a060 # initialize rs1
li x20, 0xba5235e80d7c3add # initialize rs2
xperm8 x16, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x47669974c14bb0e4 # initialize rs1
li x21, 0xa9536de969f99e8d # initialize rs2
xperm8 x3, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xf7f197a59f9af054 # initialize rs1
li x22, 0x152ccd136718cd0c # initialize rs2
xperm8 x7, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x1918c148771441ef # initialize rs1
li x23, 0xf23812289b1e5542 # initialize rs2
xperm8 x22, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xf1fd4bd10be16a37 # initialize rs1
li x24, 0xabba8594f701a865 # initialize rs2
xperm8 x17, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x282e29cd67feba1a # initialize rs1
li x25, 0xf858604d3ae516f5 # initialize rs2
xperm8 x8, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xd251414b7637e452 # initialize rs1
li x26, 0x17f1bb420a1ae2d4 # initialize rs2
xperm8 x5, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x1aa82c65b69f9a05 # initialize rs1
li x27, 0x888e53c38f87e9b6 # initialize rs2
xperm8 x8, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xf35dc974df864262 # initialize rs1
li x28, 0x0a1bd68140efaccd # initialize rs2
xperm8 x29, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x35391cb6535ba88d # initialize rs1
li x29, 0x2b1fad0656c6e03a # initialize rs2
xperm8 x31, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xe9bfb6f2dd76c38f # initialize rs1
li x30, 0x65b25084f69538d7 # initialize rs2
xperm8 x9, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x82519c01192f28e4 # initialize rs1
li x31, 0x6c283b8fc3cf0541 # initialize rs2
xperm8 x1, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x58ea10d6202db2da # initialize rs1
li x16, 0xd7ec98639ce94b18 # initialize rs2
xperm8 x0, x0, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xe89c703b0b59d37a # initialize rs1
li x14, 0xcb06d5153e05f07d # initialize rs2
xperm8 x1, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xc9685dc903fe90c8 # initialize rs1
li x21, 0xae6d70df95358f2e # initialize rs2
xperm8 x2, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xa1c491cedfad68af # initialize rs1
li x18, 0xb0680329c556ca8e # initialize rs2
xperm8 x3, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x1de8d515b9bd4699 # initialize rs1
li x2, 0x2a9fe7c93216e34d # initialize rs2
xperm8 x4, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x346be5779c7b8a79 # initialize rs1
li x27, 0x1c7011c974d02a27 # initialize rs2
xperm8 x5, x5, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x0bf324dc8d996af1 # initialize rs1
li x25, 0xe7d191d09d943c34 # initialize rs2
xperm8 x6, x6, x25 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3f0c84ca42d0bc37 # initialize rs1
li x25, 0xa6e9c5a51de32459 # initialize rs2
xperm8 x7, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xe23c2777c5ba2de7 # initialize rs1
li x18, 0xff2099ba11fa4b84 # initialize rs2
xperm8 x8, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x1ebcda545cb38dec # initialize rs1
li x19, 0xa43807183ef18402 # initialize rs2
xperm8 x9, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc1d7929740c1ef07 # initialize rs1
li x27, 0x3c3346f6291c2cfd # initialize rs2
xperm8 x10, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x4cc9f9e404f43dfa # initialize rs1
li x31, 0xa0015f2cadde3665 # initialize rs2
xperm8 x11, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3dd7037f203020b0 # initialize rs1
li x12, 0xedb3319dc6855fab # initialize rs2
xperm8 x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x208090cef5c26c54 # initialize rs1
li x23, 0xc43067421c298261 # initialize rs2
xperm8 x13, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x94e6f5837ef35715 # initialize rs1
li x11, 0x98739ea50d9457de # initialize rs2
xperm8 x14, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x617b9ac2034d4354 # initialize rs1
li x10, 0xf8802e8068e77cb1 # initialize rs2
xperm8 x15, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xb63f3860ccd174dc # initialize rs1
li x25, 0x280aed0120170487 # initialize rs2
xperm8 x16, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x752dc13d7c5760fe # initialize rs1
li x18, 0x2e15103efcc49567 # initialize rs2
xperm8 x17, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x8881186b51ebffcf # initialize rs1
li x29, 0x92b4c219982d27bd # initialize rs2
xperm8 x18, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x9463427bad3e6199 # initialize rs1
li x31, 0xca9352f81efa6338 # initialize rs2
xperm8 x19, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x51ae0151be5c6764 # initialize rs1
li x8, 0xae0248251b3e412b # initialize rs2
xperm8 x20, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xae991eabfee3d2f6 # initialize rs1
li x5, 0x3daa6ee1eda469ea # initialize rs2
xperm8 x21, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x45ac0234bcc92a83 # initialize rs1
li x15, 0x299e95721ac9d75a # initialize rs2
xperm8 x22, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xd96357a86d85a5bd # initialize rs1
li x13, 0xa8aaf4430ecffe7f # initialize rs2
xperm8 x23, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xb7f56272a3b6f1b3 # initialize rs1
li x31, 0x2db4d759b72d2b5c # initialize rs2
xperm8 x24, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x6ee608f4f66b28e9 # initialize rs1
li x13, 0x2eca183966d72a61 # initialize rs2
xperm8 x25, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x556002b4858b9d8a # initialize rs1
li x24, 0x7f76608bd45766a2 # initialize rs2
xperm8 x26, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x65b769658e91b32b # initialize rs1
li x9, 0x73cc388d672b2221 # initialize rs2
xperm8 x27, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x0ff4a2f8ddf274c1 # initialize rs1
li x30, 0x4aecf9c1b9fa7938 # initialize rs2
xperm8 x28, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x5cc50fc894f637d1 # initialize rs1
li x6, 0x0d43cc345ee1c5d1 # initialize rs2
xperm8 x29, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xd650b8c5faa5f3ab # initialize rs1
li x5, 0xaa6beb9a033659da # initialize rs2
xperm8 x30, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x1108f1ac6f6bda10 # initialize rs1
li x21, 0x4a0d37857fd0e2c8 # initialize rs2
xperm8 x31, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x29, 0x634025a9abe27582 # initialize rs1
li x0, 0x9129dc07198ec88d # initialize rs2
xperm8 x0, x29, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x28, 0xf4314b9b41621f6c # initialize rs1
li x1, 0x2f1d183a9c05f88c # initialize rs2
xperm8 x1, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x18, 0x1762184b00a7e47c # initialize rs1
li x2, 0x919446b410474d5c # initialize rs2
xperm8 x2, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x13, 0xe41ab349759fad2e # initialize rs1
li x3, 0xfbe27cd5c2bf699f # initialize rs2
xperm8 x3, x13, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x3, 0x7b9d3c2a37550a69 # initialize rs1
li x4, 0xa2f5e6b3b1098afc # initialize rs2
xperm8 x4, x3, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0xcd11dc48ef50da11 # initialize rs1
li x5, 0xa9161e078c43fb90 # initialize rs2
xperm8 x5, x17, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0x9ab62f5042568ea5 # initialize rs1
li x6, 0xac4628091c329fd4 # initialize rs2
xperm8 x6, x14, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x5e3a0d135a5d8213 # initialize rs1
li x7, 0x11ef3409ca38bdd4 # initialize rs2
xperm8 x7, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x10, 0x2f6eec48e73fb7c4 # initialize rs1
li x8, 0xf1a4c0651d8ca1b2 # initialize rs2
xperm8 x8, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x28, 0x2b64ebf663e08ed9 # initialize rs1
li x9, 0x43db416a93ec05ad # initialize rs2
xperm8 x9, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x5, 0xd70d33a4824911d5 # initialize rs1
li x10, 0x812bd8a253858f37 # initialize rs2
xperm8 x10, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x5, 0x30f60a716b7f9410 # initialize rs1
li x11, 0x1e265f3631891938 # initialize rs2
xperm8 x11, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x24, 0xba08cb447f10aa64 # initialize rs1
li x12, 0xd9cee5642da0c5fe # initialize rs2
xperm8 x12, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x19, 0x6134bda7b6b43829 # initialize rs1
li x13, 0x23fc72bf16496677 # initialize rs2
xperm8 x13, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x20, 0xa97415a4b4526b1b # initialize rs1
li x14, 0x4545413b93da6c5f # initialize rs2
xperm8 x14, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x25, 0x7438ac98dc7d14d8 # initialize rs1
li x15, 0xcc97ae003016362e # initialize rs2
xperm8 x15, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x17, 0x8a8b8e82949023d4 # initialize rs1
li x16, 0x01047765895eb8db # initialize rs2
xperm8 x16, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x22, 0xa43a8f8cde42b6db # initialize rs1
li x17, 0x221c9e87ef4934dd # initialize rs2
xperm8 x17, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x14, 0xcd084db7cbfe026c # initialize rs1
li x18, 0x6e445283991fd0e9 # initialize rs2
xperm8 x18, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0xa58c33c242902279 # initialize rs1
li x19, 0x7271aa53b48c581a # initialize rs2
xperm8 x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x12, 0x119916eab41ac8c9 # initialize rs1
li x20, 0x4a4121e30d029511 # initialize rs2
xperm8 x20, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x12, 0x2e25ca82bb903912 # initialize rs1
li x21, 0x54fc8fc1712238aa # initialize rs2
xperm8 x21, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0xd45061efe0f88651 # initialize rs1
li x22, 0xce8daf327ca2e2c7 # initialize rs2
xperm8 x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x6, 0xd81f81f3e30a0675 # initialize rs1
li x23, 0xf48f7f7f76b83678 # initialize rs2
xperm8 x23, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x13, 0x37021684070e3483 # initialize rs1
li x24, 0x7eb0886d131304e0 # initialize rs2
xperm8 x24, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x16, 0xf704a34af54830a3 # initialize rs1
li x25, 0x186a4bd2157e8436 # initialize rs2
xperm8 x25, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x11, 0x84599e7f0227dfbe # initialize rs1
li x26, 0x7dc09c06d05399ff # initialize rs2
xperm8 x26, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x25, 0x267cd6128f342e98 # initialize rs1
li x27, 0x4113c7a88a0bc2e9 # initialize rs2
xperm8 x27, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x7, 0x6a0136c026a101b6 # initialize rs1
li x28, 0x42f6dd20a9981f31 # initialize rs2
xperm8 x28, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x6, 0x89d42d32819d228d # initialize rs1
li x29, 0x0658eede18fe7278 # initialize rs2
xperm8 x29, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x14, 0x2605d29e1a95bf25 # initialize rs1
li x30, 0x64c342b40e32c462 # initialize rs2
xperm8 x30, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x30, 0x67fcf08064a3293a # initialize rs1
li x31, 0xd9f38d0c4b7783a6 # initialize rs2
xperm8 x31, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x47475e50d39506c9 # initialize rs1
li x0, 0x375717bf87f3394b # initialize rs2
xperm8 x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xccc8c91d54992ae9 # initialize rs1
li x1, 0x5d0b45cf54e08527 # initialize rs2
xperm8 x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xbc9e39bfd6fb3fea # initialize rs1
li x2, 0xa17d69cf99d80f4f # initialize rs2
xperm8 x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x5cbb6d4dc8d3fe51 # initialize rs1
li x3, 0xcf212b9cb6ab9633 # initialize rs2
xperm8 x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6188a412590ba56f # initialize rs1
li x4, 0xe44bbaa8fef5dbb5 # initialize rs2
xperm8 x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6dc819aa3b5a171c # initialize rs1
li x5, 0xef226c90cbe3f501 # initialize rs2
xperm8 x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x3abade8dfd517a3d # initialize rs1
li x6, 0xae6262076bfab908 # initialize rs2
xperm8 x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7e9ee97d9f4c43c7 # initialize rs1
li x7, 0xded362ebd83fe428 # initialize rs2
xperm8 x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xa76885e4ef28e449 # initialize rs1
li x8, 0x6a0e6d60e74873b7 # initialize rs2
xperm8 x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x0b7f97137cee11bf # initialize rs1
li x9, 0xbda35121c9b05437 # initialize rs2
xperm8 x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x0e76181ad68a1966 # initialize rs1
li x10, 0xf9eb235317e83c3b # initialize rs2
xperm8 x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x55c693ac18d61595 # initialize rs1
li x11, 0x2cd07e4861dc9760 # initialize rs2
xperm8 x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xe91c0b943406fa14 # initialize rs1
li x12, 0x86a1d16c60b13449 # initialize rs2
xperm8 x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x3173656f12aad9ca # initialize rs1
li x13, 0x3744f2aa9b91b06b # initialize rs2
xperm8 x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x7c96bccb5f9ace35 # initialize rs1
li x14, 0x7742d96ca53de26b # initialize rs2
xperm8 x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x30181fb532dd8df3 # initialize rs1
li x15, 0x3be0abce3548b359 # initialize rs2
xperm8 x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x3805b1d30774c0e9 # initialize rs1
li x16, 0x601153511fe02447 # initialize rs2
xperm8 x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x173ca51ab6752d79 # initialize rs1
li x17, 0x3c9cb091e23c27e6 # initialize rs2
xperm8 x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x7e773f1ea83541e4 # initialize rs1
li x18, 0x84d9d46a46e7dce2 # initialize rs2
xperm8 x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xc1038c2d8b79b9a4 # initialize rs1
li x19, 0x3e8b727b380866f7 # initialize rs2
xperm8 x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xdf234145b587d2b1 # initialize rs1
li x20, 0x204f242c36848121 # initialize rs2
xperm8 x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x92064af208a4127a # initialize rs1
li x21, 0xc89da0c5984a339d # initialize rs2
xperm8 x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0xde932762496c7128 # initialize rs1
li x22, 0xfc2c9ea78547ed07 # initialize rs2
xperm8 x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x69679296fd7b21c3 # initialize rs1
li x23, 0xa755759fc3cdfc5c # initialize rs2
xperm8 x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x1d89e28638656d11 # initialize rs1
li x24, 0x1f3c247592560dcc # initialize rs2
xperm8 x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xef17cbf7cbadf7b2 # initialize rs1
li x25, 0x42c28257f4cda366 # initialize rs2
xperm8 x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xd702e8d2baa1b9d1 # initialize rs1
li x26, 0xbeaffcc2686573eb # initialize rs2
xperm8 x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x90b3fa2f9aa1caac # initialize rs1
li x27, 0x86477febf6897fd8 # initialize rs2
xperm8 x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xa3514bec8af70aee # initialize rs1
li x28, 0x34a0d61a9531c5f7 # initialize rs2
xperm8 x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x54608234293592a2 # initialize rs1
li x29, 0x0f82ffae4f2521ef # initialize rs2
xperm8 x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x675671a630afac53 # initialize rs1
li x30, 0x0142027f8ecd31a6 # initialize rs2
xperm8 x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xc647bccec9ccfc29 # initialize rs1
li x31, 0x429b2d8b3c8f291f # initialize rs2
xperm8 x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x13, x20 # perform first operation
xperm8 x22, x5, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x14, x12 # perform first operation
xperm8 x6, x13, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x28, x9 # perform first operation
xperm8 x6, x3, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x1, x21, x22 # perform first operation
xperm8 x1, x6, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x27, x1, x18 # perform first operation
xperm8 x1, x5, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x21, x8, x11 # perform first operation
xperm8 x17, x29, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x20, x5, x1 # perform first operation
xperm8 x20, x24, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x23, x30 # perform first operation
xperm8 x16, x5, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x17, x7 # perform first operation
xperm8 x23, x16, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x28, x13 # perform first operation
xperm8 x28, x10, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x31, x10 # perform first operation
xperm8 x10, x16, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x25, x10, x14 # perform first operation
xperm8 x9, x17, x2 # perform second (triggering) operation

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
