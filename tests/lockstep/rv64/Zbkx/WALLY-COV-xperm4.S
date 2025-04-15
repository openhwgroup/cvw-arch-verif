///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbkx/WALLY-COV-xperm4.S
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
