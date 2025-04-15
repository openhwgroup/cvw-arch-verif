///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zmmul/WALLY-COV-mulhu.S
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
li x0, 0xe87a9a770d9b31d8 # initialize rs1
li x6, 0xed1d94dbf7f77f9e # initialize rs2
mulhu x3, x0, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x5711de2b8e905579 # initialize rs1
li x27, 0x32c6042379b5073b # initialize rs2
mulhu x8, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x343bed0493acdccf # initialize rs1
li x31, 0x5f0e4c6f7a2dc3d7 # initialize rs2
mulhu x29, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xa1ec1b1002ef9dd0 # initialize rs1
li x25, 0x526e8ee63527c584 # initialize rs2
mulhu x8, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x73f6d083f8be09ef # initialize rs1
li x6, 0x5808b059836da355 # initialize rs2
mulhu x9, x4, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x55e011bf5352ee22 # initialize rs1
li x13, 0x6ba58ea486fcef4d # initialize rs2
mulhu x18, x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xcd3d110f4dec1aa3 # initialize rs1
li x23, 0xdee1a81a7e31fc80 # initialize rs2
mulhu x2, x6, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8156b383ebc6690c # initialize rs1
li x6, 0x92499c6502ead586 # initialize rs2
mulhu x1, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x9e087363628cfb3e # initialize rs1
li x12, 0xac3861a7c9cbc419 # initialize rs2
mulhu x14, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x34670b7fe0ee6806 # initialize rs1
li x30, 0xde6b15d2801b1cdc # initialize rs2
mulhu x22, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb39c594db4e54cd0 # initialize rs1
li x8, 0x36dc3761f954a469 # initialize rs2
mulhu x30, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xa748715c989f1058 # initialize rs1
li x27, 0xdb5e173525ee4a15 # initialize rs2
mulhu x28, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x48a41bad17b4bcfa # initialize rs1
li x5, 0xf7eaeb31f96904f9 # initialize rs2
mulhu x29, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xb4bb03ca09b3dc26 # initialize rs1
li x7, 0xbe3d8eb15ebf8c1e # initialize rs2
mulhu x17, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x0454bde3acdeb9f7 # initialize rs1
li x1, 0x7b56e8803cb63267 # initialize rs2
mulhu x26, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x4edb7dd51a656987 # initialize rs1
li x3, 0x2fd434a3e328a27f # initialize rs2
mulhu x29, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x9e941d671f46a5c8 # initialize rs1
li x5, 0xf7485d01025eab9c # initialize rs2
mulhu x9, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xa2e4745318680eba # initialize rs1
li x5, 0x9b30d6f06f90f3d7 # initialize rs2
mulhu x1, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x9b207b494ee1ddd3 # initialize rs1
li x25, 0xba7874957dff6903 # initialize rs2
mulhu x6, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xa69120cf74ab7b04 # initialize rs1
li x18, 0x54fa2e1f0b52052c # initialize rs2
mulhu x25, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x170320191906f5a1 # initialize rs1
li x28, 0xc083351c260b2659 # initialize rs2
mulhu x23, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xd63173ed2d641d13 # initialize rs1
li x22, 0x851fb81681ec5e51 # initialize rs2
mulhu x16, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xda74e9c9e0b7e34d # initialize rs1
li x8, 0xd5b0f44e36923473 # initialize rs2
mulhu x14, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x75f56827f3f72427 # initialize rs1
li x31, 0xf1105c63f92431e3 # initialize rs2
mulhu x16, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x609c79652107626f # initialize rs1
li x1, 0xf3dd771624b64e7d # initialize rs2
mulhu x5, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x5ff019dd1673bb2a # initialize rs1
li x31, 0xa9467ff28fc01d24 # initialize rs2
mulhu x28, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xf39810a807d7a40c # initialize rs1
li x18, 0x12a47555dd6b9a5d # initialize rs2
mulhu x16, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x420c78484715b346 # initialize rs1
li x5, 0x768babab28485a38 # initialize rs2
mulhu x16, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xed366470b4e945cd # initialize rs1
li x24, 0x57f35ee32a96c015 # initialize rs2
mulhu x15, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x1f733a74c1016879 # initialize rs1
li x7, 0xb51d7d76f5914cee # initialize rs2
mulhu x11, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xb7107c4e3d1c155a # initialize rs1
li x19, 0x11930775f2ebb593 # initialize rs2
mulhu x1, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x3415008aa81224d2 # initialize rs1
li x3, 0x5ea22d9269b4ad2c # initialize rs2
mulhu x10, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x19, 0x8a0c4039dcbd99ac # initialize rs1
li x0, 0xc1b9c240415b3b51 # initialize rs2
mulhu x30, x19, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x5, 0xd1c16c2d72d9b7da # initialize rs1
li x1, 0x1ad965ce0aff5072 # initialize rs2
mulhu x17, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x8, 0xeca5b315a9ab6e73 # initialize rs1
li x2, 0x051f006bd12e8750 # initialize rs2
mulhu x12, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x30, 0xc735c58f0009a691 # initialize rs1
li x3, 0x1513327c2dc72505 # initialize rs2
mulhu x25, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x29, 0x90a1eb8d163dc984 # initialize rs1
li x4, 0xa290637feb4c32c0 # initialize rs2
mulhu x26, x29, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x28e0ab80ee42ba24 # initialize rs1
li x5, 0x49707b8b73246184 # initialize rs2
mulhu x28, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0xd2e14bac99547218 # initialize rs1
li x6, 0xf48b3296e6f5b301 # initialize rs2
mulhu x16, x21, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x16, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x22, 0x280225607a76213b # initialize rs1
li x7, 0x50c527e6df8df3a2 # initialize rs2
mulhu x1, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x26, 0x01ee68fe59dbca41 # initialize rs1
li x8, 0x8f2584c0cc3dc854 # initialize rs2
mulhu x24, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x20, 0xc875f520e89ebf62 # initialize rs1
li x9, 0xac6a588707b531a8 # initialize rs2
mulhu x31, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x13, 0xe8b3859a8c6238ba # initialize rs1
li x10, 0xb652fbc77919311b # initialize rs2
mulhu x3, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x14, 0x8eb3acd61482e03e # initialize rs1
li x11, 0x3d9fdcd85f945f33 # initialize rs2
mulhu x8, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x31, 0x6b0ea3d1f4618f10 # initialize rs1
li x12, 0xada65185363bf24b # initialize rs2
mulhu x26, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x14, 0x3129a3ba6cb9b068 # initialize rs1
li x13, 0x87ea76d4c47be9d7 # initialize rs2
mulhu x3, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x29, 0xbf85830d0cbf90dc # initialize rs1
li x14, 0x26c2dc04cc64f7df # initialize rs2
mulhu x11, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x24, 0xa5887287f1941501 # initialize rs1
li x15, 0x1824ff97ceeb5b75 # initialize rs2
mulhu x20, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x21, 0x776bd7013f8ae230 # initialize rs1
li x16, 0x2f6ca69d3c72f388 # initialize rs2
mulhu x27, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x18, 0x67f3a3d0f46a18c9 # initialize rs1
li x17, 0xcb5c925d049718b7 # initialize rs2
mulhu x20, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x29, 0xc774f98ae48eb262 # initialize rs1
li x18, 0x2575d942ad6389d9 # initialize rs2
mulhu x27, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x21, 0xf27dea0de7673620 # initialize rs1
li x19, 0xca46b58b14346ce6 # initialize rs2
mulhu x11, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x22, 0x61aee5ccf8068027 # initialize rs1
li x20, 0x5b12381ba2cb9b6f # initialize rs2
mulhu x21, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x11, 0xce01c33661868329 # initialize rs1
li x21, 0xbbfcb1931d11a67b # initialize rs2
mulhu x24, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x12, 0x5e395a320ddf3e16 # initialize rs1
li x22, 0x3ea296034071c9a3 # initialize rs2
mulhu x24, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x5, 0x1181fd5f98240f15 # initialize rs1
li x23, 0xdc7cab9244e7219c # initialize rs2
mulhu x2, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x2, 0xe4056b7c0a2263f5 # initialize rs1
li x24, 0x704b7db761c66747 # initialize rs2
mulhu x20, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x11, 0xfd42d29a85b59bc6 # initialize rs1
li x25, 0x377e1cc58fadfa4c # initialize rs2
mulhu x23, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x24, 0xcfee193ce3664e67 # initialize rs1
li x26, 0xcbef25906ac00f6c # initialize rs2
mulhu x18, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x3, 0xead929ed211cbad3 # initialize rs1
li x27, 0x2e7511c9f34da42c # initialize rs2
mulhu x30, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x27, 0x8bc15246f89d0c17 # initialize rs1
li x28, 0x0939815feb784209 # initialize rs2
mulhu x5, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x27, 0xb4a335ce5c742bc8 # initialize rs1
li x29, 0x877ac199c19bef0b # initialize rs2
mulhu x7, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x20, 0xeb0f61a4a15f3b8b # initialize rs1
li x30, 0xc1138de3b2f752a3 # initialize rs2
mulhu x24, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x15, 0x115ffe5d2617636f # initialize rs1
li x31, 0x3b26406fa250e9c2 # initialize rs2
mulhu x10, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 504)

# Testcase cp_rd (Test destination rd = x0)
li x9, 0xaa66599f4b682e92 # initialize rs1
li x3, 0x0dd8c97072815b08 # initialize rs2
mulhu x0, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x26, 0xac14f5a638eb6ab9 # initialize rs1
li x18, 0x0a545770c155aea3 # initialize rs2
mulhu x1, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x13, 0xa5d58f67b34e8835 # initialize rs1
li x5, 0xeaed4c33796b3359 # initialize rs2
mulhu x2, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x6, 0x7a947234c05c5669 # initialize rs1
li x12, 0x50d545e97f08cf18 # initialize rs2
mulhu x3, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0xf20aae31b82c1e2e # initialize rs1
li x22, 0x70986212d3dd8eb8 # initialize rs2
mulhu x4, x9, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0xcbd9c75af19e424a # initialize rs1
li x20, 0xc0c660ec0f9be24e # initialize rs2
mulhu x5, x28, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0xc4eaa07ef8678b06 # initialize rs1
li x20, 0x5ab40948effd797e # initialize rs2
mulhu x6, x24, x20 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x6, x7 # switch signature pointer register to avoid conflict with test
li x5, 0xa595e877a3bb05df # initialize rs1
li x4, 0x64bfde8fb4bc6b84 # initialize rs2
mulhu x7, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x9, 0xeccfcddca9b1806a # initialize rs1
li x23, 0x7803468f3cfd9a10 # initialize rs2
mulhu x8, x9, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x4, 0x489bcc7f59898c14 # initialize rs1
li x15, 0x7f6f6dc9fff3d5ff # initialize rs2
mulhu x9, x4, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x26, 0xd93ee64e152238d7 # initialize rs1
li x18, 0x0e21657502c2499c # initialize rs2
mulhu x10, x26, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd86431e8c144102a # initialize rs1
li x18, 0xf1dc987d8606ee89 # initialize rs2
mulhu x11, x11, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x22, 0x703e9e32362f76e9 # initialize rs1
li x21, 0x0dc29ae4a57dbe72 # initialize rs2
mulhu x12, x22, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x27, 0x6476146ea7ae3af6 # initialize rs1
li x8, 0xc7c9dde0ee0a61a1 # initialize rs2
mulhu x13, x27, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0x491fb6f59f8ffdb1 # initialize rs1
li x26, 0xa604c1d8052e1a5b # initialize rs2
mulhu x14, x16, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xa74cf740e5e45658 # initialize rs1
li x1, 0x86f716927195d208 # initialize rs2
mulhu x15, x15, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x28, 0x0134b02c768bc845 # initialize rs1
li x18, 0x7d9e52ff8eb12103 # initialize rs2
mulhu x16, x28, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x16, 0xf128a4f70c9cb69e # initialize rs1
li x17, 0xd7d3900cb5274a69 # initialize rs2
mulhu x17, x16, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x095714ec0f9d9af1 # initialize rs1
li x17, 0xb68ae80afbddad0a # initialize rs2
mulhu x18, x18, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x29, 0x27dafd0a661597ad # initialize rs1
li x14, 0xb6eb3e1d722fe259 # initialize rs2
mulhu x19, x29, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x30, 0x4af2d6bd230e5bdb # initialize rs1
li x10, 0x5dd6c5014b74c5da # initialize rs2
mulhu x20, x30, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x30, 0x82eab54624480ef2 # initialize rs1
li x21, 0x822cbb4b2a58a50b # initialize rs2
mulhu x21, x30, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x26, 0x3cbf21ddd8cfba93 # initialize rs1
li x4, 0x7e0cfb5fdaca2b3b # initialize rs2
mulhu x22, x26, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x27, 0x6c5fc82ae7bd15a0 # initialize rs1
li x24, 0x7fe11c27a9b0c053 # initialize rs2
mulhu x23, x27, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x27, 0xa1b37e2856118151 # initialize rs1
li x11, 0x3a3da958b930b737 # initialize rs2
mulhu x24, x27, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x28, 0x66e7a9da877c55ab # initialize rs1
li x19, 0xd8961c6896e23c6d # initialize rs2
mulhu x25, x28, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x29, 0x923422d0271f366b # initialize rs1
li x26, 0x41f1d25b4d15abf2 # initialize rs2
mulhu x26, x29, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x2, 0x53f2d3ff204ea4a6 # initialize rs1
li x28, 0xe958df074e5c5286 # initialize rs2
mulhu x27, x2, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x11, 0x57e740ccfa05cbb9 # initialize rs1
li x17, 0x13c9dc8387b0cea6 # initialize rs2
mulhu x28, x11, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x23, 0x9a673e5338a12b18 # initialize rs1
li x14, 0x609e1ad2c3cc44ff # initialize rs2
mulhu x29, x23, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0x0e524bf5171a49ef # initialize rs1
li x16, 0x7d1768d19202f72d # initialize rs2
mulhu x30, x18, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x17, 0xce888fabba30e055 # initialize rs1
li x5, 0x88b81cc72e11913a # initialize rs2
mulhu x31, x17, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x0000000000000000 # initialize rs1
li x3, 0x6fa6b38454a84417 # initialize rs2
mulhu x30, x20, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x2, 0x0000000000000001 # initialize rs1
li x18, 0xa87cf0c0c1356d8c # initialize rs2
mulhu x29, x2, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x29, 0x0000000000000002 # initialize rs1
li x3, 0x501552315b2d33cd # initialize rs2
mulhu x13, x29, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x9, 0x8000000000000000 # initialize rs1
li x16, 0xe9694b8c7ecaa615 # initialize rs2
mulhu x22, x9, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x18, 0x8000000000000001 # initialize rs1
li x5, 0xe7d46b007eee7cf2 # initialize rs2
mulhu x16, x18, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x24, 0x7fffffffffffffff # initialize rs1
li x30, 0xf7ba5d181445cdea # initialize rs2
mulhu x17, x24, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x18, 0x7ffffffffffffffe # initialize rs1
li x9, 0x8169386d4afeb544 # initialize rs2
mulhu x26, x18, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x10, 0xb4c79f44015de811 # initialize rs2
mulhu x9, x20, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x9, 0xb887086b66d58c5b # initialize rs2
mulhu x5, x11, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0xfdea5a8caac9637e # initialize rs2
mulhu x16, x2, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xe77972f0c7b63b01 # initialize rs2
mulhu x31, x12, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x5555555555555555 # initialize rs1
li x21, 0xf6373c36b5c1ae6a # initialize rs2
mulhu x29, x26, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x7, 0x3c22c0d509e06df7 # initialize rs2
mulhu x27, x18, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x15, 0x388cabdce0b42b6c # initialize rs2
mulhu x12, x14, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x24, 0x0000000100000000 # initialize rs1
li x27, 0xbbb560ab1ce26f5c # initialize rs2
mulhu x17, x24, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x2, 0x0000000100000001 # initialize rs1
li x1, 0xdf3298f83354b072 # initialize rs2
mulhu x14, x2, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x17, 0xacbc643541fa4c3a # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
mulhu x18, x17, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x2, 0x13abb26d37f72d85 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
mulhu x28, x2, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x11, 0x86299b5da2a249ba # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
mulhu x24, x11, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x3, 0x0069e357aeb5da04 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
mulhu x8, x3, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x13, 0x519f4919a3e275da # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
mulhu x7, x13, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x16, 0x3c3e3f2211d73d1c # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
mulhu x22, x16, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x31, 0xb93507a262893951 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
mulhu x12, x31, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x14, 0xea9d2d1fa783f3fe # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
mulhu x8, x14, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x13, 0xfd92b940e52a2861 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
mulhu x15, x13, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x7, 0x66c048e15ff7e338 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
mulhu x16, x7, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0xe0b5bf882636023f # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x2, x21, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x31, 0x9c55508c820267e9 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
mulhu x28, x31, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x30, 0x3ea95fc3985d490b # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
mulhu x12, x30, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x31, 0x632315522989efbd # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
mulhu x9, x31, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x14, 0xc7b48dcbc5aef632 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
mulhu x29, x14, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x26, 0xdcb155ca3c29c9a9 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
mulhu x20, x26, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x11, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
mulhu x16, x11, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x27, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
mulhu x18, x27, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x3, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
mulhu x20, x3, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x23, 0x0000000000000000 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
mulhu x3, x23, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x11, 0x0000000000000000 # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
mulhu x7, x11, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
mulhu x7, x24, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x11, 0x0000000000000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
mulhu x5, x11, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x14, 0x0000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
mulhu x31, x14, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x10, 0x0000000000000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
mulhu x11, x10, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x2, 0x0000000000000000 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
mulhu x17, x2, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000000000000 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x23, x31, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x1, 0x0000000000000000 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
mulhu x4, x1, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x7, 0x0000000000000000 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
mulhu x24, x7, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x11, 0x0000000000000000 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
mulhu x24, x11, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x3, 0x0000000000000000 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
mulhu x28, x3, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x10, 0x0000000000000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
mulhu x11, x10, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x9, 0x0000000000000001 # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
mulhu x26, x9, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x10, 0x0000000000000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
mulhu x27, x10, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x24, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
mulhu x27, x24, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x18, 0x0000000000000001 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
mulhu x31, x18, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x14, 0x0000000000000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
mulhu x9, x14, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x19, 0x0000000000000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
mulhu x21, x19, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x23, 0x0000000000000001 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
mulhu x15, x23, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x28, 0x0000000000000001 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
mulhu x8, x28, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000000000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
mulhu x28, x14, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000000000001 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
mulhu x20, x31, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000000000001 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x14, x5, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x13, 0x0000000000000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
mulhu x18, x13, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x17, 0x0000000000000001 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
mulhu x27, x17, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x31, 0x0000000000000001 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mulhu x24, x31, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x9, 0x0000000000000001 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
mulhu x1, x9, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x9, 0x0000000000000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mulhu x12, x9, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x12, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
mulhu x21, x12, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x21, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
mulhu x20, x21, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x20, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
mulhu x10, x20, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x18, 0x0000000000000002 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
mulhu x27, x18, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x10, 0x0000000000000002 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
mulhu x17, x10, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x5, 0x0000000000000002 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
mulhu x2, x5, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000000000002 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
mulhu x9, x3, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x13, 0x0000000000000002 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
mulhu x1, x13, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000000000002 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
mulhu x10, x30, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x1, 0x0000000000000002 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
mulhu x5, x1, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000000000002 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x17, x11, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x16, 0x0000000000000002 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
mulhu x21, x16, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x16, 0x0000000000000002 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
mulhu x20, x16, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x14, 0x0000000000000002 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
mulhu x12, x14, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x13, 0x0000000000000002 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
mulhu x25, x13, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x16, 0x0000000000000002 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
mulhu x14, x16, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x28, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
mulhu x31, x28, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x8, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
mulhu x3, x8, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x21, 0x8000000000000000 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
mulhu x3, x21, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x15, 0x8000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
mulhu x27, x15, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x4, 0x8000000000000000 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
mulhu x27, x4, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x13, 0x8000000000000000 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
mulhu x15, x13, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x15, 0x8000000000000000 # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
mulhu x9, x15, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x16, 0x8000000000000000 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
mulhu x8, x16, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x27, 0x8000000000000000 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
mulhu x31, x27, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x25, 0x8000000000000000 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
mulhu x30, x25, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x8000000000000000 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x14, x20, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x20, 0x8000000000000000 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
mulhu x18, x20, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x10, 0x8000000000000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
mulhu x8, x10, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
mulhu x27, x22, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x18, 0x8000000000000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
mulhu x3, x18, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x20, 0x8000000000000000 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mulhu x15, x20, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x26, 0x8000000000000001 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
mulhu x21, x26, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x13, 0x8000000000000001 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
mulhu x27, x13, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x2, 0x8000000000000001 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
mulhu x26, x2, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x22, 0x8000000000000001 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
mulhu x17, x22, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
mulhu x28, x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x13, 0x8000000000000001 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
mulhu x9, x13, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x2, 0x8000000000000001 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
mulhu x11, x2, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x5, 0x8000000000000001 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
mulhu x29, x5, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x16, 0x8000000000000001 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
mulhu x28, x16, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x1, 0x8000000000000001 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
mulhu x21, x1, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x8000000000000001 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x20, x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x22, 0x8000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
mulhu x30, x22, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x27, 0x8000000000000001 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
mulhu x26, x27, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x2, 0x8000000000000001 # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
mulhu x31, x2, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x18, 0x8000000000000001 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
mulhu x13, x18, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x2, 0x8000000000000001 # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
mulhu x11, x2, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x16, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
mulhu x23, x16, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x24, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
mulhu x19, x24, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x23, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
mulhu x30, x23, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x7, 0x7fffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
mulhu x3, x7, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x23, 0x7fffffffffffffff # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
mulhu x11, x23, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x27, 0x7fffffffffffffff # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
mulhu x20, x27, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x26, 0x7fffffffffffffff # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
mulhu x2, x26, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x5, 0x7fffffffffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mulhu x10, x5, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x22, 0x7fffffffffffffff # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
mulhu x30, x22, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x12, 0x7fffffffffffffff # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
mulhu x23, x12, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x7fffffffffffffff # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x27, x4, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x25, 0x7fffffffffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
mulhu x20, x25, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x1, 0x7fffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
mulhu x24, x1, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x31, 0x7fffffffffffffff # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
mulhu x9, x31, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x21, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
mulhu x10, x21, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x27, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
mulhu x20, x27, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x22, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
mulhu x15, x22, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 1792)
addi x6, x6, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x18, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
mulhu x26, x18, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x13, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
mulhu x19, x13, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x10, 0x7ffffffffffffffe # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
mulhu x9, x10, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x11, 0x7ffffffffffffffe # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
mulhu x8, x11, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x7, 0x7ffffffffffffffe # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
mulhu x8, x7, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x28, 0x7ffffffffffffffe # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
mulhu x2, x28, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x10, 0x7ffffffffffffffe # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
mulhu x2, x10, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x15, 0x7ffffffffffffffe # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
mulhu x13, x15, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x16, 0x7ffffffffffffffe # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
mulhu x30, x16, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x7ffffffffffffffe # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x15, x3, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x16, 0x7ffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mulhu x30, x16, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
mulhu x28, x23, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
mulhu x28, x26, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x2, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
mulhu x16, x2, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x9, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
mulhu x28, x9, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x28, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
mulhu x15, x28, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x15, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
mulhu x29, x15, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x14, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
mulhu x18, x14, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x7, 0xffffffffffffffff # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
mulhu x17, x7, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x1, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
mulhu x10, x1, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x22, 0xffffffffffffffff # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
mulhu x5, x22, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0xffffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
mulhu x14, x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
mulhu x8, x23, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x16, 0xffffffffffffffff # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
mulhu x5, x16, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x9, 0xffffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
mulhu x17, x9, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0xffffffffffffffff # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x24, x5, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x4, 0xffffffffffffffff # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
mulhu x11, x4, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x30, 0xffffffffffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
mulhu x22, x30, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x11, 0xffffffffffffffff # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
mulhu x14, x11, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x8, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
mulhu x25, x8, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x3, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
mulhu x23, x3, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x3, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
mulhu x8, x3, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x3, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
mulhu x1, x3, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x18, 0xfffffffffffffffe # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
mulhu x19, x18, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x8, 0xfffffffffffffffe # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
mulhu x27, x8, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x16, 0xfffffffffffffffe # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
mulhu x11, x16, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x15, 0xfffffffffffffffe # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
mulhu x20, x15, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0xfffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
mulhu x22, x27, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x24, 0xfffffffffffffffe # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
mulhu x15, x24, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
mulhu x11, x18, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x14, 0xfffffffffffffffe # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
mulhu x23, x14, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xfffffffffffffffe # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x28, x20, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x30, 0xfffffffffffffffe # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
mulhu x17, x30, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x15, 0xfffffffffffffffe # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
mulhu x19, x15, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x25, 0xfffffffffffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
mulhu x27, x25, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x29, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
mulhu x14, x29, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x1, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
mulhu x12, x1, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
mulhu x8, x23, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
mulhu x17, x16, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
mulhu x16, x2, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
mulhu x22, x14, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
mulhu x21, x23, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x2, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
mulhu x11, x2, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
mulhu x7, x10, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mulhu x2, x19, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
mulhu x16, x19, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
mulhu x23, x10, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x3, x15, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
mulhu x7, x12, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulhu x22, x31, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mulhu x19, x14, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
mulhu x11, x13, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
mulhu x23, x17, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
mulhu x26, x27, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
mulhu x12, x29, x30 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
mulhu x11, x19, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
mulhu x16, x26, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
mulhu x21, x4, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x21, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0x7fffffffffffffff # initialize rs2
mulhu x30, x26, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
mulhu x28, x11, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
mulhu x11, x29, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
mulhu x22, x11, x18 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
mulhu x9, x10, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x2, x20, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
mulhu x5, x25, x10 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
mulhu x28, x23, x9 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
mulhu x16, x29, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
mulhu x25, x17, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
mulhu x20, x2, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x8, 0x5555555555555555 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
mulhu x13, x8, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x17, 0x5555555555555555 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
mulhu x7, x17, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x7, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x27, 0x5555555555555555 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
mulhu x14, x27, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x16, 0x5555555555555555 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
mulhu x10, x16, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x21, 0x5555555555555555 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
mulhu x14, x21, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x30, 0x5555555555555555 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
mulhu x16, x30, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x5, 0x5555555555555555 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
mulhu x14, x5, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x12, 0x5555555555555555 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
mulhu x28, x12, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x30, 0x5555555555555555 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
mulhu x17, x30, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x31, 0x5555555555555555 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
mulhu x2, x31, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x5555555555555555 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x5, x31, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x5, 0x5555555555555555 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
mulhu x25, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x19, 0x5555555555555555 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
mulhu x29, x19, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x30, 0x5555555555555555 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
mulhu x18, x30, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x15, 0x5555555555555555 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
mulhu x29, x15, x12 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x23, 0x5555555555555555 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
mulhu x15, x23, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x17, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
mulhu x15, x17, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x15, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x15, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
mulhu x8, x15, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x8, 0x00000000ffffffff # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
mulhu x2, x8, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x28, 0x00000000ffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
mulhu x27, x28, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x13, 0x00000000ffffffff # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
mulhu x19, x13, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x12, 0x00000000ffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
mulhu x26, x12, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x8, 0x00000000ffffffff # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
mulhu x28, x8, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x23, 0x00000000ffffffff # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
mulhu x20, x23, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x14, 0x00000000ffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
mulhu x25, x14, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x25, 0x00000000ffffffff # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
mulhu x20, x25, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x00000000ffffffff # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x12, x18, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x19, 0x00000000ffffffff # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
mulhu x14, x19, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x30, 0x00000000ffffffff # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
mulhu x31, x30, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x17, 0x00000000ffffffff # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
mulhu x3, x17, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x11, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
mulhu x24, x11, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x24, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x21, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
mulhu x8, x21, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x26, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
mulhu x5, x26, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x26, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
mulhu x1, x26, x28 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x15, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
mulhu x25, x15, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x25, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x11, 0x00000000fffffffe # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
mulhu x23, x11, x29 # perform operation
RVTEST_SIGUPD(x6, x0, x23, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x15, 0x00000000fffffffe # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
mulhu x8, x15, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
mulhu x27, x20, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
mulhu x14, x3, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x20, 0x00000000fffffffe # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
mulhu x2, x20, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
mulhu x26, x14, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x1, 0x00000000fffffffe # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
mulhu x26, x1, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x00000000fffffffe # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x16, x25, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x23, 0x00000000fffffffe # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
mulhu x18, x23, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x5, 0x00000000fffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
mulhu x11, x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
mulhu x1, x29, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x4, 0x00000000fffffffe # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mulhu x8, x4, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x13, 0x00000000fffffffe # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
mulhu x30, x13, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x10, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
mulhu x4, x10, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x22, 0x0000000100000000 # initialize rs1
li x4, 0x0000000000000001 # initialize rs2
mulhu x18, x22, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x9, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
mulhu x18, x9, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x4, 0x0000000100000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
mulhu x31, x4, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x20, 0x0000000100000000 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
mulhu x9, x20, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000000 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
mulhu x17, x14, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000100000000 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
mulhu x10, x28, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x10, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x24, 0x0000000100000000 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
mulhu x22, x24, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x15, 0x0000000100000000 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
mulhu x14, x15, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000100000000 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
mulhu x27, x12, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000100000000 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x27, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x23, 0x0000000100000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
mulhu x18, x23, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x23, 0x0000000100000000 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
mulhu x8, x23, x13 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x20, 0x0000000100000000 # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
mulhu x11, x20, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x23, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
mulhu x9, x23, x21 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x3, 0x0000000100000000 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
mulhu x14, x3, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x8, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
mulhu x5, x8, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x7, 0x0000000100000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
mulhu x12, x7, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x9, 0x0000000100000001 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
mulhu x5, x9, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x19, 0x0000000100000001 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
mulhu x9, x19, x24 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x17, 0x0000000100000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
mulhu x1, x17, x19 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x18, 0x0000000100000001 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
mulhu x30, x18, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x7, 0x0000000100000001 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
mulhu x26, x7, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x8, 0x0000000100000001 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
mulhu x1, x8, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x23, 0x0000000100000001 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
mulhu x27, x23, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x27, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000100000001 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
mulhu x18, x21, x17 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x0000000100000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
mulhu x2, x12, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x12, 0x0000000100000001 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
mulhu x29, x12, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x2, 0x0000000100000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
mulhu x3, x2, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x11, 0x0000000100000001 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
mulhu x26, x11, x25 # perform operation
RVTEST_SIGUPD(x6, x0, x26, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x13, 0x0000000100000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
mulhu x19, x13, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x4, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
mulhu x29, x4, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x3cb9bf4423750c36 # initialize rs1
li x0, 0x719fee192769d4b6 # initialize rs2
mulhu x30, x0, x0 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x6278a2df933dff40 # initialize rs1
li x1, 0x8accd52182e66b8d # initialize rs2
mulhu x19, x1, x1 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x13c67e9c8e293862 # initialize rs1
li x2, 0xe23cbf701128e83e # initialize rs2
mulhu x14, x2, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x14, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xd05bd13b19766160 # initialize rs1
li x3, 0xd7e3f36099e90576 # initialize rs2
mulhu x2, x3, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x2, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x4, 0x9ae9c3653de70e36 # initialize rs1
li x4, 0x5361f8895028529c # initialize rs2
mulhu x1, x4, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x5, 0x029f5a2b65fd46cf # initialize rs1
li x5, 0x6ac83b3fb2d20af9 # initialize rs2
mulhu x16, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x37fe723613d71b6f # initialize rs1
li x6, 0x7a3018aaa0ab4181 # initialize rs2
mulhu x10, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x10, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xdc2ed1e2b578f795 # initialize rs1
li x7, 0x87379fb03b165617 # initialize rs2
mulhu x11, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x7cbccef14dd80f42 # initialize rs1
li x8, 0x48cae2f45d21cc73 # initialize rs2
mulhu x18, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x1dda952879526921 # initialize rs1
li x9, 0x3a6c728cd00486f4 # initialize rs2
mulhu x2, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x3db09245560fda25 # initialize rs1
li x10, 0xcf417852367f54c0 # initialize rs2
mulhu x26, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xd53e1661142b99b9 # initialize rs1
li x11, 0x606ca30784990fbf # initialize rs2
mulhu x23, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xe3fdb7712d2962e9 # initialize rs1
li x12, 0x8441917f612630ba # initialize rs2
mulhu x19, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x266362407a08c6c9 # initialize rs1
li x13, 0x0855268616465850 # initialize rs2
mulhu x9, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x3c01171b5e54698b # initialize rs1
li x14, 0xa993164cac4406cf # initialize rs2
mulhu x15, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xc434153305e8ec73 # initialize rs1
li x15, 0xec1feb241f652dea # initialize rs2
mulhu x27, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xb9175e3ab3afac7b # initialize rs1
li x16, 0x01d92cc815bbfb5a # initialize rs2
mulhu x7, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xcc7f2587737022e1 # initialize rs1
li x17, 0x34f62e68b39c1358 # initialize rs2
mulhu x28, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x486fe61819a6ba96 # initialize rs1
li x18, 0xbd657ae7370de485 # initialize rs2
mulhu x31, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x0f122c63862e9ab3 # initialize rs1
li x19, 0x0763cde937893c9d # initialize rs2
mulhu x24, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x1c43a4bec17a34cc # initialize rs1
li x20, 0x13fd9072f3cef31c # initialize rs2
mulhu x27, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x945ad7287aa40108 # initialize rs1
li x21, 0xcfba267b91ace176 # initialize rs2
mulhu x24, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x308ed5d944bf5535 # initialize rs1
li x22, 0x7c78526f8dc1c9b7 # initialize rs2
mulhu x24, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x870951f3d46ecdc3 # initialize rs1
li x23, 0x0e9a49b3871bc4c6 # initialize rs2
mulhu x21, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x19398ccf1cdaee4e # initialize rs1
li x24, 0x47d795f1a6fbfa93 # initialize rs2
mulhu x31, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x2d032d736367026f # initialize rs1
li x25, 0x42eefc43856bcfda # initialize rs2
mulhu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xaf9207de945c6a59 # initialize rs1
li x26, 0xcccb2401a80154e4 # initialize rs2
mulhu x17, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x17e5a2237b0575ba # initialize rs1
li x27, 0x5f889f0f7ddc8b6f # initialize rs2
mulhu x6, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xcbc0d24245e96730 # initialize rs1
li x28, 0xdf8659e75659c9cd # initialize rs2
mulhu x13, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xcf33a6859c4ab2d2 # initialize rs1
li x29, 0xefb5e4647d4e494f # initialize rs2
mulhu x23, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xec215b43bca1b6a5 # initialize rs1
li x30, 0x7c0da2bee0da0ccb # initialize rs2
mulhu x19, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x33f13d6d50e36354 # initialize rs1
li x31, 0xfe1249153ed93416 # initialize rs2
mulhu x2, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xf2c0eb60ced0cc8b # initialize rs1
li x9, 0xed6bb107ede5fec0 # initialize rs2
mulhu x0, x0, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xa06766aa8b1c3b09 # initialize rs1
li x21, 0x06e32d76b52a1fa6 # initialize rs2
mulhu x1, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x927a4bc48fc29993 # initialize rs1
li x24, 0x537904b6e79f770f # initialize rs2
mulhu x2, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xd325a5317af6012a # initialize rs1
li x9, 0x0172de5de5367b38 # initialize rs2
mulhu x3, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x6a1e242e15443e24 # initialize rs1
li x8, 0xf68073beaa051d48 # initialize rs2
mulhu x4, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x0240f9a38f7ce7c7 # initialize rs1
li x16, 0x3cfe7f1bdb55f6a2 # initialize rs2
mulhu x5, x5, x16 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xea4b7e3afa01602b # initialize rs1
li x18, 0x5701122b68645639 # initialize rs2
mulhu x6, x6, x18 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x310fdde54452461e # initialize rs1
li x22, 0xb4c47ce594f2701f # initialize rs2
mulhu x7, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x31f082732734c887 # initialize rs1
li x19, 0xfacd4dcd7bd2b05e # initialize rs2
mulhu x8, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xf0ce2008f8b71c43 # initialize rs1
li x25, 0x954dfb28847f9119 # initialize rs2
mulhu x9, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xea73908d54c455cb # initialize rs1
li x22, 0x3798329c9736cc34 # initialize rs2
mulhu x10, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa11d78d1fdc71a4c # initialize rs1
li x10, 0xb907f7e4cd88a4f3 # initialize rs2
mulhu x11, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x3bf3bad9a3a622e6 # initialize rs1
li x7, 0x1931dc4a6c7f76d8 # initialize rs2
mulhu x12, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x11d2b0242f515c80 # initialize rs1
li x17, 0x1f386e4a06ae02bb # initialize rs2
mulhu x13, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xe85d5d86013938b2 # initialize rs1
li x11, 0x314ec36abd2dbdd5 # initialize rs2
mulhu x14, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x0aa79d3710b0c4f7 # initialize rs1
li x19, 0xe523073e1c8a5cc9 # initialize rs2
mulhu x15, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x7dc5ddc8291b4bc3 # initialize rs1
li x14, 0xd731c0ef1d6590fb # initialize rs2
mulhu x16, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x887ac4005dcdbbf5 # initialize rs1
li x8, 0x57e8b5ac2405bcce # initialize rs2
mulhu x17, x17, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xba9b159082c46921 # initialize rs1
li x18, 0x5d8f446def5d235f # initialize rs2
mulhu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xe934e0cb02a9cce6 # initialize rs1
li x8, 0xab212ddf6859051e # initialize rs2
mulhu x19, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x0d761b58a7e8c63a # initialize rs1
li x11, 0x2ce1fb8573ff8577 # initialize rs2
mulhu x20, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xd7d8161f4f3a8e35 # initialize rs1
li x7, 0x3df610c0813964bd # initialize rs2
mulhu x21, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb4e4f45fb471d75e # initialize rs1
li x6, 0x15b8331ca35bed46 # initialize rs2
mulhu x22, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x797a0f13a51bba7e # initialize rs1
li x22, 0xc284b28a7eaeab77 # initialize rs2
mulhu x23, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xac79096616875750 # initialize rs1
li x14, 0x450c7836ea00bf9b # initialize rs2
mulhu x24, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x7bd81e249568dfde # initialize rs1
li x3, 0xeac3677c64ef4dcf # initialize rs2
mulhu x25, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x12092ddce2780b1a # initialize rs1
li x27, 0x5ae6609621970cff # initialize rs2
mulhu x26, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x022e94a7079f4ffc # initialize rs1
li x25, 0x944bc96822b5aab5 # initialize rs2
mulhu x27, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa64a74a554b855a1 # initialize rs1
li x22, 0x0f4147ebf7f218a9 # initialize rs2
mulhu x28, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x180206cf4e008744 # initialize rs1
li x12, 0x3e6c2aeb0975ae6d # initialize rs2
mulhu x29, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xba24b4e929be68ee # initialize rs1
li x3, 0xd4a6c4aedee515ce # initialize rs2
mulhu x30, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe19441708914ee06 # initialize rs1
li x10, 0xfd6bea62ec82d2fa # initialize rs2
mulhu x31, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x14, 0x582f2c6a5ff9c0d7 # initialize rs1
li x0, 0xf469c2c790b64bd7 # initialize rs2
mulhu x0, x14, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x12, 0x39f2d10a4293904e # initialize rs1
li x1, 0x8eed8a9f6395566a # initialize rs2
mulhu x1, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x1, 0x475e2ef0b62d6a46 # initialize rs1
li x2, 0xc86d91b0f8146886 # initialize rs2
mulhu x2, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x21, 0xb324b4c1edeb0e30 # initialize rs1
li x3, 0xf79dd7b809ba6a14 # initialize rs2
mulhu x3, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x11, 0x029bb19c6969ae12 # initialize rs1
li x4, 0x0191e8d1232cfe04 # initialize rs2
mulhu x4, x11, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x0bfe8524fc2e4d1f # initialize rs1
li x5, 0x6ebda442e486ed9f # initialize rs2
mulhu x5, x13, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x26, 0xae9bc1fbc5c128fb # initialize rs1
li x6, 0xc5d4fb1bf96900f4 # initialize rs2
mulhu x6, x26, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0xeb003f1d765972ef # initialize rs1
li x7, 0x03ec6034453f3382 # initialize rs2
mulhu x7, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x15, 0x47e3f324b19d9b58 # initialize rs1
li x8, 0xf5a8a63188cd2fcb # initialize rs2
mulhu x8, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x31, 0xb274ababad9a905b # initialize rs1
li x9, 0x76e64e1ed8ffded6 # initialize rs2
mulhu x9, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x21, 0x16cb33c4d8214a6b # initialize rs1
li x10, 0xb6396fd185864a26 # initialize rs2
mulhu x10, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x24, 0xa43aa1e4332c71e0 # initialize rs1
li x11, 0x7947543e4f22fba5 # initialize rs2
mulhu x11, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x30, 0x5ca4495544c07046 # initialize rs1
li x12, 0xccfcfd6ec2f72d80 # initialize rs2
mulhu x12, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x1, 0x636585788c3176bf # initialize rs1
li x13, 0xb5b6f463aa4719ce # initialize rs2
mulhu x13, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x15, 0xa426412041d8e27b # initialize rs1
li x14, 0x6b078573d45a6984 # initialize rs2
mulhu x14, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x1, 0xd596a40ba791f65a # initialize rs1
li x15, 0x0934a7f4307b304e # initialize rs2
mulhu x15, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x28, 0x42dd345be016a920 # initialize rs1
li x16, 0x8ad9c9e897f0442b # initialize rs2
mulhu x16, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x21, 0x6a12a113980503da # initialize rs1
li x17, 0x941af236db3ee70a # initialize rs2
mulhu x17, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x19, 0x40bdba7ab3d99254 # initialize rs1
li x18, 0xa098cc823765cf45 # initialize rs2
mulhu x18, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x15, 0xc0195c1e68581d8b # initialize rs1
li x19, 0xb43c8e097b49e864 # initialize rs2
mulhu x19, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x27, 0xb6e833d9029a8d6e # initialize rs1
li x20, 0xcb9ebda1aefa13a9 # initialize rs2
mulhu x20, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x30, 0xf85a00111c4d5b92 # initialize rs1
li x21, 0x2b9a5e9db57e3f26 # initialize rs2
mulhu x21, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x10, 0x75888a86c4c35530 # initialize rs1
li x22, 0xdef097406d16d49c # initialize rs2
mulhu x22, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x18, 0xaea56bc7e1572ffd # initialize rs1
li x23, 0x2dbeb643fa28240c # initialize rs2
mulhu x23, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x11, 0x0e270f810dd7af42 # initialize rs1
li x24, 0x80f0dc95c255211a # initialize rs2
mulhu x24, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x26, 0x6c040d37be36b31a # initialize rs1
li x25, 0x97134f205a8effcf # initialize rs2
mulhu x25, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x29, 0x7a8cfcbd5946bd86 # initialize rs1
li x26, 0x5310e1f09a1ba929 # initialize rs2
mulhu x26, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x18, 0x0c7f9dcf328800f6 # initialize rs1
li x27, 0x51b0b3278e8e4385 # initialize rs2
mulhu x27, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x16, 0xd4fc1b4c2446a2e5 # initialize rs1
li x28, 0x9302f3ca022b812c # initialize rs2
mulhu x28, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x20, 0xa3615a31d359e6e4 # initialize rs1
li x29, 0xfd5588c442fd7098 # initialize rs2
mulhu x29, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x21, 0x4104b6343ca769e9 # initialize rs1
li x30, 0xc0af75fd204ffede # initialize rs2
mulhu x30, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x13, 0xa19563bd7b268358 # initialize rs1
li x31, 0x1c5480cb93d30ff7 # initialize rs2
mulhu x31, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x0952a6ba01ba73bf # initialize rs1
li x0, 0x97ee641ac42624c3 # initialize rs2
mulhu x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x8c14cad7c4b8f4fa # initialize rs1
li x1, 0xf9856c84599aaee9 # initialize rs2
mulhu x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x3d7ca9dd107de4b3 # initialize rs1
li x2, 0x7b800278e83aa636 # initialize rs2
mulhu x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x0e4ec27464e455bb # initialize rs1
li x3, 0x0f0b477126c64088 # initialize rs2
mulhu x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x241e60728c6cecbe # initialize rs1
li x4, 0x34936338e91d87f7 # initialize rs2
mulhu x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7eb77660ad99ba5f # initialize rs1
li x5, 0xf00b954e3f65c384 # initialize rs2
mulhu x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf8f32a0a95388cb2 # initialize rs1
li x6, 0x7d1e5627a1e3f289 # initialize rs2
mulhu x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xd83141688404c34a # initialize rs1
li x7, 0xba755b5ab0392a94 # initialize rs2
mulhu x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xb1f0797e18cba818 # initialize rs1
li x8, 0x01133fbd9a980047 # initialize rs2
mulhu x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x3cd6538676b755b8 # initialize rs1
li x9, 0x37ea6148b3dfd1b5 # initialize rs2
mulhu x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x161e186f7ea3886b # initialize rs1
li x10, 0x9f113f8459b998ff # initialize rs2
mulhu x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x4d809aa7cdb80c7a # initialize rs1
li x11, 0x1cd618883120ce51 # initialize rs2
mulhu x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x3c2d18ff5b2806d1 # initialize rs1
li x12, 0x6c1216aa2527f037 # initialize rs2
mulhu x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x22b80150d91bfb18 # initialize rs1
li x13, 0x3864fb0996088fe0 # initialize rs2
mulhu x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x60d66dba65735c76 # initialize rs1
li x14, 0xf6ef7f3e1696892a # initialize rs2
mulhu x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x7f42d9c94f18c54e # initialize rs1
li x15, 0xeade9537352086c9 # initialize rs2
mulhu x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xe19e97d0d9c4a380 # initialize rs1
li x16, 0xc0b0c42388ef70a7 # initialize rs2
mulhu x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x2e75245ec5d6881b # initialize rs1
li x17, 0x6037c5f60782fe8f # initialize rs2
mulhu x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x8c292cdc398a21ee # initialize rs1
li x18, 0xeeaacea5f7f7b1f4 # initialize rs2
mulhu x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xab43bac7afadb7e3 # initialize rs1
li x19, 0xf05c4ddcea900ee7 # initialize rs2
mulhu x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x061bd2f3c11700e3 # initialize rs1
li x20, 0xb47c5198eb0dc44f # initialize rs2
mulhu x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc3642bfc734a820a # initialize rs1
li x21, 0x6eeb7f17e246579d # initialize rs2
mulhu x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x7662068e92a65dc4 # initialize rs1
li x22, 0x11f1ed47520bc54f # initialize rs2
mulhu x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xc98c262dbf11d2ae # initialize rs1
li x23, 0x61881905ca2e3f61 # initialize rs2
mulhu x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xc67e867be6abec39 # initialize rs1
li x24, 0x6c09b1894b945783 # initialize rs2
mulhu x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x250dbe854b14b3e7 # initialize rs1
li x25, 0x46afa79fea48dcb9 # initialize rs2
mulhu x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x97448bf2c4f2a5a4 # initialize rs1
li x26, 0x9587f348fc31a807 # initialize rs2
mulhu x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x98e0aed1b91f9e2b # initialize rs1
li x27, 0xc1a8c327e5d701f5 # initialize rs2
mulhu x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x86c062d767f3704d # initialize rs1
li x28, 0xc644815b6d91df5b # initialize rs2
mulhu x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x1eef239a8cc160ea # initialize rs1
li x29, 0x87ac20ac39a4b953 # initialize rs2
mulhu x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc433cb35110ffabd # initialize rs1
li x30, 0x00f4a9b447f0d1ab # initialize rs2
mulhu x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xc7b10710f91acf49 # initialize rs1
li x31, 0x413968954283a46f # initialize rs2
mulhu x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x24, x5, x22 # perform first operation
mulhu x14, x31, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x18, x12 # perform first operation
mulhu x7, x15, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x14, x11 # perform first operation
mulhu x26, x1, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x20, x1, x30 # perform first operation
mulhu x10, x20, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x31, x28 # perform first operation
mulhu x31, x28, x30 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x28, x1, x25 # perform first operation
mulhu x28, x23, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x30, x1 # perform first operation
mulhu x7, x19, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x19, x27, x9 # perform first operation
mulhu x19, x29, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x12, x18, x29 # perform first operation
mulhu x12, x10, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x17, x1 # perform first operation
mulhu x17, x18, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x31, x12, x1 # perform first operation
mulhu x1, x19, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x25, x6 # perform first operation
mulhu x7, x30, x18 # perform second (triggering) operation

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
