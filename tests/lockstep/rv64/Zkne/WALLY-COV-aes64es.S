///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zkne/WALLY-COV-aes64es.S
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
li x0, 0xcbc1472da12fa1dc # initialize rs1
li x8, 0x5955a87b277784d4 # initialize rs2
aes64es x20, x0, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x2ce8db3845c40c70 # initialize rs1
li x3, 0xe6d00519c13cfbff # initialize rs2
aes64es x29, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xa07b5c8bb26d177f # initialize rs1
li x31, 0x358950d929852783 # initialize rs2
aes64es x18, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x33296616868bdc09 # initialize rs1
li x9, 0x770befda4cbcbf45 # initialize rs2
aes64es x1, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4d3df8afbe3ffb18 # initialize rs1
li x8, 0x4241092939d134bb # initialize rs2
aes64es x17, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x5ff078b21415e6e4 # initialize rs1
li x11, 0x9c7121ecbad7bc85 # initialize rs2
aes64es x1, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x1, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x77b07322822acb9a # initialize rs1
li x15, 0x7bdf05025c4908ba # initialize rs2
aes64es x14, x6, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x930b939f31952baa # initialize rs1
li x20, 0x255d29521ee677e8 # initialize rs2
aes64es x19, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x07906de5810adedf # initialize rs1
li x16, 0xe76551871a114c40 # initialize rs2
aes64es x18, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0xefaa34191467f93e # initialize rs1
li x13, 0x3a6aea4e27ea39fb # initialize rs2
aes64es x20, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xe6e7be99c2f64e6e # initialize rs1
li x14, 0xe04106b3c3719193 # initialize rs2
aes64es x8, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x00cd7608212e262e # initialize rs1
li x2, 0xd1ad9b0e7d33cd9e # initialize rs2
aes64es x29, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xbf38b188738ba0d5 # initialize rs1
li x8, 0xd443077f3d358cde # initialize rs2
aes64es x25, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x783b2dfca65dde42 # initialize rs1
li x15, 0xee7bac2aa320a104 # initialize rs2
aes64es x16, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x8a5f8bac5b0fed50 # initialize rs1
li x29, 0x9048f3dd6e5d0c89 # initialize rs2
aes64es x8, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xf5ef3050bd2000d3 # initialize rs1
li x21, 0x68d898c1238773f6 # initialize rs2
aes64es x5, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xd3ecbf1695a55f86 # initialize rs1
li x17, 0x88c9ef99cee0b61f # initialize rs2
aes64es x31, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0xe27c8fbbdee765f8 # initialize rs1
li x11, 0x98c536be01a5fc56 # initialize rs2
aes64es x27, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x73f2d833ae632562 # initialize rs1
li x16, 0xbc191d1ab9a6b418 # initialize rs2
aes64es x8, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x8b0fef79b352fc12 # initialize rs1
li x8, 0x3682a82cded3ef86 # initialize rs2
aes64es x12, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x47a99f415a5ac782 # initialize rs1
li x21, 0x49cb52df39d47806 # initialize rs2
aes64es x22, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x39d7d83eae3c526b # initialize rs1
li x31, 0xa91bb4bf05b6e70b # initialize rs2
aes64es x1, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0xb15fd97990b8cf0c # initialize rs1
li x16, 0xa93c96f6a298ba99 # initialize rs2
aes64es x23, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xb33169e03abee7c7 # initialize rs1
li x2, 0xa2726647bf1b95c7 # initialize rs2
aes64es x24, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xb861461c424eea7d # initialize rs1
li x11, 0xef69460978f4227c # initialize rs2
aes64es x16, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x03b471df0ea41994 # initialize rs1
li x16, 0x97c1ea1177ca5171 # initialize rs2
aes64es x3, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xb002033223c1da9d # initialize rs1
li x24, 0x8aa03281a259821e # initialize rs2
aes64es x7, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xce2ff93b69661bbf # initialize rs1
li x25, 0xfbb5cd4b3e902968 # initialize rs2
aes64es x11, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xd470cf1b13cb3d31 # initialize rs1
li x5, 0x9cdae0d6cccaef24 # initialize rs2
aes64es x23, x28, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xaa71588625fd3d21 # initialize rs1
li x13, 0x9578ae56844c0ac5 # initialize rs2
aes64es x7, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xdb71517275115ad5 # initialize rs1
li x15, 0x0b8f8d30d7491e17 # initialize rs2
aes64es x7, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0xca29774423f33aa1 # initialize rs1
li x1, 0x4ccd119c93f477e3 # initialize rs2
aes64es x30, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x9, 0xf8f9cb224a582700 # initialize rs1
li x0, 0x66666ac5f2eab133 # initialize rs2
aes64es x31, x9, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x3, 0xe64aaa641284a9cd # initialize rs1
li x1, 0x09282b6de6a5e327 # initialize rs2
aes64es x21, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x18, 0xa4cde7e459ccd764 # initialize rs1
li x2, 0x30d034462e8ee0a5 # initialize rs2
aes64es x6, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x9, 0x7728b78eda679d51 # initialize rs1
li x3, 0x65f3a1561ac19615 # initialize rs2
aes64es x7, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0x328f2ca50530d30c # initialize rs1
li x4, 0xc5673ba397704cfb # initialize rs2
aes64es x30, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x11, 0x61430a8d523f0464 # initialize rs1
li x5, 0x630ba5fdcc75bc7c # initialize rs2
aes64es x19, x11, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x21, 0xc6b68e7b68098a17 # initialize rs1
li x6, 0xf5222fe2b8c18c34 # initialize rs2
aes64es x12, x21, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x12, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x1, 0x940bbe020c77642f # initialize rs1
li x7, 0xfe2ae8e777a673fc # initialize rs2
aes64es x24, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x16, 0x17af9440df6d2ae8 # initialize rs1
li x8, 0x65f22177fdeeb0f2 # initialize rs2
aes64es x18, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x13, 0xe982f1285f493b96 # initialize rs1
li x9, 0x82652ea80b63802f # initialize rs2
aes64es x3, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x14, 0xac488e5b118bb8e9 # initialize rs1
li x10, 0xec604924320301a7 # initialize rs2
aes64es x11, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x6, 0xfb192015379432ee # initialize rs1
li x11, 0x6dd3249a8b7cde69 # initialize rs2
aes64es x21, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x30, 0x23328d4bf58480c7 # initialize rs1
li x12, 0x4c2a398f5dd2751c # initialize rs2
aes64es x28, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x29, 0x68b12dae14692913 # initialize rs1
li x13, 0xfc063dc80219fd1b # initialize rs2
aes64es x20, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x7, 0x3b03125a16ff4c81 # initialize rs1
li x14, 0x05acb4aaa75212a8 # initialize rs2
aes64es x29, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x16, 0x61609e61d6d2960b # initialize rs1
li x15, 0xd4e36d23dee708b7 # initialize rs2
aes64es x27, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x8, 0x069745bb62894c20 # initialize rs1
li x16, 0xe49f94efe408c660 # initialize rs2
aes64es x30, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x19, 0xad0d07d80fe3ec90 # initialize rs1
li x17, 0x497b95de4e89327b # initialize rs2
aes64es x3, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x1, 0xc5087d559a1e02ad # initialize rs1
li x18, 0x20f3d0eb73fa1815 # initialize rs2
aes64es x10, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x21, 0x73ffd4e6424bc1e1 # initialize rs1
li x19, 0xfcaafd4bdc98b771 # initialize rs2
aes64es x30, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x9, 0x93432b4834fe51d3 # initialize rs1
li x20, 0x1a8ec567904a0889 # initialize rs2
aes64es x2, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x31, 0x75c2dc338aa6209f # initialize rs1
li x21, 0x0973acbbb68dbc95 # initialize rs2
aes64es x14, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x6, 0x9f183235804f1daa # initialize rs1
li x22, 0xc684f3993745977c # initialize rs2
aes64es x5, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x21, 0x5074bee81e08049e # initialize rs1
li x23, 0xc0fce74af35d9fab # initialize rs2
aes64es x13, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x5, 0xfc24c4dbae221721 # initialize rs1
li x24, 0x29b3dedaf5652bc5 # initialize rs2
aes64es x6, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x9, 0xd822760cc0eebf68 # initialize rs1
li x25, 0x4641faa86f0da059 # initialize rs2
aes64es x24, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x7, 0xb4f75b51cbc7129c # initialize rs1
li x26, 0xb9304fdb13e5848d # initialize rs2
aes64es x30, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x2, 0x725291c0d98b18e2 # initialize rs1
li x27, 0x96f830e3e667bbe6 # initialize rs2
aes64es x10, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x29, 0x9ecce623682e313f # initialize rs1
li x28, 0xe413b7def9fa6fc0 # initialize rs2
aes64es x13, x29, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x6, 0xbc13ce27a3a60e48 # initialize rs1
li x29, 0xc0ed91c410f56566 # initialize rs2
aes64es x21, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x16, 0x118a0d4fbba281a4 # initialize rs1
li x30, 0xcdddea13d738f797 # initialize rs2
aes64es x13, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x1, 0x862a95d3be469e44 # initialize rs1
li x31, 0x26561289fd86da5d # initialize rs2
aes64es x30, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 504)

# Testcase cp_rd (Test destination rd = x0)
li x29, 0x10a7f798e8f6ac0e # initialize rs1
li x2, 0x0355ef8f8a534794 # initialize rs2
aes64es x0, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x5, 0x04064d4e53b73629 # initialize rs1
li x25, 0x72c3da1977019744 # initialize rs2
aes64es x1, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x12, 0x3c26a759de2cee3b # initialize rs1
li x2, 0x3b73b8b562b97334 # initialize rs2
aes64es x2, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x10, 0x083b5e2a4dc4086c # initialize rs1
li x11, 0x9b4a3f33b67726d8 # initialize rs2
aes64es x3, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0x9f685936c51ea20c # initialize rs1
li x3, 0x1904b25b9c2cb450 # initialize rs2
aes64es x4, x1, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x9, 0x1c3e3ebb7d6dd1ec # initialize rs1
li x23, 0x633faaf9e5cbca00 # initialize rs2
aes64es x5, x9, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x1, 0x4b450eecbcd3e7b2 # initialize rs1
li x31, 0xc3eefed635e86171 # initialize rs2
aes64es x6, x1, x31 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x2, 0x0fe7007406c548dd # initialize rs1
li x6, 0x10cca95a0d002a93 # initialize rs2
aes64es x7, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x11, 0xbdc82cba390f4fe4 # initialize rs1
li x5, 0x0572e91bf3bae018 # initialize rs2
aes64es x8, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x19, 0xcca681e6eeda0e19 # initialize rs1
li x12, 0x1bc8049c2116a1fb # initialize rs2
aes64es x9, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x16, 0x2ffe60142b147a00 # initialize rs1
li x8, 0x19c39574e4fdd932 # initialize rs2
aes64es x10, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x1, 0x701904b3db20b00d # initialize rs1
li x10, 0xdd466d3f3f8bbcc5 # initialize rs2
aes64es x11, x1, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x25, 0x359b8b0ed3a95495 # initialize rs1
li x5, 0xd4ae7d2f48f655b9 # initialize rs2
aes64es x12, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x28, 0xc89e74eae58a1b90 # initialize rs1
li x29, 0x63a586742f7b5201 # initialize rs2
aes64es x13, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x6, 0xe4ade55823620ca5 # initialize rs1
li x19, 0x0dda23b62c1c23ba # initialize rs2
aes64es x14, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x2, 0x0d01680df20fb29b # initialize rs1
li x21, 0x0121b5411dc0b79c # initialize rs2
aes64es x15, x2, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x28, 0x7bfabc04f7a486bd # initialize rs1
li x12, 0xfdfc7222aa01d53d # initialize rs2
aes64es x16, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x19, 0x8f0891dc9cdd1bb3 # initialize rs1
li x24, 0xc32e3e15e5c76b34 # initialize rs2
aes64es x17, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x3, 0xa1835da50af8c285 # initialize rs1
li x25, 0x3f6af364b5c17ae5 # initialize rs2
aes64es x18, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x14, 0x935768b7d7336cf8 # initialize rs1
li x13, 0x7ee61a0eae5bf898 # initialize rs2
aes64es x19, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x15, 0xa76051bb88d4ddc5 # initialize rs1
li x8, 0xa0fdc89e7c6ace76 # initialize rs2
aes64es x20, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x7, 0xdb0609d31d5cb6b9 # initialize rs1
li x18, 0x3acf61e9f5f5b16c # initialize rs2
aes64es x21, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x31, 0x977de54453a2ef95 # initialize rs1
li x30, 0x523edff91dfcdfa9 # initialize rs2
aes64es x22, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x19, 0x255bcaeab36269e0 # initialize rs1
li x28, 0x3087105228431771 # initialize rs2
aes64es x23, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x20, 0xba7f7974edd631e6 # initialize rs1
li x14, 0x1efbd8ba974a4d52 # initialize rs2
aes64es x24, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x13, 0x0116baebbff083f5 # initialize rs1
li x15, 0xb587e7e432a668a5 # initialize rs2
aes64es x25, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x3, 0x6df2668f4ac4e0e8 # initialize rs1
li x31, 0xa1d5f42b28f28cc6 # initialize rs2
aes64es x26, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x16, 0x831dd78e02bffbe0 # initialize rs1
li x5, 0x10c4a33d20e6dff6 # initialize rs2
aes64es x27, x16, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x25, 0x47282caff679bde4 # initialize rs1
li x14, 0x1eb1461e2c2fd880 # initialize rs2
aes64es x28, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x6, 0x082a1759290769ff # initialize rs1
li x9, 0xa70fa6d66098c2f8 # initialize rs2
aes64es x29, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x6, 0x643c0cdb1ff80ff5 # initialize rs1
li x1, 0x74d71e487fce5457 # initialize rs2
aes64es x30, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x26, 0x485a17472aad3930 # initialize rs1
li x7, 0x452e5922d01f8b24 # initialize rs2
aes64es x31, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x15, 0x0000000000000000 # initialize rs1
li x1, 0x7e173dcf76512a09 # initialize rs2
aes64es x28, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x7, 0x0000000000000001 # initialize rs1
li x1, 0x45bd9dd9205ed6cb # initialize rs2
aes64es x20, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x17, 0x0000000000000002 # initialize rs1
li x30, 0x7babf7170719e26a # initialize rs2
aes64es x11, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x30, 0x8000000000000000 # initialize rs1
li x14, 0x12cd74a75a458f31 # initialize rs2
aes64es x7, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x18, 0x8000000000000001 # initialize rs1
li x2, 0xfd749cf0315ee419 # initialize rs2
aes64es x29, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x6, 0x7fffffffffffffff # initialize rs1
li x1, 0xa0a0e0815f224b47 # initialize rs2
aes64es x28, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x12, 0x7ffffffffffffffe # initialize rs1
li x19, 0x966732cb3e464d70 # initialize rs2
aes64es x20, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x25, 0x4f9f4c46d6615eee # initialize rs2
aes64es x11, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x16, 0xfffffffffffffffe # initialize rs1
li x1, 0x43622dbacb8a48e0 # initialize rs2
aes64es x2, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0xdf200ddc7cb024d9 # initialize rs2
aes64es x29, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x339b0ebcbac71574 # initialize rs2
aes64es x12, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x14, 0x5555555555555555 # initialize rs1
li x18, 0xc95c53fe7ad18dee # initialize rs2
aes64es x27, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x28, 0x00000000ffffffff # initialize rs1
li x19, 0x5133bd37ffea9a93 # initialize rs2
aes64es x27, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x5, 0x00000000fffffffe # initialize rs1
li x2, 0xc304e80859c4e029 # initialize rs2
aes64es x26, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x6, 0x0000000100000000 # initialize rs1
li x30, 0x5728c0783f279e1d # initialize rs2
aes64es x12, x6, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x30, 0x0000000100000001 # initialize rs1
li x6, 0xddc1a7a8e20d1005 # initialize rs2
aes64es x12, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x29, 0x110b235154e700fe # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
aes64es x2, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x20, 0x36ccda1635165a73 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
aes64es x7, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x23, 0x542241fd2fa36dc4 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
aes64es x30, x23, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x25, 0x812b877451cf8078 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
aes64es x21, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x28, 0x1def7cc2916c191e # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
aes64es x5, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x16, 0x11f087f10fda70fe # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
aes64es x12, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x23, 0xc191c195c8bee031 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
aes64es x29, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x6, 0xa9c3f3f8978f55d0 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
aes64es x7, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x16, 0x7aa1f4a33a74615e # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
aes64es x28, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x24, 0x576ec328b912210f # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
aes64es x13, x24, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0x0a78ba581c055463 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x27, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x6, 0xdc91eab49dd59d92 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
aes64es x17, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x21, 0xba9dfe0dcc968a67 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
aes64es x26, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x21, 0x0c14c7df989e33aa # initialize rs1
li x13, 0x00000000fffffffe # initialize rs2
aes64es x31, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x21, 0x8266517903cc20d9 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
aes64es x15, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x25, 0x46f3a9836948b28d # initialize rs1
li x8, 0x0000000100000001 # initialize rs2
aes64es x27, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x12, 0x0000000000000000 # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
aes64es x30, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x19, 0x0000000000000000 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
aes64es x24, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x29, 0x0000000000000000 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
aes64es x21, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x11, 0x0000000000000000 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
aes64es x14, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x1, 0x0000000000000000 # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
aes64es x22, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x5, 0x0000000000000000 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
aes64es x8, x5, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x12, 0x0000000000000000 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
aes64es x25, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x2, 0x0000000000000000 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
aes64es x27, x2, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000000000000 # initialize rs1
li x7, 0xfffffffffffffffe # initialize rs2
aes64es x25, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x9, 0x0000000000000000 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
aes64es x6, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x0000000000000000 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x26, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x7, 0x0000000000000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
aes64es x12, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x20, 0x0000000000000000 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
aes64es x17, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x30, 0x0000000000000000 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
aes64es x18, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x24, 0x0000000000000000 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
aes64es x16, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x2, 0x0000000000000000 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
aes64es x20, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x7, 0x0000000000000001 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
aes64es x3, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x11, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
aes64es x15, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x7, 0x0000000000000001 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
aes64es x1, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x11, 0x0000000000000001 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
aes64es x13, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x21, 0x0000000000000001 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
aes64es x24, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x16, 0x0000000000000001 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
aes64es x7, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x9, 0x0000000000000001 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
aes64es x18, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
aes64es x16, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x30, 0x0000000000000001 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
aes64es x27, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000000000001 # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
aes64es x31, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000000000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x6, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x14, 0x0000000000000001 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
aes64es x31, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x27, 0x0000000000000001 # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
aes64es x3, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x25, 0x0000000000000001 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
aes64es x5, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x17, 0x0000000000000001 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
aes64es x9, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x29, 0x0000000000000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
aes64es x27, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x2, 0x0000000000000002 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
aes64es x31, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x23, 0x0000000000000002 # initialize rs1
li x18, 0x0000000000000001 # initialize rs2
aes64es x21, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x26, 0x0000000000000002 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
aes64es x27, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x7, 0x0000000000000002 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
aes64es x23, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x10, 0x0000000000000002 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
aes64es x20, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000000000002 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
aes64es x17, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x1, 0x0000000000000002 # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
aes64es x20, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x5, 0x0000000000000002 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
aes64es x14, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x18, 0x0000000000000002 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
aes64es x15, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x17, 0x0000000000000002 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
aes64es x11, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x0000000000000002 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x15, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x31, 0x0000000000000002 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
aes64es x18, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x27, 0x0000000000000002 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
aes64es x13, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x19, 0x0000000000000002 # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
aes64es x24, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x5, 0x0000000000000002 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
aes64es x3, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x30, 0x0000000000000002 # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
aes64es x29, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x31, 0x8000000000000000 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
aes64es x24, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x28, 0x8000000000000000 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
aes64es x1, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x31, 0x8000000000000000 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
aes64es x19, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x17, 0x8000000000000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
aes64es x18, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x10, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
aes64es x7, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x8, 0x8000000000000000 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
aes64es x3, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x2, 0x8000000000000000 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
aes64es x29, x2, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x26, 0x8000000000000000 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
aes64es x12, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x7, 0x8000000000000000 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
aes64es x13, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x19, 0x8000000000000000 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
aes64es x17, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x8000000000000000 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x6, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x1, 0x8000000000000000 # initialize rs1
li x28, 0x5555555555555555 # initialize rs2
aes64es x30, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x19, 0x8000000000000000 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
aes64es x25, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x6, 0x8000000000000000 # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
aes64es x7, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x19, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
aes64es x14, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x5, 0x8000000000000000 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
aes64es x24, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x16, 0x8000000000000001 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
aes64es x30, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x6, 0x8000000000000001 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
aes64es x17, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x2, 0x8000000000000001 # initialize rs1
li x6, 0x0000000000000002 # initialize rs2
aes64es x15, x2, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x19, 0x8000000000000001 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
aes64es x14, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x9, 0x8000000000000001 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
aes64es x22, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x18, 0x8000000000000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
aes64es x11, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x14, 0x8000000000000001 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
aes64es x11, x14, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x1, 0x8000000000000001 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
aes64es x17, x1, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x13, 0x8000000000000001 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
aes64es x24, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x19, 0x8000000000000001 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
aes64es x9, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x8000000000000001 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x18, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x20, 0x8000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
aes64es x1, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x1, 0x8000000000000001 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
aes64es x29, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x2, 0x8000000000000001 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
aes64es x6, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x14, 0x8000000000000001 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
aes64es x27, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x29, 0x8000000000000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
aes64es x9, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x16, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
aes64es x1, x16, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x16, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
aes64es x25, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x28, 0x7fffffffffffffff # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
aes64es x6, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x11, 0x7fffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
aes64es x26, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x7, 0x7fffffffffffffff # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
aes64es x29, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
aes64es x18, x20, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x7, 0x7fffffffffffffff # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
aes64es x26, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
aes64es x18, x12, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x16, 0x7fffffffffffffff # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
aes64es x29, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x30, 0x7fffffffffffffff # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
aes64es x27, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x7fffffffffffffff # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x11, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x23, 0x7fffffffffffffff # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
aes64es x22, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x11, 0x7fffffffffffffff # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
aes64es x29, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x16, 0x7fffffffffffffff # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
aes64es x3, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x19, 0x7fffffffffffffff # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
aes64es x3, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x9, 0x7fffffffffffffff # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
aes64es x15, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x19, 0x7ffffffffffffffe # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
aes64es x12, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x2, 0x7ffffffffffffffe # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
aes64es x5, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x22, 0x7ffffffffffffffe # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
aes64es x24, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x11, 0x7ffffffffffffffe # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
aes64es x24, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x13, 0x7ffffffffffffffe # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
aes64es x1, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x25, 0x7ffffffffffffffe # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
aes64es x7, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x22, 0x7ffffffffffffffe # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
aes64es x8, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x19, 0x7ffffffffffffffe # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
aes64es x2, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x18, 0x7ffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
aes64es x5, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x3, 0x7ffffffffffffffe # initialize rs1
li x25, 0x5bbc887763ae86f2 # initialize rs2
aes64es x11, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x7ffffffffffffffe # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x1, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x23, 0x7ffffffffffffffe # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
aes64es x30, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x15, 0x7ffffffffffffffe # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
aes64es x8, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x2, 0x7ffffffffffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
aes64es x27, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x16, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
aes64es x3, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x14, 0x7ffffffffffffffe # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
aes64es x1, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x13, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000000000000 # initialize rs2
aes64es x26, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x5, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
aes64es x18, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x20, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
aes64es x15, x20, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x30, 0xffffffffffffffff # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
aes64es x15, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x22, 0xffffffffffffffff # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
aes64es x9, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x3, 0xffffffffffffffff # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
aes64es x22, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x25, 0xffffffffffffffff # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
aes64es x23, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x30, 0xffffffffffffffff # initialize rs2
aes64es x16, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x28, 0xffffffffffffffff # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
aes64es x27, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x9, 0xffffffffffffffff # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
aes64es x29, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0xffffffffffffffff # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x17, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x9, 0xffffffffffffffff # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
aes64es x19, x9, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x20, 0xffffffffffffffff # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
aes64es x2, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x5, 0xffffffffffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
aes64es x21, x5, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x27, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
aes64es x24, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x16, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
aes64es x3, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x31, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
aes64es x23, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x31, 0xfffffffffffffffe # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
aes64es x18, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x27, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
aes64es x20, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x28, 0xfffffffffffffffe # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
aes64es x6, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x6, 0xfffffffffffffffe # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
aes64es x14, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x6, 0xfffffffffffffffe # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
aes64es x17, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0xfffffffffffffffe # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
aes64es x30, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x18, 0xfffffffffffffffe # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
aes64es x16, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
aes64es x5, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x28, 0xfffffffffffffffe # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
aes64es x31, x28, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0xfffffffffffffffe # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x17, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x2, 0xfffffffffffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
aes64es x8, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x13, 0xfffffffffffffffe # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
aes64es x19, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x15, 0xfffffffffffffffe # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
aes64es x31, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x2, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
aes64es x7, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x8, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
aes64es x25, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
aes64es x16, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
aes64es x14, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x6, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0000000000000002 # initialize rs2
aes64es x15, x6, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
aes64es x28, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
aes64es x24, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x24, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
aes64es x19, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
aes64es x31, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
aes64es x5, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
aes64es x17, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
aes64es x21, x22, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x20, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
aes64es x19, x21, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
aes64es x7, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
aes64es x26, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
aes64es x17, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
aes64es x5, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
aes64es x10, x5, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
aes64es x18, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
aes64es x3, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
aes64es x15, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
aes64es x14, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
aes64es x6, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
aes64es x14, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
aes64es x20, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
aes64es x10, x11, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
aes64es x12, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x30, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
aes64es x14, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
aes64es x9, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
aes64es x18, x11, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
aes64es x9, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
aes64es x6, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x22, 0x5555555555555555 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
aes64es x18, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x21, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
aes64es x31, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x6, 0x5555555555555555 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
aes64es x18, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x28, 0x5555555555555555 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
aes64es x25, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x30, 0x5555555555555555 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
aes64es x14, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x11, 0x5555555555555555 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
aes64es x30, x11, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x8, 0x5555555555555555 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
aes64es x29, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x24, 0x5555555555555555 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
aes64es x27, x24, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x10, 0x5555555555555555 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
aes64es x3, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x21, 0x5555555555555555 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
aes64es x22, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x5555555555555555 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x24, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x19, 0x5555555555555555 # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
aes64es x18, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x7, 0x5555555555555555 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
aes64es x3, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x19, 0x5555555555555555 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
aes64es x31, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x21, 0x5555555555555555 # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
aes64es x26, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x20, 0x5555555555555555 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
aes64es x2, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x21, 0x00000000ffffffff # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
aes64es x10, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x3, 0x00000000ffffffff # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
aes64es x17, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x2, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
aes64es x9, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x27, 0x00000000ffffffff # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
aes64es x20, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x18, 0x00000000ffffffff # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
aes64es x29, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x21, 0x00000000ffffffff # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
aes64es x1, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x20, 0x00000000ffffffff # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
aes64es x28, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
aes64es x25, x5, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x2, 0x00000000ffffffff # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
aes64es x23, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x16, 0x00000000ffffffff # initialize rs1
li x30, 0x5bbc887763ae86f2 # initialize rs2
aes64es x9, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x00000000ffffffff # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x23, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x7, 0x00000000ffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
aes64es x16, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x16, 0x00000000ffffffff # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
aes64es x21, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x3, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
aes64es x26, x3, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x6, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
aes64es x12, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x22, 0x00000000ffffffff # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
aes64es x13, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x16, 0x00000000fffffffe # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
aes64es x25, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x28, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
aes64es x9, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x27, 0x00000000fffffffe # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
aes64es x30, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x29, 0x00000000fffffffe # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
aes64es x10, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x8, 0x00000000fffffffe # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
aes64es x15, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x16, 0x00000000fffffffe # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
aes64es x24, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x18, 0x00000000fffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
aes64es x31, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x18, 0x00000000fffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
aes64es x31, x18, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x22, 0x00000000fffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
aes64es x29, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x2, 0x00000000fffffffe # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
aes64es x28, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x00000000fffffffe # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x27, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x14, 0x00000000fffffffe # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
aes64es x22, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x26, 0x00000000fffffffe # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
aes64es x1, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x10, 0x00000000fffffffe # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
aes64es x8, x10, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x2, 0x00000000fffffffe # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
aes64es x26, x2, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x21, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
aes64es x7, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x3, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
aes64es x20, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x19, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
aes64es x9, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x27, 0x0000000100000000 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
aes64es x5, x27, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x26, 0x0000000100000000 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
aes64es x8, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x31, 0x0000000100000000 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
aes64es x19, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x23, 0x0000000100000000 # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
aes64es x14, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x9, 0x0000000100000000 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
aes64es x19, x9, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x29, 0x0000000100000000 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
aes64es x5, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x23, 0x0000000100000000 # initialize rs1
li x10, 0xfffffffffffffffe # initialize rs2
aes64es x28, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x19, 0x0000000100000000 # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
aes64es x17, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x0000000100000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x13, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x15, 0x0000000100000000 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
aes64es x7, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x28, 0x0000000100000000 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
aes64es x22, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x26, 0x0000000100000000 # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
aes64es x10, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x2, 0x0000000100000000 # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
aes64es x1, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x18, 0x0000000100000000 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
aes64es x19, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x3, 0x0000000100000001 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
aes64es x12, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x21, 0x0000000100000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
aes64es x7, x21, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x3, 0x0000000100000001 # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
aes64es x13, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x17, 0x0000000100000001 # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
aes64es x29, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x9, 0x0000000100000001 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
aes64es x6, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x6, 0x0000000100000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
aes64es x14, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x3, 0x0000000100000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
aes64es x13, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x28, 0x0000000100000001 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
aes64es x14, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x6, 0x0000000100000001 # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
aes64es x2, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x31, 0x0000000100000001 # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
aes64es x6, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x0000000100000001 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x14, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x27, 0x0000000100000001 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
aes64es x25, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x18, 0x0000000100000001 # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
aes64es x3, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x3, 0x0000000100000001 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
aes64es x30, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x24, 0x0000000100000001 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
aes64es x8, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x17, 0x0000000100000001 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
aes64es x19, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x313c287aab847e3b # initialize rs1
li x0, 0xbb66bce64b49c32c # initialize rs2
aes64es x5, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x4a9d5d41b6713687 # initialize rs1
li x1, 0x1764d77851d5becb # initialize rs2
aes64es x20, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x32a7ac3006f6a02b # initialize rs1
li x2, 0xffee255b419574e8 # initialize rs2
aes64es x18, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x63256e11324ff7f3 # initialize rs1
li x3, 0xdf43d59de9a1894a # initialize rs2
aes64es x18, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xec77b33fbac0d94b # initialize rs1
li x4, 0x8c80e83c0be5daf7 # initialize rs2
aes64es x9, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x83d7bf9df9fc38f0 # initialize rs1
li x5, 0xf2d05983fbe09cc0 # initialize rs2
aes64es x17, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x17, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x183ff2bc3f77d153 # initialize rs1
li x6, 0xb42c8bad76acd879 # initialize rs2
aes64es x29, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x29, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x270133be5e465d85 # initialize rs1
li x7, 0x9036221e33be53bf # initialize rs2
aes64es x6, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6f29053abeaaaa87 # initialize rs1
li x8, 0xbab6900824794382 # initialize rs2
aes64es x17, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x5e16b403989ade10 # initialize rs1
li x9, 0xc0c27d309f17badb # initialize rs2
aes64es x28, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x6865679559e1e488 # initialize rs1
li x10, 0x8b48dbd1d5ffc130 # initialize rs2
aes64es x24, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x1df013e71e6df23e # initialize rs1
li x11, 0x60fa528491bc7c87 # initialize rs2
aes64es x3, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x67722c0803377dbe # initialize rs1
li x12, 0xba19ea89ac947107 # initialize rs2
aes64es x7, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xde49d31a7da4bf71 # initialize rs1
li x13, 0xddf569390376da0e # initialize rs2
aes64es x19, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xde829068820ec6db # initialize rs1
li x14, 0xbc0786d56ad8b98b # initialize rs2
aes64es x7, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x2c8b98e5a8ffd375 # initialize rs1
li x15, 0xb534f3d857454a96 # initialize rs2
aes64es x25, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0x88e8e23db4cbf568 # initialize rs1
li x16, 0xad0d4c8787d2b762 # initialize rs2
aes64es x7, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x3f7c1f1089065024 # initialize rs1
li x17, 0xc1a3d0401443dc4a # initialize rs2
aes64es x11, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x45a2c447e1aa7d2f # initialize rs1
li x18, 0xfa5a911e430d62ad # initialize rs2
aes64es x3, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x3a58e9e99ecdb378 # initialize rs1
li x19, 0x92632b1d2cb6ec78 # initialize rs2
aes64es x17, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xfb85df9605365729 # initialize rs1
li x20, 0x633049a23903cdb2 # initialize rs2
aes64es x14, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x7f22a0a920eef541 # initialize rs1
li x21, 0xcf9f376ce835e76c # initialize rs2
aes64es x22, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x4ac23429cdc9ef32 # initialize rs1
li x22, 0xcbef7fdcbb341474 # initialize rs2
aes64es x9, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xf1c60f0c0fa18118 # initialize rs1
li x23, 0x747117020f6875ed # initialize rs2
aes64es x2, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x46e58a71a7de754d # initialize rs1
li x24, 0xaf51480a800c6a4f # initialize rs2
aes64es x11, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xf502b02585bc8473 # initialize rs1
li x25, 0x5f226f5d8809e454 # initialize rs2
aes64es x20, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xb8f7a2ad30ad6725 # initialize rs1
li x26, 0xcded2f71b6e2e266 # initialize rs2
aes64es x24, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x6a0c343973b07366 # initialize rs1
li x27, 0x152d8b3c89187c9d # initialize rs2
aes64es x6, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x64555745902853a4 # initialize rs1
li x28, 0xfee315bbd8ce7da0 # initialize rs2
aes64es x23, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x7f3573ffef138544 # initialize rs1
li x29, 0x440e966db9ed059c # initialize rs2
aes64es x6, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x48979ad2c3dd929b # initialize rs1
li x30, 0xd43533f9ce90b00f # initialize rs2
aes64es x7, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x88158b8835583fa8 # initialize rs1
li x31, 0x6324505b86d09f31 # initialize rs2
aes64es x27, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x8c935565f4d44d4d # initialize rs1
li x13, 0x61590476ed84ce76 # initialize rs2
aes64es x0, x0, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x2182a26edbbab82e # initialize rs1
li x25, 0x533346fcdf1d369b # initialize rs2
aes64es x1, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xc5e232999332820f # initialize rs1
li x9, 0xbb57ee02dec170cf # initialize rs2
aes64es x2, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x2b7a63b356725b83 # initialize rs1
li x8, 0xf5998c8b87667a19 # initialize rs2
aes64es x3, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x09356d2c1256cb42 # initialize rs1
li x1, 0x635d577077e17be0 # initialize rs2
aes64es x4, x4, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc49fbbb14100a362 # initialize rs1
li x8, 0x1d7a4f2f559f8f25 # initialize rs2
aes64es x5, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1fec96549dce3aff # initialize rs1
li x13, 0x3c034e5ed40992ae # initialize rs2
aes64es x6, x6, x13 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x9cf5fdee9abc5048 # initialize rs1
li x24, 0x03175c9ce1eb808b # initialize rs2
aes64es x7, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x8adcba49fbf4881f # initialize rs1
li x8, 0x31d18c3b4c78353e # initialize rs2
aes64es x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc636e61131e60b15 # initialize rs1
li x16, 0xfc8e999cb9d7f080 # initialize rs2
aes64es x9, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x1dcef20c2c077388 # initialize rs1
li x13, 0x5bb0a7e2841b41e3 # initialize rs2
aes64es x10, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x90832573d7ba247d # initialize rs1
li x3, 0xcb367c16162a4f29 # initialize rs2
aes64es x11, x11, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x9a619101a48ce1ad # initialize rs1
li x20, 0xfbb4ea24bd3f5277 # initialize rs2
aes64es x12, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x57e0e988ac30873a # initialize rs1
li x9, 0xc4edbc65780ae4c4 # initialize rs2
aes64es x13, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xb67e0f4eef02d919 # initialize rs1
li x16, 0x1d6adb1d74eff8f6 # initialize rs2
aes64es x14, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x7c35db89484e7fe3 # initialize rs1
li x13, 0x6b24bdfb5c4872b5 # initialize rs2
aes64es x15, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x9968e9634dc5f33d # initialize rs1
li x21, 0xff3bf2bfd8d8541a # initialize rs2
aes64es x16, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x584574a2b9bfe1f5 # initialize rs1
li x29, 0x5547fc4f758a6819 # initialize rs2
aes64es x17, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x8c37968b6f0621c3 # initialize rs1
li x12, 0x2a06aa57b2f8705f # initialize rs2
aes64es x18, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x0c6387a007368729 # initialize rs1
li x3, 0x20d8109a1dfc9c34 # initialize rs2
aes64es x19, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x470ac8d3b5225e99 # initialize rs1
li x11, 0x5bec5ac4644a6f9e # initialize rs2
aes64es x20, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0xbfdfd459fe4ed9f7 # initialize rs1
li x7, 0x7be3e4874436d44a # initialize rs2
aes64es x21, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x673afe91d85a0337 # initialize rs1
li x14, 0x42ef59b519cdd3e3 # initialize rs2
aes64es x22, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xcfdfe9be967002b7 # initialize rs1
li x2, 0xd905bb6ebf03c4b1 # initialize rs2
aes64es x23, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xf00660bd49f8d159 # initialize rs1
li x29, 0x37317b4efe778d2a # initialize rs2
aes64es x24, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xc4ff61879fd9f6a2 # initialize rs1
li x18, 0x1c5df0e91babbdca # initialize rs2
aes64es x25, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x0b80b31e94eb5ae5 # initialize rs1
li x30, 0xd4923229fff928c0 # initialize rs2
aes64es x26, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x3af987ec278b8e9b # initialize rs1
li x8, 0x1fc57316b31a7614 # initialize rs2
aes64es x27, x27, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xeb89f804bc00ecdb # initialize rs1
li x3, 0x8a47b1935574376f # initialize rs2
aes64es x28, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x232f31213b847d26 # initialize rs1
li x27, 0x07c7304e9c62023c # initialize rs2
aes64es x29, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x6bbb6ef3851b418c # initialize rs1
li x12, 0x618f43626f32e379 # initialize rs2
aes64es x30, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xfa51cf47deb8b33e # initialize rs1
li x19, 0xb41218de509c73a2 # initialize rs2
aes64es x31, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x17, 0x0f8c592f715cffd6 # initialize rs1
li x0, 0x067243b79f7cd795 # initialize rs2
aes64es x0, x17, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x3, 0xaca4b1a68c7facd0 # initialize rs1
li x1, 0x257b0418698292c7 # initialize rs2
aes64es x1, x3, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x9, 0x892e7ff203ab5afd # initialize rs1
li x2, 0x6c408d7ea06b44b3 # initialize rs2
aes64es x2, x9, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x5, 0x8a6a0df7268e4f0c # initialize rs1
li x3, 0xe70205e42db40af3 # initialize rs2
aes64es x3, x5, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x6, 0xb5b936590b29efe9 # initialize rs1
li x4, 0x11c1c983761f5192 # initialize rs2
aes64es x4, x6, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x21, 0xd9bae4ca3c1a083b # initialize rs1
li x5, 0xa54702819dec1e6c # initialize rs2
aes64es x5, x21, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x9, 0x95065e670c15863f # initialize rs1
li x6, 0xab4819e2f014c2bd # initialize rs2
aes64es x6, x9, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x10, 0x8bed29d05f2721e5 # initialize rs1
li x7, 0xa6c16a5ee415d280 # initialize rs2
aes64es x7, x10, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x18, 0x84d4fbc1e3d05593 # initialize rs1
li x8, 0x01846f5c0f605003 # initialize rs2
aes64es x8, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x18, 0x2eb8d4814642a3fb # initialize rs1
li x9, 0x3089bb9cdf4e8359 # initialize rs2
aes64es x9, x18, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x19, 0xddb151477d30a716 # initialize rs1
li x10, 0x49e60a57ce2c89de # initialize rs2
aes64es x10, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x7, 0x5b022758a0097635 # initialize rs1
li x11, 0xb05faaa3e507685d # initialize rs2
aes64es x11, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x22, 0x177dd41e5618f902 # initialize rs1
li x12, 0x7ca17258de87e6e2 # initialize rs2
aes64es x12, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x9, 0x9b84a70e73cbf796 # initialize rs1
li x13, 0x80fe1f782b465ea4 # initialize rs2
aes64es x13, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x23, 0x8f1dc11baef4f5d2 # initialize rs1
li x14, 0x9e7f6769c865fa61 # initialize rs2
aes64es x14, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x23, 0x69ffdfdae81b7730 # initialize rs1
li x15, 0xec09fcc634801e34 # initialize rs2
aes64es x15, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x1, 0x6adeb02a4a26c46e # initialize rs1
li x16, 0x568a6f50337614c1 # initialize rs2
aes64es x16, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x29, 0x4c7a7c055aeb2875 # initialize rs1
li x17, 0x191d88f3074b234f # initialize rs2
aes64es x17, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x23, 0xddf78a8234ad2fc8 # initialize rs1
li x18, 0x1e7bd7e06ac0a146 # initialize rs2
aes64es x18, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x1, 0x1302fabe54925e65 # initialize rs1
li x19, 0xa8cd70e7d75fa76a # initialize rs2
aes64es x19, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x30, 0xaed57eeb155fad87 # initialize rs1
li x20, 0x26d405a7d55897fc # initialize rs2
aes64es x20, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x30, 0x4ef4c37ca349f487 # initialize rs1
li x21, 0x8eb581475394f3bf # initialize rs2
aes64es x21, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x9, 0xdf25debccba2c89b # initialize rs1
li x22, 0xe6f6c012cb412506 # initialize rs2
aes64es x22, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x13, 0x4de4462acfd2d98f # initialize rs1
li x23, 0xf7d8820acf9f6e5a # initialize rs2
aes64es x23, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x8, 0xe1e7a4fce084d08e # initialize rs1
li x24, 0xed2c8b0108fab0de # initialize rs2
aes64es x24, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x9, 0xd706c3105a1c9ed2 # initialize rs1
li x25, 0x638e4881b88d675b # initialize rs2
aes64es x25, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x7, 0xa305567bbbb0d56f # initialize rs1
li x26, 0x0831f1d366bf9a73 # initialize rs2
aes64es x26, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x20, 0xf15860e97c88072b # initialize rs1
li x27, 0x61b66339c3797499 # initialize rs2
aes64es x27, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x11, 0x8b1291a33763ea8a # initialize rs1
li x28, 0xe584080e7f01d73b # initialize rs2
aes64es x28, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x2, 0x95617a4997e79896 # initialize rs1
li x29, 0xd2e403e33d2d631c # initialize rs2
aes64es x29, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x2, 0x9493b9cdf8f7b3a6 # initialize rs1
li x30, 0x97bbc274375057cc # initialize rs2
aes64es x30, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x24, 0x176836326b82226f # initialize rs1
li x31, 0xa25e0d3593134403 # initialize rs2
aes64es x31, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x1918649a3114a637 # initialize rs1
li x0, 0xe09db5948137dd7b # initialize rs2
aes64es x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xbf3b1b8f34f6571d # initialize rs1
li x1, 0x174b12c76f824e4d # initialize rs2
aes64es x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x66f0165a587f873e # initialize rs1
li x2, 0x3cb3d3d342a27364 # initialize rs2
aes64es x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x77733cb8703fc8ce # initialize rs1
li x3, 0xa1f2bf9f003b8554 # initialize rs2
aes64es x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4a209bab92480710 # initialize rs1
li x4, 0x78a30ab25ea90611 # initialize rs2
aes64es x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd42c06b71efaeb24 # initialize rs1
li x5, 0x76e690adb2c3ac35 # initialize rs2
aes64es x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xafc71de264a46f41 # initialize rs1
li x6, 0x732a3ad995f45e5a # initialize rs2
aes64es x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa9113721a7072bfa # initialize rs1
li x7, 0xe0c4eb7289372ec4 # initialize rs2
aes64es x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xb0a3838be22ef96c # initialize rs1
li x8, 0x61d4b808ee3215cd # initialize rs2
aes64es x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xa2bb377ef1f79f6e # initialize rs1
li x9, 0xb5a88a6b093b47f2 # initialize rs2
aes64es x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x21c76e059f5bcad7 # initialize rs1
li x10, 0xf0b2d7a0bd38a61f # initialize rs2
aes64es x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0xb0ff4aaa49dbe321 # initialize rs1
li x11, 0x368d11a3d307c38d # initialize rs2
aes64es x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xb4f7cf9de5201a9d # initialize rs1
li x12, 0x9186f577f6fc5c23 # initialize rs2
aes64es x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xde526558ceddfb85 # initialize rs1
li x13, 0xc556237ef8e7d0e5 # initialize rs2
aes64es x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x63f58b56c8df2ef8 # initialize rs1
li x14, 0x025f9fb9e71a30ab # initialize rs2
aes64es x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x6ccf9ab5b26898b4 # initialize rs1
li x15, 0x897557bee9ddefba # initialize rs2
aes64es x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x75afac51d29e60a7 # initialize rs1
li x16, 0x02b683068962bd39 # initialize rs2
aes64es x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x2e69bcc11a058529 # initialize rs1
li x17, 0x93ffed47c1f532b6 # initialize rs2
aes64es x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x703f8dd374db00cb # initialize rs1
li x18, 0x92686f00860496ad # initialize rs2
aes64es x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x16370442d3621e98 # initialize rs1
li x19, 0x6015ef53ff7038c2 # initialize rs2
aes64es x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x1b14b5cb17dc932e # initialize rs1
li x20, 0x64cba327373c24e2 # initialize rs2
aes64es x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x31d089b62cbf9a9e # initialize rs1
li x21, 0x151c1aec49b793db # initialize rs2
aes64es x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x0006b65b76c50849 # initialize rs1
li x22, 0xb82cbeffcca31852 # initialize rs2
aes64es x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xbf1088415d3a9877 # initialize rs1
li x23, 0x0df5e2bfc4fd93d2 # initialize rs2
aes64es x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x7ab7fcbd52743a56 # initialize rs1
li x24, 0x01f97573086ef60d # initialize rs2
aes64es x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x613fe46579a7d498 # initialize rs1
li x25, 0xb0cf14f21cae096c # initialize rs2
aes64es x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x808d691170396f27 # initialize rs1
li x26, 0x45fad975daeaba4b # initialize rs2
aes64es x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0xd2e1261382bd4a32 # initialize rs1
li x27, 0x34993faf94c7474e # initialize rs2
aes64es x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x3a71af3180ae3e82 # initialize rs1
li x28, 0x2a0190047c0489f8 # initialize rs2
aes64es x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xfcd30e5d5af5ce7a # initialize rs1
li x29, 0x9c3191d66afd451c # initialize rs2
aes64es x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xb853db9c36e4ead8 # initialize rs1
li x30, 0x226d18369a338147 # initialize rs2
aes64es x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x6cecdfbf9315d01b # initialize rs1
li x31, 0x9d3905312ea3c7b3 # initialize rs2
aes64es x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x26, x31 # perform first operation
aes64es x5, x20, x13 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x19, x7, x22 # perform first operation
aes64es x16, x20, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x9, x25 # perform first operation
aes64es x2, x12, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x24, x1, x19 # perform first operation
aes64es x24, x29, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x12, x10, x29 # perform first operation
aes64es x12, x22, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x29, x16, x5 # perform first operation
aes64es x29, x9, x2 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x8, x5 # perform first operation
aes64es x7, x20, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x17, x5 # perform first operation
aes64es x8, x1, x25 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x23, x19, x9 # perform first operation
aes64es x23, x30, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x30, x19 # perform first operation
aes64es x30, x29, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x3, x12, x18 # perform first operation
aes64es x18, x24, x16 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x12, x3, x1 # perform first operation
aes64es x28, x15, x18 # perform second (triggering) operation

# Testcase cp_sbox = 0
li x27, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
aes64es x23, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 496)

# Testcase cp_sbox = 1
li x30, 0x0101010101010101 # initialize rs1
li x2, 0x0101010101010101 # initialize rs2
aes64es x14, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 504)

# Testcase cp_sbox = 2
li x20, 0x0202020202020202 # initialize rs1
li x1, 0x0202020202020202 # initialize rs2
aes64es x25, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 512)

# Testcase cp_sbox = 3
li x12, 0x0303030303030303 # initialize rs1
li x13, 0x0303030303030303 # initialize rs2
aes64es x31, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 520)

# Testcase cp_sbox = 4
li x22, 0x0404040404040404 # initialize rs1
li x24, 0x0404040404040404 # initialize rs2
aes64es x5, x22, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 528)

# Testcase cp_sbox = 5
li x12, 0x0505050505050505 # initialize rs1
li x11, 0x0505050505050505 # initialize rs2
aes64es x16, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 536)

# Testcase cp_sbox = 6
li x18, 0x0606060606060606 # initialize rs1
li x23, 0x0606060606060606 # initialize rs2
aes64es x28, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 544)

# Testcase cp_sbox = 7
li x8, 0x0707070707070707 # initialize rs1
li x28, 0x0707070707070707 # initialize rs2
aes64es x18, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 552)

# Testcase cp_sbox = 8
li x8, 0x0808080808080808 # initialize rs1
li x18, 0x0808080808080808 # initialize rs2
aes64es x9, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 560)

# Testcase cp_sbox = 9
li x8, 0x0909090909090909 # initialize rs1
li x20, 0x0909090909090909 # initialize rs2
aes64es x17, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 568)

# Testcase cp_sbox = 10
li x9, 0x0a0a0a0a0a0a0a0a # initialize rs1
li x27, 0x0a0a0a0a0a0a0a0a # initialize rs2
aes64es x10, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 576)

# Testcase cp_sbox = 11
li x6, 0x0b0b0b0b0b0b0b0b # initialize rs1
li x18, 0x0b0b0b0b0b0b0b0b # initialize rs2
aes64es x3, x6, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 584)

# Testcase cp_sbox = 12
li x2, 0x0c0c0c0c0c0c0c0c # initialize rs1
li x10, 0x0c0c0c0c0c0c0c0c # initialize rs2
aes64es x5, x2, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 592)

# Testcase cp_sbox = 13
li x10, 0x0d0d0d0d0d0d0d0d # initialize rs1
li x17, 0x0d0d0d0d0d0d0d0d # initialize rs2
aes64es x11, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_sbox = 14
li x8, 0x0e0e0e0e0e0e0e0e # initialize rs1
li x7, 0x0e0e0e0e0e0e0e0e # initialize rs2
aes64es x9, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 608)

# Testcase cp_sbox = 15
li x23, 0x0f0f0f0f0f0f0f0f # initialize rs1
li x22, 0x0f0f0f0f0f0f0f0f # initialize rs2
aes64es x18, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 616)

# Testcase cp_sbox = 16
li x14, 0x1010101010101010 # initialize rs1
li x2, 0x1010101010101010 # initialize rs2
aes64es x11, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 624)

# Testcase cp_sbox = 17
li x26, 0x1111111111111111 # initialize rs1
li x18, 0x1111111111111111 # initialize rs2
aes64es x19, x26, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 632)

# Testcase cp_sbox = 18
li x2, 0x1212121212121212 # initialize rs1
li x28, 0x1212121212121212 # initialize rs2
aes64es x23, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 640)

# Testcase cp_sbox = 19
li x15, 0x1313131313131313 # initialize rs1
li x21, 0x1313131313131313 # initialize rs2
aes64es x6, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 648)

# Testcase cp_sbox = 20
li x24, 0x1414141414141414 # initialize rs1
li x19, 0x1414141414141414 # initialize rs2
aes64es x1, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 656)

# Testcase cp_sbox = 21
li x31, 0x1515151515151515 # initialize rs1
li x23, 0x1515151515151515 # initialize rs2
aes64es x15, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 664)

# Testcase cp_sbox = 22
li x22, 0x1616161616161616 # initialize rs1
li x17, 0x1616161616161616 # initialize rs2
aes64es x25, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 672)

# Testcase cp_sbox = 23
li x15, 0x1717171717171717 # initialize rs1
li x31, 0x1717171717171717 # initialize rs2
aes64es x11, x15, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 680)

# Testcase cp_sbox = 24
li x10, 0x1818181818181818 # initialize rs1
li x14, 0x1818181818181818 # initialize rs2
aes64es x9, x10, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 688)

# Testcase cp_sbox = 25
li x15, 0x1919191919191919 # initialize rs1
li x26, 0x1919191919191919 # initialize rs2
aes64es x11, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 696)

# Testcase cp_sbox = 26
li x1, 0x1a1a1a1a1a1a1a1a # initialize rs1
li x26, 0x1a1a1a1a1a1a1a1a # initialize rs2
aes64es x30, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 704)

# Testcase cp_sbox = 27
li x3, 0x1b1b1b1b1b1b1b1b # initialize rs1
li x20, 0x1b1b1b1b1b1b1b1b # initialize rs2
aes64es x14, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 712)

# Testcase cp_sbox = 28
li x22, 0x1c1c1c1c1c1c1c1c # initialize rs1
li x12, 0x1c1c1c1c1c1c1c1c # initialize rs2
aes64es x27, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 720)

# Testcase cp_sbox = 29
li x1, 0x1d1d1d1d1d1d1d1d # initialize rs1
li x20, 0x1d1d1d1d1d1d1d1d # initialize rs2
aes64es x9, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 728)

# Testcase cp_sbox = 30
li x25, 0x1e1e1e1e1e1e1e1e # initialize rs1
li x1, 0x1e1e1e1e1e1e1e1e # initialize rs2
aes64es x23, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 736)

# Testcase cp_sbox = 31
li x16, 0x1f1f1f1f1f1f1f1f # initialize rs1
li x24, 0x1f1f1f1f1f1f1f1f # initialize rs2
aes64es x9, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 744)

# Testcase cp_sbox = 32
li x6, 0x2020202020202020 # initialize rs1
li x23, 0x2020202020202020 # initialize rs2
aes64es x9, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 752)

# Testcase cp_sbox = 33
li x20, 0x2121212121212121 # initialize rs1
li x6, 0x2121212121212121 # initialize rs2
aes64es x31, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_sbox = 34
li x9, 0x2222222222222222 # initialize rs1
li x5, 0x2222222222222222 # initialize rs2
aes64es x6, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 768)

# Testcase cp_sbox = 35
li x8, 0x2323232323232323 # initialize rs1
li x2, 0x2323232323232323 # initialize rs2
aes64es x23, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 776)

# Testcase cp_sbox = 36
li x7, 0x2424242424242424 # initialize rs1
li x27, 0x2424242424242424 # initialize rs2
aes64es x18, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cp_sbox = 37
li x13, 0x2525252525252525 # initialize rs1
li x12, 0x2525252525252525 # initialize rs2
aes64es x30, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 792)

# Testcase cp_sbox = 38
li x9, 0x2626262626262626 # initialize rs1
li x20, 0x2626262626262626 # initialize rs2
aes64es x17, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 800)

# Testcase cp_sbox = 39
li x14, 0x2727272727272727 # initialize rs1
li x26, 0x2727272727272727 # initialize rs2
aes64es x1, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 808)

# Testcase cp_sbox = 40
li x6, 0x2828282828282828 # initialize rs1
li x7, 0x2828282828282828 # initialize rs2
aes64es x9, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 816)

# Testcase cp_sbox = 41
li x6, 0x2929292929292929 # initialize rs1
li x23, 0x2929292929292929 # initialize rs2
aes64es x5, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 824)

# Testcase cp_sbox = 42
li x28, 0x2a2a2a2a2a2a2a2a # initialize rs1
li x8, 0x2a2a2a2a2a2a2a2a # initialize rs2
aes64es x26, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 832)

# Testcase cp_sbox = 43
li x28, 0x2b2b2b2b2b2b2b2b # initialize rs1
li x25, 0x2b2b2b2b2b2b2b2b # initialize rs2
aes64es x23, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 840)

# Testcase cp_sbox = 44
li x19, 0x2c2c2c2c2c2c2c2c # initialize rs1
li x10, 0x2c2c2c2c2c2c2c2c # initialize rs2
aes64es x13, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 848)

# Testcase cp_sbox = 45
li x9, 0x2d2d2d2d2d2d2d2d # initialize rs1
li x10, 0x2d2d2d2d2d2d2d2d # initialize rs2
aes64es x16, x9, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 856)

# Testcase cp_sbox = 46
li x20, 0x2e2e2e2e2e2e2e2e # initialize rs1
li x30, 0x2e2e2e2e2e2e2e2e # initialize rs2
aes64es x7, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 864)

# Testcase cp_sbox = 47
li x6, 0x2f2f2f2f2f2f2f2f # initialize rs1
li x28, 0x2f2f2f2f2f2f2f2f # initialize rs2
aes64es x19, x6, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 872)

# Testcase cp_sbox = 48
li x9, 0x3030303030303030 # initialize rs1
li x8, 0x3030303030303030 # initialize rs2
aes64es x16, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 880)

# Testcase cp_sbox = 49
li x12, 0x3131313131313131 # initialize rs1
li x1, 0x3131313131313131 # initialize rs2
aes64es x26, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 888)

# Testcase cp_sbox = 50
li x24, 0x3232323232323232 # initialize rs1
li x20, 0x3232323232323232 # initialize rs2
aes64es x14, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 896)

# Testcase cp_sbox = 51
li x27, 0x3333333333333333 # initialize rs1
li x1, 0x3333333333333333 # initialize rs2
aes64es x18, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 904)

# Testcase cp_sbox = 52
li x18, 0x3434343434343434 # initialize rs1
li x17, 0x3434343434343434 # initialize rs2
aes64es x9, x18, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 912)

# Testcase cp_sbox = 53
li x9, 0x3535353535353535 # initialize rs1
li x28, 0x3535353535353535 # initialize rs2
aes64es x20, x9, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 920)

# Testcase cp_sbox = 54
li x27, 0x3636363636363636 # initialize rs1
li x31, 0x3636363636363636 # initialize rs2
aes64es x2, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 928)

# Testcase cp_sbox = 55
li x8, 0x3737373737373737 # initialize rs1
li x2, 0x3737373737373737 # initialize rs2
aes64es x29, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 936)

# Testcase cp_sbox = 56
li x25, 0x3838383838383838 # initialize rs1
li x17, 0x3838383838383838 # initialize rs2
aes64es x24, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 944)

# Testcase cp_sbox = 57
li x18, 0x3939393939393939 # initialize rs1
li x11, 0x3939393939393939 # initialize rs2
aes64es x1, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 952)

# Testcase cp_sbox = 58
li x28, 0x3a3a3a3a3a3a3a3a # initialize rs1
li x18, 0x3a3a3a3a3a3a3a3a # initialize rs2
aes64es x6, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 960)

# Testcase cp_sbox = 59
li x29, 0x3b3b3b3b3b3b3b3b # initialize rs1
li x13, 0x3b3b3b3b3b3b3b3b # initialize rs2
aes64es x9, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 968)

# Testcase cp_sbox = 60
li x14, 0x3c3c3c3c3c3c3c3c # initialize rs1
li x31, 0x3c3c3c3c3c3c3c3c # initialize rs2
aes64es x20, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 976)

# Testcase cp_sbox = 61
li x14, 0x3d3d3d3d3d3d3d3d # initialize rs1
li x22, 0x3d3d3d3d3d3d3d3d # initialize rs2
aes64es x20, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 984)

# Testcase cp_sbox = 62
li x18, 0x3e3e3e3e3e3e3e3e # initialize rs1
li x10, 0x3e3e3e3e3e3e3e3e # initialize rs2
aes64es x29, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 992)

# Testcase cp_sbox = 63
li x19, 0x3f3f3f3f3f3f3f3f # initialize rs1
li x10, 0x3f3f3f3f3f3f3f3f # initialize rs2
aes64es x23, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1000)

# Testcase cp_sbox = 64
li x1, 0x4040404040404040 # initialize rs1
li x8, 0x4040404040404040 # initialize rs2
aes64es x12, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1008)

# Testcase cp_sbox = 65
li x15, 0x4141414141414141 # initialize rs1
li x14, 0x4141414141414141 # initialize rs2
aes64es x16, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1016)

# Testcase cp_sbox = 66
li x14, 0x4242424242424242 # initialize rs1
li x26, 0x4242424242424242 # initialize rs2
aes64es x17, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1024)

# Testcase cp_sbox = 67
li x15, 0x4343434343434343 # initialize rs1
li x27, 0x4343434343434343 # initialize rs2
aes64es x10, x15, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1032)

# Testcase cp_sbox = 68
li x18, 0x4444444444444444 # initialize rs1
li x30, 0x4444444444444444 # initialize rs2
aes64es x27, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1040)

# Testcase cp_sbox = 69
li x26, 0x4545454545454545 # initialize rs1
li x22, 0x4545454545454545 # initialize rs2
aes64es x20, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1048)

# Testcase cp_sbox = 70
li x6, 0x4646464646464646 # initialize rs1
li x20, 0x4646464646464646 # initialize rs2
aes64es x15, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1056)

# Testcase cp_sbox = 71
li x27, 0x4747474747474747 # initialize rs1
li x17, 0x4747474747474747 # initialize rs2
aes64es x19, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1064)

# Testcase cp_sbox = 72
li x3, 0x4848484848484848 # initialize rs1
li x19, 0x4848484848484848 # initialize rs2
aes64es x21, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1072)

# Testcase cp_sbox = 73
li x1, 0x4949494949494949 # initialize rs1
li x17, 0x4949494949494949 # initialize rs2
aes64es x31, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1080)

# Testcase cp_sbox = 74
li x8, 0x4a4a4a4a4a4a4a4a # initialize rs1
li x20, 0x4a4a4a4a4a4a4a4a # initialize rs2
aes64es x10, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1088)

# Testcase cp_sbox = 75
li x9, 0x4b4b4b4b4b4b4b4b # initialize rs1
li x5, 0x4b4b4b4b4b4b4b4b # initialize rs2
aes64es x23, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1096)

# Testcase cp_sbox = 76
li x14, 0x4c4c4c4c4c4c4c4c # initialize rs1
li x28, 0x4c4c4c4c4c4c4c4c # initialize rs2
aes64es x16, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1104)

# Testcase cp_sbox = 77
li x25, 0x4d4d4d4d4d4d4d4d # initialize rs1
li x8, 0x4d4d4d4d4d4d4d4d # initialize rs2
aes64es x1, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1112)

# Testcase cp_sbox = 78
li x7, 0x4e4e4e4e4e4e4e4e # initialize rs1
li x9, 0x4e4e4e4e4e4e4e4e # initialize rs2
aes64es x23, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1120)

# Testcase cp_sbox = 79
li x8, 0x4f4f4f4f4f4f4f4f # initialize rs1
li x10, 0x4f4f4f4f4f4f4f4f # initialize rs2
aes64es x2, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1128)

# Testcase cp_sbox = 80
li x19, 0x5050505050505050 # initialize rs1
li x22, 0x5050505050505050 # initialize rs2
aes64es x12, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1136)

# Testcase cp_sbox = 81
li x6, 0x5151515151515151 # initialize rs1
li x17, 0x5151515151515151 # initialize rs2
aes64es x8, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1144)

# Testcase cp_sbox = 82
li x2, 0x5252525252525252 # initialize rs1
li x7, 0x5252525252525252 # initialize rs2
aes64es x1, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1152)

# Testcase cp_sbox = 83
li x7, 0x5353535353535353 # initialize rs1
li x28, 0x5353535353535353 # initialize rs2
aes64es x6, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1160)

# Testcase cp_sbox = 84
li x8, 0x5454545454545454 # initialize rs1
li x25, 0x5454545454545454 # initialize rs2
aes64es x14, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1168)

# Testcase cp_sbox = 85
li x24, 0x5555555555555555 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
aes64es x26, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1176)

# Testcase cp_sbox = 86
li x1, 0x5656565656565656 # initialize rs1
li x16, 0x5656565656565656 # initialize rs2
aes64es x29, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1184)

# Testcase cp_sbox = 87
li x16, 0x5757575757575757 # initialize rs1
li x27, 0x5757575757575757 # initialize rs2
aes64es x28, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1192)

# Testcase cp_sbox = 88
li x15, 0x5858585858585858 # initialize rs1
li x3, 0x5858585858585858 # initialize rs2
aes64es x29, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1200)

# Testcase cp_sbox = 89
li x29, 0x5959595959595959 # initialize rs1
li x31, 0x5959595959595959 # initialize rs2
aes64es x26, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1208)

# Testcase cp_sbox = 90
li x8, 0x5a5a5a5a5a5a5a5a # initialize rs1
li x14, 0x5a5a5a5a5a5a5a5a # initialize rs2
aes64es x20, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1216)

# Testcase cp_sbox = 91
li x22, 0x5b5b5b5b5b5b5b5b # initialize rs1
li x6, 0x5b5b5b5b5b5b5b5b # initialize rs2
aes64es x24, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1224)

# Testcase cp_sbox = 92
li x24, 0x5c5c5c5c5c5c5c5c # initialize rs1
li x27, 0x5c5c5c5c5c5c5c5c # initialize rs2
aes64es x30, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1232)

# Testcase cp_sbox = 93
li x1, 0x5d5d5d5d5d5d5d5d # initialize rs1
li x6, 0x5d5d5d5d5d5d5d5d # initialize rs2
aes64es x15, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1240)

# Testcase cp_sbox = 94
li x8, 0x5e5e5e5e5e5e5e5e # initialize rs1
li x9, 0x5e5e5e5e5e5e5e5e # initialize rs2
aes64es x15, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1248)

# Testcase cp_sbox = 95
li x21, 0x5f5f5f5f5f5f5f5f # initialize rs1
li x19, 0x5f5f5f5f5f5f5f5f # initialize rs2
aes64es x31, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1256)

# Testcase cp_sbox = 96
li x25, 0x6060606060606060 # initialize rs1
li x28, 0x6060606060606060 # initialize rs2
aes64es x22, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1264)

# Testcase cp_sbox = 97
li x24, 0x6161616161616161 # initialize rs1
li x25, 0x6161616161616161 # initialize rs2
aes64es x13, x24, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1272)

# Testcase cp_sbox = 98
li x1, 0x6262626262626262 # initialize rs1
li x8, 0x6262626262626262 # initialize rs2
aes64es x17, x1, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1280)

# Testcase cp_sbox = 99
li x22, 0x6363636363636363 # initialize rs1
li x2, 0x6363636363636363 # initialize rs2
aes64es x8, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1288)

# Testcase cp_sbox = 100
li x24, 0x6464646464646464 # initialize rs1
li x26, 0x6464646464646464 # initialize rs2
aes64es x28, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1296)

# Testcase cp_sbox = 101
li x13, 0x6565656565656565 # initialize rs1
li x22, 0x6565656565656565 # initialize rs2
aes64es x5, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1304)

# Testcase cp_sbox = 102
li x8, 0x6666666666666666 # initialize rs1
li x6, 0x6666666666666666 # initialize rs2
aes64es x24, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1312)

# Testcase cp_sbox = 103
li x29, 0x6767676767676767 # initialize rs1
li x3, 0x6767676767676767 # initialize rs2
aes64es x24, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1320)

# Testcase cp_sbox = 104
li x19, 0x6868686868686868 # initialize rs1
li x16, 0x6868686868686868 # initialize rs2
aes64es x20, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1328)

# Testcase cp_sbox = 105
li x23, 0x6969696969696969 # initialize rs1
li x27, 0x6969696969696969 # initialize rs2
aes64es x9, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1336)

# Testcase cp_sbox = 106
li x24, 0x6a6a6a6a6a6a6a6a # initialize rs1
li x14, 0x6a6a6a6a6a6a6a6a # initialize rs2
aes64es x21, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1344)

# Testcase cp_sbox = 107
li x30, 0x6b6b6b6b6b6b6b6b # initialize rs1
li x1, 0x6b6b6b6b6b6b6b6b # initialize rs2
aes64es x29, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1352)

# Testcase cp_sbox = 108
li x31, 0x6c6c6c6c6c6c6c6c # initialize rs1
li x12, 0x6c6c6c6c6c6c6c6c # initialize rs2
aes64es x16, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1360)

# Testcase cp_sbox = 109
li x29, 0x6d6d6d6d6d6d6d6d # initialize rs1
li x14, 0x6d6d6d6d6d6d6d6d # initialize rs2
aes64es x10, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1368)

# Testcase cp_sbox = 110
li x13, 0x6e6e6e6e6e6e6e6e # initialize rs1
li x30, 0x6e6e6e6e6e6e6e6e # initialize rs2
aes64es x24, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1376)

# Testcase cp_sbox = 111
li x9, 0x6f6f6f6f6f6f6f6f # initialize rs1
li x30, 0x6f6f6f6f6f6f6f6f # initialize rs2
aes64es x10, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1384)

# Testcase cp_sbox = 112
li x30, 0x7070707070707070 # initialize rs1
li x25, 0x7070707070707070 # initialize rs2
aes64es x29, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1392)

# Testcase cp_sbox = 113
li x2, 0x7171717171717171 # initialize rs1
li x14, 0x7171717171717171 # initialize rs2
aes64es x13, x2, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1400)

# Testcase cp_sbox = 114
li x27, 0x7272727272727272 # initialize rs1
li x1, 0x7272727272727272 # initialize rs2
aes64es x19, x27, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1408)

# Testcase cp_sbox = 115
li x20, 0x7373737373737373 # initialize rs1
li x15, 0x7373737373737373 # initialize rs2
aes64es x21, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1416)

# Testcase cp_sbox = 116
li x26, 0x7474747474747474 # initialize rs1
li x21, 0x7474747474747474 # initialize rs2
aes64es x27, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1424)

# Testcase cp_sbox = 117
li x30, 0x7575757575757575 # initialize rs1
li x5, 0x7575757575757575 # initialize rs2
aes64es x8, x30, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1432)

# Testcase cp_sbox = 118
li x29, 0x7676767676767676 # initialize rs1
li x11, 0x7676767676767676 # initialize rs2
aes64es x3, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1440)

# Testcase cp_sbox = 119
li x13, 0x7777777777777777 # initialize rs1
li x26, 0x7777777777777777 # initialize rs2
aes64es x31, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1448)

# Testcase cp_sbox = 120
li x24, 0x7878787878787878 # initialize rs1
li x15, 0x7878787878787878 # initialize rs2
aes64es x28, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1456)

# Testcase cp_sbox = 121
li x27, 0x7979797979797979 # initialize rs1
li x19, 0x7979797979797979 # initialize rs2
aes64es x25, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1464)

# Testcase cp_sbox = 122
li x12, 0x7a7a7a7a7a7a7a7a # initialize rs1
li x9, 0x7a7a7a7a7a7a7a7a # initialize rs2
aes64es x11, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1472)

# Testcase cp_sbox = 123
li x18, 0x7b7b7b7b7b7b7b7b # initialize rs1
li x20, 0x7b7b7b7b7b7b7b7b # initialize rs2
aes64es x24, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1480)

# Testcase cp_sbox = 124
li x2, 0x7c7c7c7c7c7c7c7c # initialize rs1
li x26, 0x7c7c7c7c7c7c7c7c # initialize rs2
aes64es x15, x2, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1488)

# Testcase cp_sbox = 125
li x22, 0x7d7d7d7d7d7d7d7d # initialize rs1
li x20, 0x7d7d7d7d7d7d7d7d # initialize rs2
aes64es x16, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1496)

# Testcase cp_sbox = 126
li x22, 0x7e7e7e7e7e7e7e7e # initialize rs1
li x7, 0x7e7e7e7e7e7e7e7e # initialize rs2
aes64es x10, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1504)

# Testcase cp_sbox = 127
li x10, 0x7f7f7f7f7f7f7f7f # initialize rs1
li x26, 0x7f7f7f7f7f7f7f7f # initialize rs2
aes64es x9, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1512)

# Testcase cp_sbox = 128
li x16, 0x8080808080808080 # initialize rs1
li x25, 0x8080808080808080 # initialize rs2
aes64es x22, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1520)

# Testcase cp_sbox = 129
li x3, 0x8181818181818181 # initialize rs1
li x12, 0x8181818181818181 # initialize rs2
aes64es x5, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1528)

# Testcase cp_sbox = 130
li x28, 0x8282828282828282 # initialize rs1
li x12, 0x8282828282828282 # initialize rs2
aes64es x27, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1536)

# Testcase cp_sbox = 131
li x12, 0x8383838383838383 # initialize rs1
li x9, 0x8383838383838383 # initialize rs2
aes64es x10, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1544)

# Testcase cp_sbox = 132
li x18, 0x8484848484848484 # initialize rs1
li x19, 0x8484848484848484 # initialize rs2
aes64es x2, x18, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1552)

# Testcase cp_sbox = 133
li x21, 0x8585858585858585 # initialize rs1
li x9, 0x8585858585858585 # initialize rs2
aes64es x29, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1560)

# Testcase cp_sbox = 134
li x26, 0x8686868686868686 # initialize rs1
li x14, 0x8686868686868686 # initialize rs2
aes64es x22, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1568)

# Testcase cp_sbox = 135
li x20, 0x8787878787878787 # initialize rs1
li x2, 0x8787878787878787 # initialize rs2
aes64es x19, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1576)

# Testcase cp_sbox = 136
li x10, 0x8888888888888888 # initialize rs1
li x8, 0x8888888888888888 # initialize rs2
aes64es x29, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1584)

# Testcase cp_sbox = 137
li x29, 0x8989898989898989 # initialize rs1
li x24, 0x8989898989898989 # initialize rs2
aes64es x20, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1592)

# Testcase cp_sbox = 138
li x2, 0x8a8a8a8a8a8a8a8a # initialize rs1
li x18, 0x8a8a8a8a8a8a8a8a # initialize rs2
aes64es x1, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1600)

# Testcase cp_sbox = 139
li x22, 0x8b8b8b8b8b8b8b8b # initialize rs1
li x19, 0x8b8b8b8b8b8b8b8b # initialize rs2
aes64es x3, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1608)

# Testcase cp_sbox = 140
li x26, 0x8c8c8c8c8c8c8c8c # initialize rs1
li x12, 0x8c8c8c8c8c8c8c8c # initialize rs2
aes64es x23, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1616)

# Testcase cp_sbox = 141
li x12, 0x8d8d8d8d8d8d8d8d # initialize rs1
li x22, 0x8d8d8d8d8d8d8d8d # initialize rs2
aes64es x28, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1624)

# Testcase cp_sbox = 142
li x8, 0x8e8e8e8e8e8e8e8e # initialize rs1
li x12, 0x8e8e8e8e8e8e8e8e # initialize rs2
aes64es x3, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1632)

# Testcase cp_sbox = 143
li x17, 0x8f8f8f8f8f8f8f8f # initialize rs1
li x24, 0x8f8f8f8f8f8f8f8f # initialize rs2
aes64es x6, x17, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1640)

# Testcase cp_sbox = 144
li x7, 0x9090909090909090 # initialize rs1
li x2, 0x9090909090909090 # initialize rs2
aes64es x18, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1648)

# Testcase cp_sbox = 145
li x24, 0x9191919191919191 # initialize rs1
li x6, 0x9191919191919191 # initialize rs2
aes64es x16, x24, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cp_sbox = 146
li x22, 0x9292929292929292 # initialize rs1
li x28, 0x9292929292929292 # initialize rs2
aes64es x7, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1664)

# Testcase cp_sbox = 147
li x18, 0x9393939393939393 # initialize rs1
li x3, 0x9393939393939393 # initialize rs2
aes64es x23, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1672)

# Testcase cp_sbox = 148
li x5, 0x9494949494949494 # initialize rs1
li x28, 0x9494949494949494 # initialize rs2
aes64es x3, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1680)

# Testcase cp_sbox = 149
li x25, 0x9595959595959595 # initialize rs1
li x12, 0x9595959595959595 # initialize rs2
aes64es x15, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1688)

# Testcase cp_sbox = 150
li x22, 0x9696969696969696 # initialize rs1
li x10, 0x9696969696969696 # initialize rs2
aes64es x27, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1696)

# Testcase cp_sbox = 151
li x22, 0x9797979797979797 # initialize rs1
li x11, 0x9797979797979797 # initialize rs2
aes64es x21, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1704)

# Testcase cp_sbox = 152
li x25, 0x9898989898989898 # initialize rs1
li x26, 0x9898989898989898 # initialize rs2
aes64es x24, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1712)

# Testcase cp_sbox = 153
li x28, 0x9999999999999999 # initialize rs1
li x31, 0x9999999999999999 # initialize rs2
aes64es x14, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1720)

# Testcase cp_sbox = 154
li x25, 0x9a9a9a9a9a9a9a9a # initialize rs1
li x7, 0x9a9a9a9a9a9a9a9a # initialize rs2
aes64es x17, x25, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1728)

# Testcase cp_sbox = 155
li x31, 0x9b9b9b9b9b9b9b9b # initialize rs1
li x10, 0x9b9b9b9b9b9b9b9b # initialize rs2
aes64es x26, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cp_sbox = 156
li x17, 0x9c9c9c9c9c9c9c9c # initialize rs1
li x12, 0x9c9c9c9c9c9c9c9c # initialize rs2
aes64es x19, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1744)

# Testcase cp_sbox = 157
li x19, 0x9d9d9d9d9d9d9d9d # initialize rs1
li x5, 0x9d9d9d9d9d9d9d9d # initialize rs2
aes64es x28, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cp_sbox = 158
li x18, 0x9e9e9e9e9e9e9e9e # initialize rs1
li x23, 0x9e9e9e9e9e9e9e9e # initialize rs2
aes64es x16, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1760)

# Testcase cp_sbox = 159
li x14, 0x9f9f9f9f9f9f9f9f # initialize rs1
li x30, 0x9f9f9f9f9f9f9f9f # initialize rs2
aes64es x12, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1768)

# Testcase cp_sbox = 160
li x17, 0xa0a0a0a0a0a0a0a0 # initialize rs1
li x13, 0xa0a0a0a0a0a0a0a0 # initialize rs2
aes64es x30, x17, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1776)

# Testcase cp_sbox = 161
li x21, 0xa1a1a1a1a1a1a1a1 # initialize rs1
li x13, 0xa1a1a1a1a1a1a1a1 # initialize rs2
aes64es x7, x21, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1784)

# Testcase cp_sbox = 162
li x25, 0xa2a2a2a2a2a2a2a2 # initialize rs1
li x23, 0xa2a2a2a2a2a2a2a2 # initialize rs2
aes64es x28, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_sbox = 163
li x23, 0xa3a3a3a3a3a3a3a3 # initialize rs1
li x7, 0xa3a3a3a3a3a3a3a3 # initialize rs2
aes64es x6, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 0)

# Testcase cp_sbox = 164
li x9, 0xa4a4a4a4a4a4a4a4 # initialize rs1
li x5, 0xa4a4a4a4a4a4a4a4 # initialize rs2
aes64es x13, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 8)

# Testcase cp_sbox = 165
li x24, 0xa5a5a5a5a5a5a5a5 # initialize rs1
li x16, 0xa5a5a5a5a5a5a5a5 # initialize rs2
aes64es x13, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cp_sbox = 166
li x15, 0xa6a6a6a6a6a6a6a6 # initialize rs1
li x14, 0xa6a6a6a6a6a6a6a6 # initialize rs2
aes64es x20, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 24)

# Testcase cp_sbox = 167
li x5, 0xa7a7a7a7a7a7a7a7 # initialize rs1
li x13, 0xa7a7a7a7a7a7a7a7 # initialize rs2
aes64es x10, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 32)

# Testcase cp_sbox = 168
li x1, 0xa8a8a8a8a8a8a8a8 # initialize rs1
li x29, 0xa8a8a8a8a8a8a8a8 # initialize rs2
aes64es x25, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 40)

# Testcase cp_sbox = 169
li x30, 0xa9a9a9a9a9a9a9a9 # initialize rs1
li x25, 0xa9a9a9a9a9a9a9a9 # initialize rs2
aes64es x18, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 48)

# Testcase cp_sbox = 170
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64es x23, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 56)

# Testcase cp_sbox = 171
li x27, 0xabababababababab # initialize rs1
li x13, 0xabababababababab # initialize rs2
aes64es x17, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 64)

# Testcase cp_sbox = 172
li x26, 0xacacacacacacacac # initialize rs1
li x15, 0xacacacacacacacac # initialize rs2
aes64es x16, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 72)

# Testcase cp_sbox = 173
li x10, 0xadadadadadadadad # initialize rs1
li x6, 0xadadadadadadadad # initialize rs2
aes64es x29, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 80)

# Testcase cp_sbox = 174
li x26, 0xaeaeaeaeaeaeaeae # initialize rs1
li x29, 0xaeaeaeaeaeaeaeae # initialize rs2
aes64es x23, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_sbox = 175
li x14, 0xafafafafafafafaf # initialize rs1
li x26, 0xafafafafafafafaf # initialize rs2
aes64es x7, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 96)

# Testcase cp_sbox = 176
li x8, 0xb0b0b0b0b0b0b0b0 # initialize rs1
li x23, 0xb0b0b0b0b0b0b0b0 # initialize rs2
aes64es x12, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 104)

# Testcase cp_sbox = 177
li x6, 0xb1b1b1b1b1b1b1b1 # initialize rs1
li x9, 0xb1b1b1b1b1b1b1b1 # initialize rs2
aes64es x8, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 112)

# Testcase cp_sbox = 178
li x21, 0xb2b2b2b2b2b2b2b2 # initialize rs1
li x23, 0xb2b2b2b2b2b2b2b2 # initialize rs2
aes64es x22, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 120)

# Testcase cp_sbox = 179
li x5, 0xb3b3b3b3b3b3b3b3 # initialize rs1
li x15, 0xb3b3b3b3b3b3b3b3 # initialize rs2
aes64es x29, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 128)

# Testcase cp_sbox = 180
li x28, 0xb4b4b4b4b4b4b4b4 # initialize rs1
li x7, 0xb4b4b4b4b4b4b4b4 # initialize rs2
aes64es x24, x28, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 136)

# Testcase cp_sbox = 181
li x13, 0xb5b5b5b5b5b5b5b5 # initialize rs1
li x18, 0xb5b5b5b5b5b5b5b5 # initialize rs2
aes64es x1, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 144)

# Testcase cp_sbox = 182
li x15, 0xb6b6b6b6b6b6b6b6 # initialize rs1
li x12, 0xb6b6b6b6b6b6b6b6 # initialize rs2
aes64es x20, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 152)

# Testcase cp_sbox = 183
li x7, 0xb7b7b7b7b7b7b7b7 # initialize rs1
li x22, 0xb7b7b7b7b7b7b7b7 # initialize rs2
aes64es x31, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 160)

# Testcase cp_sbox = 184
li x29, 0xb8b8b8b8b8b8b8b8 # initialize rs1
li x30, 0xb8b8b8b8b8b8b8b8 # initialize rs2
aes64es x31, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 168)

# Testcase cp_sbox = 185
li x9, 0xb9b9b9b9b9b9b9b9 # initialize rs1
li x17, 0xb9b9b9b9b9b9b9b9 # initialize rs2
aes64es x15, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 176)

# Testcase cp_sbox = 186
li x19, 0xbabababababababa # initialize rs1
li x10, 0xbabababababababa # initialize rs2
aes64es x31, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 184)

# Testcase cp_sbox = 187
li x23, 0xbbbbbbbbbbbbbbbb # initialize rs1
li x25, 0xbbbbbbbbbbbbbbbb # initialize rs2
aes64es x28, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 192)

# Testcase cp_sbox = 188
li x24, 0xbcbcbcbcbcbcbcbc # initialize rs1
li x19, 0xbcbcbcbcbcbcbcbc # initialize rs2
aes64es x15, x24, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 200)

# Testcase cp_sbox = 189
li x11, 0xbdbdbdbdbdbdbdbd # initialize rs1
li x22, 0xbdbdbdbdbdbdbdbd # initialize rs2
aes64es x19, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 208)

# Testcase cp_sbox = 190
li x29, 0xbebebebebebebebe # initialize rs1
li x23, 0xbebebebebebebebe # initialize rs2
aes64es x20, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 216)

# Testcase cp_sbox = 191
li x25, 0xbfbfbfbfbfbfbfbf # initialize rs1
li x30, 0xbfbfbfbfbfbfbfbf # initialize rs2
aes64es x26, x25, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 224)

# Testcase cp_sbox = 192
li x19, 0xc0c0c0c0c0c0c0c0 # initialize rs1
li x7, 0xc0c0c0c0c0c0c0c0 # initialize rs2
aes64es x21, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 232)

# Testcase cp_sbox = 193
li x16, 0xc1c1c1c1c1c1c1c1 # initialize rs1
li x25, 0xc1c1c1c1c1c1c1c1 # initialize rs2
aes64es x18, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 240)

# Testcase cp_sbox = 194
li x27, 0xc2c2c2c2c2c2c2c2 # initialize rs1
li x28, 0xc2c2c2c2c2c2c2c2 # initialize rs2
aes64es x23, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 248)

# Testcase cp_sbox = 195
li x17, 0xc3c3c3c3c3c3c3c3 # initialize rs1
li x6, 0xc3c3c3c3c3c3c3c3 # initialize rs2
aes64es x10, x17, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 256)

# Testcase cp_sbox = 196
li x16, 0xc4c4c4c4c4c4c4c4 # initialize rs1
li x6, 0xc4c4c4c4c4c4c4c4 # initialize rs2
aes64es x26, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 264)

# Testcase cp_sbox = 197
li x10, 0xc5c5c5c5c5c5c5c5 # initialize rs1
li x2, 0xc5c5c5c5c5c5c5c5 # initialize rs2
aes64es x31, x10, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 272)

# Testcase cp_sbox = 198
li x20, 0xc6c6c6c6c6c6c6c6 # initialize rs1
li x25, 0xc6c6c6c6c6c6c6c6 # initialize rs2
aes64es x9, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 280)

# Testcase cp_sbox = 199
li x17, 0xc7c7c7c7c7c7c7c7 # initialize rs1
li x30, 0xc7c7c7c7c7c7c7c7 # initialize rs2
aes64es x27, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 288)

# Testcase cp_sbox = 200
li x14, 0xc8c8c8c8c8c8c8c8 # initialize rs1
li x8, 0xc8c8c8c8c8c8c8c8 # initialize rs2
aes64es x2, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 296)

# Testcase cp_sbox = 201
li x20, 0xc9c9c9c9c9c9c9c9 # initialize rs1
li x30, 0xc9c9c9c9c9c9c9c9 # initialize rs2
aes64es x12, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cp_sbox = 202
li x29, 0xcacacacacacacaca # initialize rs1
li x1, 0xcacacacacacacaca # initialize rs2
aes64es x11, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 312)

# Testcase cp_sbox = 203
li x12, 0xcbcbcbcbcbcbcbcb # initialize rs1
li x14, 0xcbcbcbcbcbcbcbcb # initialize rs2
aes64es x27, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 320)

# Testcase cp_sbox = 204
li x15, 0xcccccccccccccccc # initialize rs1
li x3, 0xcccccccccccccccc # initialize rs2
aes64es x30, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 328)

# Testcase cp_sbox = 205
li x6, 0xcdcdcdcdcdcdcdcd # initialize rs1
li x13, 0xcdcdcdcdcdcdcdcd # initialize rs2
aes64es x3, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 336)

# Testcase cp_sbox = 206
li x13, 0xcececececececece # initialize rs1
li x24, 0xcececececececece # initialize rs2
aes64es x28, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 344)

# Testcase cp_sbox = 207
li x20, 0xcfcfcfcfcfcfcfcf # initialize rs1
li x26, 0xcfcfcfcfcfcfcfcf # initialize rs2
aes64es x30, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 352)

# Testcase cp_sbox = 208
li x6, 0xd0d0d0d0d0d0d0d0 # initialize rs1
li x5, 0xd0d0d0d0d0d0d0d0 # initialize rs2
aes64es x2, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 360)

# Testcase cp_sbox = 209
li x3, 0xd1d1d1d1d1d1d1d1 # initialize rs1
li x18, 0xd1d1d1d1d1d1d1d1 # initialize rs2
aes64es x7, x3, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 368)

# Testcase cp_sbox = 210
li x12, 0xd2d2d2d2d2d2d2d2 # initialize rs1
li x24, 0xd2d2d2d2d2d2d2d2 # initialize rs2
aes64es x19, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 376)

# Testcase cp_sbox = 211
li x1, 0xd3d3d3d3d3d3d3d3 # initialize rs1
li x9, 0xd3d3d3d3d3d3d3d3 # initialize rs2
aes64es x21, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 384)

# Testcase cp_sbox = 212
li x29, 0xd4d4d4d4d4d4d4d4 # initialize rs1
li x23, 0xd4d4d4d4d4d4d4d4 # initialize rs2
aes64es x13, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 392)

# Testcase cp_sbox = 213
li x13, 0xd5d5d5d5d5d5d5d5 # initialize rs1
li x2, 0xd5d5d5d5d5d5d5d5 # initialize rs2
aes64es x16, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 400)

# Testcase cp_sbox = 214
li x3, 0xd6d6d6d6d6d6d6d6 # initialize rs1
li x20, 0xd6d6d6d6d6d6d6d6 # initialize rs2
aes64es x28, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 408)

# Testcase cp_sbox = 215
li x26, 0xd7d7d7d7d7d7d7d7 # initialize rs1
li x2, 0xd7d7d7d7d7d7d7d7 # initialize rs2
aes64es x3, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 416)

# Testcase cp_sbox = 216
li x26, 0xd8d8d8d8d8d8d8d8 # initialize rs1
li x30, 0xd8d8d8d8d8d8d8d8 # initialize rs2
aes64es x27, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 424)

# Testcase cp_sbox = 217
li x6, 0xd9d9d9d9d9d9d9d9 # initialize rs1
li x7, 0xd9d9d9d9d9d9d9d9 # initialize rs2
aes64es x25, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 432)

# Testcase cp_sbox = 218
li x12, 0xdadadadadadadada # initialize rs1
li x25, 0xdadadadadadadada # initialize rs2
aes64es x6, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 440)

# Testcase cp_sbox = 219
li x9, 0xdbdbdbdbdbdbdbdb # initialize rs1
li x19, 0xdbdbdbdbdbdbdbdb # initialize rs2
aes64es x10, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_sbox = 220
li x10, 0xdcdcdcdcdcdcdcdc # initialize rs1
li x18, 0xdcdcdcdcdcdcdcdc # initialize rs2
aes64es x14, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 456)

# Testcase cp_sbox = 221
li x13, 0xdddddddddddddddd # initialize rs1
li x12, 0xdddddddddddddddd # initialize rs2
aes64es x30, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 464)

# Testcase cp_sbox = 222
li x30, 0xdededededededede # initialize rs1
li x9, 0xdededededededede # initialize rs2
aes64es x23, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 472)

# Testcase cp_sbox = 223
li x28, 0xdfdfdfdfdfdfdfdf # initialize rs1
li x19, 0xdfdfdfdfdfdfdfdf # initialize rs2
aes64es x10, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 480)

# Testcase cp_sbox = 224
li x9, 0xe0e0e0e0e0e0e0e0 # initialize rs1
li x26, 0xe0e0e0e0e0e0e0e0 # initialize rs2
aes64es x16, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 488)

# Testcase cp_sbox = 225
li x5, 0xe1e1e1e1e1e1e1e1 # initialize rs1
li x17, 0xe1e1e1e1e1e1e1e1 # initialize rs2
aes64es x11, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 496)

# Testcase cp_sbox = 226
li x23, 0xe2e2e2e2e2e2e2e2 # initialize rs1
li x28, 0xe2e2e2e2e2e2e2e2 # initialize rs2
aes64es x3, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 504)

# Testcase cp_sbox = 227
li x26, 0xe3e3e3e3e3e3e3e3 # initialize rs1
li x7, 0xe3e3e3e3e3e3e3e3 # initialize rs2
aes64es x29, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 512)

# Testcase cp_sbox = 228
li x21, 0xe4e4e4e4e4e4e4e4 # initialize rs1
li x3, 0xe4e4e4e4e4e4e4e4 # initialize rs2
aes64es x5, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 520)

# Testcase cp_sbox = 229
li x1, 0xe5e5e5e5e5e5e5e5 # initialize rs1
li x11, 0xe5e5e5e5e5e5e5e5 # initialize rs2
aes64es x14, x1, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 528)

# Testcase cp_sbox = 230
li x26, 0xe6e6e6e6e6e6e6e6 # initialize rs1
li x19, 0xe6e6e6e6e6e6e6e6 # initialize rs2
aes64es x8, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 536)

# Testcase cp_sbox = 231
li x18, 0xe7e7e7e7e7e7e7e7 # initialize rs1
li x1, 0xe7e7e7e7e7e7e7e7 # initialize rs2
aes64es x15, x18, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 544)

# Testcase cp_sbox = 232
li x8, 0xe8e8e8e8e8e8e8e8 # initialize rs1
li x5, 0xe8e8e8e8e8e8e8e8 # initialize rs2
aes64es x3, x8, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 552)

# Testcase cp_sbox = 233
li x13, 0xe9e9e9e9e9e9e9e9 # initialize rs1
li x9, 0xe9e9e9e9e9e9e9e9 # initialize rs2
aes64es x6, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 560)

# Testcase cp_sbox = 234
li x15, 0xeaeaeaeaeaeaeaea # initialize rs1
li x10, 0xeaeaeaeaeaeaeaea # initialize rs2
aes64es x9, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cp_sbox = 235
li x20, 0xebebebebebebebeb # initialize rs1
li x2, 0xebebebebebebebeb # initialize rs2
aes64es x13, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 576)

# Testcase cp_sbox = 236
li x15, 0xecececececececec # initialize rs1
li x14, 0xecececececececec # initialize rs2
aes64es x2, x15, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 584)

# Testcase cp_sbox = 237
li x3, 0xedededededededed # initialize rs1
li x9, 0xedededededededed # initialize rs2
aes64es x8, x3, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 592)

# Testcase cp_sbox = 238
li x9, 0xeeeeeeeeeeeeeeee # initialize rs1
li x29, 0xeeeeeeeeeeeeeeee # initialize rs2
aes64es x20, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 600)

# Testcase cp_sbox = 239
li x15, 0xefefefefefefefef # initialize rs1
li x7, 0xefefefefefefefef # initialize rs2
aes64es x22, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 608)

# Testcase cp_sbox = 240
li x8, 0xf0f0f0f0f0f0f0f0 # initialize rs1
li x17, 0xf0f0f0f0f0f0f0f0 # initialize rs2
aes64es x2, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 616)

# Testcase cp_sbox = 241
li x7, 0xf1f1f1f1f1f1f1f1 # initialize rs1
li x23, 0xf1f1f1f1f1f1f1f1 # initialize rs2
aes64es x14, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_sbox = 242
li x2, 0xf2f2f2f2f2f2f2f2 # initialize rs1
li x9, 0xf2f2f2f2f2f2f2f2 # initialize rs2
aes64es x18, x2, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 632)

# Testcase cp_sbox = 243
li x16, 0xf3f3f3f3f3f3f3f3 # initialize rs1
li x1, 0xf3f3f3f3f3f3f3f3 # initialize rs2
aes64es x2, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 640)

# Testcase cp_sbox = 244
li x24, 0xf4f4f4f4f4f4f4f4 # initialize rs1
li x16, 0xf4f4f4f4f4f4f4f4 # initialize rs2
aes64es x11, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 648)

# Testcase cp_sbox = 245
li x22, 0xf5f5f5f5f5f5f5f5 # initialize rs1
li x13, 0xf5f5f5f5f5f5f5f5 # initialize rs2
aes64es x2, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cp_sbox = 246
li x19, 0xf6f6f6f6f6f6f6f6 # initialize rs1
li x28, 0xf6f6f6f6f6f6f6f6 # initialize rs2
aes64es x18, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 664)

# Testcase cp_sbox = 247
li x12, 0xf7f7f7f7f7f7f7f7 # initialize rs1
li x16, 0xf7f7f7f7f7f7f7f7 # initialize rs2
aes64es x21, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 672)

# Testcase cp_sbox = 248
li x19, 0xf8f8f8f8f8f8f8f8 # initialize rs1
li x18, 0xf8f8f8f8f8f8f8f8 # initialize rs2
aes64es x15, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 680)

# Testcase cp_sbox = 249
li x30, 0xf9f9f9f9f9f9f9f9 # initialize rs1
li x9, 0xf9f9f9f9f9f9f9f9 # initialize rs2
aes64es x21, x30, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 688)

# Testcase cp_sbox = 250
li x15, 0xfafafafafafafafa # initialize rs1
li x12, 0xfafafafafafafafa # initialize rs2
aes64es x25, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 696)

# Testcase cp_sbox = 251
li x19, 0xfbfbfbfbfbfbfbfb # initialize rs1
li x12, 0xfbfbfbfbfbfbfbfb # initialize rs2
aes64es x20, x19, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 704)

# Testcase cp_sbox = 252
li x17, 0xfcfcfcfcfcfcfcfc # initialize rs1
li x14, 0xfcfcfcfcfcfcfcfc # initialize rs2
aes64es x20, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 712)

# Testcase cp_sbox = 253
li x10, 0xfdfdfdfdfdfdfdfd # initialize rs1
li x24, 0xfdfdfdfdfdfdfdfd # initialize rs2
aes64es x30, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 720)

# Testcase cp_sbox = 254
li x17, 0xfefefefefefefefe # initialize rs1
li x30, 0xfefefefefefefefe # initialize rs2
aes64es x11, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cp_sbox = 255
li x15, 0xffffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
aes64es x22, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 736)

.EQU SIGSIZE,6144


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
