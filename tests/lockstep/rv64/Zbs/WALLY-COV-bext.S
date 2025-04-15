///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zbs/WALLY-COV-bext.S
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
li x0, 0x2c2a1ebd5ea9df94 # initialize rs1
li x2, 0x4c97097ab4464d1a # initialize rs2
bext x10, x0, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x7118aa9fc4706ea6 # initialize rs1
li x29, 0x018ed108befc4096 # initialize rs2
bext x19, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x9e3c460fd68c4c89 # initialize rs1
li x1, 0x26845b82f03cb068 # initialize rs2
bext x30, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xde4912d6a2297629 # initialize rs1
li x21, 0xc2361cf1baf62e6a # initialize rs2
bext x8, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x04dbc0be37de4a1c # initialize rs1
li x11, 0x9bd38ad9ab396dec # initialize rs2
bext x14, x4, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd5b7a94480740e85 # initialize rs1
li x27, 0x192b70907637b294 # initialize rs2
bext x9, x5, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x24fe29fb8c451f05 # initialize rs1
li x17, 0xe4c604818603b0c1 # initialize rs2
bext x5, x6, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x5, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4f0f4b4df13b9cd9 # initialize rs1
li x21, 0x0602449cbc9ad8db # initialize rs2
bext x29, x7, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x623fe40529a52393 # initialize rs1
li x10, 0x921453fad34bfe21 # initialize rs2
bext x11, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xb6a51011619e4431 # initialize rs1
li x21, 0xfd4bef9ed9f32a4e # initialize rs2
bext x6, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x63666402bafccc11 # initialize rs1
li x11, 0x5ce00f5e6d2588c7 # initialize rs2
bext x23, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x011d4410b816626c # initialize rs1
li x27, 0x37e2675ca063d70f # initialize rs2
bext x19, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xc2de77048126cd12 # initialize rs1
li x16, 0x98b97ff40db5f359 # initialize rs2
bext x3, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x7dc8dcbebeeabb68 # initialize rs1
li x31, 0x7d9d7843333fbe79 # initialize rs2
bext x25, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x178bc05d8eb3b5a7 # initialize rs1
li x30, 0x5f435d3000757962 # initialize rs2
bext x3, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x365d86a7730405ec # initialize rs1
li x25, 0xbac4fe6bb28abbc3 # initialize rs2
bext x20, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xc07c64ec74809125 # initialize rs1
li x25, 0x2dd759a0f28dc83c # initialize rs2
bext x27, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x384b3c02bcf2f0be # initialize rs1
li x14, 0x9d33f35df4ac15cc # initialize rs2
bext x18, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x8439716c2e0cc30d # initialize rs1
li x23, 0xe8658ea29ae40e6c # initialize rs2
bext x9, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x88b0b691936fee04 # initialize rs1
li x17, 0x586bbb25ec33448f # initialize rs2
bext x14, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xc1730e2549141b60 # initialize rs1
li x7, 0x81a2681e06aebb42 # initialize rs2
bext x28, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x0ada5032bd4cd78d # initialize rs1
li x25, 0xcbc2c43323628c6e # initialize rs2
bext x15, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x85a06456364f9cad # initialize rs1
li x3, 0x99226b42e16c21ed # initialize rs2
bext x20, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xe842431490863785 # initialize rs1
li x20, 0x51f636def4f1e6ab # initialize rs2
bext x26, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xa16aabc9fab2346a # initialize rs1
li x1, 0x66734bee29f987a7 # initialize rs2
bext x30, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x96b854856a819d35 # initialize rs1
li x27, 0x405eb1260d654b28 # initialize rs2
bext x23, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xfd6e3f356c6c585f # initialize rs1
li x12, 0x0ff9ac976a496813 # initialize rs2
bext x15, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xfe61dc905cfa3e90 # initialize rs1
li x10, 0xeaa21d6e0b1ddd4a # initialize rs2
bext x28, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xfb6ef78d559b6ea0 # initialize rs1
li x10, 0x571240ad321814c1 # initialize rs2
bext x8, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x313311a3780094ef # initialize rs1
li x25, 0xe85daa215684307e # initialize rs2
bext x12, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x40ad3e943cc43fa0 # initialize rs1
li x6, 0x80fbc0c32a9c824e # initialize rs2
bext x2, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xe78954e1ccae887c # initialize rs1
li x5, 0x9ef8c8a5b13334ac # initialize rs2
bext x1, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x24, 0xb74b32ce10816fe7 # initialize rs1
li x0, 0x0ca204ef1f7284d3 # initialize rs2
bext x6, x24, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x3, 0xba5cb2a35caea43f # initialize rs1
li x1, 0xaf9225f47e26a043 # initialize rs2
bext x23, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x28, 0xa1fdbef1da8dcfe9 # initialize rs1
li x2, 0xdf302807f980c0c5 # initialize rs2
bext x31, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x5, 0x3f27474ff98f9f0d # initialize rs1
li x3, 0x035f73d698349b50 # initialize rs2
bext x13, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x30, 0x9a262c1e723585c0 # initialize rs1
li x4, 0x34f75d0ff13ad652 # initialize rs2
bext x13, x30, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x7, 0xe6ccf738b933e5c6 # initialize rs1
li x5, 0xc6ce84a5a837d455 # initialize rs2
bext x19, x7, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x30, 0x98bb710d8a714cf4 # initialize rs1
li x6, 0x05652c9106b2e22c # initialize rs2
bext x19, x30, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0xc0418016ac56eb83 # initialize rs1
li x7, 0x1958e4ad8d2db7f7 # initialize rs2
bext x21, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x12, 0xd0bb0af881f82890 # initialize rs1
li x8, 0xd08c9743d597c879 # initialize rs2
bext x17, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x11, 0x21c21b78fcdf113d # initialize rs1
li x9, 0xbca42db575e50ecb # initialize rs2
bext x8, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x5, 0x9e5c6a8fb1cbe2d3 # initialize rs1
li x10, 0x8e8245dbd0655d07 # initialize rs2
bext x22, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x21, 0xaa736f241e57983c # initialize rs1
li x11, 0x736ccbf660cf76ce # initialize rs2
bext x26, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x30, 0x75ce642d2d8df3d7 # initialize rs1
li x12, 0x4d4e5b15ededd5a0 # initialize rs2
bext x16, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x19, 0x3466fa6d0e5f11db # initialize rs1
li x13, 0x3110b5dbed1ae1f6 # initialize rs2
bext x5, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x22, 0x9e5ef9d8674b4dc4 # initialize rs1
li x14, 0x09f2442d7b42a6a5 # initialize rs2
bext x1, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x8, 0x8d13e218a105289a # initialize rs1
li x15, 0x62b84d21d9b7fd07 # initialize rs2
bext x23, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x23, 0xbc0841c150d36b40 # initialize rs1
li x16, 0x76965cf36e2ab354 # initialize rs2
bext x1, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x13, 0xabcd5c4704b8a071 # initialize rs1
li x17, 0xb7eb73b806cbb96c # initialize rs2
bext x28, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x14, 0x4938b812caffff7f # initialize rs1
li x18, 0x43b6d79731d54bcd # initialize rs2
bext x19, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x11, 0x348725a4c51c30dd # initialize rs1
li x19, 0x5153d6db3469680b # initialize rs2
bext x5, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x7, 0x40ea89d7ca2e9a1c # initialize rs1
li x20, 0xd473809adde77bb6 # initialize rs2
bext x12, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x16, 0xcc1d3b902494a630 # initialize rs1
li x21, 0x96344a485777cbff # initialize rs2
bext x31, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x21, 0xd9ed86bf575f3361 # initialize rs1
li x22, 0x5d4d63b3f180c208 # initialize rs2
bext x2, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x9, 0x2f4b5b6d7454b96c # initialize rs1
li x23, 0x59c49876d0ef93ad # initialize rs2
bext x29, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x25, 0xe4c41764b82cf41e # initialize rs1
li x24, 0xcf84162be86f0e4e # initialize rs2
bext x19, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x14, 0x7d4e7f2cb2f303fb # initialize rs1
li x25, 0xaac2abb5cfca562a # initialize rs2
bext x29, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x29, 0x557a0f0948fa932f # initialize rs1
li x26, 0xf5e98ee6514a1b6c # initialize rs2
bext x9, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x15, 0x2f3de3819c35a423 # initialize rs1
li x27, 0xf4f9afc6b28fc7e1 # initialize rs2
bext x11, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x30, 0xfd85ce9e1a5f750d # initialize rs1
li x28, 0x4096af46f42afee5 # initialize rs2
bext x9, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x24, 0x5454bea28e56ca1a # initialize rs1
li x29, 0xb760427f674ad39a # initialize rs2
bext x30, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x19, 0x0f0027a0a64960cc # initialize rs1
li x30, 0xd5ac1a50e0bae115 # initialize rs2
bext x1, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x13, 0xa659afce270d95df # initialize rs1
li x31, 0x4d8662411d966b20 # initialize rs2
bext x12, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cp_rd (Test destination rd = x0)
li x8, 0x6cce3156f7d0e16a # initialize rs1
li x30, 0x6621fb20a175168b # initialize rs2
bext x0, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x13, 0xa1d0df06e3b321c3 # initialize rs1
li x31, 0xbcb8bcf4516a12c3 # initialize rs2
bext x1, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x10, 0x32ca5528f2cca095 # initialize rs1
li x27, 0x99015fa0be5159c4 # initialize rs2
bext x2, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x12, 0xae7b6608c1ce39e9 # initialize rs1
li x9, 0xf33d33b9dedfecf1 # initialize rs2
bext x3, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0x31f7a506a83ddf9f # initialize rs1
li x26, 0xdb28918d7cf8a2ae # initialize rs2
bext x4, x2, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x1d6b30f8ee1fd63c # initialize rs1
li x2, 0x10b4d496a9e74f17 # initialize rs2
bext x5, x25, x2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0x2080db4c60f659a4 # initialize rs1
li x17, 0x865631efd7095496 # initialize rs2
bext x6, x2, x17 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x11, 0xd746ef71ce649b45 # initialize rs1
li x12, 0x10a47465e3786bb2 # initialize rs2
bext x7, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x16, 0x4c40c8021a5b432c # initialize rs1
li x31, 0x580fac57f3e94859 # initialize rs2
bext x8, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x31, 0x07f69aba4e082b28 # initialize rs1
li x13, 0x5d3aea1400a99aa9 # initialize rs2
bext x9, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x11, 0x32482a688625e4b6 # initialize rs1
li x2, 0x6023d3aaf11bbb32 # initialize rs2
bext x10, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x8, 0xdfbcabbf7b6043b2 # initialize rs1
li x5, 0x96b546aa449b6c5f # initialize rs2
bext x11, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x10, 0xb0cb9ae6f63cd4f5 # initialize rs1
li x9, 0x4d7959b40543dff1 # initialize rs2
bext x12, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x15, 0x75c9b10b034da0e6 # initialize rs1
li x6, 0xafb02d8f7ea06941 # initialize rs2
bext x13, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x9, 0x473811936ef838f3 # initialize rs1
li x25, 0x48fc06773e06fabb # initialize rs2
bext x14, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x18, 0x40cfc720b5fa1a00 # initialize rs1
li x27, 0x2907406b5cbe557d # initialize rs2
bext x15, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x30, 0x28fe111a9e4d18fa # initialize rs1
li x17, 0xdd79841699237bad # initialize rs2
bext x16, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x7, 0x2df19105fdabc37b # initialize rs1
li x2, 0x2f47ea976d866d19 # initialize rs2
bext x17, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x5, 0x814d4af5e0ac3a69 # initialize rs1
li x3, 0xb88baac1a867d9e0 # initialize rs2
bext x18, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x2, 0xda93de3d0059cff1 # initialize rs1
li x25, 0xba412e3a3b00df61 # initialize rs2
bext x19, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x14, 0x57b880b06747face # initialize rs1
li x25, 0x37e05b8694375794 # initialize rs2
bext x20, x14, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x23, 0x46b734a41da35e23 # initialize rs1
li x3, 0xb78e3a30c349748e # initialize rs2
bext x21, x23, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x6, 0x020a4d564ad979a5 # initialize rs1
li x21, 0xaafa3c3d729c688c # initialize rs2
bext x22, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x13, 0x2737bba9f02f6c06 # initialize rs1
li x1, 0x22aecf5bdbe561aa # initialize rs2
bext x23, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x31, 0x5f68b7f61d44a135 # initialize rs1
li x14, 0xe030dda89b2858a7 # initialize rs2
bext x24, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x10, 0xb0da488845d2ce72 # initialize rs1
li x3, 0x1aa25973afaebf38 # initialize rs2
bext x25, x10, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x15, 0xe9e99ce8cfd200c3 # initialize rs1
li x7, 0x12d88004732255bf # initialize rs2
bext x26, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x28, 0x6cb0af726fe0d353 # initialize rs1
li x5, 0xca359032d2b8807f # initialize rs2
bext x27, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x13, 0x54f12f769c77b02d # initialize rs1
li x30, 0x666c603280adbd4a # initialize rs2
bext x28, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x1, 0xd05a1ace64f1752a # initialize rs1
li x19, 0x177e5ce0fd20c9d2 # initialize rs2
bext x29, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x14, 0x817fa77558786e39 # initialize rs1
li x27, 0x1aa9cf70179ff039 # initialize rs2
bext x30, x14, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x5, 0xa6ee3ec64b8dad3f # initialize rs1
li x13, 0xa4c54672141d8f48 # initialize rs2
bext x31, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x1, 0x0000000000000000 # initialize rs1
li x29, 0x7fcad0b5af6a9bca # initialize rs2
bext x12, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x31, 0x0000000000000001 # initialize rs1
li x15, 0x8f3b3f9ef256618b # initialize rs2
bext x3, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x21, 0x0000000000000002 # initialize rs1
li x13, 0x41b0fb1f7c2e35de # initialize rs2
bext x30, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x7, 0x8000000000000000 # initialize rs1
li x11, 0xd5ea24646f344a38 # initialize rs2
bext x6, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x27, 0x8000000000000001 # initialize rs1
li x13, 0x3d0982b5f48f716b # initialize rs2
bext x23, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x9, 0x7fffffffffffffff # initialize rs1
li x13, 0x5cd7b536a008d64d # initialize rs2
bext x27, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x1, 0x7ffffffffffffffe # initialize rs1
li x14, 0xed7dcfcfc00602ea # initialize rs2
bext x11, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x16, 0xffffffffffffffff # initialize rs1
li x7, 0xac433cf958cf4d25 # initialize rs2
bext x25, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x3, 0xfffffffffffffffe # initialize rs1
li x5, 0x785c23145d6187d1 # initialize rs2
bext x19, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x3791bc90261db4bd # initialize rs2
bext x24, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0xda66cc72d40a1a5e # initialize rs2
bext x5, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x5555555555555555 # initialize rs1
li x9, 0x58805a9e63919d1f # initialize rs2
bext x22, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x24, 0x00000000ffffffff # initialize rs1
li x8, 0xd8b8d292ec6dfd2a # initialize rs2
bext x26, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x8, 0x00000000fffffffe # initialize rs1
li x3, 0x2606f992e2586fb3 # initialize rs2
bext x15, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x15, 0x0000000100000000 # initialize rs1
li x21, 0xbdb4670496d0c7ba # initialize rs2
bext x7, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x8, 0x0000000100000001 # initialize rs1
li x27, 0x739843c98392eef8 # initialize rs2
bext x15, x8, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x6, 0x7794530703163550 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
bext x17, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x5, 0x0f91ec8b9f141391 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
bext x2, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x23, 0x03b5b41255ef610a # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
bext x19, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x31, 0xba4f68177b907e89 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
bext x1, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x25, 0x00633a535e2e4934 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
bext x15, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x10, 0x03b364c766d25388 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
bext x19, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x11, 0x4a8a16df5623a144 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
bext x12, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x16, 0x6ea1200991a0454f # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
bext x15, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x28, 0xaeb23e165c549d24 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
bext x22, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x28, 0x3a4fc58029854d37 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
bext x5, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x9, 0xda7a6988c4eea932 # initialize rs1
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x12, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x7, 0x3b53a8c6901863f2 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
bext x20, x7, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x16, 0xd83058e4f63d7573 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
bext x5, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x19, 0xcbfee8a0a76835c4 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
bext x15, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x5, 0x11ef1cb63f4cb7f8 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
bext x29, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x17, 0xe2a502275505bb20 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
bext x24, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x30, 0x0000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
bext x13, x30, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x30, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
bext x23, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x12, 0x0000000000000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bext x21, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x12, 0x0000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
bext x26, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x27, 0x0000000000000000 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bext x16, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x24, 0x0000000000000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
bext x29, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000000000000 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
bext x7, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000000 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
bext x13, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000000000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
bext x29, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000000000000 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
bext x23, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0000000000000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x20, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x10, 0x0000000000000000 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
bext x2, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x10, 0x0000000000000000 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
bext x19, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x29, 0x0000000000000000 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bext x19, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x8, 0x0000000000000000 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
bext x18, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x1, 0x0000000000000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
bext x11, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x1, 0x0000000000000001 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
bext x14, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x11, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bext x20, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x8, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
bext x1, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x22, 0x0000000000000001 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
bext x24, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x12, 0x0000000000000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
bext x24, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000001 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bext x29, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000000000001 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
bext x14, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x25, 0x0000000000000001 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
bext x26, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x29, 0x0000000000000001 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
bext x5, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x17, 0x0000000000000001 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
bext x15, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x0000000000000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x10, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x28, 0x0000000000000001 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
bext x29, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x15, 0x0000000000000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
bext x19, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0x0000000000000001 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bext x24, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x17, 0x0000000000000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
bext x8, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x3, 0x0000000000000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
bext x30, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x20, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
bext x15, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x20, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bext x28, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x28, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
bext x18, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x23, 0x0000000000000002 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
bext x29, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x14, 0x0000000000000002 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
bext x19, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x21, 0x0000000000000002 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
bext x19, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x21, 0x0000000000000002 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bext x25, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x16, 0x0000000000000002 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
bext x2, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x9, 0x0000000000000002 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
bext x13, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000000000002 # initialize rs1
li x15, 0x5bbc887763ae86f2 # initialize rs2
bext x3, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000000000002 # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x24, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x17, 0x0000000000000002 # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
bext x30, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x8, 0x0000000000000002 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
bext x24, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
bext x8, x15, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x31, 0x0000000000000002 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
bext x8, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x29, 0x0000000000000002 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
bext x11, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x8, 0x8000000000000000 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
bext x13, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x27, 0x8000000000000000 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
bext x11, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x3, 0x8000000000000000 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bext x27, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x28, 0x8000000000000000 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
bext x29, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x11, 0x8000000000000000 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
bext x6, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x5, 0x8000000000000000 # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
bext x10, x5, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x7, 0x8000000000000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
bext x14, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x28, 0x8000000000000000 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bext x15, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x29, 0x8000000000000000 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
bext x2, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x18, 0x8000000000000000 # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
bext x28, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x8000000000000000 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x1, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x13, 0x8000000000000000 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bext x10, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x9, 0x8000000000000000 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
bext x16, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x3, 0x8000000000000000 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
bext x21, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x2, 0x8000000000000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
bext x24, x2, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x12, 0x8000000000000000 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
bext x21, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x7, 0x8000000000000001 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
bext x27, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x15, 0x8000000000000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
bext x3, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x12, 0x8000000000000001 # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
bext x2, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x28, 0x8000000000000001 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bext x11, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x6, 0x8000000000000001 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
bext x30, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x22, 0x8000000000000001 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
bext x10, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x21, 0x8000000000000001 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
bext x10, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x6, 0x8000000000000001 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
bext x9, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x23, 0x8000000000000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
bext x14, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x20, 0x8000000000000001 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
bext x18, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x8000000000000001 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x20, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x29, 0x8000000000000001 # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
bext x17, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x3, 0x8000000000000001 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
bext x13, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x10, 0x8000000000000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
bext x27, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x9, 0x8000000000000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bext x14, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x2, 0x8000000000000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
bext x13, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x19, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
bext x6, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x26, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bext x5, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x29, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000002 # initialize rs2
bext x24, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x6, 0x7fffffffffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
bext x3, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x14, 0x7fffffffffffffff # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
bext x31, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
bext x10, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x12, 0x7fffffffffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
bext x21, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
bext x14, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x22, 0x7fffffffffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
bext x2, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x18, 0x7fffffffffffffff # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
bext x3, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x7fffffffffffffff # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x22, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x26, 0x7fffffffffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
bext x9, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x25, 0x7fffffffffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
bext x6, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x31, 0x7fffffffffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
bext x17, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x22, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
bext x19, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x31, 0x7fffffffffffffff # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
bext x22, x31, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x1, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
bext x12, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x3, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
bext x22, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x21, 0x7ffffffffffffffe # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
bext x11, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0x7ffffffffffffffe # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bext x15, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x29, 0x7ffffffffffffffe # initialize rs1
li x2, 0x8000000000000001 # initialize rs2
bext x18, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x21, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bext x27, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x31, 0x7ffffffffffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
bext x26, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
bext x1, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x8, 0x7ffffffffffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
bext x25, x8, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x16, 0x7ffffffffffffffe # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
bext x15, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x7ffffffffffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x24, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x17, 0x7ffffffffffffffe # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
bext x18, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x16, 0x7ffffffffffffffe # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
bext x22, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
bext x19, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x8, 0x7ffffffffffffffe # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
bext x14, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x18, 0x7ffffffffffffffe # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
bext x21, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x18, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
bext x8, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x19, 0xffffffffffffffff # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
bext x14, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x13, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
bext x2, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x20, 0xffffffffffffffff # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
bext x30, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x2, 0xffffffffffffffff # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
bext x7, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x24, 0xffffffffffffffff # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
bext x6, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x13, 0xffffffffffffffff # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
bext x10, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x30, 0xffffffffffffffff # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
bext x23, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x25, 0xffffffffffffffff # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
bext x13, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x1, 0xffffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
bext x11, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0xffffffffffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x30, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x2, 0xffffffffffffffff # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
bext x3, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x3, 0xffffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
bext x9, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x25, 0xffffffffffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
bext x9, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x6, 0xffffffffffffffff # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
bext x22, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x1, 0xffffffffffffffff # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
bext x14, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x31, 0xfffffffffffffffe # initialize rs1
li x1, 0x0000000000000000 # initialize rs2
bext x20, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x24, 0xfffffffffffffffe # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
bext x2, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x31, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
bext x30, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x3, 0xfffffffffffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
bext x22, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x5, 0xfffffffffffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
bext x10, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x24, 0xfffffffffffffffe # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
bext x13, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
bext x27, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x21, 0xfffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
bext x31, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
bext x17, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x19, 0xfffffffffffffffe # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
bext x21, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xfffffffffffffffe # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x9, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x25, 0xfffffffffffffffe # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
bext x3, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x22, 0xfffffffffffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
bext x6, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
bext x2, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x21, 0xfffffffffffffffe # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
bext x5, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x22, 0xfffffffffffffffe # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
bext x28, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
bext x9, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
bext x10, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x12, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
bext x16, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
bext x3, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
bext x16, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
bext x25, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
bext x1, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
bext x23, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
bext x10, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
bext x25, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x14, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
bext x24, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
bext x9, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
bext x24, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
bext x19, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
bext x17, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
bext x9, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bext x8, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
bext x15, x12, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
bext x22, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
bext x9, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
bext x31, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
bext x16, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
bext x25, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
bext x11, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
bext x26, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x30, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
bext x20, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
bext x22, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
bext x1, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
bext x18, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
bext x1, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x7, 0x5555555555555555 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
bext x14, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x2, 0x5555555555555555 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
bext x9, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x26, 0x5555555555555555 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
bext x5, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x20, 0x5555555555555555 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
bext x10, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x5, 0x5555555555555555 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
bext x31, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x1, 0x5555555555555555 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
bext x28, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x7, 0x5555555555555555 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bext x13, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x7, 0x5555555555555555 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
bext x30, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x29, 0x5555555555555555 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
bext x26, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x20, 0x5555555555555555 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
bext x30, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x5555555555555555 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x10, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x20, 0x5555555555555555 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
bext x19, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
bext x23, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x16, 0x5555555555555555 # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
bext x3, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x6, 0x5555555555555555 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
bext x14, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x29, 0x5555555555555555 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
bext x18, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x30, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
bext x6, x30, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x30, 0x00000000ffffffff # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
bext x24, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x2, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
bext x26, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x12, 0x00000000ffffffff # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
bext x20, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x15, 0x00000000ffffffff # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
bext x31, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x30, 0x00000000ffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
bext x12, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x22, 0x00000000ffffffff # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
bext x27, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x9, 0x00000000ffffffff # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
bext x23, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x1, 0x00000000ffffffff # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
bext x29, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x31, 0x00000000ffffffff # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
bext x9, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x00000000ffffffff # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x5, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x10, 0x00000000ffffffff # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
bext x22, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x27, 0x00000000ffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
bext x1, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x20, 0x00000000ffffffff # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
bext x10, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x3, 0x00000000ffffffff # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
bext x13, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x24, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
bext x11, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x10, 0x00000000fffffffe # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
bext x6, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x31, 0x00000000fffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
bext x28, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x25, 0x00000000fffffffe # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
bext x1, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x7, 0x00000000fffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
bext x25, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x2, 0x00000000fffffffe # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
bext x23, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x18, 0x00000000fffffffe # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
bext x10, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x3, 0x00000000fffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bext x21, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x27, 0x00000000fffffffe # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
bext x28, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x6, 0x00000000fffffffe # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
bext x1, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x26, 0x00000000fffffffe # initialize rs1
li x23, 0x5bbc887763ae86f2 # initialize rs2
bext x5, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x00000000fffffffe # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x11, x5, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x11, 0x00000000fffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
bext x21, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x3, 0x00000000fffffffe # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
bext x8, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x8, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
bext x2, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x22, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
bext x2, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x24, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
bext x15, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x22, 0x0000000100000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
bext x19, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x15, 0x0000000100000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
bext x12, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x31, 0x0000000100000000 # initialize rs1
li x1, 0x0000000000000002 # initialize rs2
bext x30, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x30, 0x0000000100000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
bext x29, x30, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x7, 0x0000000100000000 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
bext x11, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x13, 0x0000000100000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
bext x27, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x24, 0x0000000100000000 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
bext x14, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x16, 0x0000000100000000 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
bext x26, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000100000000 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
bext x2, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000100000000 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
bext x12, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x0000000100000000 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x12, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x25, 0x0000000100000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
bext x27, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x12, 0x0000000100000000 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
bext x9, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x27, 0x0000000100000000 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
bext x20, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x8, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
bext x9, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x31, 0x0000000100000000 # initialize rs1
li x23, 0x0000000100000001 # initialize rs2
bext x25, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x19, 0x0000000100000001 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
bext x12, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x24, 0x0000000100000001 # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
bext x3, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x29, 0x0000000100000001 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
bext x27, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x3, 0x0000000100000001 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
bext x20, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x28, 0x0000000100000001 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
bext x13, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000100000001 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
bext x31, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x2, 0x0000000100000001 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
bext x23, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x18, 0x0000000100000001 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
bext x12, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
bext x29, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x26, 0x0000000100000001 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
bext x27, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000100000001 # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
bext x24, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x14, 0x0000000100000001 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
bext x1, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x5, 0x0000000100000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
bext x9, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x26, 0x0000000100000001 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
bext x7, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x16, 0x0000000100000001 # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
bext x2, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x13, 0x0000000100000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
bext x27, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xc45cfe11942512f1 # initialize rs1
li x0, 0x7933d2054ba25a03 # initialize rs2
bext x12, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x9c05c896244f0d3f # initialize rs1
li x1, 0x05af91efaeeb44a7 # initialize rs2
bext x25, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xe776cb2b3fe3e2df # initialize rs1
li x2, 0xa85c52f629095730 # initialize rs2
bext x16, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x555341deb82a99eb # initialize rs1
li x3, 0x3f2a6ad002febc74 # initialize rs2
bext x2, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x8f3f96d0e5905616 # initialize rs1
li x4, 0xcd1af32139abf34c # initialize rs2
bext x7, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x52894f7d05380564 # initialize rs1
li x5, 0x06c7b9cdab2585b9 # initialize rs2
bext x18, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x18, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xb81e8ee0a6b96b8f # initialize rs1
li x6, 0x2842f8965c5f5e4d # initialize rs2
bext x19, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x19, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x60be9d2b8749d890 # initialize rs1
li x7, 0x70ac16f8c49f65d0 # initialize rs2
bext x19, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x459227f43cfb0779 # initialize rs1
li x8, 0x11a22ebfb9e20ae9 # initialize rs2
bext x13, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x3a64612e8e1def6d # initialize rs1
li x9, 0x60e58ee570d91e66 # initialize rs2
bext x2, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x58243e7d75618f5c # initialize rs1
li x10, 0x7c72d79f9622c0b9 # initialize rs2
bext x28, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x55200263728b4a1c # initialize rs1
li x11, 0x967fcc8f4926ffcb # initialize rs2
bext x31, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xd4c2474ca02374e1 # initialize rs1
li x12, 0xe44213dc60b79126 # initialize rs2
bext x19, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xe205597e7356d408 # initialize rs1
li x13, 0xfe1e7f10de991669 # initialize rs2
bext x31, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xfe47e81491ef8761 # initialize rs1
li x14, 0x1cb6de24171cef04 # initialize rs2
bext x21, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x6428cbe7e3e828f0 # initialize rs1
li x15, 0xccc9142bbb3664ed # initialize rs2
bext x13, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x9051093c067153ac # initialize rs1
li x16, 0x46525df7aa160003 # initialize rs2
bext x14, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x7c900015960595af # initialize rs1
li x17, 0x0debb8f72ae72d40 # initialize rs2
bext x8, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xccdbc9e315a8aa35 # initialize rs1
li x18, 0xcd5baddd4f59d9e2 # initialize rs2
bext x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x8c8f7f2027b4f3de # initialize rs1
li x19, 0x15ceb72553e09d71 # initialize rs2
bext x13, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x01edea8b26869737 # initialize rs1
li x20, 0xa8af4160d7757af3 # initialize rs2
bext x17, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xd6e5c57ab62bc229 # initialize rs1
li x21, 0x1299574593c077cc # initialize rs2
bext x14, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x078f25b6c06a6ef7 # initialize rs1
li x22, 0xf55e85fdd7ab6fed # initialize rs2
bext x31, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xb6e3e422154e7adb # initialize rs1
li x23, 0x37884289923f6832 # initialize rs2
bext x15, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x8c12580f33faaadc # initialize rs1
li x24, 0x300744040be9afde # initialize rs2
bext x21, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xd2e4dfe2cbabbf16 # initialize rs1
li x25, 0xaf686ec57add81e6 # initialize rs2
bext x30, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x38a2145d20606ff5 # initialize rs1
li x26, 0x6e29a0010e4bc372 # initialize rs2
bext x3, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xa166bf6487b26503 # initialize rs1
li x27, 0x1f8abcf9561d2965 # initialize rs2
bext x25, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x8e3c90c41a38ad8b # initialize rs1
li x28, 0xf5973a475e747a65 # initialize rs2
bext x9, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x988367165b5f0c87 # initialize rs1
li x29, 0x54c3390d990eb27e # initialize rs2
bext x30, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xab070d9049c3517d # initialize rs1
li x30, 0xf94ae338a94d4311 # initialize rs2
bext x22, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x53b3511e693cff8e # initialize rs1
li x31, 0x1bcdcf27cd642143 # initialize rs2
bext x16, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x23cbd96653b1a123 # initialize rs1
li x24, 0x3b30396077cb6834 # initialize rs2
bext x0, x0, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xd412ef80246edd7a # initialize rs1
li x27, 0xa6fcfacafc566fd8 # initialize rs2
bext x1, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7a8207d17a1ad160 # initialize rs1
li x29, 0x86dac65e3294d43c # initialize rs2
bext x2, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xad29b52f02e8103a # initialize rs1
li x17, 0xbb8830cf091bd6c7 # initialize rs2
bext x3, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x67d81293834a6957 # initialize rs1
li x17, 0xc7395cb9e4478f84 # initialize rs2
bext x4, x4, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf356612a21f096af # initialize rs1
li x11, 0x502cacadf1dbfce5 # initialize rs2
bext x5, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x84583aef3b55e132 # initialize rs1
li x30, 0x314fdb7570fce24f # initialize rs2
bext x6, x6, x30 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1e58a76e85619243 # initialize rs1
li x18, 0x6a5b1248a5848742 # initialize rs2
bext x7, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xaef0206d92cdd268 # initialize rs1
li x20, 0x7f6355447069fc19 # initialize rs2
bext x8, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x944362900a4b67fb # initialize rs1
li x1, 0xbca2b545f08efd1f # initialize rs2
bext x9, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x224b2a2dd2a6c0a0 # initialize rs1
li x25, 0x8bf021efcbce1f43 # initialize rs2
bext x10, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xa099a8b9baa1d771 # initialize rs1
li x3, 0x49ae9188ac24b795 # initialize rs2
bext x11, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xd54399ce58e3f756 # initialize rs1
li x6, 0xc839d99423417d74 # initialize rs2
bext x12, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x7aa57705d17bc045 # initialize rs1
li x26, 0xba68d9fe792dd597 # initialize rs2
bext x13, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x92aeb6912efafdc6 # initialize rs1
li x7, 0xb4cfbb13d357f4d0 # initialize rs2
bext x14, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x2673e3a35d617cf4 # initialize rs1
li x8, 0xbf01cf4900bd5bbc # initialize rs2
bext x15, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x99c02d7273a67a0f # initialize rs1
li x1, 0xcc34e5ed521a6ce6 # initialize rs2
bext x16, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x7c00aa34ece9b8fa # initialize rs1
li x9, 0xf078ba5df25b64ba # initialize rs2
bext x17, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x04093983472227f1 # initialize rs1
li x5, 0xd3e5cbdddb80aa8e # initialize rs2
bext x18, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x53bf32a1f40ff411 # initialize rs1
li x22, 0xf956ee9a134cc99c # initialize rs2
bext x19, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x710c22d386fe09ca # initialize rs1
li x10, 0x79a3a51f9d3baf6c # initialize rs2
bext x20, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xb1b4cebc8348ae0a # initialize rs1
li x19, 0x3433b73df9fc454d # initialize rs2
bext x21, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x729311a04e7f5238 # initialize rs1
li x5, 0x1bec98eb751df03f # initialize rs2
bext x22, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x221f5add2d833f47 # initialize rs1
li x8, 0xffc362b32425071b # initialize rs2
bext x23, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xa335109f02fa8c25 # initialize rs1
li x15, 0x19c9cd560f9a2af2 # initialize rs2
bext x24, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x471bd0d2de929305 # initialize rs1
li x11, 0x144ee7df8aa0f48a # initialize rs2
bext x25, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x2b6a40666c56fd74 # initialize rs1
li x9, 0x131301e27282aaf0 # initialize rs2
bext x26, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xd90e1c48c8e8ff14 # initialize rs1
li x10, 0x1eaa6cd9fa1dd589 # initialize rs2
bext x27, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x93d945df6b68443f # initialize rs1
li x11, 0x50f295935661c2a8 # initialize rs2
bext x28, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x9ebd2a97fb587621 # initialize rs1
li x5, 0x5435a0a6d66b5239 # initialize rs2
bext x29, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1f084f3a0954da25 # initialize rs1
li x30, 0xbc815425aa9153bb # initialize rs2
bext x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xf2f4ea7b2ac337c1 # initialize rs1
li x24, 0x4365201720ee5867 # initialize rs2
bext x31, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x11, 0xb8b2a880041d4f84 # initialize rs1
li x0, 0xa0678d6146a8237f # initialize rs2
bext x0, x11, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x26, 0x404055310f356dce # initialize rs1
li x1, 0xc90c25b78ddaf3ae # initialize rs2
bext x1, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x13, 0xbfd7a7d919911b2f # initialize rs1
li x2, 0x86a281f3a4fd7d2d # initialize rs2
bext x2, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x9, 0x9d3b910dad73c9ca # initialize rs1
li x3, 0xa6f9726fe29dddb5 # initialize rs2
bext x3, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x28, 0x7bd4fa178426c0a4 # initialize rs1
li x4, 0x2da82afad768f910 # initialize rs2
bext x4, x28, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0x5b4c05562ffbd393 # initialize rs1
li x5, 0x15ba318722019675 # initialize rs2
bext x5, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x429175b6bcc14c87 # initialize rs1
li x6, 0x2fc2f8211bda2fff # initialize rs2
bext x6, x24, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x24, 0x4d0535a4b526cd41 # initialize rs1
li x7, 0x8c314f1b0d9da6e4 # initialize rs2
bext x7, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x11, 0x3ed402268159d100 # initialize rs1
li x8, 0xbdad13ff26c6dcdb # initialize rs2
bext x8, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x6, 0xb4d5c33e154a2fbc # initialize rs1
li x9, 0xc5a36108b2df0f01 # initialize rs2
bext x9, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x17, 0x69c78732597b0847 # initialize rs1
li x10, 0xe1e4ca86c276798f # initialize rs2
bext x10, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x2, 0x900d1c4b9063e6dc # initialize rs1
li x11, 0xa2a00803d561acc8 # initialize rs2
bext x11, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x18, 0x085c46aa8ee883d0 # initialize rs1
li x12, 0xc603ca82f387d946 # initialize rs2
bext x12, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x29, 0xa56a632438951903 # initialize rs1
li x13, 0xdd3178518ed5af3f # initialize rs2
bext x13, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x22, 0xfe2d83445e451279 # initialize rs1
li x14, 0xd5ee7978308fa529 # initialize rs2
bext x14, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x14, 0xee7c9c2e222fec08 # initialize rs1
li x15, 0xb25aefb54f885569 # initialize rs2
bext x15, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x22, 0x7f003bb1edab6c08 # initialize rs1
li x16, 0x5dc79c26209ffbb4 # initialize rs2
bext x16, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x29, 0xf30a0b361721b734 # initialize rs1
li x17, 0x22ec503de4a571b2 # initialize rs2
bext x17, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x8, 0x0eaa9d9f1472818c # initialize rs1
li x18, 0x4a67485b87c2ad28 # initialize rs2
bext x18, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x25, 0xe89fc42f111f5108 # initialize rs1
li x19, 0xb7f6184f0f5f7370 # initialize rs2
bext x19, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x25, 0x7465dc73bd140ec0 # initialize rs1
li x20, 0x4a0b90d5d067df44 # initialize rs2
bext x20, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x16, 0x2ee21d560f98b448 # initialize rs1
li x21, 0x5ecefc23ad827b4e # initialize rs2
bext x21, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x13, 0x9eae136c1baed4df # initialize rs1
li x22, 0xfb82a64553567dc4 # initialize rs2
bext x22, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x9, 0x43453b5788e7df42 # initialize rs1
li x23, 0x02fa28478dd469a6 # initialize rs2
bext x23, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x3, 0xc563be0499543ff7 # initialize rs1
li x24, 0x5163eb58130e57be # initialize rs2
bext x24, x3, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x10, 0x1efd08c2258d7948 # initialize rs1
li x25, 0x280771bf82d808cb # initialize rs2
bext x25, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x16, 0xfdfff42e5e53bf15 # initialize rs1
li x26, 0xe5ba837dbbc5db45 # initialize rs2
bext x26, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x1, 0x5818bbbcdefcfe76 # initialize rs1
li x27, 0x605defb224d1ecae # initialize rs2
bext x27, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x6, 0xd0e1482ed7b1e4ac # initialize rs1
li x28, 0xf3daf3a3df6f5764 # initialize rs2
bext x28, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x16, 0x37d79de9a5cc27ad # initialize rs1
li x29, 0xad84fc198257531b # initialize rs2
bext x29, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x1, 0xf8967dfa8df3f0f5 # initialize rs1
li x30, 0x3bbac6bdabb54293 # initialize rs2
bext x30, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x25, 0xa77401afacf2c8af # initialize rs1
li x31, 0xc943bc33d1b3f875 # initialize rs2
bext x31, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0xc6e6175bf077d0c1 # initialize rs1
li x0, 0xae5232e08a813c23 # initialize rs2
bext x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x62c09e36e66ea231 # initialize rs1
li x1, 0xd4f1111c63a5584e # initialize rs2
bext x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x642e70d26a216d91 # initialize rs1
li x2, 0x691c0f2243e735c6 # initialize rs2
bext x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xaed2643abbee0c7c # initialize rs1
li x3, 0x68b70f9667359dcf # initialize rs2
bext x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x727401481a4f3620 # initialize rs1
li x4, 0x6951002a712c6fa8 # initialize rs2
bext x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x9674c18d4174ea06 # initialize rs1
li x5, 0x49a97ee8a6373618 # initialize rs2
bext x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x57e0cc9184c950cf # initialize rs1
li x6, 0x4b0328c0e2e69dfc # initialize rs2
bext x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x849b611b995cf26d # initialize rs1
li x7, 0xd02706eb6f2d2a42 # initialize rs2
bext x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xa09bae38a1efd296 # initialize rs1
li x8, 0x7fbfb7677291edc2 # initialize rs2
bext x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x278d806aa450c484 # initialize rs1
li x9, 0xd0c31bfcdcf63a8f # initialize rs2
bext x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x2e989fd06e79d5b6 # initialize rs1
li x10, 0xd020442612f8efe1 # initialize rs2
bext x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x95f210670472c000 # initialize rs1
li x11, 0xd94fd9d37c1c127c # initialize rs2
bext x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xf5b3fd7f25639670 # initialize rs1
li x12, 0xe932bfb8138dd88d # initialize rs2
bext x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x792af48d507529f1 # initialize rs1
li x13, 0xb77ce84792932fb5 # initialize rs2
bext x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x8f15f6e4c973438e # initialize rs1
li x14, 0xc84164cb00ccefde # initialize rs2
bext x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x10b7777a76e26da0 # initialize rs1
li x15, 0x247134682168bc7e # initialize rs2
bext x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x47e143fb57ebca24 # initialize rs1
li x16, 0xdd4fffb3174793bb # initialize rs2
bext x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x125cdad8ea8bd51a # initialize rs1
li x17, 0x159bfef5203015e9 # initialize rs2
bext x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x60b97c89e89d02a4 # initialize rs1
li x18, 0x7bd24547735a934f # initialize rs2
bext x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xac0685ef4dda3c06 # initialize rs1
li x19, 0x335c9484546a64c8 # initialize rs2
bext x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xf2fff3e1dcf9d343 # initialize rs1
li x20, 0x7d5e70da02ba0ce4 # initialize rs2
bext x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x573a15a02ab4a339 # initialize rs1
li x21, 0xac888348811b27ef # initialize rs2
bext x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x80fa8009a3abc9b5 # initialize rs1
li x22, 0x8f5215153ae5bc18 # initialize rs2
bext x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x7afa4d8f9613d121 # initialize rs1
li x23, 0xb0c1db56cefed2a3 # initialize rs2
bext x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x7a7f4cd906286264 # initialize rs1
li x24, 0x43a725e9778611c5 # initialize rs2
bext x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x5e1aacc1496aac28 # initialize rs1
li x25, 0xf24a02e071ba9586 # initialize rs2
bext x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x289210f9720ac294 # initialize rs1
li x26, 0xa3daa289992415d1 # initialize rs2
bext x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x7b3d01c8a709476f # initialize rs1
li x27, 0xe8fdf1c66cf9a33b # initialize rs2
bext x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x3c44ab805fd0b56a # initialize rs1
li x28, 0x000f4bc01984fd8a # initialize rs2
bext x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x20bc90b16573af44 # initialize rs1
li x29, 0xa6a3bf0d192b7edf # initialize rs2
bext x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0x35ad8a37d8abc292 # initialize rs1
li x30, 0xebcc5f108b9e5001 # initialize rs2
bext x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x8a3c0cf8e640e99a # initialize rs1
li x31, 0x5a7e1c88574b3f5d # initialize rs2
bext x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x1, x19, x18 # perform first operation
bext x31, x16, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x14, x8 # perform first operation
bext x2, x16, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x20, x16 # perform first operation
bext x26, x19, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x19, x1, x17 # perform first operation
bext x19, x27, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x25, x28 # perform first operation
bext x1, x2, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x23, x26 # perform first operation
bext x26, x31, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x1, x26 # perform first operation
bext x11, x28, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x22, x14, x27 # perform first operation
bext x22, x8, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x9, x26 # perform first operation
bext x8, x21, x14 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x23, x6 # perform first operation
bext x23, x24, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x27, x17, x7 # perform first operation
bext x7, x12, x1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x8, x22, x10 # perform first operation
bext x15, x18, x31 # perform second (triggering) operation

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
