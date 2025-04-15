///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbkb/WALLY-COV-rol.S
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
li x0, 0x750717fb3d81421c # initialize rs1
li x5, 0x766fc36daeba9655 # initialize rs2
rol x25, x0, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x5f411278b82e7449 # initialize rs1
li x19, 0x833a5356f414b925 # initialize rs2
rol x14, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xcc79bcb1ae70e896 # initialize rs1
li x7, 0xab60ee60a9970b00 # initialize rs2
rol x5, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xb4c086b263f8e100 # initialize rs1
li x20, 0x9dab9650385195fd # initialize rs2
rol x8, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x3b6e9f7361af0eea # initialize rs1
li x22, 0x88fa4b72083c69f0 # initialize rs2
rol x12, x4, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xcae94555cc8eb5d7 # initialize rs1
li x4, 0xe499a1a5db62f092 # initialize rs2
rol x30, x5, x4 # perform operation
RVTEST_SIGUPD(x6, x0, x30, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x365b18dcfa45b4e5 # initialize rs1
li x15, 0xaafd7b165b6a17e2 # initialize rs2
rol x7, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
li x7, 0xcd5013992be790ec # initialize rs1
li x31, 0xee5d4aeb185c51c0 # initialize rs2
rol x12, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xf9cf6c79448ab370 # initialize rs1
li x9, 0x0cd6306c0a99e421 # initialize rs2
rol x25, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xb7c5951084f43bd7 # initialize rs1
li x17, 0xd56dddf56254bce8 # initialize rs2
rol x25, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x45e282c5953e658c # initialize rs1
li x25, 0x8097e20274888436 # initialize rs2
rol x12, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x603a7cce49c465d1 # initialize rs1
li x6, 0xd46a60ddb7f7cbe4 # initialize rs2
rol x27, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xc1781469ad77b9ee # initialize rs1
li x6, 0x7c364435ae765a06 # initialize rs2
rol x27, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x97cdbdb3cd5a20da # initialize rs1
li x23, 0xc97efcffab1d9e5e # initialize rs2
rol x19, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x44f89c1dd72eb7bd # initialize rs1
li x6, 0x0288f22f1e399174 # initialize rs2
rol x31, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x6e5079f7b90bbc7e # initialize rs1
li x30, 0xfaaf58bfedace1fb # initialize rs2
rol x9, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x86630d897280817c # initialize rs1
li x1, 0x72dd4d88fd380e95 # initialize rs2
rol x22, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xbb4018360e413260 # initialize rs1
li x23, 0x28f2b6dea7f47351 # initialize rs2
rol x28, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xcfb9ed015960ad49 # initialize rs1
li x15, 0x3a663a85eb03465f # initialize rs2
rol x28, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x39c67cc83cbcd519 # initialize rs1
li x7, 0xa2412c87e843a076 # initialize rs2
rol x17, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xf4b06a72717b42ab # initialize rs1
li x18, 0xea407c7338971b1c # initialize rs2
rol x8, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xc326c10febc02150 # initialize rs1
li x24, 0xf2a72bdf2f6eebf7 # initialize rs2
rol x5, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x6bc660c9caed698a # initialize rs1
li x15, 0x9d614f561f7eb7b1 # initialize rs2
rol x1, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x2ef0887bf18787b3 # initialize rs1
li x22, 0x60c4f0ac110a5b88 # initialize rs2
rol x21, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x5a7cf9c53ada2771 # initialize rs1
li x1, 0xad21a5a8e18c53f4 # initialize rs2
rol x20, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xea85d8b89b890b15 # initialize rs1
li x13, 0x7ab068fb00785350 # initialize rs2
rol x5, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xcbd309950128c99f # initialize rs1
li x6, 0xec2745279f1f8bb5 # initialize rs2
rol x14, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x5362835add37f284 # initialize rs1
li x30, 0xe866b3ada47a781c # initialize rs2
rol x14, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xb763ff04af3c6298 # initialize rs1
li x21, 0x7f0508a13792b0c0 # initialize rs2
rol x26, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x3e19ed8d58d0d91a # initialize rs1
li x20, 0xb6e7d7a3a3427569 # initialize rs2
rol x17, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x193db8038fae53d0 # initialize rs1
li x19, 0x742a5a4da7709298 # initialize rs2
rol x6, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x6f9e1e05906b66f7 # initialize rs1
li x5, 0x1bf4cb3b75884270 # initialize rs2
rol x6, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x6, 0x39fe612f85991955 # initialize rs1
li x0, 0x5a29a208e1462da7 # initialize rs2
rol x22, x6, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x7, 0x6b2a23667d92f2bd # initialize rs1
li x1, 0x62bea4dc8590c05a # initialize rs2
rol x26, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x18, 0xe18976ca96d1f035 # initialize rs1
li x2, 0xdce9122c7e2697cc # initialize rs2
rol x22, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x22, 0x0ca5a6c4e2301b48 # initialize rs1
li x3, 0x5bf642bce15fcefe # initialize rs2
rol x8, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x6caa35b5a1fa463f # initialize rs1
li x4, 0x2758729b1621c3c3 # initialize rs2
rol x29, x6, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x18, 0x3aa03fb4031b8012 # initialize rs1
li x5, 0x1bf1dae7d2b75115 # initialize rs2
rol x3, x18, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x46ee678a812de3a5 # initialize rs1
li x6, 0x8b4b449e3e3fb2b3 # initialize rs2
rol x20, x9, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x5, 0x7845804b3163ccd5 # initialize rs1
li x7, 0x822f3b279f177e9e # initialize rs2
rol x26, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x22, 0xa5a4372be337308c # initialize rs1
li x8, 0x18a9f3237d12fcd7 # initialize rs2
rol x24, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x20, 0xf56cee6ee2f345cd # initialize rs1
li x9, 0xba83f04dc87da6bf # initialize rs2
rol x14, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x11, 0xcec50d36353dea52 # initialize rs1
li x10, 0x9a37a101f4709285 # initialize rs2
rol x2, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x6, 0x6353b154c8ce742f # initialize rs1
li x11, 0x2e216180c55e921e # initialize rs2
rol x7, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x28, 0x517cac5adbd1b79f # initialize rs1
li x12, 0x98a33289305aed72 # initialize rs2
rol x8, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x3, 0x43406404b54d5b80 # initialize rs1
li x13, 0xfb57f2ab0060364d # initialize rs2
rol x18, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x13, 0x275da8ba9c38e29f # initialize rs1
li x14, 0xd88912a79c14e26e # initialize rs2
rol x25, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x23, 0xd0cd968ff3161b32 # initialize rs1
li x15, 0x81c08608415bdf66 # initialize rs2
rol x28, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x12, 0x64d56b431e3ae0c4 # initialize rs1
li x16, 0x0d382c0c67bb86b1 # initialize rs2
rol x5, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x1, 0x2f0c31cee276ffbb # initialize rs1
li x17, 0x18f1c0dde11b877c # initialize rs2
rol x11, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x23, 0x92dc209a8015a8b6 # initialize rs1
li x18, 0xf301e9adf67933b2 # initialize rs2
rol x26, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x9, 0x926a047fc891ff1b # initialize rs1
li x19, 0xe2c6e61d755ea3ac # initialize rs2
rol x1, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x15, 0x655e6b0ad9eaf8ce # initialize rs1
li x20, 0x1a59a915f7e99487 # initialize rs2
rol x13, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x15, 0xf2c1cc9578942341 # initialize rs1
li x21, 0xc92b321cae84bdbd # initialize rs2
rol x3, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x23, 0x95490778703190f4 # initialize rs1
li x22, 0x89aa9cb509189079 # initialize rs2
rol x24, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x20, 0xbac6129329c20bc5 # initialize rs1
li x23, 0x27bee55916da1984 # initialize rs2
rol x16, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x21, 0xce0c0ca8901f5272 # initialize rs1
li x24, 0x8f26f7aaf6f88192 # initialize rs2
rol x18, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x16, 0x2de502c9f1907261 # initialize rs1
li x25, 0x55c9181942397223 # initialize rs2
rol x26, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x30, 0xfc562dbec1515e90 # initialize rs1
li x26, 0xba242900e6bc15e9 # initialize rs2
rol x23, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x25, 0xeee2da520f102640 # initialize rs1
li x27, 0xe48794af829cc93e # initialize rs2
rol x1, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x19, 0xd6afb7f835e63709 # initialize rs1
li x28, 0xb78f2270f2f2bb70 # initialize rs2
rol x25, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x28, 0x64b0b2734ef29ff9 # initialize rs1
li x29, 0x97ccdfe07916d70c # initialize rs2
rol x18, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x2, 0xfeaa86ebd6330295 # initialize rs1
li x30, 0x2271c95a108ec495 # initialize rs2
rol x21, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x24, 0xa3cc2f34982d63ac # initialize rs1
li x31, 0x8650a89d5a66fbbd # initialize rs2
rol x28, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 504)

# Testcase cp_rd (Test destination rd = x0)
li x10, 0x49867546befb3d54 # initialize rs1
li x7, 0xb91a266a74553a8f # initialize rs2
rol x0, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x5, 0x8d7cd2621eff9235 # initialize rs1
li x28, 0xb409d46003646fcc # initialize rs2
rol x1, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x3, 0xcf397bde28ff2b2d # initialize rs1
li x22, 0xcbd8e3de64227ac0 # initialize rs2
rol x2, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x16, 0xd0ade9e792569773 # initialize rs1
li x6, 0xd1acb307cd8dd946 # initialize rs2
rol x3, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x49d280227a1be1e5 # initialize rs1
li x16, 0xd87297a1e354d07b # initialize rs2
rol x4, x21, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x13, 0x78a6b41bbb190981 # initialize rs1
li x11, 0x98eff22bbc3dca87 # initialize rs2
rol x5, x13, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0x4b3c21a59b4b326e # initialize rs1
li x26, 0x8979e8e17c5d37c9 # initialize rs2
rol x6, x2, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x13, 0xb83e2950131f2e1a # initialize rs1
li x28, 0x29a1b7929e8dfabf # initialize rs2
rol x7, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x22, 0x391de803b9f2acc3 # initialize rs1
li x6, 0xd6cd46f982794c0c # initialize rs2
rol x8, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x8, 0x2c03df3456c244d7 # initialize rs1
li x3, 0x2d9d21da8b16853f # initialize rs2
rol x9, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x2, 0x4508773b6c6d4c44 # initialize rs1
li x8, 0xa0ddbc77f0136c82 # initialize rs2
rol x10, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x18, 0x7c6b26796b9241ae # initialize rs1
li x3, 0xa1655fb2c6bddf70 # initialize rs2
rol x11, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0x2b9b8496ce6625bc # initialize rs1
li x20, 0x297b1a7a0228a1bd # initialize rs2
rol x12, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x21, 0x94022cd586b76a0c # initialize rs1
li x3, 0x06bb956ff29711e6 # initialize rs2
rol x13, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x16, 0xe5d06425ac4cf950 # initialize rs1
li x6, 0x3f91ba2035b5e0d1 # initialize rs2
rol x14, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x7, 0x402433853a95b30d # initialize rs1
li x1, 0x7d6534c7c48e998e # initialize rs2
rol x15, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x17, 0x3311acafa52f1ba6 # initialize rs1
li x29, 0x7ff5f04f41fe110a # initialize rs2
rol x16, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x23, 0x4a610dcafc7ad5ec # initialize rs1
li x2, 0x3ed141a2af22cb18 # initialize rs2
rol x17, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x30, 0x18f1a2889a52c044 # initialize rs1
li x31, 0x5994316700a9d3d8 # initialize rs2
rol x18, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x26, 0xc48d067768980051 # initialize rs1
li x31, 0xff3761ef03e7ef3c # initialize rs2
rol x19, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x7, 0x9fa9ba939d8880b6 # initialize rs1
li x1, 0xaf1d34f0cc510cc7 # initialize rs2
rol x20, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x3, 0xf1690a020e7b1152 # initialize rs1
li x9, 0x86661420a837c5f7 # initialize rs2
rol x21, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x31, 0x76457c5e484d9658 # initialize rs1
li x13, 0x2d9d8ea4f75dd03a # initialize rs2
rol x22, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x11, 0x6156e150a8fc250d # initialize rs1
li x8, 0x89d81b150ee71d16 # initialize rs2
rol x23, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x20, 0xdb0d56373fa811c0 # initialize rs1
li x27, 0x6291bd0f8e58cebb # initialize rs2
rol x24, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0xcae622491dc2f8ed # initialize rs1
li x14, 0xb1010430da871b83 # initialize rs2
rol x25, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x7, 0x312cc832f3b297eb # initialize rs1
li x21, 0x3feafcb6edaaf5da # initialize rs2
rol x26, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x24, 0xa49fe45dcaa84927 # initialize rs1
li x2, 0xbbad5fde601bed90 # initialize rs2
rol x27, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x14, 0x05020d562b0a243b # initialize rs1
li x1, 0x18c5e84e06da52d3 # initialize rs2
rol x28, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x19, 0xc9c42a6191d36392 # initialize rs1
li x7, 0xacd05a9687318f08 # initialize rs2
rol x29, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x8, 0x710e3be9d8c5dfd9 # initialize rs1
li x31, 0x1deb1b42008ab3e6 # initialize rs2
rol x30, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x25, 0x840193e88b5f8aab # initialize rs1
li x22, 0xcf93fb7a80afa8f5 # initialize rs2
rol x31, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x25, 0x0000000000000000 # initialize rs1
li x30, 0xf4c909579be209f6 # initialize rs2
rol x16, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x12, 0x0000000000000001 # initialize rs1
li x16, 0x108badf59831d468 # initialize rs2
rol x25, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x3, 0x0000000000000002 # initialize rs1
li x2, 0xde034e5f70b03a3d # initialize rs2
rol x27, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x30, 0x8000000000000000 # initialize rs1
li x23, 0xa17f687f367ef240 # initialize rs2
rol x19, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x15, 0x8000000000000001 # initialize rs1
li x8, 0x2d75690cd3d6ccdf # initialize rs2
rol x10, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
li x16, 0x5d2a65854956a03e # initialize rs2
rol x22, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x26, 0x7ffffffffffffffe # initialize rs1
li x9, 0x2b5f9e1abd5b5a3f # initialize rs2
rol x31, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x17, 0xffffffffffffffff # initialize rs1
li x15, 0x7eee246ab9698ef8 # initialize rs2
rol x2, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x25, 0xfffffffffffffffe # initialize rs1
li x12, 0x475df3bb2fbc5b14 # initialize rs2
rol x19, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xbd1010bf5f0e3fae # initialize rs2
rol x8, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xadc75c0feda3b106 # initialize rs2
rol x28, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x25, 0x5555555555555555 # initialize rs1
li x17, 0x3ff7b622e6592159 # initialize rs2
rol x5, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x28, 0x0f962414bc364a0e # initialize rs2
rol x31, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x25, 0x00000000fffffffe # initialize rs1
li x12, 0x518a5bc277c5d1c7 # initialize rs2
rol x29, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x30, 0x0000000100000000 # initialize rs1
li x23, 0x6a837fc564cc4715 # initialize rs2
rol x8, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x21, 0x0000000100000001 # initialize rs1
li x3, 0x24483046878b54dd # initialize rs2
rol x11, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x19, 0x2313e034f53f568b # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
rol x24, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x30, 0xaa3b044822aa0265 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
rol x5, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x31, 0x6e57eb7c822297eb # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
rol x15, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0xd7dc7f1894ec9fec # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
rol x3, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x26, 0xc7f6333b067070b8 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
rol x10, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x2, 0x551d9e2284b137b8 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
rol x12, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x10, 0xb30620d5f53e3790 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
rol x30, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x15, 0x6d5aaf1452d716f6 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
rol x28, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x25, 0xeacc46f03dc6af72 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
rol x2, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x28, 0x4dabae7ca91315c2 # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
rol x2, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xceeb20207fac4305 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x27, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x11, 0x8c5c5cc1578472e1 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
rol x31, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x11, 0xf4c5fcee92ccbfeb # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
rol x12, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x20, 0x84f160e8e0b9e89e # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
rol x17, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x20, 0xea0575cde7e775ff # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
rol x17, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x17, 0xe74f9489153e0478 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
rol x24, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x20, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
rol x5, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x11, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
rol x16, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x7, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
rol x18, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x12, 0x0000000000000000 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
rol x15, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x23, 0x0000000000000000 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
rol x24, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x17, 0x0000000000000000 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
rol x1, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x13, 0x0000000000000000 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
rol x29, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x28, 0x0000000000000000 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
rol x8, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000000000000 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
rol x30, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x20, 0x0000000000000000 # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
rol x2, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000000000000 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x27, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x5, 0x0000000000000000 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
rol x14, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x10, 0x0000000000000000 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
rol x11, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x29, 0x0000000000000000 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
rol x24, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x8, 0x0000000000000000 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
rol x6, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x31, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
rol x13, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x10, 0x0000000000000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
rol x6, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x22, 0x0000000000000001 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
rol x10, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x21, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
rol x1, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x3, 0x0000000000000001 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
rol x19, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x24, 0x0000000000000001 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
rol x28, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000000000001 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
rol x31, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x6, 0x0000000000000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
rol x16, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x5, 0x0000000000000001 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
rol x23, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
rol x6, x29, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000000000001 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
rol x7, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0000000000000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x13, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x18, 0x0000000000000001 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
rol x20, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x10, 0x0000000000000001 # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
rol x31, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x29, 0x0000000000000001 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
rol x7, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x16, 0x0000000000000001 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
rol x22, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x19, 0x0000000000000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
rol x12, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x1, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
rol x7, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x13, 0x0000000000000002 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
rol x28, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x26, 0x0000000000000002 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
rol x18, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x14, 0x0000000000000002 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
rol x18, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x5, 0x0000000000000002 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
rol x13, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x25, 0x0000000000000002 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
rol x13, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000000000002 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
rol x16, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x5, 0x0000000000000002 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
rol x23, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000002 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
rol x1, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x16, 0x0000000000000002 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
rol x15, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x0000000000000002 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x3, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x7, 0x0000000000000002 # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
rol x21, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x25, 0x0000000000000002 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
rol x31, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x12, 0x0000000000000002 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
rol x10, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x5, 0x0000000000000002 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
rol x13, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x8, 0x0000000000000002 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
rol x3, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x16, 0x8000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
rol x17, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x3, 0x8000000000000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
rol x6, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x27, 0x8000000000000000 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
rol x22, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x26, 0x8000000000000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
rol x15, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x29, 0x8000000000000000 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
rol x3, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x21, 0x8000000000000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
rol x10, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x8000000000000000 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
rol x10, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x9, 0x8000000000000000 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
rol x8, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x29, 0x8000000000000000 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
rol x5, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x8, 0x8000000000000000 # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
rol x29, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x8000000000000000 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x27, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x29, 0x8000000000000000 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
rol x24, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x16, 0x8000000000000000 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
rol x8, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x22, 0x8000000000000000 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
rol x30, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x15, 0x8000000000000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
rol x21, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x3, 0x8000000000000000 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
rol x27, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x11, 0x8000000000000001 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
rol x2, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x28, 0x8000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
rol x16, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x2, 0x8000000000000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
rol x17, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x25, 0x8000000000000001 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
rol x23, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x28, 0x8000000000000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
rol x26, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x29, 0x8000000000000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
rol x12, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x16, 0x8000000000000001 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
rol x12, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x11, 0x8000000000000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
rol x18, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x9, 0x8000000000000001 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
rol x1, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x31, 0x8000000000000001 # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
rol x29, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x8000000000000001 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x22, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x23, 0x8000000000000001 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
rol x10, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x29, 0x8000000000000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
rol x15, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x27, 0x8000000000000001 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
rol x24, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x2, 0x8000000000000001 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
rol x7, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x31, 0x8000000000000001 # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
rol x16, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x7, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
rol x16, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x29, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
rol x3, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x16, 0x7fffffffffffffff # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
rol x13, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x11, 0x7fffffffffffffff # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
rol x31, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x7, 0x7fffffffffffffff # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
rol x17, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
rol x13, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x24, 0x7fffffffffffffff # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
rol x28, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
rol x9, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x2, 0x7fffffffffffffff # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
rol x9, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x29, 0x7fffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
rol x25, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x7fffffffffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x31, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x30, 0x7fffffffffffffff # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
rol x8, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x12, 0x7fffffffffffffff # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
rol x11, x12, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x14, 0x7fffffffffffffff # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
rol x6, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x14, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
rol x18, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x9, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
rol x24, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x27, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
rol x21, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x22, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
rol x29, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x27, 0x7ffffffffffffffe # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
rol x30, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x24, 0x7ffffffffffffffe # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
rol x12, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x16, 0x7ffffffffffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
rol x3, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
rol x24, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x16, 0x7ffffffffffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
rol x18, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x28, 0x7ffffffffffffffe # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
rol x29, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x23, 0x7ffffffffffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
rol x16, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x13, 0x7ffffffffffffffe # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
rol x22, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x7ffffffffffffffe # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x15, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x26, 0x7ffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
rol x3, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x13, 0x7ffffffffffffffe # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
rol x7, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
rol x14, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x30, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
rol x13, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x28, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
rol x29, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x23, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
rol x14, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x9, 0xffffffffffffffff # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
rol x18, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x3, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
rol x26, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x6, 0xffffffffffffffff # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
rol x11, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x14, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
rol x23, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
rol x6, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x17, 0xffffffffffffffff # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
rol x9, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x17, 0xffffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
rol x12, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x16, 0xffffffffffffffff # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
rol x5, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x25, 0xffffffffffffffff # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
rol x6, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0xffffffffffffffff # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x26, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x25, 0xffffffffffffffff # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
rol x3, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x23, 0xffffffffffffffff # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
rol x14, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x11, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
rol x13, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x20, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
rol x21, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x5, 0xffffffffffffffff # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
rol x30, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x5, 0xfffffffffffffffe # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
rol x24, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x10, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
rol x2, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x12, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
rol x28, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x12, 0xfffffffffffffffe # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
rol x6, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x16, 0xfffffffffffffffe # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
rol x26, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x2, 0xfffffffffffffffe # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
rol x8, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0xfffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
rol x19, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x14, 0xfffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
rol x22, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x30, 0xfffffffffffffffe # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
rol x21, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x20, 0xfffffffffffffffe # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
rol x16, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0xfffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x20, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x9, 0xfffffffffffffffe # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
rol x30, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x3, 0xfffffffffffffffe # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
rol x27, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x26, 0xfffffffffffffffe # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
rol x10, x26, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x13, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
rol x2, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x8, 0xfffffffffffffffe # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
rol x20, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
rol x24, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
rol x27, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
rol x2, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
rol x22, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
rol x8, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
rol x26, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
rol x28, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
rol x24, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
rol x11, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
rol x12, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x12, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
rol x6, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
rol x16, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
rol x14, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
rol x28, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
rol x27, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
rol x15, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
rol x14, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
rol x31, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
rol x2, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
rol x11, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
rol x10, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
rol x3, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
rol x28, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
rol x22, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
rol x18, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x20, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
rol x27, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
rol x17, x13, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
rol x3, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
rol x6, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
rol x1, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x29, 0x5555555555555555 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
rol x30, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x21, 0x5555555555555555 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
rol x31, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x7, 0x5555555555555555 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
rol x17, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x10, 0x5555555555555555 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
rol x23, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x27, 0x5555555555555555 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
rol x24, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x23, 0x5555555555555555 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
rol x2, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x31, 0x5555555555555555 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
rol x8, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x5, 0x5555555555555555 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
rol x19, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x13, 0x5555555555555555 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
rol x1, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x30, 0x5555555555555555 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
rol x3, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x5555555555555555 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x12, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x30, 0x5555555555555555 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
rol x5, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
rol x2, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x19, 0x5555555555555555 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
rol x3, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x16, 0x5555555555555555 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
rol x9, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x23, 0x5555555555555555 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
rol x18, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x20, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
rol x30, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x9, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
rol x11, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x1, 0x00000000ffffffff # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
rol x20, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x21, 0x00000000ffffffff # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
rol x18, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x3, 0x00000000ffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
rol x25, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x24, 0x00000000ffffffff # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
rol x27, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x15, 0x00000000ffffffff # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
rol x20, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x7, 0x00000000ffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
rol x20, x7, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x14, 0x00000000ffffffff # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
rol x31, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x15, 0x00000000ffffffff # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
rol x3, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x00000000ffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x25, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x24, 0x00000000ffffffff # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
rol x28, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
rol x25, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x28, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
rol x27, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x22, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
rol x31, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x2, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
rol x5, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x31, 0x00000000fffffffe # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
rol x21, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x16, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
rol x21, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x17, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
rol x31, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x10, 0x00000000fffffffe # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
rol x3, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x3, 0x00000000fffffffe # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
rol x31, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x23, 0x00000000fffffffe # initialize rs1
li x19, 0x7fffffffffffffff # initialize rs2
rol x15, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x24, 0x00000000fffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
rol x22, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x17, 0x00000000fffffffe # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
rol x28, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x14, 0x00000000fffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
rol x13, x14, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x29, 0x00000000fffffffe # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
rol x2, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x00000000fffffffe # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x19, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x15, 0x00000000fffffffe # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
rol x28, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x6, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
rol x15, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x1, 0x00000000fffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
rol x18, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x15, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
rol x22, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x14, 0x00000000fffffffe # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
rol x1, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x26, 0x0000000100000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
rol x24, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x12, 0x0000000100000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
rol x8, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x6, 0x0000000100000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
rol x8, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x19, 0x0000000100000000 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
rol x29, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x6, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
rol x11, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x30, 0x0000000100000000 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
rol x8, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x25, 0x0000000100000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
rol x2, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x11, 0x0000000100000000 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
rol x24, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x2, 0x0000000100000000 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
rol x24, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x18, 0x0000000100000000 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
rol x31, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x0000000100000000 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x10, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x28, 0x0000000100000000 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
rol x1, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x13, 0x0000000100000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
rol x17, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x30, 0x0000000100000000 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
rol x17, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x13, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
rol x11, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x18, 0x0000000100000000 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
rol x20, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x28, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
rol x29, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x9, 0x0000000100000001 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
rol x6, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x11, 0x0000000100000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
rol x30, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x31, 0x0000000100000001 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
rol x2, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x12, 0x0000000100000001 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
rol x11, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x2, 0x0000000100000001 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
rol x9, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x13, 0x0000000100000001 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
rol x11, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x27, 0x0000000100000001 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
rol x21, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x31, 0x0000000100000001 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
rol x10, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000100000001 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
rol x13, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x6, 0x0000000100000001 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
rol x24, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x14, 0x0000000100000001 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
rol x22, x14, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x2, 0x0000000100000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
rol x7, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x28, 0x0000000100000001 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
rol x13, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x9, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
rol x22, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x21, 0x0000000100000001 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
rol x5, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xd37fb57d858bb801 # initialize rs1
li x0, 0xe908377ce7a52196 # initialize rs2
rol x7, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x55ab893db58d7bf8 # initialize rs1
li x1, 0x384e48945a24796d # initialize rs2
rol x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xff6eb8365748511f # initialize rs1
li x2, 0x73ada09284ff83be # initialize rs2
rol x26, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2804036377d693f1 # initialize rs1
li x3, 0x763f0282c4fd1184 # initialize rs2
rol x20, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe6620ffb5181acb3 # initialize rs1
li x4, 0x0178c2de79ff2013 # initialize rs2
rol x3, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x2d32601c03e54a1a # initialize rs1
li x5, 0xa3b1e1276af0c539 # initialize rs2
rol x28, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x438b00dd96e007b9 # initialize rs1
li x6, 0x2739469cb62574d7 # initialize rs2
rol x30, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xec7a75e725d8a8e9 # initialize rs1
li x7, 0xd502e801ee490766 # initialize rs2
rol x8, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x17d1a75e9c0f3162 # initialize rs1
li x8, 0xce6511e2b16eaca9 # initialize rs2
rol x10, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x4422d5fcb9736a4d # initialize rs1
li x9, 0x51bd6d8569e41e64 # initialize rs2
rol x19, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xb31acb59d1f2b4eb # initialize rs1
li x10, 0x2344a95528500e2d # initialize rs2
rol x23, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0xbc7e41c84f025ea5 # initialize rs1
li x11, 0x9dd2a11215de0454 # initialize rs2
rol x30, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x53654c1ec4bc2e70 # initialize rs1
li x12, 0x6d3895f3465bd2a9 # initialize rs2
rol x24, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x1916d29679bf2c3c # initialize rs1
li x13, 0x3b05acb370b0ca17 # initialize rs2
rol x14, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xe70bd9d1f11d2c0b # initialize rs1
li x14, 0xfd63e1b801741de0 # initialize rs2
rol x10, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xd444ccdbf978bce2 # initialize rs1
li x15, 0xe21c03ccbb0b8590 # initialize rs2
rol x22, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xaa93fc6ac75fa8e1 # initialize rs1
li x16, 0x68eadaa0214882af # initialize rs2
rol x25, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xe85d57cdddbf52ff # initialize rs1
li x17, 0x1d68ae63d68ab154 # initialize rs2
rol x7, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xa8805a48eb997c1a # initialize rs1
li x18, 0xad77a0c64881f8ca # initialize rs2
rol x9, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x5932e8b02175da03 # initialize rs1
li x19, 0x0a4eb475efa748bd # initialize rs2
rol x1, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xd7750f2bff4773c3 # initialize rs1
li x20, 0x00da049fbb4a4fa8 # initialize rs2
rol x28, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x1c8efb2d7c4f3996 # initialize rs1
li x21, 0x694cbfba217b09a3 # initialize rs2
rol x19, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x62588327323e4c7a # initialize rs1
li x22, 0x10cd9633c34106b3 # initialize rs2
rol x30, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x5c92a28e3f1c4dda # initialize rs1
li x23, 0xbd5a238c93e68f9d # initialize rs2
rol x7, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0xcae15dc18d1c6b7a # initialize rs1
li x24, 0xe75814d844126b64 # initialize rs2
rol x11, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x4d9b82fdef9010d6 # initialize rs1
li x25, 0x286124b18bece440 # initialize rs2
rol x14, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x759bdfc4e709d9bd # initialize rs1
li x26, 0x3e0704a5962084fb # initialize rs2
rol x1, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x607c8310747c0403 # initialize rs1
li x27, 0x8c080df4d3cc36cb # initialize rs2
rol x12, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xe4b0213caf7ca118 # initialize rs1
li x28, 0x227ec33a2ff315a9 # initialize rs2
rol x11, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xa6850a23f72c2adf # initialize rs1
li x29, 0x491e6bb3d15bc741 # initialize rs2
rol x2, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x0c4f2258f10dfed2 # initialize rs1
li x30, 0x348b226635e7dce2 # initialize rs2
rol x20, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x819ef2dc0b77b5fc # initialize rs1
li x31, 0x2ac1098d051efba1 # initialize rs2
rol x15, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xde53ae2f8ff6b164 # initialize rs1
li x25, 0x84389744449683ad # initialize rs2
rol x0, x0, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x8c26e626e011c968 # initialize rs1
li x28, 0x6b8a337426964a41 # initialize rs2
rol x1, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7487a5ecb4ce0b30 # initialize rs1
li x15, 0x65b042768e213f23 # initialize rs2
rol x2, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x8bff50b3d693c3b8 # initialize rs1
li x20, 0x522c7d186e0e837c # initialize rs2
rol x3, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x812ba33282e96362 # initialize rs1
li x30, 0x92a50dd7944e3a40 # initialize rs2
rol x4, x4, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6152b0cdb37d0cca # initialize rs1
li x3, 0x68654822f17872e6 # initialize rs2
rol x5, x5, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8854dec001fda3c6 # initialize rs1
li x7, 0x1b4768c2b50d435f # initialize rs2
rol x6, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xd779f5aed563235e # initialize rs1
li x11, 0xc8118652fed5a49e # initialize rs2
rol x7, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x053a5b949c7054e9 # initialize rs1
li x5, 0xd7afb7237a6c6a3b # initialize rs2
rol x8, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x17750e3e94081701 # initialize rs1
li x30, 0x44d3f42366cb6880 # initialize rs2
rol x9, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x6d137c1e426be509 # initialize rs1
li x21, 0xb139aeb9537ecba2 # initialize rs2
rol x10, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x94557bf1da862b8d # initialize rs1
li x11, 0x2b43e429406c5b71 # initialize rs2
rol x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x002e020c1be08874 # initialize rs1
li x17, 0xddec4a6d799dbc30 # initialize rs2
rol x12, x12, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x1aca9059b420ce27 # initialize rs1
li x1, 0x9ed77ca2da101867 # initialize rs2
rol x13, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x70e4fc1426c605f1 # initialize rs1
li x9, 0x567c85ca8ed5291a # initialize rs2
rol x14, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x1fbadba3c08b3a31 # initialize rs1
li x31, 0x0120baabb2047aad # initialize rs2
rol x15, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x809a8d3e9e52ee21 # initialize rs1
li x19, 0xfa3bf159d52054c3 # initialize rs2
rol x16, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xec3335548ba63727 # initialize rs1
li x20, 0x04d0bae2ae79a2e5 # initialize rs2
rol x17, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x991750023df74f65 # initialize rs1
li x6, 0x7870784ebaebb9a3 # initialize rs2
rol x18, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x631c64e639b57bd8 # initialize rs1
li x26, 0x00efedabac231a26 # initialize rs2
rol x19, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x3bbac340eaed6c02 # initialize rs1
li x9, 0xa540381deee26152 # initialize rs2
rol x20, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xe3242c8073c46035 # initialize rs1
li x14, 0x9d877397c59f89f9 # initialize rs2
rol x21, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x5cafb1ed449d9350 # initialize rs1
li x8, 0xa0143556b9eb41cf # initialize rs2
rol x22, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x9a36abe9fa349716 # initialize rs1
li x2, 0x1539a80525cb40df # initialize rs2
rol x23, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x39f7657db10c626e # initialize rs1
li x31, 0x6027c0ae1db21f85 # initialize rs2
rol x24, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xd9165ee59ea8ead2 # initialize rs1
li x20, 0x7e11d5e56be532c7 # initialize rs2
rol x25, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xdfbad0472bf351a3 # initialize rs1
li x21, 0xffb7b57bfd4abb1e # initialize rs2
rol x26, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x34ed2fab21dfb13a # initialize rs1
li x21, 0xce98e62a73be811c # initialize rs2
rol x27, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x74ae43cd0cf9f67a # initialize rs1
li x13, 0xaaa7ad719cf7e24c # initialize rs2
rol x28, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xfa94d5548e87bffc # initialize rs1
li x24, 0x095cb4ece3f1c053 # initialize rs2
rol x29, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x20c8745a99daa876 # initialize rs1
li x19, 0xffd5cc281fad6f5a # initialize rs2
rol x30, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe03796c09adc303c # initialize rs1
li x21, 0x2093130642e7c55c # initialize rs2
rol x31, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x3, 0x48189ea4754d7e5e # initialize rs1
li x0, 0x897e1b7521ef0615 # initialize rs2
rol x0, x3, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x23, 0xf92f288e4b01beea # initialize rs1
li x1, 0xeb4b0c0328236588 # initialize rs2
rol x1, x23, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x29, 0x60226d827d0dfd06 # initialize rs1
li x2, 0xf75f8ffbe0864f2a # initialize rs2
rol x2, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x12, 0xcd383d733b1e5e25 # initialize rs1
li x3, 0x66f9ac6b3e4988c8 # initialize rs2
rol x3, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x757c5298f867860d # initialize rs1
li x4, 0xabcd9f2560295d5b # initialize rs2
rol x4, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x10, 0x936d3d443dc4b03b # initialize rs1
li x5, 0xc194256ba05fd496 # initialize rs2
rol x5, x10, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x5a7565f4eabdbfc5 # initialize rs1
li x6, 0x054cb52724202aa8 # initialize rs2
rol x6, x4, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x169e53616b10530e # initialize rs1
li x7, 0x4b00d8fb0fe61c06 # initialize rs2
rol x7, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x22, 0x8a288a213d11f783 # initialize rs1
li x8, 0xe0fffa3d8d041bfc # initialize rs2
rol x8, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x31, 0x760779ab6ed7a6dd # initialize rs1
li x9, 0x9e15d681c4dd099e # initialize rs2
rol x9, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x19, 0x2f4c49ad49cbf7af # initialize rs1
li x10, 0x8c1a1f80f886a4b2 # initialize rs2
rol x10, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x6, 0x97948a670ee35934 # initialize rs1
li x11, 0x09666724c480310f # initialize rs2
rol x11, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x13, 0xae6506a2d941a281 # initialize rs1
li x12, 0x5dc12f7b989b495e # initialize rs2
rol x12, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x16, 0x406215f6feb1ec27 # initialize rs1
li x13, 0x6f1b6acea26255f6 # initialize rs2
rol x13, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x1, 0xae7ba052190299f4 # initialize rs1
li x14, 0xd879b3a95629f467 # initialize rs2
rol x14, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x27, 0x1b05c541a0a98a05 # initialize rs1
li x15, 0x45e57b54ad180c9a # initialize rs2
rol x15, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x16, 0xafb9a5d8ffd87737 # initialize rs1
li x16, 0x4b6bd3daa5994a6a # initialize rs2
rol x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x2, 0xd6fafeaba81d0de3 # initialize rs1
li x17, 0xde3dac3ea800a9e3 # initialize rs2
rol x17, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x22, 0x7ed410562e78af20 # initialize rs1
li x18, 0x0bdcdce97aacb8c9 # initialize rs2
rol x18, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x28, 0x0a2020c4edf6787a # initialize rs1
li x19, 0x34e67b8fa425d5a8 # initialize rs2
rol x19, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x31, 0x7ab33396d132b700 # initialize rs1
li x20, 0x7a56e7bffa556860 # initialize rs2
rol x20, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x13, 0x17bb21957b07d6c5 # initialize rs1
li x21, 0xf97843382595f135 # initialize rs2
rol x21, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x22, 0xfb6339964cfe1f88 # initialize rs1
li x22, 0x1a70a9bd6005fcbe # initialize rs2
rol x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x13, 0x13ef3d21bed72f78 # initialize rs1
li x23, 0x6e65cef05635b776 # initialize rs2
rol x23, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x27, 0x49c175fb83d1bc08 # initialize rs1
li x24, 0x510bf5c3e2773a74 # initialize rs2
rol x24, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x28, 0xba054ef8956585af # initialize rs1
li x25, 0x0f02d7f0afad1f11 # initialize rs2
rol x25, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x13, 0x986be665aa199159 # initialize rs1
li x26, 0x9f76905fd249c373 # initialize rs2
rol x26, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x26, 0xf391573a1fcd4bad # initialize rs1
li x27, 0xf736138b4821f714 # initialize rs2
rol x27, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x7, 0x9921fed84efa4d32 # initialize rs1
li x28, 0x18b3f88c71f769c2 # initialize rs2
rol x28, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x10, 0x5d08e35650e2ce9e # initialize rs1
li x29, 0x5859c22e3be5da9c # initialize rs2
rol x29, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x15, 0xf1d1e9c8780a2571 # initialize rs1
li x30, 0x54e25bd6c3b4158c # initialize rs2
rol x30, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x11, 0x103e5932f78134c3 # initialize rs1
li x31, 0x2bbc4a89c6afe6cd # initialize rs2
rol x31, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xe7fc3c0d69e240b5 # initialize rs1
li x0, 0x133dd57ae433ec70 # initialize rs2
rol x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x660d6d38f1d5c5d3 # initialize rs1
li x1, 0x220259103c503bb7 # initialize rs2
rol x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x549c9d499ae58354 # initialize rs1
li x2, 0x68413d81d0beccb7 # initialize rs2
rol x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x1c22221d68eca56d # initialize rs1
li x3, 0xc4a193000cc463ce # initialize rs2
rol x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xe89b32f4b90fb8a8 # initialize rs1
li x4, 0x4f62b457016f9cbd # initialize rs2
rol x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb65e948b1453de37 # initialize rs1
li x5, 0x4ad9219a9f33c64d # initialize rs2
rol x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x17d60a8d9bd2af3c # initialize rs1
li x6, 0x442cb3f4a6fce777 # initialize rs2
rol x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc6ddc2b94c22fe47 # initialize rs1
li x7, 0xa28a290aff3873f4 # initialize rs2
rol x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x5b39232bc2206f4b # initialize rs1
li x8, 0xbdd91fb709033829 # initialize rs2
rol x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x22c5ed2349048a2b # initialize rs1
li x9, 0xf6eec6a31cbfaaee # initialize rs2
rol x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x848eadb6b7075b1d # initialize rs1
li x10, 0xff0c93f1327e3e36 # initialize rs2
rol x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xdcd9d25a1ba6e173 # initialize rs1
li x11, 0xda50e478b49d1009 # initialize rs2
rol x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x4511182c453c92d6 # initialize rs1
li x12, 0xd8612d766991b670 # initialize rs2
rol x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xfafddb027e55a04e # initialize rs1
li x13, 0x409e5761165af0b9 # initialize rs2
rol x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd3a9368916910d56 # initialize rs1
li x14, 0x552fee7a973ec117 # initialize rs2
rol x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x2c41c2ad82a940f1 # initialize rs1
li x15, 0xc8e388cc72f79a66 # initialize rs2
rol x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xc5d24040887d4f99 # initialize rs1
li x16, 0xc87219ad5023b6e1 # initialize rs2
rol x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x860a3ad7c369020e # initialize rs1
li x17, 0xc366fa4b0619f74d # initialize rs2
rol x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x7aaffd39f5f4359c # initialize rs1
li x18, 0x60e872c7a0b47fed # initialize rs2
rol x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x2162c99081beb00c # initialize rs1
li x19, 0x3b20fc39b368afda # initialize rs2
rol x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x12b01f1672c494b2 # initialize rs1
li x20, 0xa2f1f58dbf117ba3 # initialize rs2
rol x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xd4018a1cce60727a # initialize rs1
li x21, 0x53e41637f56620eb # initialize rs2
rol x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x0e3ae018bbc3a46f # initialize rs1
li x22, 0x44569623686e7f08 # initialize rs2
rol x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x54cf8dde7ad27fba # initialize rs1
li x23, 0x672c900f9fdd8dca # initialize rs2
rol x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xb8f209fe72c7b2eb # initialize rs1
li x24, 0x56ffe894cf56534e # initialize rs2
rol x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xd95f9a5240d7c8d8 # initialize rs1
li x25, 0xb3fbcd954d2de7bd # initialize rs2
rol x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x0b775a5de1161d7e # initialize rs1
li x26, 0x81e5f42a7e784a36 # initialize rs2
rol x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xe5f677a6e1eb1c3a # initialize rs1
li x27, 0x6e079394c60286ea # initialize rs2
rol x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x4c362afbee5900b7 # initialize rs1
li x28, 0x68f70dc3e1bf23b7 # initialize rs2
rol x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x1e227ed2957f5e20 # initialize rs1
li x29, 0x114aa1994510de60 # initialize rs2
rol x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x6d59c3872d946236 # initialize rs1
li x30, 0x756a28b578c2ec7f # initialize rs2
rol x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xdc4bbf4f38121062 # initialize rs1
li x31, 0xc5f4bcdea8142a8e # initialize rs2
rol x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x5, x2 # perform first operation
rol x30, x22, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x16, x2 # perform first operation
rol x10, x19, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x2, x13 # perform first operation
rol x12, x6, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x31, x10 # perform first operation
rol x31, x19, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x19, x11 # perform first operation
rol x11, x29, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x24, x2 # perform first operation
rol x16, x1, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x12, x23 # perform first operation
rol x7, x11, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x16, x10 # perform first operation
rol x30, x31, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x2, x27 # perform first operation
rol x23, x29, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x25, x23 # perform first operation
rol x25, x19, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x8, x1 # perform first operation
rol x1, x22, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x25, x21 # perform first operation
rol x31, x18, x29 # perform second (triggering) operation

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
