///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbb/WALLY-COV-min.S
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
li x0, 0x846dcd0b51a4a5f8 # initialize rs1
li x29, 0xe137f346744586cc # initialize rs2
min x8, x0, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xa4b115cb5efefcc3 # initialize rs1
li x22, 0xc2f2f1c1860c3eb9 # initialize rs2
min x16, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x04264b73db3cc856 # initialize rs1
li x26, 0x5d84bcd14d7da44d # initialize rs2
min x22, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x92c0ca125869eff2 # initialize rs1
li x20, 0x3361b4927fad49fb # initialize rs2
min x14, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xc7d996cac125f2e4 # initialize rs1
li x29, 0xe8382ef3e140e227 # initialize rs2
min x9, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x821563ac7b4a393f # initialize rs1
li x3, 0x8da10b2f74e758ae # initialize rs2
min x9, x5, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x224ca2c0b4353bc7 # initialize rs1
li x14, 0xaf4438dbdf8d8d79 # initialize rs2
min x11, x6, x14 # perform operation
RVTEST_SIGUPD(x7, x0, x11, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x6232546eb77520a7 # initialize rs1
li x21, 0x3b7b049f6c1e4fd7 # initialize rs2
min x19, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xc780168aa9cba3fc # initialize rs1
li x10, 0x0a3ce067d8d77f41 # initialize rs2
min x17, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x9a8eb3557261f5ad # initialize rs1
li x2, 0xe68c89eae4ba83c0 # initialize rs2
min x8, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x627c4adabc8af2e4 # initialize rs1
li x12, 0x6d7cc30ce961d247 # initialize rs2
min x26, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xf685bdd138d93343 # initialize rs1
li x10, 0x136031e2dfdc61f2 # initialize rs2
min x12, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x1a644c3a3638a064 # initialize rs1
li x9, 0x2c3ed9ad10e44789 # initialize rs2
min x21, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x44710202b47b8b26 # initialize rs1
li x18, 0x112e71ad91018af7 # initialize rs2
min x5, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x29ac5b4b6a1942be # initialize rs1
li x22, 0x60e4ac0b65c52806 # initialize rs2
min x11, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x57364dfd278653e1 # initialize rs1
li x28, 0x467585bfc11e2bd5 # initialize rs2
min x8, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xe824d131d7d6ba34 # initialize rs1
li x14, 0xc124972ca78ac2e5 # initialize rs2
min x12, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x641b9eab2cd1aa96 # initialize rs1
li x3, 0x520e03a67af43fd2 # initialize rs2
min x13, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x549ca34bbf8ba386 # initialize rs1
li x6, 0x03b59beea2492e68 # initialize rs2
min x19, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x519d2c6f03293d74 # initialize rs1
li x15, 0x0823015af16829b0 # initialize rs2
min x13, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x370c74be4ac96981 # initialize rs1
li x15, 0xb46da875af7c7a90 # initialize rs2
min x23, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xbbc71ba8d869f1e6 # initialize rs1
li x11, 0x043f4c58b5c86895 # initialize rs2
min x19, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x1f0ceaee9a7218e9 # initialize rs1
li x30, 0x441fe30d854bc97a # initialize rs2
min x19, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xee83dc20bfa374a4 # initialize rs1
li x21, 0xebf693653e5a036c # initialize rs2
min x2, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x6853bf0312f28290 # initialize rs1
li x18, 0x708a58a920bd6045 # initialize rs2
min x1, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x966a6582f497b065 # initialize rs1
li x21, 0x56bc76db9c8d8e3e # initialize rs2
min x9, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x5996f9e7bc0e7db7 # initialize rs1
li x31, 0xe2696aa0b5e2e41b # initialize rs2
min x25, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xc18e8629b01af548 # initialize rs1
li x26, 0x497394bcdec9c83f # initialize rs2
min x5, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x79a3c71e3ea9d858 # initialize rs1
li x17, 0xba3f506ed01fb708 # initialize rs2
min x11, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x362dbecf016d0678 # initialize rs1
li x14, 0x0cd83bcc241e5691 # initialize rs2
min x23, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x9e98abd87fe8bc7a # initialize rs1
li x18, 0x5b132dc523ab0895 # initialize rs2
min x13, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x3f48f008bdb7b275 # initialize rs1
li x10, 0x61390c5893e05486 # initialize rs2
min x20, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x5, 0x5cf0c1f9ea9cf6b3 # initialize rs1
li x0, 0xf1b3a9eb2f47bbdd # initialize rs2
min x2, x5, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x13, 0xd57057a99040f328 # initialize rs1
li x1, 0x5e7d3560560ce99a # initialize rs2
min x29, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x16, 0x31297192b2e11381 # initialize rs1
li x2, 0x2da1b417a12e3935 # initialize rs2
min x11, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x18, 0xfa98e7f727a7f04c # initialize rs1
li x3, 0x3ba87f89ce2476ad # initialize rs2
min x27, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0x49c9bb48b066c026 # initialize rs1
li x4, 0x2f1b536b3ab46497 # initialize rs2
min x30, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x22, 0x8e478a8a833e5caa # initialize rs1
li x5, 0x85c0d9ad7d4a6f14 # initialize rs2
min x3, x22, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x3, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x14, 0x06c115a4715a13e2 # initialize rs1
li x6, 0xe2d23ce0d02d8cc5 # initialize rs2
min x13, x14, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0xba91e3034258f9a8 # initialize rs1
li x7, 0x38f66ac1ab5d08f7 # initialize rs2
min x19, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x20, 0xfaaa495a71877d7d # initialize rs1
li x8, 0x4eeefca7230509c2 # initialize rs2
min x23, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x6, 0x62237f3f56a6d365 # initialize rs1
li x9, 0x1dae99efced4edcc # initialize rs2
min x2, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x7, 0xd9f632ee7e23eb95 # initialize rs1
li x10, 0x1a83ba2200a8e22d # initialize rs2
min x8, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x1, 0x7b7d613d665985cf # initialize rs1
li x11, 0x6d459c34eff4035a # initialize rs2
min x6, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x30, 0x01a9c2d16c9df474 # initialize rs1
li x12, 0xc082e640707e150e # initialize rs2
min x20, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x20, 0x9b59a2d1f9a90f3a # initialize rs1
li x13, 0x9c2f0783c7017a9b # initialize rs2
min x31, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x18, 0x698311d003a68fad # initialize rs1
li x14, 0x5132ca848bb14b7a # initialize rs2
min x3, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x8, 0xc25809cf9076265e # initialize rs1
li x15, 0x51e020864f2887cf # initialize rs2
min x5, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x18, 0xb7345a3d60afac28 # initialize rs1
li x16, 0xb7a8afa19e1f5b9c # initialize rs2
min x1, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x31, 0x32538ba4185fa368 # initialize rs1
li x17, 0x69b9921c858f57cd # initialize rs2
min x3, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x15, 0x71bbd309a517dc49 # initialize rs1
li x18, 0xc8cf1d3a0acee297 # initialize rs2
min x16, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x6, 0xf1f3bac1f121f50b # initialize rs1
li x19, 0x5756d131f9b06418 # initialize rs2
min x21, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x1, 0x75bbaacf84b4ca41 # initialize rs1
li x20, 0xc003be2b2db85006 # initialize rs2
min x30, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x10, 0xc74d265f36ab6f5e # initialize rs1
li x21, 0xf7c9ed67385b219f # initialize rs2
min x20, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x16, 0xaa52070595807abe # initialize rs1
li x22, 0x712e1a4862e1ac73 # initialize rs2
min x13, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x29, 0x4e111de2694719ac # initialize rs1
li x23, 0xbf76c4f561824cd9 # initialize rs2
min x28, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x10, 0x09bd42d51f6bdfd8 # initialize rs1
li x24, 0x5e301d15cbff0171 # initialize rs2
min x22, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x8, 0xec8154731de2dc42 # initialize rs1
li x25, 0x76ccaeedb078dce7 # initialize rs2
min x12, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x28, 0xee785e0cf20cd14e # initialize rs1
li x26, 0x26d04f51ba54b87f # initialize rs2
min x14, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x15, 0x2c15c853eb52f0b2 # initialize rs1
li x27, 0x951518e65462bf48 # initialize rs2
min x31, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x21, 0x3a6751c8a243cbe1 # initialize rs1
li x28, 0xf8e6802c0d5987d5 # initialize rs2
min x24, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x27, 0xc55713613f36d1aa # initialize rs1
li x29, 0x4836f665873571e6 # initialize rs2
min x15, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x27, 0x22932fa4b6326fdf # initialize rs1
li x30, 0xd941edfc29b4bde9 # initialize rs2
min x26, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x23, 0x8deeb7b5ff55db16 # initialize rs1
li x31, 0xe0215cccde45ed55 # initialize rs2
min x16, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 504)

# Testcase cp_rd (Test destination rd = x0)
li x2, 0x8325dae0d6e02fda # initialize rs1
li x11, 0xfb5fba774ee069e4 # initialize rs2
min x0, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x24, 0x6cd99c8df711b6b8 # initialize rs1
li x18, 0x6176999ea43ca609 # initialize rs2
min x1, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x21, 0x94ef6fb8302d48e1 # initialize rs1
li x8, 0x2b9994fd374c8086 # initialize rs2
min x2, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x1, 0x9e1969952068ea99 # initialize rs1
li x31, 0x8fe50ddfb67802ed # initialize rs2
min x3, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x4596efc814215e60 # initialize rs1
li x1, 0xe66a771ed7d6b22e # initialize rs2
min x4, x27, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x075fb3ed7e07a7e3 # initialize rs1
li x3, 0xcda8bcee22352be7 # initialize rs2
min x5, x11, x3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x2, 0xe5883a33efdeb872 # initialize rs1
li x7, 0x2f1f5d9bdd441158 # initialize rs2
min x6, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
li x6, 0xf9c0fe90bbd5145c # initialize rs1
li x9, 0x42dff227e7ea68b4 # initialize rs2
min x7, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x27, 0x40a32310c29e2508 # initialize rs1
li x15, 0x7f9070e7b1f229ca # initialize rs2
min x8, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x15, 0xf2367e8f226cabcd # initialize rs1
li x29, 0xd52c25ee91557961 # initialize rs2
min x9, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x26, 0x5ca62f1f580f4ca2 # initialize rs1
li x21, 0xf1617abcf79c58f0 # initialize rs2
min x10, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x18, 0xc2ecf45b65c166cf # initialize rs1
li x27, 0xb4f24f4d6ffa05e9 # initialize rs2
min x11, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x1, 0x2ff4ce286e2967d8 # initialize rs1
li x9, 0x4bd3263bd8c6e496 # initialize rs2
min x12, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x21, 0xff3ba2bfc00bd492 # initialize rs1
li x27, 0x390e9123d36671b2 # initialize rs2
min x13, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xbca924601f737206 # initialize rs1
li x3, 0x4a200246bd63591a # initialize rs2
min x14, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x27, 0x4bcb21f532925394 # initialize rs1
li x11, 0x25c43161819464cd # initialize rs2
min x15, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xdb05e466f75c9f8a # initialize rs1
li x27, 0x760cfe03d5df5be9 # initialize rs2
min x16, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x5, 0x2178596d6370288b # initialize rs1
li x29, 0x9a51900a4418c927 # initialize rs2
min x17, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x31, 0xd167adc2d0f524dd # initialize rs1
li x13, 0x033e6e863540b3ec # initialize rs2
min x18, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x27, 0xa8db5b2221d8e1df # initialize rs1
li x25, 0x6b6919735045cff7 # initialize rs2
min x19, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x22, 0xb6225819942a2103 # initialize rs1
li x1, 0xd52ab52888bdf4d1 # initialize rs2
min x20, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x2, 0xafb19db5f8f918bc # initialize rs1
li x3, 0xb6fc26a048c69fee # initialize rs2
min x21, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x1, 0x97edc14faabf3e20 # initialize rs1
li x7, 0x857877148a3f4c28 # initialize rs2
min x22, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x26, 0x487618337bfa814c # initialize rs1
li x28, 0x91d5a4fb3ee22efa # initialize rs2
min x23, x26, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x301e479839a241fc # initialize rs1
li x30, 0x6b534c734a9e4aba # initialize rs2
min x24, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x2, 0x3ae52b4810f95616 # initialize rs1
li x3, 0xc750bceed6af98c4 # initialize rs2
min x25, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x23, 0x46a4fe284440fee4 # initialize rs1
li x12, 0x5a67fc112eb2d821 # initialize rs2
min x26, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x11, 0x7663f13567b1ec91 # initialize rs1
li x20, 0x75a41507b0061bac # initialize rs2
min x27, x11, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x9, 0x9940b649eec16e55 # initialize rs1
li x23, 0x0de58084e832e07a # initialize rs2
min x28, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x31, 0xe6af761683014ec9 # initialize rs1
li x8, 0x84d83be0133c8579 # initialize rs2
min x29, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x13, 0xb33e47b24b6013e2 # initialize rs1
li x26, 0xd8d55e489d9d4e45 # initialize rs2
min x30, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x9, 0xc3c74139a8cfe40b # initialize rs1
li x23, 0xe1aa44b4ea4dd88c # initialize rs2
min x31, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x12, 0x0000000000000000 # initialize rs1
li x8, 0x690376a34d71f583 # initialize rs2
min x2, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x27, 0x0000000000000001 # initialize rs1
li x21, 0x5c2616c6940dd2de # initialize rs2
min x12, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x25, 0x0000000000000002 # initialize rs1
li x23, 0x530553c6f27916ff # initialize rs2
min x11, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x16, 0x8000000000000000 # initialize rs1
li x28, 0x50fb02dc595b68de # initialize rs2
min x26, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x28, 0x8000000000000001 # initialize rs1
li x5, 0x5b0750036d10a12b # initialize rs2
min x15, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x2, 0x7fffffffffffffff # initialize rs1
li x27, 0x87733ba21c731873 # initialize rs2
min x26, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x10, 0x7ffffffffffffffe # initialize rs1
li x22, 0x88552f709f7961a0 # initialize rs2
min x30, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x19, 0xab8f217dae3ebc87 # initialize rs2
min x17, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x22, 0xfffffffffffffffe # initialize rs1
li x2, 0x2510a4ffaede5e59 # initialize rs2
min x23, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0xdc95fa59a9dbaeb8 # initialize rs2
min x7, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0xa9cbb761f96d3cfa # initialize rs2
min x19, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x29, 0x5555555555555555 # initialize rs1
li x9, 0x4491556e77748b97 # initialize rs2
min x19, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x5, 0x00dff6eb7d8e5763 # initialize rs2
min x30, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x27, 0x00000000fffffffe # initialize rs1
li x31, 0xd71a8ba02cb81dfe # initialize rs2
min x13, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x2, 0x0000000100000000 # initialize rs1
li x9, 0x09c40a7ee7eb6576 # initialize rs2
min x14, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x7, 0x0000000100000001 # initialize rs1
li x26, 0x2d2354afe5de72f5 # initialize rs2
min x22, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x26, 0xdda29e9246848226 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
min x30, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x26, 0xdec7c4ff23acbe50 # initialize rs1
li x19, 0x0000000000000001 # initialize rs2
min x15, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x26, 0x9dc6d1b14d75aef8 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
min x3, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x1, 0xb086376e880f75fd # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
min x24, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x13, 0x4bf53dd427f33cea # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
min x3, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x15, 0x3cd2bbce82ac5d49 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
min x18, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x16, 0x14bd881f2ff3a075 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
min x3, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x27, 0xc1b1ae1e7d209402 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
min x2, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x1, 0x3f9c86fe670e6b09 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
min x27, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x21, 0x6c3c003a263e90d5 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
min x29, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x10, 0xb90a109500d69909 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x28, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x29, 0x2647c74af142dfda # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
min x1, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x14, 0x080410dc038d67c6 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
min x30, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x16, 0x1e4e4ff84a19d0b5 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
min x14, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x9, 0x36adb34fe9239911 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
min x6, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x5, 0xacb0364d26fdeacc # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
min x20, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x2, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
min x17, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x27, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
min x30, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x11, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
min x26, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x27, 0x0000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
min x26, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x16, 0x0000000000000000 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
min x21, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x10, 0x0000000000000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
min x22, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000000000000 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
min x20, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000000 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
min x24, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x1, 0x0000000000000000 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
min x26, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000000000000 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
min x12, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0000000000000000 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x15, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x13, 0x0000000000000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
min x14, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x11, 0x0000000000000000 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
min x24, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x10, 0x0000000000000000 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
min x16, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x24, 0x0000000000000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
min x14, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x15, 0x0000000000000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
min x6, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x29, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
min x9, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x24, 0x0000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
min x9, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x3, 0x0000000000000001 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
min x13, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x25, 0x0000000000000001 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
min x22, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x24, 0x0000000000000001 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
min x6, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000000000001 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
min x10, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000000000001 # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
min x10, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000001 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
min x18, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x22, 0x0000000000000001 # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
min x21, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x11, 0x0000000000000001 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
min x1, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x0000000000000001 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x23, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x16, 0x0000000000000001 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
min x10, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x23, 0x0000000000000001 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
min x7, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x27, 0x0000000000000001 # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
min x29, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x15, 0x0000000000000001 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
min x10, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x30, 0x0000000000000001 # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
min x31, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x6, 0x0000000000000002 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
min x13, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x15, 0x0000000000000002 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
min x13, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x19, 0x0000000000000002 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
min x20, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x1, 0x0000000000000002 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
min x30, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x5, 0x0000000000000002 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
min x28, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x7, 0x0000000000000002 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
min x9, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000000000002 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
min x20, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x19, 0x0000000000000002 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
min x3, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
min x2, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x19, 0x0000000000000002 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
min x2, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000000000002 # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x21, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x11, 0x0000000000000002 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
min x6, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x30, 0x0000000000000002 # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
min x2, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x30, 0x0000000000000002 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
min x18, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x13, 0x0000000000000002 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
min x23, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x21, 0x0000000000000002 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
min x20, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x22, 0x8000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
min x24, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x1, 0x8000000000000000 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
min x26, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x28, 0x8000000000000000 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
min x16, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x20, 0x8000000000000000 # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
min x21, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x6, 0x8000000000000000 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
min x12, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x23, 0x8000000000000000 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
min x19, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x27, 0x8000000000000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
min x29, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x18, 0x8000000000000000 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
min x8, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x14, 0x8000000000000000 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
min x13, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x28, 0x8000000000000000 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
min x18, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x8000000000000000 # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x13, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x24, 0x8000000000000000 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
min x21, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x31, 0x8000000000000000 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
min x24, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x16, 0x8000000000000000 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
min x3, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x29, 0x8000000000000000 # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
min x25, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x27, 0x8000000000000000 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
min x26, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x17, 0x8000000000000001 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
min x21, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x1, 0x8000000000000001 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
min x30, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x12, 0x8000000000000001 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
min x13, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x31, 0x8000000000000001 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
min x16, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x10, 0x8000000000000001 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
min x28, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x30, 0x8000000000000001 # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
min x10, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x17, 0x8000000000000001 # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
min x16, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x15, 0x8000000000000001 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
min x31, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x1, 0x8000000000000001 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
min x16, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x13, 0x8000000000000001 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
min x27, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x8000000000000001 # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x30, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x27, 0x8000000000000001 # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
min x10, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x2, 0x8000000000000001 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
min x10, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x9, 0x8000000000000001 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
min x30, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x30, 0x8000000000000001 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
min x31, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x15, 0x8000000000000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
min x16, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x24, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
min x5, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x14, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
min x30, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x13, 0x7fffffffffffffff # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
min x8, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x3, 0x7fffffffffffffff # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
min x5, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x23, 0x7fffffffffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
min x11, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x3, 0x7fffffffffffffff # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
min x17, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x1, 0x7fffffffffffffff # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
min x26, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
min x15, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x28, 0x7fffffffffffffff # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
min x30, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x17, 0x7fffffffffffffff # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
min x30, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x7fffffffffffffff # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x8, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x15, 0x7fffffffffffffff # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
min x27, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x14, 0x7fffffffffffffff # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
min x8, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x19, 0x7fffffffffffffff # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
min x18, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x26, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
min x14, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x14, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
min x20, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x7, 0x7ffffffffffffffe # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
min x31, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x7, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
min x12, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x27, 0x7ffffffffffffffe # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
min x11, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x3, 0x7ffffffffffffffe # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
min x27, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x7, 0x7ffffffffffffffe # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
min x1, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x16, 0x7ffffffffffffffe # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
min x1, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7ffffffffffffffe # initialize rs2
min x7, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x23, 0x7ffffffffffffffe # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
min x11, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x15, 0x7ffffffffffffffe # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
min x12, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x15, 0x7ffffffffffffffe # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
min x11, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x7ffffffffffffffe # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x7, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x24, 0x7ffffffffffffffe # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
min x15, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x11, 0x7ffffffffffffffe # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
min x22, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x30, 0x7ffffffffffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
min x18, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x1, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
min x5, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x18, 0x7ffffffffffffffe # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
min x27, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x26, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
min x21, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x13, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
min x23, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x17, 0xffffffffffffffff # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
min x23, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x26, 0xffffffffffffffff # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
min x7, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x25, 0xffffffffffffffff # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
min x18, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x2, 0xffffffffffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
min x19, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x18, 0xffffffffffffffff # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
min x22, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x21, 0xffffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
min x25, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x29, 0xffffffffffffffff # initialize rs1
li x24, 0xfffffffffffffffe # initialize rs2
min x23, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x10, 0xffffffffffffffff # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
min x27, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xffffffffffffffff # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x18, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x1, 0xffffffffffffffff # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
min x20, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x1, 0xffffffffffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
min x28, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x23, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
min x21, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x26, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
min x11, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x25, 0xffffffffffffffff # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
min x27, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x8, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
min x29, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x22, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
min x17, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x21, 0xfffffffffffffffe # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
min x12, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x30, 0xfffffffffffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
min x31, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x16, 0xfffffffffffffffe # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
min x7, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x10, 0xfffffffffffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
min x27, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x15, 0xfffffffffffffffe # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
min x23, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x11, 0xfffffffffffffffe # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
min x16, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
min x29, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x11, 0xfffffffffffffffe # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
min x20, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0xfffffffffffffffe # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x19, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x8, 0xfffffffffffffffe # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
min x13, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x23, 0xfffffffffffffffe # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
min x19, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x25, 0xfffffffffffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
min x14, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x28, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
min x14, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x29, 0xfffffffffffffffe # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
min x24, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
min x10, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
min x13, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
min x11, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
min x22, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
min x31, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
min x7, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
min x28, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
min x29, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
min x30, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
min x11, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x21, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
min x13, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
min x27, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
min x14, x22, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
min x14, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
min x22, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
min x3, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
min x12, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
min x18, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
min x5, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
min x28, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
min x16, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
min x12, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
min x26, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
min x12, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
min x31, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x11, x10, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
min x24, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
min x24, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
min x9, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
min x13, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
min x9, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x31, 0x5555555555555555 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
min x30, x31, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x29, 0x5555555555555555 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
min x9, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x22, 0x5555555555555555 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
min x17, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x22, 0x5555555555555555 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
min x25, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x1, 0x5555555555555555 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
min x29, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x20, 0x5555555555555555 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
min x21, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x20, 0x5555555555555555 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
min x14, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x19, 0x5555555555555555 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
min x16, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x5, 0x5555555555555555 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
min x1, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x14, 0x5555555555555555 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
min x19, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x5555555555555555 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x23, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x27, 0x5555555555555555 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
min x10, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x25, 0x5555555555555555 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
min x29, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x15, 0x5555555555555555 # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
min x5, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x21, 0x5555555555555555 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
min x5, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x17, 0x5555555555555555 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
min x29, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x12, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
min x14, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x15, 0x00000000ffffffff # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
min x12, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x5, 0x00000000ffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
min x8, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x2, 0x00000000ffffffff # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
min x25, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x17, 0x00000000ffffffff # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
min x30, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
min x6, x5, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0x00000000ffffffff # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
min x17, x27, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x25, 0x00000000ffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
min x2, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x23, 0x00000000ffffffff # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
min x10, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x20, 0x00000000ffffffff # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
min x7, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x00000000ffffffff # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x10, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x10, 0x00000000ffffffff # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
min x25, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
min x27, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x18, 0x00000000ffffffff # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
min x10, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x24, 0x00000000ffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
min x14, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x27, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
min x30, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x6, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
min x29, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x2, 0x00000000fffffffe # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
min x3, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x28, 0x00000000fffffffe # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
min x16, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x21, 0x00000000fffffffe # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
min x28, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x26, 0x00000000fffffffe # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
min x16, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x23, 0x00000000fffffffe # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
min x18, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x9, 0x00000000fffffffe # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
min x25, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x5, 0x00000000fffffffe # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
min x17, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
min x8, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x24, 0x00000000fffffffe # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
min x25, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x00000000fffffffe # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x1, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x14, 0x00000000fffffffe # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
min x2, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x31, 0x00000000fffffffe # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
min x22, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x7, 0x00000000fffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
min x23, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x22, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
min x15, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x19, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
min x15, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x24, 0x0000000100000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
min x14, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x19, 0x0000000100000000 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
min x9, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x19, 0x0000000100000000 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
min x24, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x3, 0x0000000100000000 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
min x14, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x22, 0x0000000100000000 # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
min x18, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x20, 0x0000000100000000 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
min x5, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x28, 0x0000000100000000 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
min x29, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x3, 0x0000000100000000 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
min x11, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000100000000 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
min x19, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x11, 0x0000000100000000 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
min x15, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x0000000100000000 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x27, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x8, 0x0000000100000000 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
min x20, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x15, 0x0000000100000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
min x12, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x1, 0x0000000100000000 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
min x20, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x5, 0x0000000100000000 # initialize rs1
li x19, 0x0000000100000000 # initialize rs2
min x9, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x29, 0x0000000100000000 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
min x23, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x13, 0x0000000100000001 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
min x22, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x19, 0x0000000100000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
min x8, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x1, 0x0000000100000001 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
min x25, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x29, 0x0000000100000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
min x27, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x3, 0x0000000100000001 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
min x12, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000001 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
min x1, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
min x2, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x14, 0x0000000100000001 # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
min x3, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x19, 0x0000000100000001 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
min x1, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x3, 0x0000000100000001 # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
min x9, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000100000001 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
min x16, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x15, 0x0000000100000001 # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
min x26, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x30, 0x0000000100000001 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
min x19, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x7, 0x0000000100000001 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
min x25, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x28, 0x0000000100000001 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
min x5, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x15, 0x0000000100000001 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
min x1, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x37deb5854c60642d # initialize rs1
li x0, 0x24a7634a0bec3b13 # initialize rs2
min x11, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x52903a4e36164abe # initialize rs1
li x1, 0x990782d5bb963912 # initialize rs2
min x20, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x3c5776137722e11d # initialize rs1
li x2, 0xca29b22e77864262 # initialize rs2
min x24, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x33cb66aff82e9f93 # initialize rs1
li x3, 0x3bbdba3cd940560f # initialize rs2
min x13, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x21442991cd4ae2fb # initialize rs1
li x4, 0x9a114b4c50525ef2 # initialize rs2
min x29, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x800ee98e730adeeb # initialize rs1
li x5, 0x09eb83cf3b36a4de # initialize rs2
min x13, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x13, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xabe854dd0a1e940c # initialize rs1
li x6, 0x32a650b2d8e5305b # initialize rs2
min x13, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x8b625cc86db2e292 # initialize rs1
li x7, 0xfe4ff75d819412f2 # initialize rs2
min x14, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xa914acd0d4cfab7f # initialize rs1
li x8, 0xefe53aca8eede770 # initialize rs2
min x29, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x747b1c6ec60c9442 # initialize rs1
li x9, 0xbb5ed083d77aa2c6 # initialize rs2
min x10, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x91bbd30e9f1a8c5d # initialize rs1
li x10, 0x34c32eab6d627d34 # initialize rs2
min x13, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x236eed691145a04a # initialize rs1
li x11, 0xd03d773841a08b41 # initialize rs2
min x3, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x5fbc4bf2e11b482c # initialize rs1
li x12, 0x6bef9a8aa919937b # initialize rs2
min x13, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xca595180420ea59c # initialize rs1
li x13, 0xa53707dc67d13e88 # initialize rs2
min x21, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x3b14671212c9d880 # initialize rs1
li x14, 0xc254f1fc53cad217 # initialize rs2
min x11, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xea23768eb42dbe07 # initialize rs1
li x15, 0xcaede6c789cfa144 # initialize rs2
min x30, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x410c2b4d15e96496 # initialize rs1
li x16, 0x9141db82d28a36a0 # initialize rs2
min x1, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x68620520d750d09d # initialize rs1
li x17, 0x403fe24a8a705727 # initialize rs2
min x5, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x3d8b322833cef4d6 # initialize rs1
li x18, 0xa3719a73bf133bc2 # initialize rs2
min x13, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x34bfe24e3b15411a # initialize rs1
li x19, 0x5060e5e49bb06067 # initialize rs2
min x8, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xaf8fe36ed3f1784c # initialize rs1
li x20, 0x99d8b83f52ffaca2 # initialize rs2
min x2, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x5f4ba70554b65177 # initialize rs1
li x21, 0x444234a78c90fe5a # initialize rs2
min x12, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xbe6d0a70bfd9b5de # initialize rs1
li x22, 0x06b806fad2c62229 # initialize rs2
min x9, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x652db16162e4e652 # initialize rs1
li x23, 0x1123713c055a14df # initialize rs2
min x21, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x23618306940ffb1e # initialize rs1
li x24, 0x28ee12edf1bd0286 # initialize rs2
min x27, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x0959bc14dfaff720 # initialize rs1
li x25, 0xb02b2067a02f15d3 # initialize rs2
min x6, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x1000f6960989b1a6 # initialize rs1
li x26, 0x1a4bf03f5c9ee530 # initialize rs2
min x20, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x4ffc6b5b560661bb # initialize rs1
li x27, 0x7b6a014dae32aedd # initialize rs2
min x25, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xa772b319371b864d # initialize rs1
li x28, 0x9b5eba876e103e56 # initialize rs2
min x1, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x4b3c755087fd886f # initialize rs1
li x29, 0xce73f2640d4209cc # initialize rs2
min x13, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xef52eb0ffe73a221 # initialize rs1
li x30, 0x6f8e5d64591bf82f # initialize rs2
min x22, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x508e522ab8c32dd1 # initialize rs1
li x31, 0xbe4477a8bc1908ae # initialize rs2
min x1, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x87ef65d1cf478b2e # initialize rs1
li x12, 0x8e27abf97a51fb3b # initialize rs2
min x0, x0, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x06d6efd9065ce1a2 # initialize rs1
li x1, 0x72983d67fe4d1b1b # initialize rs2
min x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x4aba6402ba345c8c # initialize rs1
li x11, 0x4d1771289890e62d # initialize rs2
min x2, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x1c627e745a8d6ec9 # initialize rs1
li x7, 0x723689ffcdee3416 # initialize rs2
min x3, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9fa92c1c8da98635 # initialize rs1
li x27, 0x6ce63838eda0b9d7 # initialize rs2
min x4, x4, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x7771a428f6c39cc6 # initialize rs1
li x20, 0x6978b78b26bbd14f # initialize rs2
min x5, x5, x20 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x84b25f32672f17d0 # initialize rs1
li x21, 0x68ca47512ea336fb # initialize rs2
min x6, x6, x21 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x42568af3a0a287bd # initialize rs1
li x16, 0xdd6cce3682e315f9 # initialize rs2
min x7, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xfcb80029c0441b95 # initialize rs1
li x18, 0xb56dc08993abc10c # initialize rs2
min x8, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x4df32bd02544569e # initialize rs1
li x16, 0x1681b97a0f65554d # initialize rs2
min x9, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x75881db9a4af51f4 # initialize rs1
li x9, 0x532fe46e0a189ddc # initialize rs2
min x10, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x56ccd761ba4a3f08 # initialize rs1
li x31, 0xdc2e0405c33d39aa # initialize rs2
min x11, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x7f3103518809d89c # initialize rs1
li x8, 0x660117f3144bd9e1 # initialize rs2
min x12, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xba1c5391d791c657 # initialize rs1
li x30, 0x60770adc29e33143 # initialize rs2
min x13, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x18a366e2b4a2403d # initialize rs1
li x5, 0x1dc187239f82d155 # initialize rs2
min x14, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x9fcc905ef1c8f987 # initialize rs1
li x5, 0xb660d4d9847e5992 # initialize rs2
min x15, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xb1d635072079503f # initialize rs1
li x20, 0x9f7fb8630b4cfba3 # initialize rs2
min x16, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xea54602cea2f7c97 # initialize rs1
li x20, 0xabff075c1046eccf # initialize rs2
min x17, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xb28cb4be0e7f8278 # initialize rs1
li x15, 0xe621c153ac7d0f31 # initialize rs2
min x18, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xc95be988bc8d123e # initialize rs1
li x27, 0x66d56d86bbeb2f7a # initialize rs2
min x19, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x7d9008cf90d63248 # initialize rs1
li x1, 0x181f61515f450426 # initialize rs2
min x20, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x3c32658f609b198e # initialize rs1
li x11, 0xe17d13a9312dcbf7 # initialize rs2
min x21, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x2921016422e3545f # initialize rs1
li x21, 0xc2fa59531a4d8eeb # initialize rs2
min x22, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xbec3a5fa11d1d808 # initialize rs1
li x23, 0x25fd735bfd816222 # initialize rs2
min x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xe962858552d64430 # initialize rs1
li x18, 0xeeec3ea5f615e37a # initialize rs2
min x24, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xc6b9cf4981385cb0 # initialize rs1
li x5, 0x46c2ee4352eb5748 # initialize rs2
min x25, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x95fbf9e906e2dedf # initialize rs1
li x16, 0x0da7dd4844256605 # initialize rs2
min x26, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb0f890e3c90c52e6 # initialize rs1
li x10, 0xc38d521d56fdac92 # initialize rs2
min x27, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xebb701f616c63663 # initialize rs1
li x2, 0xa79022416b45b390 # initialize rs2
min x28, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x041e11a86ed9c1b7 # initialize rs1
li x28, 0x30844ac8c1625ef8 # initialize rs2
min x29, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x25d8e94971f99f2a # initialize rs1
li x5, 0xc6a86b1ef07f8fe5 # initialize rs2
min x30, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x3e7f5bac43e05298 # initialize rs1
li x14, 0x9ea3ba313370d53f # initialize rs2
min x31, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x1, 0x7557fc6c5714c60b # initialize rs1
li x0, 0x52f32c0165b061e9 # initialize rs2
min x0, x1, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x28, 0x7314cd3e4ea84eaa # initialize rs1
li x1, 0x835645dce27a89ef # initialize rs2
min x1, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x19, 0x8a50b52805bad914 # initialize rs1
li x2, 0x52672ec590ad631f # initialize rs2
min x2, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x29, 0xfd94d19b8b4efd8c # initialize rs1
li x3, 0xaf7644e5b7152ce6 # initialize rs2
min x3, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0x983547d73cbe6a60 # initialize rs1
li x4, 0x4dec3a00b438aee3 # initialize rs2
min x4, x6, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x1, 0x80607f95632b6285 # initialize rs1
li x5, 0xb826b01f6092ccfa # initialize rs2
min x5, x1, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0xc73cd79c53854560 # initialize rs1
li x6, 0x08647d78a98ef7cc # initialize rs2
min x6, x9, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x29, 0x86feba403cc08a8d # initialize rs1
li x7, 0x3e59a0dc819fdc45 # initialize rs2
min x7, x29, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x9, 0x4d985929750c520b # initialize rs1
li x8, 0x33af7a8597f446f7 # initialize rs2
min x8, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x18, 0x9c7ad58c55cef025 # initialize rs1
li x9, 0x0722edc97e76d8c3 # initialize rs2
min x9, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x31, 0xe32376ef78623ed4 # initialize rs1
li x10, 0x0a12cdf2effdfbaf # initialize rs2
min x10, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x23, 0x141aba3259fdc619 # initialize rs1
li x11, 0x8ea46b89ec10cc40 # initialize rs2
min x11, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x12, 0x0f4b2350cd7718c7 # initialize rs1
li x12, 0x331c198729f7bb51 # initialize rs2
min x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x11, 0xc4166016e627fd8a # initialize rs1
li x13, 0xcc514368ab8002e1 # initialize rs2
min x13, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x7, 0xeafc2fa1117a4ba1 # initialize rs1
li x14, 0x1f257631cfe204b8 # initialize rs2
min x14, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x19, 0x23fede312bb95e62 # initialize rs1
li x15, 0xec080bd3ed4576ff # initialize rs2
min x15, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x29, 0xd75a76b77f2f851c # initialize rs1
li x16, 0x052d5bfe5bb1a63b # initialize rs2
min x16, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x25, 0x46eecb30bb5e38c0 # initialize rs1
li x17, 0x27ea8b83005a4676 # initialize rs2
min x17, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x25, 0x9a3c3d0e6871bfb0 # initialize rs1
li x18, 0x05a55bdb337554f6 # initialize rs2
min x18, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x8e530c54cde47cb8 # initialize rs1
li x19, 0x52a80c24b56e6998 # initialize rs2
min x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x1, 0xb8ec0d15c75af13d # initialize rs1
li x20, 0x8a136b86528d3b87 # initialize rs2
min x20, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x31, 0x4d2d46aacc0c8ee9 # initialize rs1
li x21, 0x943a6392c6649361 # initialize rs2
min x21, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x9, 0xd7a07ebcebfa44de # initialize rs1
li x22, 0xee2abc61f9fbfd3c # initialize rs2
min x22, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x25, 0xc35325763ca30e38 # initialize rs1
li x23, 0xf761fd377754e5bc # initialize rs2
min x23, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x12, 0x19cbb18404f860fc # initialize rs1
li x24, 0x187080d1d538dbf8 # initialize rs2
min x24, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x11, 0x354f542d1fbb5de4 # initialize rs1
li x25, 0xe9d2ba42413a0b7e # initialize rs2
min x25, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x30, 0xe7a1b4034d003557 # initialize rs1
li x26, 0x3f6444c4ffaf9490 # initialize rs2
min x26, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x24, 0x4dba3fb084bc04f9 # initialize rs1
li x27, 0xbd9a4bff75cfe3de # initialize rs2
min x27, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x10, 0x9dfd752de9674928 # initialize rs1
li x28, 0x63072a3697f75763 # initialize rs2
min x28, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x25, 0xab220f15ba68f45a # initialize rs1
li x29, 0xe29d739e94d7c57c # initialize rs2
min x29, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x24, 0xcd1263799727e45a # initialize rs1
li x30, 0xecd6b00a866cea26 # initialize rs2
min x30, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x17, 0x15bdaa6907f1da3f # initialize rs1
li x31, 0xbbe9213a9ca975c4 # initialize rs2
min x31, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x656d1231e7c00985 # initialize rs1
li x0, 0xa672cb343a77e51c # initialize rs2
min x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xe68029f2d848047e # initialize rs1
li x1, 0x8edaff0198f36769 # initialize rs2
min x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x9cbd27c07a8679f5 # initialize rs1
li x2, 0x7217abc527d37d3c # initialize rs2
min x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x3c550dd8cb4e6bb1 # initialize rs1
li x3, 0x6e2402323547a192 # initialize rs2
min x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x9ba66b7f33f5f6e5 # initialize rs1
li x4, 0x555ea30630c8e544 # initialize rs2
min x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x508443a8cba34ef2 # initialize rs1
li x5, 0x431a86fc56b760eb # initialize rs2
min x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x2c48ba29b9ffceee # initialize rs1
li x6, 0x917dd3baf1238377 # initialize rs2
min x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x992e455caef90ebb # initialize rs1
li x7, 0x43455a6374a5115d # initialize rs2
min x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x3aa79d1d2e2daaf5 # initialize rs1
li x8, 0xa202846f5457b9dd # initialize rs2
min x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xf71def5a4a8b9eec # initialize rs1
li x9, 0xc21c61dd25044770 # initialize rs2
min x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x121dbbef06119b86 # initialize rs1
li x10, 0x6459e5bb437428aa # initialize rs2
min x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xa85eaed015a91bbf # initialize rs1
li x11, 0x992b507fc3268979 # initialize rs2
min x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x928c9c4bc600022f # initialize rs1
li x12, 0xc63da40564a129c6 # initialize rs2
min x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xc8325a7462a34483 # initialize rs1
li x13, 0xa2bfaf1211a8e6a9 # initialize rs2
min x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x4d253ff324525880 # initialize rs1
li x14, 0x541b8e16cd081c40 # initialize rs2
min x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xe71702adc32f730c # initialize rs1
li x15, 0x3633b8d35de33da3 # initialize rs2
min x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x98d76538265c7dc3 # initialize rs1
li x16, 0x47a6e50129afc828 # initialize rs2
min x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x182bb84aceb07da9 # initialize rs1
li x17, 0xe66c18e7e61ab1d6 # initialize rs2
min x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x72eb824f72b25457 # initialize rs1
li x18, 0x17157884c184618b # initialize rs2
min x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x105f0eae3e3f770e # initialize rs1
li x19, 0xae1c201051e0f6dc # initialize rs2
min x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xddd96838fbb765af # initialize rs1
li x20, 0x2270f9da32152dcb # initialize rs2
min x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x88185977c45d8625 # initialize rs1
li x21, 0xe8d863246893efe1 # initialize rs2
min x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x1b2a0209f3ce3fa3 # initialize rs1
li x22, 0xd40c4c375a3182ac # initialize rs2
min x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xd5c1d840a17e2f5e # initialize rs1
li x23, 0x533ddf6696adecb6 # initialize rs2
min x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x87d695e88b0bd91c # initialize rs1
li x24, 0xdec57d5be709b013 # initialize rs2
min x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x7bbfad1a48d583b8 # initialize rs1
li x25, 0xe0c4d77b1387a194 # initialize rs2
min x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xbf50b7d6e296256d # initialize rs1
li x26, 0xc40e37120238cbc5 # initialize rs2
min x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x562d6c7770a83f9c # initialize rs1
li x27, 0x1f22cbfe5209b97f # initialize rs2
min x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x382181428976d233 # initialize rs1
li x28, 0xaa525de00243ea35 # initialize rs2
min x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x5df78af2f2bf9944 # initialize rs1
li x29, 0x97fa0d5b4a19242d # initialize rs2
min x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xb5a8f3a4e0c227a9 # initialize rs1
li x30, 0x3ae1815b0fad3ab2 # initialize rs2
min x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x1d08fe0e19ec1e09 # initialize rs1
li x31, 0x584b9d93d0c18eec # initialize rs2
min x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x22, x2, x17 # perform first operation
min x30, x19, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x16, x11, x15 # perform first operation
min x23, x29, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x13, x12 # perform first operation
min x21, x11, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x30, x14 # perform first operation
min x24, x24, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x26, x1, x29 # perform first operation
min x2, x9, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x30, x1, x17 # perform first operation
min x13, x20, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x28, x22, x1 # perform first operation
min x28, x27, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x6, x24, x5 # perform first operation
min x6, x7, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x29, x30 # perform first operation
min x16, x11, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x23, x18 # perform first operation
min x23, x12, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x26, x28, x30 # perform first operation
min x30, x18, x3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x21, x10, x19 # perform first operation
min x16, x2, x1 # perform second (triggering) operation

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
