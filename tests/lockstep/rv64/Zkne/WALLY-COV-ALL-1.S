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
// Tests from: WALLY-COV-aes64es.S
// ******************


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

#.EQU SIGSIZE,6144


// ******************
// Tests from: WALLY-COV-aes64ks1i.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x72788cf51df39568 # initialize rs1
aes64ks1i x1, x0, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0xf674fdf5aab5a255 # initialize rs1
aes64ks1i x31, x1, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x636816979b53c787 # initialize rs1
aes64ks1i x13, x2, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x65ef2ddf367eb7db # initialize rs1
aes64ks1i x25, x3, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xab3ce4fc49085a8e # initialize rs1
aes64ks1i x21, x4, 0 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x03bc50e0880cd0b5 # initialize rs1
aes64ks1i x12, x5, 10 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd89a5e628ee04825 # initialize rs1
aes64ks1i x20, x6, 4 # perform operation
RVTEST_SIGUPD(x7, x0, x20, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xa03dbeea2f558b86 # initialize rs1
aes64ks1i x22, x7, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xe5a490dc76c3fd0d # initialize rs1
aes64ks1i x18, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x96d97d480035b08f # initialize rs1
aes64ks1i x1, x9, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x0b8ea52d0a521e00 # initialize rs1
aes64ks1i x28, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0xeb772c097817bb37 # initialize rs1
aes64ks1i x23, x11, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xe8c39dce1f19a27b # initialize rs1
aes64ks1i x11, x12, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x714d5deca4c01eb2 # initialize rs1
aes64ks1i x16, x13, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x30d12856bb6d747c # initialize rs1
aes64ks1i x28, x14, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x27648abafcbb97cb # initialize rs1
aes64ks1i x14, x15, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xf3813d96f30dd68e # initialize rs1
aes64ks1i x6, x16, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x204a9c4e2969fd8b # initialize rs1
aes64ks1i x11, x17, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xb44381a009b88639 # initialize rs1
aes64ks1i x21, x18, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x307af7bff5a787e9 # initialize rs1
aes64ks1i x25, x19, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xb2b39c0e4401966f # initialize rs1
aes64ks1i x15, x20, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x7fc4fc3c28f851e8 # initialize rs1
aes64ks1i x2, x21, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x88fc50febb4b79cc # initialize rs1
aes64ks1i x19, x22, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x4fb70fc0f6ccddaf # initialize rs1
aes64ks1i x24, x23, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x74435e5fa7de6291 # initialize rs1
aes64ks1i x14, x24, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x27cef3e8114f986b # initialize rs1
aes64ks1i x18, x25, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x14e9d34a238826c3 # initialize rs1
aes64ks1i x13, x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xf16747526a22a17e # initialize rs1
aes64ks1i x17, x27, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x1c51651670affb8e # initialize rs1
aes64ks1i x6, x28, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x95bbd11ce7058380 # initialize rs1
aes64ks1i x31, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x8ede95c5ee31b7bf # initialize rs1
aes64ks1i x3, x30, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x3bbdfa1e7fcdbb41 # initialize rs1
aes64ks1i x22, x31, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 248)

# Testcase cp_rd (Test destination rd = x0)
li x18, 0xf41e5a32eaada409 # initialize rs1
aes64ks1i x0, x18, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 256)

# Testcase cp_rd (Test destination rd = x1)
li x29, 0x56799cd3fa1e7082 # initialize rs1
aes64ks1i x1, x29, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 264)

# Testcase cp_rd (Test destination rd = x2)
li x25, 0x8b3d667afc395bec # initialize rs1
aes64ks1i x2, x25, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 272)

# Testcase cp_rd (Test destination rd = x3)
li x23, 0x93b6fb6973fad08d # initialize rs1
aes64ks1i x3, x23, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 280)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x2, 0xb0a321309cad0859 # initialize rs1
aes64ks1i x4, x2, 5 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 288)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x28, 0xe1ac25f421c264cd # initialize rs1
aes64ks1i x5, x28, 2 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 296)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x2, 0xba024e3893c8132b # initialize rs1
aes64ks1i x6, x2, 10 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 304)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x16, 0x2f0042498f993ad1 # initialize rs1
aes64ks1i x7, x16, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 312)

# Testcase cp_rd (Test destination rd = x8)
li x28, 0xf55e5b842b8b324d # initialize rs1
aes64ks1i x8, x28, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 320)

# Testcase cp_rd (Test destination rd = x9)
li x8, 0x77024144deda7ab1 # initialize rs1
aes64ks1i x9, x8, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 328)

# Testcase cp_rd (Test destination rd = x10)
li x24, 0x880a96643cdf2365 # initialize rs1
aes64ks1i x10, x24, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 336)

# Testcase cp_rd (Test destination rd = x11)
li x16, 0xf6844a12ccb83744 # initialize rs1
aes64ks1i x11, x16, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 344)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0x6ddfa9a7c053a03d # initialize rs1
aes64ks1i x12, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 352)

# Testcase cp_rd (Test destination rd = x13)
li x29, 0x8b9217084eb3928e # initialize rs1
aes64ks1i x13, x29, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 360)

# Testcase cp_rd (Test destination rd = x14)
li x29, 0x1bc6131c03512a5a # initialize rs1
aes64ks1i x14, x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 368)

# Testcase cp_rd (Test destination rd = x15)
li x17, 0x22e315705a874cf3 # initialize rs1
aes64ks1i x15, x17, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 376)

# Testcase cp_rd (Test destination rd = x16)
li x10, 0x2601e2ed636796fb # initialize rs1
aes64ks1i x16, x10, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 384)

# Testcase cp_rd (Test destination rd = x17)
li x19, 0x25bd4d25928b11bb # initialize rs1
aes64ks1i x17, x19, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 392)

# Testcase cp_rd (Test destination rd = x18)
li x21, 0x6d54fdc9d40c47f8 # initialize rs1
aes64ks1i x18, x21, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_rd (Test destination rd = x19)
li x12, 0x82c46bdb7775adef # initialize rs1
aes64ks1i x19, x12, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 408)

# Testcase cp_rd (Test destination rd = x20)
li x25, 0x1bb1decf314441cb # initialize rs1
aes64ks1i x20, x25, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cp_rd (Test destination rd = x21)
li x20, 0xc4abd7efae089ac7 # initialize rs1
aes64ks1i x21, x20, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 424)

# Testcase cp_rd (Test destination rd = x22)
li x17, 0x63ef0c1b7f397824 # initialize rs1
aes64ks1i x22, x17, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 432)

# Testcase cp_rd (Test destination rd = x23)
li x8, 0x8a3cc9a89c3f15f6 # initialize rs1
aes64ks1i x23, x8, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 440)

# Testcase cp_rd (Test destination rd = x24)
li x3, 0x41cbe0c8de123947 # initialize rs1
aes64ks1i x24, x3, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 448)

# Testcase cp_rd (Test destination rd = x25)
li x19, 0xd6845d3fb4c86436 # initialize rs1
aes64ks1i x25, x19, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 456)

# Testcase cp_rd (Test destination rd = x26)
li x28, 0xa43632a8ea76e07d # initialize rs1
aes64ks1i x26, x28, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 464)

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x152bac35ad867c5a # initialize rs1
aes64ks1i x27, x27, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 472)

# Testcase cp_rd (Test destination rd = x28)
li x14, 0x47c0833990595981 # initialize rs1
aes64ks1i x28, x14, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 480)

# Testcase cp_rd (Test destination rd = x29)
li x26, 0x596fb50f4c79b3a1 # initialize rs1
aes64ks1i x29, x26, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 488)

# Testcase cp_rd (Test destination rd = x30)
li x16, 0x7ea7f2e175a34167 # initialize rs1
aes64ks1i x30, x16, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 496)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0xacc2d66a50bef575 # initialize rs1
aes64ks1i x31, x7, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x20, 0x0000000000000000 # initialize rs1
aes64ks1i x22, x20, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 512)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x24, 0x0000000000000001 # initialize rs1
aes64ks1i x6, x24, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 520)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x5, 0x0000000000000002 # initialize rs1
aes64ks1i x9, x5, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 528)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x27, 0x8000000000000000 # initialize rs1
aes64ks1i x13, x27, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 536)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x30, 0x8000000000000001 # initialize rs1
aes64ks1i x25, x30, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 544)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x12, 0x7fffffffffffffff # initialize rs1
aes64ks1i x23, x12, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 552)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x17, 0x7ffffffffffffffe # initialize rs1
aes64ks1i x6, x17, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 560)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
aes64ks1i x31, x19, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 568)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
aes64ks1i x31, x18, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 576)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x8, 0x5bbc887763ae86f2 # initialize rs1
aes64ks1i x29, x8, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 584)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
aes64ks1i x9, x20, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 592)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x6, 0x5555555555555555 # initialize rs1
aes64ks1i x28, x6, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 600)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x3, 0x00000000ffffffff # initialize rs1
aes64ks1i x11, x3, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 608)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x19, 0x00000000fffffffe # initialize rs1
aes64ks1i x5, x19, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 616)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x12, 0x0000000100000000 # initialize rs1
aes64ks1i x11, x12, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 624)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x28, 0x0000000100000001 # initialize rs1
aes64ks1i x20, x28, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xdaaea48c12c4bfb2 # initialize rs1
aes64ks1i x0, x0, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x3856b71190835fdf # initialize rs1
aes64ks1i x1, x1, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xefc81614e759bba8 # initialize rs1
aes64ks1i x2, x2, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x256a8fde6377c8e2 # initialize rs1
aes64ks1i x3, x3, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x6, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa84e6e643ca1b6a6 # initialize rs1
aes64ks1i x4, x4, 10 # perform operation
RVTEST_SIGUPD(x6, x0, x4, 672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x2e7ea92743d97cb5 # initialize rs1
aes64ks1i x5, x5, 3 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x21bf7f76da3ddf6f # initialize rs1
aes64ks1i x6, x6, 6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xde5885264a5d09c2 # initialize rs1
aes64ks1i x7, x7, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x82dc3ff769372467 # initialize rs1
aes64ks1i x8, x8, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x75f86504efece84f # initialize rs1
aes64ks1i x9, x9, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x79541a24c1557bcc # initialize rs1
aes64ks1i x10, x10, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x1fcfbf158f27ce26 # initialize rs1
aes64ks1i x11, x11, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xbaaed46f390ff3b3 # initialize rs1
aes64ks1i x12, x12, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x5deb62f5700ddd94 # initialize rs1
aes64ks1i x13, x13, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xf63b66c062e35580 # initialize rs1
aes64ks1i x14, x14, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x15d305bd8ee069d8 # initialize rs1
aes64ks1i x15, x15, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x64d1511eddadd59f # initialize rs1
aes64ks1i x16, x16, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x00bcf207ab75645b # initialize rs1
aes64ks1i x17, x17, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x623b801a628999e5 # initialize rs1
aes64ks1i x18, x18, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 784)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xfad3ff85bfe7b1bc # initialize rs1
aes64ks1i x19, x19, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 792)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x12d4d0272ed2296f # initialize rs1
aes64ks1i x20, x20, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 800)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x2fe6beda4ae26e37 # initialize rs1
aes64ks1i x21, x21, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 808)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0xb1bb8686e79c67b1 # initialize rs1
aes64ks1i x22, x22, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 816)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x0718b6bfd4ff9643 # initialize rs1
aes64ks1i x23, x23, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 824)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x49df9e4a1ac6fcaf # initialize rs1
aes64ks1i x24, x24, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 832)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xa6f15c94096450dd # initialize rs1
aes64ks1i x25, x25, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0xa1ea16d69ccbaf4e # initialize rs1
aes64ks1i x26, x26, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 848)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xa0b604437944bd69 # initialize rs1
aes64ks1i x27, x27, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xb359795931d12410 # initialize rs1
aes64ks1i x28, x28, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 864)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xfeb8988a66d01b6e # initialize rs1
aes64ks1i x29, x29, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 872)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x00321590edbbfa7e # initialize rs1
aes64ks1i x30, x30, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 880)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xcfa9a8fbc9c8e410 # initialize rs1
aes64ks1i x31, x31, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 888)

# Testcase cp_rnum = 0
li x26, 0x8b6c3dc06229b417 # initialize rs1
aes64ks1i x31, x26, 0 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 896)

# Testcase cp_rnum = 1
li x10, 0xe27a06faa93a2abb # initialize rs1
aes64ks1i x14, x10, 1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 904)

# Testcase cp_rnum = 2
li x22, 0x39309fe67b753356 # initialize rs1
aes64ks1i x12, x22, 2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 912)

# Testcase cp_rnum = 3
li x15, 0xd92e812d26ddfa08 # initialize rs1
aes64ks1i x1, x15, 3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 920)

# Testcase cp_rnum = 4
li x9, 0xb1682087b3585055 # initialize rs1
aes64ks1i x16, x9, 4 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 928)

# Testcase cp_rnum = 5
li x29, 0xb99bcbe17c4e61ee # initialize rs1
aes64ks1i x12, x29, 5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 936)

# Testcase cp_rnum = 6
li x18, 0xfcafd5f15d3bde1c # initialize rs1
aes64ks1i x17, x18, 6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 944)

# Testcase cp_rnum = 7
li x23, 0x9ddde43e8e50b1aa # initialize rs1
aes64ks1i x10, x23, 7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 952)

# Testcase cp_rnum = 8
li x16, 0xafdc95d80c0746df # initialize rs1
aes64ks1i x2, x16, 8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 960)

# Testcase cp_rnum = 9
li x12, 0xf6bf9b426130cc30 # initialize rs1
aes64ks1i x31, x12, 9 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cp_rnum = 10
li x23, 0xdb942966a4b2c7d9 # initialize rs1
aes64ks1i x26, x23, 10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 976)

# Testcase cp_gpr/fpr_hazard nohaz test
add x18, x14, x25 # perform first operation
aes64ks1i x7, x8, 0 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x20, x26, x13 # perform first operation
aes64ks1i x29, x19, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x3, x10 # perform first operation
aes64ks1i x24, x25, 1 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x25, x21 # perform first operation
aes64ks1i x7, x17, 6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x7, x3, x28 # perform first operation
aes64ks1i x3, x15, 9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x16, x2, x22 # perform first operation
aes64ks1i x22, x13, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x1, x14, x6 # perform first operation
aes64ks1i x1, x25, 9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x14, x21 # perform first operation
aes64ks1i x30, x3, 5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x20, x31 # perform first operation
aes64ks1i x10, x2, 10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x26, x11 # perform first operation
aes64ks1i x26, x31, 9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x23, x12, x30 # perform first operation
aes64ks1i x30, x17, 3 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x20, x15, x8 # perform first operation
aes64ks1i x17, x18, 7 # perform second (triggering) operation

#.EQU SIGSIZE,984


// ******************
// Tests from: WALLY-COV-aes64ks2.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0x1b8dd1896ff4ee8e # initialize rs1
li x12, 0x7ef14da62de48e1f # initialize rs2
aes64ks2 x23, x0, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x2ccc57b358c4ade8 # initialize rs1
li x20, 0x539529b4647941a1 # initialize rs2
aes64ks2 x6, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x748d4eb4c6d8afb5 # initialize rs1
li x3, 0x7eda8d5b8de0a7d8 # initialize rs2
aes64ks2 x1, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xf75276d1e16de2b3 # initialize rs1
li x13, 0xcde892c2f3ca28bd # initialize rs2
aes64ks2 x22, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xa169a1c30b57f864 # initialize rs1
li x18, 0xcf9cf37dc5e780c8 # initialize rs2
aes64ks2 x24, x4, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1addbf95a860376a # initialize rs1
li x31, 0x1d86b8f6690c5551 # initialize rs2
aes64ks2 x28, x5, x31 # perform operation
RVTEST_SIGUPD(x6, x0, x28, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8649dcbec4358b70 # initialize rs1
li x1, 0x8a379847d206f424 # initialize rs2
aes64ks2 x2, x6, x1 # perform operation
RVTEST_SIGUPD(x7, x0, x2, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc76edf6e60e39ff4 # initialize rs1
li x10, 0xc6cea61dd2c83ae2 # initialize rs2
aes64ks2 x3, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xec03c43f75a6e24d # initialize rs1
li x18, 0x26fd53bb378dcb70 # initialize rs2
aes64ks2 x1, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x44980072a06e41c2 # initialize rs1
li x18, 0x8bd3097fb07fff9a # initialize rs2
aes64ks2 x21, x9, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x0c21a973f0af8ec1 # initialize rs1
li x6, 0x1f58dbbe6c94a3d2 # initialize rs2
aes64ks2 x1, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x827bd5de3d4db1cf # initialize rs1
li x22, 0x560cd4d57991b46a # initialize rs2
aes64ks2 x8, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0x30e03dce50e749ec # initialize rs1
li x3, 0x71dbf05cf82ca1b5 # initialize rs2
aes64ks2 x17, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x0dff7b352cf9e5e9 # initialize rs1
li x22, 0xa73992e2bf74bc0c # initialize rs2
aes64ks2 x14, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xc4efdee7a1a6c286 # initialize rs1
li x1, 0xd5c9eba710979e60 # initialize rs2
aes64ks2 x26, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x91ca3cc97b47b7b8 # initialize rs1
li x19, 0x19f9eb8afe8fede7 # initialize rs2
aes64ks2 x5, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xdc1c0221dedac709 # initialize rs1
li x27, 0xa928bc4ead5b6b4c # initialize rs2
aes64ks2 x6, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x820a1144ad8312db # initialize rs1
li x16, 0xe1e035e71ca94429 # initialize rs2
aes64ks2 x21, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x2ae3921f96bc0ed3 # initialize rs1
li x8, 0x2e72c026cd305f63 # initialize rs2
aes64ks2 x30, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x13311bf52152d9fa # initialize rs1
li x31, 0xc42c79473f1835d7 # initialize rs2
aes64ks2 x2, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xe5fd96dcdaebf4d7 # initialize rs1
li x29, 0xa1f26a00e94990c1 # initialize rs2
aes64ks2 x25, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xc232703e9d682cc0 # initialize rs1
li x27, 0xfb4ac8e96906d773 # initialize rs2
aes64ks2 x22, x21, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x66a19dfdf8fe4ec3 # initialize rs1
li x14, 0x23464e0765cc8714 # initialize rs2
aes64ks2 x11, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0xbf0e88ab141203bd # initialize rs1
li x31, 0xb1aa48a35df9041a # initialize rs2
aes64ks2 x18, x23, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0x8c9714cd965c9e88 # initialize rs1
li x5, 0xcc7765d348418d33 # initialize rs2
aes64ks2 x20, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x578dc8a48dc8fe1d # initialize rs1
li x17, 0x9a64b495ed232c94 # initialize rs2
aes64ks2 x11, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x74d4e0c3f5d5e5eb # initialize rs1
li x6, 0xd2a9021fcc706816 # initialize rs2
aes64ks2 x29, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xefaac894b19a00d6 # initialize rs1
li x30, 0xc7996459ee3a28fa # initialize rs2
aes64ks2 x15, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x849a0269986373d1 # initialize rs1
li x17, 0x68095cae9212466f # initialize rs2
aes64ks2 x25, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x425b26d28d4b0768 # initialize rs1
li x22, 0xb8bd0955e72f5e7d # initialize rs2
aes64ks2 x8, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x59f512174ed56686 # initialize rs1
li x22, 0x435587a393abd993 # initialize rs2
aes64ks2 x5, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x2fea0b47b6a484df # initialize rs1
li x29, 0xbd19a99c089b10e9 # initialize rs2
aes64ks2 x19, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x17, 0xeab45c589345d3e6 # initialize rs1
li x0, 0x067c5429d11c938e # initialize rs2
aes64ks2 x20, x17, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x21, 0x08b50a34590b2eab # initialize rs1
li x1, 0x88240f18ac21d95d # initialize rs2
aes64ks2 x18, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x30, 0xee2ff67c159567dc # initialize rs1
li x2, 0x1e335d9dc058c0db # initialize rs2
aes64ks2 x13, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x1, 0xecadb7c997312077 # initialize rs1
li x3, 0xac8aab8b66cf8b2f # initialize rs2
aes64ks2 x29, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x31, 0xa619c389def5d6d2 # initialize rs1
li x4, 0x8b9ec5e59e0c74c6 # initialize rs2
aes64ks2 x29, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0x67d1c7b2e567879a # initialize rs1
li x5, 0xf81fe3494a7ceb85 # initialize rs2
aes64ks2 x8, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x8, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x29, 0x280322f17ebe5a5e # initialize rs1
li x6, 0xb77de5604058cf98 # initialize rs2
aes64ks2 x31, x29, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x31, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x18, 0x1211fee914bcf5a2 # initialize rs1
li x7, 0xf66565a829d1e683 # initialize rs2
aes64ks2 x5, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x24, 0x27f39fe1a53fa5b9 # initialize rs1
li x8, 0x2bbbb43d37096986 # initialize rs2
aes64ks2 x25, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x14, 0x04779e84dec46e77 # initialize rs1
li x9, 0xc58da096aa430d10 # initialize rs2
aes64ks2 x5, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x28, 0xdae46aa052c110a8 # initialize rs1
li x10, 0x32e3d8431eabdea3 # initialize rs2
aes64ks2 x30, x28, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x7, 0xe00b38488d78195b # initialize rs1
li x11, 0xb459124d312e3ae1 # initialize rs2
aes64ks2 x6, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x27, 0x2c4326cab92b3c49 # initialize rs1
li x12, 0xe7f8c6ff30b6c958 # initialize rs2
aes64ks2 x22, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x19, 0x7a14c32e844cfd96 # initialize rs1
li x13, 0xcfeec9a4f2e1a166 # initialize rs2
aes64ks2 x7, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x30, 0xe667e007bc21d7e8 # initialize rs1
li x14, 0x1f5f495438a27d2e # initialize rs2
aes64ks2 x5, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x18, 0x1aa4f128aad75c94 # initialize rs1
li x15, 0x94b06b92c69021ef # initialize rs2
aes64ks2 x22, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x26, 0xdc6b03d05bcdedc8 # initialize rs1
li x16, 0xb8541ba962ae9c79 # initialize rs2
aes64ks2 x17, x26, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x15, 0x04a2152de19bbe7f # initialize rs1
li x17, 0x99be0402efc829dc # initialize rs2
aes64ks2 x6, x15, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x17, 0xe2a9376e49b5ee91 # initialize rs1
li x18, 0x1d71db7bf9ee208f # initialize rs2
aes64ks2 x2, x17, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x31, 0xf460ecd1bffe0040 # initialize rs1
li x19, 0x0bb45a947252e4b3 # initialize rs2
aes64ks2 x29, x31, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x25, 0x5779331f1134fda7 # initialize rs1
li x20, 0x815cda4cce5b17b0 # initialize rs2
aes64ks2 x16, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x20, 0xd9279c962c366347 # initialize rs1
li x21, 0xe5d6edafb7aa2203 # initialize rs2
aes64ks2 x6, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x31, 0x740c4994dfc7b7d5 # initialize rs1
li x22, 0x85e02cc7f7392f16 # initialize rs2
aes64ks2 x11, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x31, 0xab95e6d6cfb198dd # initialize rs1
li x23, 0xd3aa1a7ddcbe71e5 # initialize rs2
aes64ks2 x8, x31, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x18, 0x5080d65d00ee406b # initialize rs1
li x24, 0xe72de48051d49bd3 # initialize rs2
aes64ks2 x8, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x23, 0xeb5db6968d4f00ae # initialize rs1
li x25, 0xbea10cc0d3ca0767 # initialize rs2
aes64ks2 x5, x23, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x23, 0x2d5e8aa94344361e # initialize rs1
li x26, 0x9523ea5e048042bf # initialize rs2
aes64ks2 x9, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x24, 0x4c332fc937a101a5 # initialize rs1
li x27, 0x655aba1d55218759 # initialize rs2
aes64ks2 x9, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x14, 0x5f43f9d077927ac9 # initialize rs1
li x28, 0xfdc76a2e87a81faa # initialize rs2
aes64ks2 x15, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x24, 0xd0dafe56097b5d2c # initialize rs1
li x29, 0x67c6ad1fa1549a04 # initialize rs2
aes64ks2 x23, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x16, 0xf440987500520c43 # initialize rs1
li x30, 0xd2e0bbf160df99e2 # initialize rs2
aes64ks2 x24, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x20, 0x44e3b063640cc878 # initialize rs1
li x31, 0x1f6eaf18986cf32e # initialize rs2
aes64ks2 x17, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 504)

# Testcase cp_rd (Test destination rd = x0)
li x8, 0x2aa14fd5b1603f46 # initialize rs1
li x6, 0xf4ee3ebedb9f7122 # initialize rs2
aes64ks2 x0, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x24, 0xdf5194e201a5d183 # initialize rs1
li x22, 0xc0e0e820e3dfef27 # initialize rs2
aes64ks2 x1, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x8, 0xd6155d6850d0693d # initialize rs1
li x21, 0x139252a702d99970 # initialize rs2
aes64ks2 x2, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x6, 0xbdae4ad0d7419241 # initialize rs1
li x23, 0x01acfc377cc13b3c # initialize rs2
aes64ks2 x3, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x21, 0x1b1ea7da5a6a3993 # initialize rs1
li x11, 0xac6e5687f837fb0b # initialize rs2
aes64ks2 x4, x21, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0x917a9597411858e5 # initialize rs1
li x27, 0x07bb11ecf1e7a52f # initialize rs2
aes64ks2 x5, x29, x27 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x20, 0xef634cee52efe980 # initialize rs1
li x23, 0xf662c8b998325d64 # initialize rs2
aes64ks2 x6, x20, x23 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0x739e546404737174 # initialize rs1
li x16, 0xa8b56b7043a397cf # initialize rs2
aes64ks2 x7, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x16, 0xceef9f04df92431e # initialize rs1
li x18, 0x82bddd268c0db471 # initialize rs2
aes64ks2 x8, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x22, 0xf19fac00634d0fa8 # initialize rs1
li x6, 0x1fbc0a83ff4b3f36 # initialize rs2
aes64ks2 x9, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x15, 0xcd188e9cc3802417 # initialize rs1
li x10, 0x9a84343a338efbb9 # initialize rs2
aes64ks2 x10, x15, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x30, 0xb3d28591cfbf2ff7 # initialize rs1
li x20, 0xd5d130ed895fa04e # initialize rs2
aes64ks2 x11, x30, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x1, 0xce3444fd4a731a53 # initialize rs1
li x18, 0x022916b75a17088b # initialize rs2
aes64ks2 x12, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x15, 0xbd0cbe80048c58f4 # initialize rs1
li x23, 0x39a376be6bc705e0 # initialize rs2
aes64ks2 x13, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x31, 0x9ee3b073ad9278c5 # initialize rs1
li x26, 0x35048e927639b333 # initialize rs2
aes64ks2 x14, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x1, 0xbc922ce0f3cbb912 # initialize rs1
li x24, 0x6d47128be033d004 # initialize rs2
aes64ks2 x15, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x7, 0xe32f9299909bb35f # initialize rs1
li x25, 0x4a62904ffb134a8b # initialize rs2
aes64ks2 x16, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x16, 0x16880b46aa05f5b9 # initialize rs1
li x1, 0x318159f534dbf68e # initialize rs2
aes64ks2 x17, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x4fe5300fe3001e80 # initialize rs1
li x5, 0x094dd9117510a84a # initialize rs2
aes64ks2 x18, x18, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x30, 0x9618874a56472df9 # initialize rs1
li x23, 0xfd716ae6f65e36bc # initialize rs2
aes64ks2 x19, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x5962bf279c23ca37 # initialize rs1
li x13, 0xdcf22bf50159dab5 # initialize rs2
aes64ks2 x20, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x9, 0xdecb76dcdb0af455 # initialize rs1
li x17, 0x3024c75650f043ec # initialize rs2
aes64ks2 x21, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x6, 0x6a297bbf3de679e4 # initialize rs1
li x12, 0xfacbc7982e45c6ac # initialize rs2
aes64ks2 x22, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0x6ef91139e739e0a9 # initialize rs1
li x25, 0xfa509795719f8e9f # initialize rs2
aes64ks2 x23, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x7, 0xd81be889b229a823 # initialize rs1
li x12, 0x0df32124b238c4f2 # initialize rs2
aes64ks2 x24, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x13, 0x5c1b810b05629d5e # initialize rs1
li x16, 0xc47927576c363c74 # initialize rs2
aes64ks2 x25, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x14, 0x249ee7d3cc79f678 # initialize rs1
li x24, 0x564e0ef139bd7a57 # initialize rs2
aes64ks2 x26, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0xf3dd6522fabbff94 # initialize rs1
li x23, 0x5aedd24a5d7ffe65 # initialize rs2
aes64ks2 x27, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x6, 0xf95b6ec57b28090f # initialize rs1
li x1, 0x78ba336c7bf91851 # initialize rs2
aes64ks2 x28, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x10, 0x52b82ed0c455ca7b # initialize rs1
li x30, 0xb5f41cde5f534c2d # initialize rs2
aes64ks2 x29, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x20, 0xfe09222c0200ff08 # initialize rs1
li x24, 0x03d8dd1fe52b2ddc # initialize rs2
aes64ks2 x30, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x2, 0x20afbdab0d4e5544 # initialize rs1
li x30, 0x4cdb7f5a4e6f91e6 # initialize rs2
aes64ks2 x31, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x27, 0x0000000000000000 # initialize rs1
li x29, 0xe7c8e9440b15d692 # initialize rs2
aes64ks2 x18, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x13, 0x0000000000000001 # initialize rs1
li x11, 0x1ca7cf1e035c371c # initialize rs2
aes64ks2 x7, x13, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x16, 0x0000000000000002 # initialize rs1
li x11, 0x5b064d700bf3db41 # initialize rs2
aes64ks2 x22, x16, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x18, 0x8000000000000000 # initialize rs1
li x13, 0xbbdc377f273e12e8 # initialize rs2
aes64ks2 x9, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x12, 0x8000000000000001 # initialize rs1
li x22, 0x8c5b8759063d3d3d # initialize rs2
aes64ks2 x5, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x3, 0x7fffffffffffffff # initialize rs1
li x19, 0xc9103a0ad347035f # initialize rs2
aes64ks2 x2, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x25, 0x7ffffffffffffffe # initialize rs1
li x9, 0x5e3ef7de5d5ddef5 # initialize rs2
aes64ks2 x18, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x19, 0xffffffffffffffff # initialize rs1
li x1, 0x9109e7684770b60a # initialize rs2
aes64ks2 x22, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x17, 0xf5ac78161de8b9c0 # initialize rs2
aes64ks2 x8, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0x0c042144110f8020 # initialize rs2
aes64ks2 x17, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x4e3ffafc5491ea70 # initialize rs2
aes64ks2 x21, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x26, 0x5555555555555555 # initialize rs1
li x6, 0x09d5356f57a95496 # initialize rs2
aes64ks2 x23, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x5, 0x00000000ffffffff # initialize rs1
li x25, 0xfbf1444bfecd6e61 # initialize rs2
aes64ks2 x16, x5, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x22, 0x0ef919bcf5890e1e # initialize rs2
aes64ks2 x17, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x17, 0x0000000100000000 # initialize rs1
li x28, 0x5c081aecd531b7a3 # initialize rs2
aes64ks2 x3, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x9, 0x0000000100000001 # initialize rs1
li x31, 0x63d53d5b6a747def # initialize rs2
aes64ks2 x17, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x6, 0xedd4db82a9324170 # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
aes64ks2 x21, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x19, 0x3f50e136e7254b8f # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
aes64ks2 x31, x19, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x25, 0x391d147ed4626cfc # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
aes64ks2 x26, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x27, 0x8c94d15367fb1967 # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
aes64ks2 x13, x27, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x31, 0x0a2b596cbe7d7265 # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
aes64ks2 x8, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x12, 0x53b9a6366ec6e5b6 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
aes64ks2 x5, x12, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x15, 0x64325506e4804178 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x8, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x6, 0x50e9ab12a3e8e828 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
aes64ks2 x16, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x13, 0xeec34be71d948314 # initialize rs1
li x2, 0xfffffffffffffffe # initialize rs2
aes64ks2 x17, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x19, 0xf8569302c4a0bfa5 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x27, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x8, 0x664e903204d5386f # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x23, x8, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x16, 0xfa90315069258b29 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
aes64ks2 x7, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x23, 0x77422b88a1aa73c5 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
aes64ks2 x12, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x6, 0x2cfe2f88a9eac658 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
aes64ks2 x1, x6, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x1, 0x289a2edfb0beb190 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
aes64ks2 x25, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x12, 0xe56b22c72a80ac56 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
aes64ks2 x26, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x23, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
aes64ks2 x13, x23, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x17, 0x0000000000000000 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
aes64ks2 x24, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x25, 0x0000000000000000 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
aes64ks2 x11, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x17, 0x0000000000000000 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
aes64ks2 x26, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x5, 0x0000000000000000 # initialize rs1
li x6, 0x8000000000000001 # initialize rs2
aes64ks2 x23, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x18, 0x0000000000000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
aes64ks2 x17, x18, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x10, 0x0000000000000000 # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x22, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x19, 0x0000000000000000 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
aes64ks2 x9, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x23, 0x0000000000000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
aes64ks2 x5, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x10, 0x0000000000000000 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x13, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000000000000 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x3, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x24, 0x0000000000000000 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
aes64ks2 x15, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x12, 0x0000000000000000 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
aes64ks2 x28, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x24, 0x0000000000000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
aes64ks2 x27, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x16, 0x0000000000000000 # initialize rs1
li x1, 0x0000000100000000 # initialize rs2
aes64ks2 x22, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x8, 0x0000000000000000 # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
aes64ks2 x21, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x29, 0x0000000000000001 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
aes64ks2 x28, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x16, 0x0000000000000001 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
aes64ks2 x10, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x24, 0x0000000000000001 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
aes64ks2 x15, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x12, 0x0000000000000001 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
aes64ks2 x1, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x8, 0x0000000000000001 # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
aes64ks2 x5, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x13, 0x0000000000000001 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
aes64ks2 x31, x13, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x10, 0x0000000000000001 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x22, x10, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x20, 0x0000000000000001 # initialize rs1
li x23, 0xffffffffffffffff # initialize rs2
aes64ks2 x24, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x17, 0x0000000000000001 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
aes64ks2 x26, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x22, 0x0000000000000001 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x29, x22, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000000000001 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x28, x8, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x12, 0x0000000000000001 # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
aes64ks2 x28, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x27, 0x0000000000000001 # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
aes64ks2 x11, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x5, 0x0000000000000001 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
aes64ks2 x8, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x9, 0x0000000000000001 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
aes64ks2 x22, x9, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x12, 0x0000000000000001 # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
aes64ks2 x26, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x28, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
aes64ks2 x19, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x25, 0x0000000000000002 # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
aes64ks2 x28, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x30, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
aes64ks2 x12, x30, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x18, 0x0000000000000002 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
aes64ks2 x29, x18, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x1, 0x0000000000000002 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
aes64ks2 x6, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x1, 0x0000000000000002 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
aes64ks2 x17, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x12, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x3, 0x0000000000000002 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
aes64ks2 x9, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000000000002 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
aes64ks2 x19, x11, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x30, 0x0000000000000002 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x18, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0000000000000002 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x26, x15, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x29, 0x0000000000000002 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
aes64ks2 x8, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x17, 0x0000000000000002 # initialize rs1
li x11, 0x00000000ffffffff # initialize rs2
aes64ks2 x16, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x17, 0x0000000000000002 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
aes64ks2 x14, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x30, 0x0000000000000002 # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
aes64ks2 x11, x30, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x21, 0x0000000000000002 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
aes64ks2 x13, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x22, 0x8000000000000000 # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
aes64ks2 x1, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x12, 0x8000000000000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
aes64ks2 x1, x12, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x10, 0x8000000000000000 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
aes64ks2 x7, x10, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x30, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
aes64ks2 x5, x30, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x2, 0x8000000000000000 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
aes64ks2 x13, x2, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x20, 0x8000000000000000 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
aes64ks2 x17, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x31, 0x8000000000000000 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x7, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x12, 0x8000000000000000 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
aes64ks2 x23, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x11, 0x8000000000000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
aes64ks2 x8, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x6, 0x8000000000000000 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x11, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x8000000000000000 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x29, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x22, 0x8000000000000000 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
aes64ks2 x16, x22, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x15, 0x8000000000000000 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
aes64ks2 x25, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x14, 0x8000000000000000 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
aes64ks2 x21, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x18, 0x8000000000000000 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
aes64ks2 x1, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x14, 0x8000000000000000 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
aes64ks2 x16, x14, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x19, 0x8000000000000001 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
aes64ks2 x17, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x1, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
aes64ks2 x17, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x5, 0x8000000000000001 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
aes64ks2 x8, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x11, 0x8000000000000001 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
aes64ks2 x5, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x6, 0x8000000000000001 # initialize rs1
li x13, 0x8000000000000001 # initialize rs2
aes64ks2 x30, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x14, 0x8000000000000001 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
aes64ks2 x13, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x1, 0x8000000000000001 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x18, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x23, 0x8000000000000001 # initialize rs1
li x14, 0xffffffffffffffff # initialize rs2
aes64ks2 x9, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x27, 0x8000000000000001 # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
aes64ks2 x24, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x29, 0x8000000000000001 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x1, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x8000000000000001 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x16, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x25, 0x8000000000000001 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
aes64ks2 x1, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x17, 0x8000000000000001 # initialize rs1
li x5, 0x00000000ffffffff # initialize rs2
aes64ks2 x13, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x1, 0x8000000000000001 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
aes64ks2 x10, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x9, 0x8000000000000001 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
aes64ks2 x24, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x18, 0x8000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
aes64ks2 x26, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x25, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
aes64ks2 x19, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x5, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
aes64ks2 x16, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x15, 0x7fffffffffffffff # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
aes64ks2 x31, x15, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x15, 0x7fffffffffffffff # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
aes64ks2 x31, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x30, 0x7fffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
aes64ks2 x19, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x17, 0x7fffffffffffffff # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
aes64ks2 x2, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x13, 0x7fffffffffffffff # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x7, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x31, 0x7fffffffffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
aes64ks2 x2, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x1, 0x7fffffffffffffff # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
aes64ks2 x12, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x5, 0x7fffffffffffffff # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x13, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x7fffffffffffffff # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x15, x14, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x19, 0x7fffffffffffffff # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
aes64ks2 x26, x19, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
aes64ks2 x11, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x1, 0x7fffffffffffffff # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
aes64ks2 x21, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x16, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
aes64ks2 x7, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x14, 0x7fffffffffffffff # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
aes64ks2 x18, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x25, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
aes64ks2 x10, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x12, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
aes64ks2 x13, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x14, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
aes64ks2 x29, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
aes64ks2 x6, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x8, 0x7ffffffffffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
aes64ks2 x27, x8, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x9, 0x7ffffffffffffffe # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
aes64ks2 x13, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0x7ffffffffffffffe # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x14, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x7, 0x7ffffffffffffffe # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
aes64ks2 x5, x7, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x21, 0x7ffffffffffffffe # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
aes64ks2 x24, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x21, 0x7ffffffffffffffe # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x6, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x7ffffffffffffffe # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x12, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x3, 0x7ffffffffffffffe # initialize rs1
li x30, 0x5555555555555555 # initialize rs2
aes64ks2 x9, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x1, 0x7ffffffffffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
aes64ks2 x28, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x28, 0x7ffffffffffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
aes64ks2 x13, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x3, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
aes64ks2 x16, x3, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x14, 0x7ffffffffffffffe # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
aes64ks2 x1, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x22, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
aes64ks2 x6, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x9, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
aes64ks2 x21, x9, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x20, 0xffffffffffffffff # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
aes64ks2 x30, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x23, 0xffffffffffffffff # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
aes64ks2 x2, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x29, 0xffffffffffffffff # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
aes64ks2 x3, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x14, 0xffffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
aes64ks2 x24, x14, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0xffffffffffffffff # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x29, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x28, 0xffffffffffffffff # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
aes64ks2 x2, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x13, 0xffffffffffffffff # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
aes64ks2 x30, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x8, 0xffffffffffffffff # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x24, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0xffffffffffffffff # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x20, x9, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x3, 0xffffffffffffffff # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
aes64ks2 x29, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x12, 0xffffffffffffffff # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
aes64ks2 x5, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x1, 0xffffffffffffffff # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
aes64ks2 x10, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x20, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
aes64ks2 x16, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x9, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
aes64ks2 x18, x9, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x16, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
aes64ks2 x15, x16, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x28, 0xfffffffffffffffe # initialize rs1
li x8, 0x0000000000000001 # initialize rs2
aes64ks2 x5, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x13, 0xfffffffffffffffe # initialize rs1
li x24, 0x0000000000000002 # initialize rs2
aes64ks2 x29, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x31, 0xfffffffffffffffe # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
aes64ks2 x5, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x29, 0xfffffffffffffffe # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
aes64ks2 x14, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x5, 0x7fffffffffffffff # initialize rs2
aes64ks2 x2, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0xfffffffffffffffe # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x18, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x25, 0xfffffffffffffffe # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
aes64ks2 x9, x25, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x19, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
aes64ks2 x2, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x16, 0xfffffffffffffffe # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x14, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0xfffffffffffffffe # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x8, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x18, 0xfffffffffffffffe # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
aes64ks2 x15, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x2, 0xfffffffffffffffe # initialize rs1
li x30, 0x00000000ffffffff # initialize rs2
aes64ks2 x14, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x10, 0xfffffffffffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
aes64ks2 x11, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x29, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
aes64ks2 x21, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x9, 0xfffffffffffffffe # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
aes64ks2 x2, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x5, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
aes64ks2 x30, x5, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
aes64ks2 x30, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
aes64ks2 x6, x16, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
aes64ks2 x14, x1, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
aes64ks2 x30, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x29, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
aes64ks2 x16, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x31, x21, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
aes64ks2 x21, x3, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
aes64ks2 x13, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x27, x3, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x14, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
aes64ks2 x19, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
aes64ks2 x6, x18, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
aes64ks2 x26, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
aes64ks2 x2, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
aes64ks2 x24, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
aes64ks2 x30, x1, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
aes64ks2 x17, x3, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
aes64ks2 x21, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
aes64ks2 x31, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
aes64ks2 x23, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
aes64ks2 x2, x26, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x7, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
aes64ks2 x5, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
aes64ks2 x9, x3, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x6, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x14, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
aes64ks2 x22, x5, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
aes64ks2 x26, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
aes64ks2 x14, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
aes64ks2 x29, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
aes64ks2 x10, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x27, 0x5555555555555555 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
aes64ks2 x2, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x20, 0x5555555555555555 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
aes64ks2 x26, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x6, 0x5555555555555555 # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
aes64ks2 x8, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x28, 0x5555555555555555 # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
aes64ks2 x10, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x24, 0x5555555555555555 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
aes64ks2 x14, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x14, 0x5555555555555555 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
aes64ks2 x11, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x25, 0x5555555555555555 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x8, x25, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x30, 0x5555555555555555 # initialize rs1
li x18, 0xffffffffffffffff # initialize rs2
aes64ks2 x24, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x12, 0x5555555555555555 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
aes64ks2 x29, x12, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x27, 0x5555555555555555 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x13, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x5555555555555555 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x12, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x24, 0x5555555555555555 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
aes64ks2 x27, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x10, 0x5555555555555555 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
aes64ks2 x7, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x13, 0x5555555555555555 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
aes64ks2 x14, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x29, 0x5555555555555555 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
aes64ks2 x9, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x26, 0x5555555555555555 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
aes64ks2 x14, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x14, 0x00000000ffffffff # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
aes64ks2 x31, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x8, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
aes64ks2 x22, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x9, 0x00000000ffffffff # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
aes64ks2 x6, x9, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x28, 0x00000000ffffffff # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
aes64ks2 x27, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x14, 0x00000000ffffffff # initialize rs1
li x5, 0x8000000000000001 # initialize rs2
aes64ks2 x9, x14, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x6, 0x00000000ffffffff # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
aes64ks2 x30, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x5, 0x00000000ffffffff # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x2, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x21, 0x00000000ffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
aes64ks2 x17, x21, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x8, 0x00000000ffffffff # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
aes64ks2 x13, x8, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x29, 0x00000000ffffffff # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x26, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x00000000ffffffff # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x8, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x8, 0x00000000ffffffff # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
aes64ks2 x23, x8, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
aes64ks2 x27, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x20, 0x00000000ffffffff # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
aes64ks2 x1, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x28, 0x00000000ffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
aes64ks2 x24, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x21, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
aes64ks2 x9, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x11, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
aes64ks2 x29, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x25, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
aes64ks2 x2, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x5, 0x00000000fffffffe # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
aes64ks2 x2, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x11, 0x00000000fffffffe # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
aes64ks2 x24, x11, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x7, 0x00000000fffffffe # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
aes64ks2 x13, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x12, 0x00000000fffffffe # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
aes64ks2 x8, x12, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x18, 0x00000000fffffffe # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x6, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x31, 0x00000000fffffffe # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
aes64ks2 x10, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x29, 0x00000000fffffffe # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
aes64ks2 x11, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x29, 0x00000000fffffffe # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x26, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x00000000fffffffe # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x16, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x8, 0x00000000fffffffe # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
aes64ks2 x2, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x26, 0x00000000fffffffe # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
aes64ks2 x12, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
aes64ks2 x9, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x21, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
aes64ks2 x31, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x23, 0x00000000fffffffe # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
aes64ks2 x21, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x13, 0x0000000100000000 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
aes64ks2 x2, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x8, 0x0000000100000000 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
aes64ks2 x14, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x6, 0x0000000100000000 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
aes64ks2 x2, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x18, 0x0000000100000000 # initialize rs1
li x26, 0x8000000000000000 # initialize rs2
aes64ks2 x27, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x18, 0x0000000100000000 # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
aes64ks2 x11, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x19, 0x0000000100000000 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
aes64ks2 x3, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x16, 0x0000000100000000 # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x8, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x31, 0x0000000100000000 # initialize rs1
li x13, 0xffffffffffffffff # initialize rs2
aes64ks2 x30, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x11, 0x0000000100000000 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
aes64ks2 x5, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000100000000 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x11, x12, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x0000000100000000 # initialize rs1
li x30, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x19, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x7, 0x0000000100000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
aes64ks2 x20, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x19, 0x0000000100000000 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
aes64ks2 x14, x19, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x8, 0x0000000100000000 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
aes64ks2 x28, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x12, 0x0000000100000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
aes64ks2 x14, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x20, 0x0000000100000000 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
aes64ks2 x14, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x11, 0x0000000100000001 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
aes64ks2 x16, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x7, 0x0000000100000001 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
aes64ks2 x15, x7, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x3, 0x0000000100000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
aes64ks2 x22, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x14, 0x0000000100000001 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
aes64ks2 x7, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x14, 0x0000000100000001 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
aes64ks2 x30, x14, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x19, 0x0000000100000001 # initialize rs1
li x7, 0x7fffffffffffffff # initialize rs2
aes64ks2 x20, x19, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000100000001 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
aes64ks2 x16, x27, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x20, 0x0000000100000001 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
aes64ks2 x18, x20, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x22, 0x0000000100000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
aes64ks2 x8, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000100000001 # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
aes64ks2 x16, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x0000000100000001 # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64ks2 x13, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x9, 0x0000000100000001 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
aes64ks2 x25, x9, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x28, 0x0000000100000001 # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
aes64ks2 x31, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x28, 0x0000000100000001 # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
aes64ks2 x29, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x15, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
aes64ks2 x12, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x24, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
aes64ks2 x8, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xd480ff2117a2832b # initialize rs1
li x0, 0xf5887841b4aef59e # initialize rs2
aes64ks2 x2, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x213624e90167fb0e # initialize rs1
li x1, 0x5da4bdafb9d56048 # initialize rs2
aes64ks2 x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x36f5f7b3ad5acd30 # initialize rs1
li x2, 0x86de1f6643e8898a # initialize rs2
aes64ks2 x28, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x5cc6db8e22129e01 # initialize rs1
li x3, 0x2d4388e8eea802ea # initialize rs2
aes64ks2 x31, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xf86800c40a8416b6 # initialize rs1
li x4, 0x86d659c330dfe8c4 # initialize rs2
aes64ks2 x23, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x22c400e2dbff950b # initialize rs1
li x5, 0x917e8e2ae3db2965 # initialize rs2
aes64ks2 x22, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x22, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf0d5703c4fd2deec # initialize rs1
li x6, 0xf886097dd1cd24e1 # initialize rs2
aes64ks2 x13, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x13, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xea674ffdd9c8255c # initialize rs1
li x7, 0x2fc5c9845de89ed2 # initialize rs2
aes64ks2 x28, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0xd616599d7e1c5a86 # initialize rs1
li x8, 0x612863bb945227bb # initialize rs2
aes64ks2 x3, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xa87dcdaf79936d87 # initialize rs1
li x9, 0xd51ba62fc6d5ec7b # initialize rs2
aes64ks2 x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x8fe0ceba777b8943 # initialize rs1
li x10, 0xa73495519080a65e # initialize rs2
aes64ks2 x7, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x1a23849016f5821f # initialize rs1
li x11, 0x82e76129c9c8e7d7 # initialize rs2
aes64ks2 x12, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0xb70732f7af6e1db8 # initialize rs1
li x12, 0x3de3f4888a1ccb2c # initialize rs2
aes64ks2 x1, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x85e0bb8ba9ba9e86 # initialize rs1
li x13, 0xe1873f8e9462149a # initialize rs2
aes64ks2 x8, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x1d97f7be4389959c # initialize rs1
li x14, 0x995679fd955b652c # initialize rs2
aes64ks2 x22, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x8f1dfa7312feb83a # initialize rs1
li x15, 0x9280fbb724314ead # initialize rs2
aes64ks2 x1, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xbe08cd0e6e0b771f # initialize rs1
li x16, 0x0ba3cbdb5ab44bbf # initialize rs2
aes64ks2 x1, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x211f6ac79a6b8593 # initialize rs1
li x17, 0xdd6e621380f9ba9e # initialize rs2
aes64ks2 x30, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x9973dc0fc22a1499 # initialize rs1
li x18, 0x1d0a5c8e297f5d46 # initialize rs2
aes64ks2 x23, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x7a1ae0d20c7f6713 # initialize rs1
li x19, 0x5d9fb9b33c6fc33f # initialize rs2
aes64ks2 x21, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xa262cc286f541eed # initialize rs1
li x20, 0x5b266e4cec6c35d5 # initialize rs2
aes64ks2 x24, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x6cabf1adcd689436 # initialize rs1
li x21, 0xeb70fb12877514f3 # initialize rs2
aes64ks2 x22, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0xd86e2d35621d2f2d # initialize rs1
li x22, 0xa06fc473e599ca24 # initialize rs2
aes64ks2 x14, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xefd04f893eb37a4e # initialize rs1
li x23, 0xd9176767ecfc31db # initialize rs2
aes64ks2 x25, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x046f9f63da794f2c # initialize rs1
li x24, 0x327fee772eb1c60f # initialize rs2
aes64ks2 x1, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xd8c409de8ec61b9b # initialize rs1
li x25, 0xaba310361a30e37a # initialize rs2
aes64ks2 x6, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x285c2bda5cd1e01a # initialize rs1
li x26, 0x96295be6ab93d56a # initialize rs2
aes64ks2 x21, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0xbfb9ea5841f207f2 # initialize rs1
li x27, 0x6e90e932de9eb3c4 # initialize rs2
aes64ks2 x10, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x595ba9ae74c28996 # initialize rs1
li x28, 0x2dc15abe53616aca # initialize rs2
aes64ks2 x23, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0xc4041ce76a3857b0 # initialize rs1
li x29, 0x74577f60511dbe86 # initialize rs2
aes64ks2 x12, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xd156188c80c5f3e6 # initialize rs1
li x30, 0x6eefcfe337154cdd # initialize rs2
aes64ks2 x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x6093ff34c8f5ba2c # initialize rs1
li x31, 0x217ec5e34d5de23a # initialize rs2
aes64ks2 x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd9ca03c58b7a7fb1 # initialize rs1
li x30, 0x833e06c575177492 # initialize rs2
aes64ks2 x0, x0, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x44e086fde0e19e4c # initialize rs1
li x28, 0xe2640d1d51e98197 # initialize rs2
aes64ks2 x1, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x1231f68830c2a69e # initialize rs1
li x5, 0x6369318b117eddb4 # initialize rs2
aes64ks2 x2, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x7b6476b7ee780c35 # initialize rs1
li x16, 0xdb5ef4c503de6789 # initialize rs2
aes64ks2 x3, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x872f4a4c4f45486c # initialize rs1
li x3, 0x899e5b3a7a17bb78 # initialize rs2
aes64ks2 x4, x4, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x1d11f0e4196e0f39 # initialize rs1
li x8, 0xe254a842ed3a62e3 # initialize rs2
aes64ks2 x5, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x7360bd370d17152e # initialize rs1
li x2, 0x7f5913aa8c8541d4 # initialize rs2
aes64ks2 x6, x6, x2 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x4739e14f97703978 # initialize rs1
li x31, 0xb3d51c2b73e567d3 # initialize rs2
aes64ks2 x7, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9327a1611db83703 # initialize rs1
li x12, 0xb28e057adca50c2a # initialize rs2
aes64ks2 x8, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x70266bb65e3861b3 # initialize rs1
li x19, 0x544a40d25bb96117 # initialize rs2
aes64ks2 x9, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xe0eeb27f7814387f # initialize rs1
li x30, 0x46fe54fb31ca3578 # initialize rs2
aes64ks2 x10, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x57f2333a25bfa60e # initialize rs1
li x31, 0x4e27e46425f1613a # initialize rs2
aes64ks2 x11, x11, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x96873dd7874f3f89 # initialize rs1
li x8, 0x461d20bd0fd8136d # initialize rs2
aes64ks2 x12, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x45f19717f79ea563 # initialize rs1
li x14, 0xf1f3bcf533bfa571 # initialize rs2
aes64ks2 x13, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xc52ba111222cda6e # initialize rs1
li x20, 0x7893904bf0978a18 # initialize rs2
aes64ks2 x14, x14, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xce72af8db5852d5d # initialize rs1
li x9, 0x3192eb65d7314213 # initialize rs2
aes64ks2 x15, x15, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x4719570675b8990a # initialize rs1
li x29, 0x3c69f7792fa259ce # initialize rs2
aes64ks2 x16, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x261d571105408e77 # initialize rs1
li x31, 0x61c4f6afd47a5e3a # initialize rs2
aes64ks2 x17, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xa51d832e274e45d5 # initialize rs1
li x20, 0x208cf786c5c1f7b2 # initialize rs2
aes64ks2 x18, x18, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x53dd5a5a9a877b8f # initialize rs1
li x13, 0x2862f83289e9cf31 # initialize rs2
aes64ks2 x19, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x01bbadd03baa2151 # initialize rs1
li x29, 0x9e3e5378b10c9e5a # initialize rs2
aes64ks2 x20, x20, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x4624c17a9aa5774a # initialize rs1
li x20, 0xa5a8374c23849d51 # initialize rs2
aes64ks2 x21, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x6d5efaf52591f2ae # initialize rs1
li x8, 0x7283ab6623945d7b # initialize rs2
aes64ks2 x22, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x2f325c28b9a571e0 # initialize rs1
li x6, 0x1641bf8a997929de # initialize rs2
aes64ks2 x23, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x2f0fc30b3bb31b01 # initialize rs1
li x20, 0xf7122f370abf00ca # initialize rs2
aes64ks2 x24, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x44ae6e8d0d354f75 # initialize rs1
li x19, 0xa5b0b95f719774c5 # initialize rs2
aes64ks2 x25, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x48693289f9856ad3 # initialize rs1
li x24, 0x0dbedf061061723c # initialize rs2
aes64ks2 x26, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x5cf8a303fcae51e6 # initialize rs1
li x6, 0xc414ea3c5234c334 # initialize rs2
aes64ks2 x27, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xcae8228101c24f57 # initialize rs1
li x22, 0xa9a0527f1296b4ff # initialize rs2
aes64ks2 x28, x28, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x1b6bc925d22b47ee # initialize rs1
li x19, 0x625bf900f2186ed1 # initialize rs2
aes64ks2 x29, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x24fcc01a238fba66 # initialize rs1
li x14, 0x716c084d22397830 # initialize rs2
aes64ks2 x30, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x8114e5b82d15c983 # initialize rs1
li x22, 0x527bf07085c42e1f # initialize rs2
aes64ks2 x31, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x19, 0xef8a2de375e6455e # initialize rs1
li x0, 0x37800ac1da79e56c # initialize rs2
aes64ks2 x0, x19, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x28, 0x4d14588452a455e9 # initialize rs1
li x1, 0xabfce63ce3ce8811 # initialize rs2
aes64ks2 x1, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x25, 0x8bf3c3d268116029 # initialize rs1
li x2, 0x39441b737a32a06d # initialize rs2
aes64ks2 x2, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x22, 0x434a42ec8fa68d31 # initialize rs1
li x3, 0xc281cf4dad5fe20c # initialize rs2
aes64ks2 x3, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0x83132c34836ac2d9 # initialize rs1
li x4, 0x629925e12c288838 # initialize rs2
aes64ks2 x4, x9, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x16, 0x8766ca1dd32bd626 # initialize rs1
li x5, 0xcd58e236e094bd58 # initialize rs2
aes64ks2 x5, x16, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x27, 0x1c771b740cd3f1ee # initialize rs1
li x6, 0x2276423c3c50e64b # initialize rs2
aes64ks2 x6, x27, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x8, 0x85871077478829fa # initialize rs1
li x7, 0x987a139b42bfa296 # initialize rs2
aes64ks2 x7, x8, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x14, 0xfaa36cdc26c3b3cb # initialize rs1
li x8, 0x9a4400d5a8e4fda8 # initialize rs2
aes64ks2 x8, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x9, 0x9478c2f5ab3e5504 # initialize rs1
li x9, 0xe5b059eac8aec6b1 # initialize rs2
aes64ks2 x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x29, 0x7f13173168c81411 # initialize rs1
li x10, 0xefa464a52f4fdc3d # initialize rs2
aes64ks2 x10, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x6, 0x7dee3bcd340642d3 # initialize rs1
li x11, 0x83c55009da00aa36 # initialize rs2
aes64ks2 x11, x6, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x24, 0x95a3164c0de50271 # initialize rs1
li x12, 0x6008135863b97487 # initialize rs2
aes64ks2 x12, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x14, 0xa84ff6d78d96482e # initialize rs1
li x13, 0x45221623c03eda4c # initialize rs2
aes64ks2 x13, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x17, 0x9bd6635574673ebb # initialize rs1
li x14, 0x137a7d7ecf1cab99 # initialize rs2
aes64ks2 x14, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x24, 0xbdd940f3b1dc8bb7 # initialize rs1
li x15, 0x972be189f0f26927 # initialize rs2
aes64ks2 x15, x24, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x1, 0x3a2ef7bf463f8610 # initialize rs1
li x16, 0x2493363ff08777c2 # initialize rs2
aes64ks2 x16, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x2, 0x5234d95652892308 # initialize rs1
li x17, 0xd344b2eb23f392f3 # initialize rs2
aes64ks2 x17, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x22, 0xd9cb7ed4de3a853a # initialize rs1
li x18, 0xfcf6855bd84f1260 # initialize rs2
aes64ks2 x18, x22, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x28, 0xf64f63dfb6720742 # initialize rs1
li x19, 0x8a9866fb0d7dbebd # initialize rs2
aes64ks2 x19, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x22, 0x19c6e881729842d2 # initialize rs1
li x20, 0x1914b633227ff8e1 # initialize rs2
aes64ks2 x20, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x1, 0x404caf5a33c6457c # initialize rs1
li x21, 0xdeb1574bc791b4b9 # initialize rs2
aes64ks2 x21, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x19, 0x9f19eb5c835f0cbf # initialize rs1
li x22, 0x9a09863274b41eba # initialize rs2
aes64ks2 x22, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x10, 0xf1bf338edae2f239 # initialize rs1
li x23, 0x33dbd308dcf88e5d # initialize rs2
aes64ks2 x23, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x13, 0x2461597c8a523de9 # initialize rs1
li x24, 0x3d9eb6e181102ef3 # initialize rs2
aes64ks2 x24, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x25, 0x784516042ad5a886 # initialize rs1
li x25, 0xa33fd382b4d1628f # initialize rs2
aes64ks2 x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x27, 0x3c3a5626941c9e95 # initialize rs1
li x26, 0x25c82d97dab49b36 # initialize rs2
aes64ks2 x26, x27, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x20, 0x555348ecea17c96e # initialize rs1
li x27, 0x47505d58057ef100 # initialize rs2
aes64ks2 x27, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x27, 0x565534ee89e4fa78 # initialize rs1
li x28, 0x1a4ceeff0ccc3b02 # initialize rs2
aes64ks2 x28, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x12, 0xdc23e4a086af6188 # initialize rs1
li x29, 0xc394f7936c8b9a5d # initialize rs2
aes64ks2 x29, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x14, 0xdf61ac929959ecd6 # initialize rs1
li x30, 0xaad9ef60f1963ef0 # initialize rs2
aes64ks2 x30, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x1, 0x50e7ba437869f8d8 # initialize rs1
li x31, 0x9cf96a6a0b4b514a # initialize rs2
aes64ks2 x31, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x6b8a73812d1e818a # initialize rs1
li x0, 0x08215120039eb35d # initialize rs2
aes64ks2 x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x5352415b5603004e # initialize rs1
li x1, 0xfa99d6f9324f6961 # initialize rs2
aes64ks2 x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x99d3477a7044af26 # initialize rs1
li x2, 0x247dcfdbe7539147 # initialize rs2
aes64ks2 x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xedc95f2fd80ae6fc # initialize rs1
li x3, 0xf405c99e452d6cb5 # initialize rs2
aes64ks2 x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x39df80a2e9be5224 # initialize rs1
li x4, 0x7d7a4b3d749ed7e5 # initialize rs2
aes64ks2 x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb0ed9240cc65bb96 # initialize rs1
li x5, 0x83d0c91d8d20d0a3 # initialize rs2
aes64ks2 x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xc60911c2024a4fd5 # initialize rs1
li x6, 0x88802569da7644ef # initialize rs2
aes64ks2 x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x99ec56041020a54e # initialize rs1
li x7, 0x90e1242615ba0597 # initialize rs2
aes64ks2 x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xbf5dc04f522838f7 # initialize rs1
li x8, 0x26f906b66fd09fa5 # initialize rs2
aes64ks2 x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x6dbb45ad21693312 # initialize rs1
li x9, 0x836df10b138ae27d # initialize rs2
aes64ks2 x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x7c00c157a99605d4 # initialize rs1
li x10, 0xf1637754095fd612 # initialize rs2
aes64ks2 x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x089bdaa1aa30c12a # initialize rs1
li x11, 0xfd498f42748b3cd6 # initialize rs2
aes64ks2 x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xd2e0991ac7272ea2 # initialize rs1
li x12, 0x1688b41b328b0a66 # initialize rs2
aes64ks2 x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xd3c07cfd2ef6742c # initialize rs1
li x13, 0xbf73740d52cefdfd # initialize rs2
aes64ks2 x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x602b611a965c0b29 # initialize rs1
li x14, 0x9f6cec57b6b5e00f # initialize rs2
aes64ks2 x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xb0e8f55377e6aeb9 # initialize rs1
li x15, 0x5cd51b6ed8da0480 # initialize rs2
aes64ks2 x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x6ceefc88147ecdd0 # initialize rs1
li x16, 0x7ec965100dd0b811 # initialize rs2
aes64ks2 x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xaeb5d37a0a9facd1 # initialize rs1
li x17, 0xc031f636fb6409d2 # initialize rs2
aes64ks2 x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x22b6fecd8003694d # initialize rs1
li x18, 0x732752053893eb93 # initialize rs2
aes64ks2 x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0xf9bf12cbcf73ecf1 # initialize rs1
li x19, 0x78a327c7ff0960fb # initialize rs2
aes64ks2 x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x41fd02213970ab1c # initialize rs1
li x20, 0x385a31f8f76cd040 # initialize rs2
aes64ks2 x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xc3ac0f139d1b39fc # initialize rs1
li x21, 0xc9a17dd422f0a2ba # initialize rs2
aes64ks2 x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x1014597211ab5593 # initialize rs1
li x22, 0x9dba51db2e62e693 # initialize rs2
aes64ks2 x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xe1ecbdfc28e06aa4 # initialize rs1
li x23, 0x93b8cb327ed1952f # initialize rs2
aes64ks2 x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xa5263a68d453b9e1 # initialize rs1
li x24, 0x188db4c264d38a34 # initialize rs2
aes64ks2 x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xfcc9fd6723be9b37 # initialize rs1
li x25, 0x79f3ee175a3707d2 # initialize rs2
aes64ks2 x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xc8b9bbaa7abf724c # initialize rs1
li x26, 0xa8ba5c8dec820f91 # initialize rs2
aes64ks2 x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x863ad8809f0f8be5 # initialize rs1
li x27, 0x57b2dbee7abe5834 # initialize rs2
aes64ks2 x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xb0a461de3835e9ca # initialize rs1
li x28, 0x5c024ff40d766500 # initialize rs2
aes64ks2 x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x5e77579f173759f5 # initialize rs1
li x29, 0x81076cba90deb5da # initialize rs2
aes64ks2 x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xd29ca5efd9aa3650 # initialize rs1
li x30, 0xc070bebc872fd7c7 # initialize rs2
aes64ks2 x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x6c071f0cb3f44d56 # initialize rs1
li x31, 0x0e96b16c8a7b4fe9 # initialize rs2
aes64ks2 x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x8, x9, x2 # perform first operation
aes64ks2 x18, x27, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x5, x25, x9 # perform first operation
aes64ks2 x8, x31, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x6, x8, x5 # perform first operation
aes64ks2 x29, x28, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x22, x1 # perform first operation
aes64ks2 x14, x6, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x22, x13, x25 # perform first operation
aes64ks2 x13, x10, x22 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x14, x24, x20 # perform first operation
aes64ks2 x24, x1, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x7, x13, x18 # perform first operation
aes64ks2 x7, x1, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x16, x1 # perform first operation
aes64ks2 x5, x6, x24 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x3, x8, x15 # perform first operation
aes64ks2 x3, x18, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x6, x11, x31 # perform first operation
aes64ks2 x11, x22, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x2, x26, x25 # perform first operation
aes64ks2 x25, x22, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x11, x22 # perform first operation
aes64ks2 x5, x24, x13 # perform second (triggering) operation

#.EQU SIGSIZE,4096


// ******************
// Tests from: WALLY-COV-aes64esm.S
// ******************


# initialize signature pointer
la x4, begin_signature

    
# Testcase cp_rs1 (Test source rs1 = x0)
li x0, 0xa76a3593962c07c1 # initialize rs1
li x27, 0x5651c3afd4cc2fcf # initialize rs2
aes64esm x20, x0, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x8e57444244f6e8e7 # initialize rs1
li x6, 0x6eb959559a76557c # initialize rs2
aes64esm x25, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x4db98f9747f7e2bd # initialize rs1
li x3, 0x247797dafeacd519 # initialize rs2
aes64esm x9, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x66bf2f71416d5541 # initialize rs1
li x14, 0xca39ce6167ad7db6 # initialize rs2
aes64esm x16, x3, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x064ca9c5f0ba0b41 # initialize rs1
li x27, 0x5a0f659510524d2f # initialize rs2
aes64esm x21, x4, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xb9976ccd2255ca55 # initialize rs1
li x11, 0xe61a3a0d874c248c # initialize rs2
aes64esm x29, x5, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x29, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x08b768da8d19e80b # initialize rs1
li x2, 0xafa37a097742ec0f # initialize rs2
aes64esm x17, x6, x2 # perform operation
RVTEST_SIGUPD(x7, x0, x17, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7dcceab4866b5e67 # initialize rs1
li x28, 0x9d912497bd16ba74 # initialize rs2
aes64esm x29, x7, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0xb27718719266cde4 # initialize rs1
li x25, 0x6c15c204bc4eb29c # initialize rs2
aes64esm x30, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x226387ed91a61a73 # initialize rs1
li x17, 0x91e3bccb5af2247a # initialize rs2
aes64esm x13, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x60e929aa79399e8d # initialize rs1
li x15, 0x670d178498da408a # initialize rs2
aes64esm x7, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x8f56cb85766148b4 # initialize rs1
li x16, 0xddc0b461849bef67 # initialize rs2
aes64esm x6, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xd266e75f137f1f0d # initialize rs1
li x23, 0xdea808539e2c1687 # initialize rs2
aes64esm x30, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xa1887281728f0aaf # initialize rs1
li x31, 0x93e1c5bed35bfa70 # initialize rs2
aes64esm x19, x13, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xb5adce5e4f7415c8 # initialize rs1
li x7, 0x86dc7a442d727f5a # initialize rs2
aes64esm x2, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x1672be2b56d61e86 # initialize rs1
li x1, 0x392e4612b63b1a81 # initialize rs2
aes64esm x14, x15, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x0c46a84c0c4ea4bf # initialize rs1
li x1, 0x887f0119cab5da74 # initialize rs2
aes64esm x25, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x9288e952de4a5134 # initialize rs1
li x16, 0xa8b5333dd7fc285f # initialize rs2
aes64esm x28, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x714c4c5a0e843fed # initialize rs1
li x10, 0x2293bbb1fbc9a7d0 # initialize rs2
aes64esm x21, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xea923ab3582570d7 # initialize rs1
li x18, 0x1fc42ad8901f3fe5 # initialize rs2
aes64esm x21, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0x52a6b923cc8ebe9b # initialize rs1
li x7, 0x95325276aa53177a # initialize rs2
aes64esm x11, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0x18605ffc3951633f # initialize rs1
li x28, 0xf791f43419cca0b3 # initialize rs2
aes64esm x27, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x62a316a7e9d9e190 # initialize rs1
li x12, 0xf2f5d86d25b9f96e # initialize rs2
aes64esm x20, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x97f3fe789919788e # initialize rs1
li x6, 0x39de8bb0e8633c1a # initialize rs2
aes64esm x25, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xdc34daaa731e56fa # initialize rs1
li x7, 0x3ff2701754650d3f # initialize rs2
aes64esm x8, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0xd7058abd07498733 # initialize rs1
li x23, 0x41f71ecdc37f46f7 # initialize rs2
aes64esm x17, x25, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xca526e449c956dd9 # initialize rs1
li x3, 0xbf211082cba4c9e8 # initialize rs2
aes64esm x23, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xaddccac67c76633d # initialize rs1
li x28, 0x22b8d9d9dabbd3cc # initialize rs2
aes64esm x3, x27, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xa1735d685a339575 # initialize rs1
li x27, 0xfcb42b28a2a70a89 # initialize rs2
aes64esm x22, x28, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x1ce44f57d8cc913f # initialize rs1
li x14, 0x070572ee6783edf2 # initialize rs2
aes64esm x24, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xcbde182b8e5bdb75 # initialize rs1
li x29, 0x1be2905f076a97fd # initialize rs2
aes64esm x2, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x0c2d7f8394a587d3 # initialize rs1
li x25, 0x542427376ec1c53e # initialize rs2
aes64esm x17, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x27, 0x1556d7e0690a1704 # initialize rs1
li x0, 0xb2e736b6b8b1c25d # initialize rs2
aes64esm x24, x27, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x16, 0xc87ed5213ba1a933 # initialize rs1
li x1, 0x27778be723605204 # initialize rs2
aes64esm x2, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x7, 0x47ce9038dca46ff3 # initialize rs1
li x2, 0xe1460acdec8117c8 # initialize rs2
aes64esm x18, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x16, 0x60c5ecfc02d45746 # initialize rs1
li x3, 0x2ac670d14550538b # initialize rs2
aes64esm x31, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x27, 0x851fd87aced6acf3 # initialize rs1
li x4, 0xf834457ff1a20365 # initialize rs2
aes64esm x29, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x12, 0xdc3e93a85fb7d60d # initialize rs1
li x5, 0xc294ebba358bbf3d # initialize rs2
aes64esm x11, x12, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x3, 0x4b639bcc1a1c04f6 # initialize rs1
li x6, 0x32506e4dc66c3f30 # initialize rs2
aes64esm x14, x3, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x14, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x23, 0xb15a41e181565dc9 # initialize rs1
li x7, 0x0764dbec0555d483 # initialize rs2
aes64esm x13, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x20, 0x86adfeb5e5da77e7 # initialize rs1
li x8, 0x3e4b9e87c9a4bbeb # initialize rs2
aes64esm x5, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x25, 0x2a9f6dde2ae489f4 # initialize rs1
li x9, 0x5d0a6ba8240e9e1e # initialize rs2
aes64esm x7, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x22, 0xfd338e314cf710c2 # initialize rs1
li x10, 0x6ede3d1cd2d86205 # initialize rs2
aes64esm x9, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x15, 0x6b18ba5ee96940de # initialize rs1
li x11, 0x11076a3c05d54716 # initialize rs2
aes64esm x22, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x26, 0x6a6a74ccfeb12044 # initialize rs1
li x12, 0x0d1b0b8f6b39a4bd # initialize rs2
aes64esm x11, x26, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x23, 0x8a5216675acd26ee # initialize rs1
li x13, 0x3e1b70c627c595f0 # initialize rs2
aes64esm x22, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x1, 0xe8d3409247fa728a # initialize rs1
li x14, 0xf7432c5d5b440ea5 # initialize rs2
aes64esm x13, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x30, 0x7ac6d85cd3fbe824 # initialize rs1
li x15, 0xae13d36949dd9c7f # initialize rs2
aes64esm x13, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x27, 0xc21e68571eaee375 # initialize rs1
li x16, 0xeea2f8f81b0f39d0 # initialize rs2
aes64esm x7, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x7, 0x6dbcb0e98f9c59ef # initialize rs1
li x17, 0xef465832cea0ebdd # initialize rs2
aes64esm x24, x7, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x30, 0x679b22f3949b8af7 # initialize rs1
li x18, 0x818ed3c2caa8d990 # initialize rs2
aes64esm x2, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x27, 0x58efc5ecbd015eed # initialize rs1
li x19, 0x01f499b3efab856c # initialize rs2
aes64esm x20, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x23, 0x3dde86703a7af4f9 # initialize rs1
li x20, 0x65e20ca3a53a2db1 # initialize rs2
aes64esm x6, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x27, 0x897dc5d611cc4ad9 # initialize rs1
li x21, 0x0f2d1785c2fa3cdb # initialize rs2
aes64esm x31, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x19, 0x22633acdc9eedd69 # initialize rs1
li x22, 0x970ce39337bfa12c # initialize rs2
aes64esm x18, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x27, 0xbe74a02e7a1b9e5e # initialize rs1
li x23, 0x703136266fd335d5 # initialize rs2
aes64esm x26, x27, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x15, 0x89c8cc12c778ad45 # initialize rs1
li x24, 0xafdbe611c01c100f # initialize rs2
aes64esm x22, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x15, 0xb3e6e9ae35efcf47 # initialize rs1
li x25, 0xba933cc562314ec3 # initialize rs2
aes64esm x29, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x21, 0x6d85dbef37143751 # initialize rs1
li x26, 0xaef60cb662c9c29c # initialize rs2
aes64esm x2, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x25, 0x9d41370e438ee5ca # initialize rs1
li x27, 0x50d99acde4dd2470 # initialize rs2
aes64esm x26, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x3, 0xaad36b51ee1fee08 # initialize rs1
li x28, 0x0047eba52c1cebbc # initialize rs2
aes64esm x30, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x13, 0x757a3ed05a7fb255 # initialize rs1
li x29, 0xfb90b860cfd4572a # initialize rs2
aes64esm x9, x13, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x29, 0x88895d29b04c2f8d # initialize rs1
li x30, 0xd9aac052e25fc667 # initialize rs2
aes64esm x28, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x6, 0xa82ddc4da562624e # initialize rs1
li x31, 0xdba741da4da94581 # initialize rs2
aes64esm x3, x6, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 504)

# Testcase cp_rd (Test destination rd = x0)
li x31, 0x6d8d00eaf345ca17 # initialize rs1
li x27, 0xce6586bf14493ed2 # initialize rs2
aes64esm x0, x31, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x5, 0xac261878baeaeced # initialize rs1
li x21, 0xadaf586d84106f83 # initialize rs2
aes64esm x1, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x12, 0x0f32370aeca526b3 # initialize rs1
li x31, 0xeb32623dd0073e48 # initialize rs2
aes64esm x2, x12, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x20, 0xc471d3fbb2ec0778 # initialize rs1
li x27, 0xe4a724fb73bc4499 # initialize rs2
aes64esm x3, x20, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x10, 0xe5a0a896dbb4852d # initialize rs1
li x24, 0xa32fc44ece278129 # initialize rs2
aes64esm x4, x10, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x29, 0xe133dc0bcd1d3181 # initialize rs1
li x26, 0x7b45b42134fc1cb7 # initialize rs2
aes64esm x5, x29, x26 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x24, 0x079d03955ef9f425 # initialize rs1
li x15, 0xc13e0b2305af7682 # initialize rs2
aes64esm x6, x24, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x31, 0xa25a6e5d7c8b0537 # initialize rs1
li x6, 0xa870ea8ee958cd83 # initialize rs2
aes64esm x7, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x17, 0xc5f1ba341d303353 # initialize rs1
li x21, 0x8f03b722af40098a # initialize rs2
aes64esm x8, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x2, 0x56a7e161213a42a9 # initialize rs1
li x7, 0x19ef2978d0035209 # initialize rs2
aes64esm x9, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x18, 0x63974218c777c376 # initialize rs1
li x15, 0x2c947ad6d230247d # initialize rs2
aes64esm x10, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x2, 0x33ae85e18ecf5df5 # initialize rs1
li x16, 0xae8f65a670670625 # initialize rs2
aes64esm x11, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x3, 0x4611d6db5829523f # initialize rs1
li x5, 0x52e69683e29d1974 # initialize rs2
aes64esm x12, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x6, 0xce4d0d9cf2fbc86f # initialize rs1
li x22, 0xef863637382b170d # initialize rs2
aes64esm x13, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x20, 0xdec2518c7193dc1c # initialize rs1
li x22, 0x76f3b5c5476b726e # initialize rs2
aes64esm x14, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x13, 0x814dee0a5b846408 # initialize rs1
li x12, 0x6594e5ac6f79a4b2 # initialize rs2
aes64esm x15, x13, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x2, 0x2efa169ffc246112 # initialize rs1
li x17, 0x12c801734c8c476e # initialize rs2
aes64esm x16, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x29, 0xc442918d158a2a8d # initialize rs1
li x5, 0x384168c5b9956e1f # initialize rs2
aes64esm x17, x29, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x22, 0x5b8625436463f4e3 # initialize rs1
li x13, 0x7338eca866e787c8 # initialize rs2
aes64esm x18, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x21, 0xdfaf75544ba4fcb9 # initialize rs1
li x31, 0xc93860f3777f0511 # initialize rs2
aes64esm x19, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x9, 0xa5a3f07b28f9c549 # initialize rs1
li x21, 0xebb73050cfdb81eb # initialize rs2
aes64esm x20, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x14, 0xde1286c4931b036a # initialize rs1
li x22, 0x1d5d1bd0f9201f13 # initialize rs2
aes64esm x21, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x30, 0x14fc88926549ac7b # initialize rs1
li x28, 0x18f0da2926d325cc # initialize rs2
aes64esm x22, x30, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x21, 0x10ea65d9a3708bc8 # initialize rs1
li x23, 0x18fe622bb0c77186 # initialize rs2
aes64esm x23, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x16, 0x53e1842587d70be7 # initialize rs1
li x14, 0xfb0760ad2265c8e9 # initialize rs2
aes64esm x24, x16, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x18, 0x76a4d57fe2742a3e # initialize rs1
li x10, 0x59952651da681ca3 # initialize rs2
aes64esm x25, x18, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x17, 0x60a6d125de53313a # initialize rs1
li x25, 0x83587db7845801cc # initialize rs2
aes64esm x26, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x19, 0x7072b6c061a92f97 # initialize rs1
li x31, 0x9e341592f9c7915b # initialize rs2
aes64esm x27, x19, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x31, 0x55f766949b25856c # initialize rs1
li x12, 0xd26d966cc15cfaed # initialize rs2
aes64esm x28, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x31, 0x918e527e35213fc1 # initialize rs1
li x22, 0x04709245f2a8be4f # initialize rs2
aes64esm x29, x31, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x12, 0xc3d441a1e1a32dd9 # initialize rs1
li x9, 0x3cc7eba0b0536f5d # initialize rs2
aes64esm x30, x12, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x11, 0x883b8f374e87bc73 # initialize rs1
li x12, 0xea3cf92ecfdab607 # initialize rs2
aes64esm x31, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x23, 0x0000000000000000 # initialize rs1
li x2, 0x117ea73cf81680f6 # initialize rs2
aes64esm x22, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x5, 0x0000000000000001 # initialize rs1
li x31, 0x4de9a62855f4d5f7 # initialize rs2
aes64esm x16, x5, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x5, 0x0000000000000002 # initialize rs1
li x21, 0x98c078b8f7b6c665 # initialize rs2
aes64esm x1, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x12, 0x8000000000000000 # initialize rs1
li x30, 0x04f6cf29a64bec41 # initialize rs2
aes64esm x11, x12, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x9, 0x8000000000000001 # initialize rs1
li x1, 0x81160a4ffc880c80 # initialize rs2
aes64esm x7, x9, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x10, 0x7fffffffffffffff # initialize rs1
li x16, 0x56fbd1a0cdb6939c # initialize rs2
aes64esm x14, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x19, 0x7ffffffffffffffe # initialize rs1
li x11, 0x697ded54c65a8a7a # initialize rs2
aes64esm x26, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x13, 0xffffffffffffffff # initialize rs1
li x21, 0x9b7fb8e806ffa3db # initialize rs2
aes64esm x20, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x13, 0xfffffffffffffffe # initialize rs1
li x6, 0xc838835e0b50f08b # initialize rs2
aes64esm x30, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x1d1aa071eeb0fe0f # initialize rs2
aes64esm x9, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0x972f66bec3aad349 # initialize rs2
aes64esm x14, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x8, 0x5555555555555555 # initialize rs1
li x22, 0x78aaec5beea59c71 # initialize rs2
aes64esm x18, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x8, 0x00000000ffffffff # initialize rs1
li x31, 0xc21bdadb0865f089 # initialize rs2
aes64esm x23, x8, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x23, 0x00000000fffffffe # initialize rs1
li x18, 0x8123060b5d6d5b11 # initialize rs2
aes64esm x6, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x20, 0x0000000100000000 # initialize rs1
li x2, 0x87c0e71ca1729738 # initialize rs2
aes64esm x26, x20, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x1, 0x0000000100000001 # initialize rs1
li x28, 0xa49a0d083be1f8e7 # initialize rs2
aes64esm x19, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x7, 0x3f01281d37b7c9c8 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
aes64esm x6, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x28, 0xe366e04bdd5ff93e # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
aes64esm x31, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x22, 0x03d17d0e914913fa # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
aes64esm x9, x22, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x10, 0xba192da819ff9049 # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
aes64esm x23, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x13, 0xccb8f850f7df6074 # initialize rs1
li x24, 0x8000000000000001 # initialize rs2
aes64esm x20, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x17, 0x1df9bea592c13461 # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
aes64esm x25, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x1, 0xfd375b517df5cb9e # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
aes64esm x17, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x6, 0x923a6a2355ee21f7 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
aes64esm x8, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x7, 0xa20889361ec54f99 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
aes64esm x12, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x24, 0x44563642ad348c34 # initialize rs1
li x11, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x17, x24, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0xeb48443c28a18d5a # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x24, x11, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x12, 0x088a613559a5a7ca # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
aes64esm x3, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x24, 0xd4479943a92821f9 # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
aes64esm x17, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x12, 0x1594d599fa93b824 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
aes64esm x6, x12, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x6, 0x036af5233c947601 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
aes64esm x29, x6, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x12, 0x6f27e5a8dbc0f99a # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
aes64esm x22, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x25, 0x0000000000000000 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
aes64esm x13, x25, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x29, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
aes64esm x27, x29, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x25, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
aes64esm x22, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x5, 0x0000000000000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
aes64esm x29, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x17, 0x0000000000000000 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
aes64esm x12, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x26, 0x0000000000000000 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
aes64esm x8, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x13, 0x0000000000000000 # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
aes64esm x2, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x2, 0x0000000000000000 # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
aes64esm x14, x2, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x13, 0x0000000000000000 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
aes64esm x25, x13, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x23, 0x0000000000000000 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x24, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000000000000 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x14, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x16, 0x0000000000000000 # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
aes64esm x5, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x14, 0x0000000000000000 # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
aes64esm x29, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x14, 0x0000000000000000 # initialize rs1
li x10, 0x00000000fffffffe # initialize rs2
aes64esm x28, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x30, 0x0000000000000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
aes64esm x11, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x17, 0x0000000000000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
aes64esm x2, x17, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x3, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
aes64esm x29, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x24, 0x0000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
aes64esm x15, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x20, 0x0000000000000001 # initialize rs1
li x18, 0x0000000000000002 # initialize rs2
aes64esm x21, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x16, 0x0000000000000001 # initialize rs1
li x29, 0x8000000000000000 # initialize rs2
aes64esm x20, x16, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x2, 0x0000000000000001 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
aes64esm x25, x2, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x22, 0x0000000000000001 # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
aes64esm x15, x22, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x31, 0x0000000000000001 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
aes64esm x2, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x1, 0x0000000000000001 # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
aes64esm x25, x1, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x27, 0x0000000000000001 # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
aes64esm x17, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000000000001 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x29, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x0000000000000001 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x13, x8, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x17, 0x0000000000000001 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
aes64esm x30, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x14, 0x0000000000000001 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
aes64esm x20, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x11, 0x0000000000000001 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
aes64esm x16, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x6, 0x0000000000000001 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
aes64esm x28, x6, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x27, 0x0000000000000001 # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
aes64esm x11, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x31, 0x0000000000000002 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
aes64esm x16, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x23, 0x0000000000000002 # initialize rs1
li x9, 0x0000000000000001 # initialize rs2
aes64esm x28, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x13, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
aes64esm x18, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x19, 0x0000000000000002 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
aes64esm x3, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x19, 0x0000000000000002 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
aes64esm x10, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000000000002 # initialize rs1
li x18, 0x7fffffffffffffff # initialize rs2
aes64esm x15, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x29, 0x0000000000000002 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
aes64esm x25, x29, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x21, 0x0000000000000002 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
aes64esm x28, x21, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000000000002 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
aes64esm x15, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x12, 0x0000000000000002 # initialize rs1
li x29, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x28, x12, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x9, 0x0000000000000002 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x13, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x17, 0x0000000000000002 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
aes64esm x21, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x3, 0x0000000000000002 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
aes64esm x14, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x8, 0x0000000000000002 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
aes64esm x3, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x27, 0x0000000000000002 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
aes64esm x3, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x8, 0x0000000000000002 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
aes64esm x2, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x14, 0x8000000000000000 # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
aes64esm x30, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x22, 0x8000000000000000 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
aes64esm x27, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x18, 0x8000000000000000 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
aes64esm x24, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x5, 0x8000000000000000 # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
aes64esm x7, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x19, 0x8000000000000000 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
aes64esm x1, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x30, 0x8000000000000000 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
aes64esm x5, x30, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x9, 0x8000000000000000 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
aes64esm x14, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x26, 0x8000000000000000 # initialize rs1
li x27, 0xffffffffffffffff # initialize rs2
aes64esm x7, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x5, 0x8000000000000000 # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
aes64esm x30, x5, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x1, 0x8000000000000000 # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x27, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x5, 0x8000000000000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x1, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x13, 0x8000000000000000 # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
aes64esm x22, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x11, 0x8000000000000000 # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
aes64esm x31, x11, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x7, 0x8000000000000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
aes64esm x12, x7, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x15, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
aes64esm x8, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x11, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
aes64esm x13, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x11, 0x8000000000000001 # initialize rs1
li x8, 0x0000000000000000 # initialize rs2
aes64esm x30, x11, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x19, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
aes64esm x24, x19, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x26, 0x8000000000000001 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
aes64esm x2, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x18, 0x8000000000000001 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
aes64esm x7, x18, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x24, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000001 # initialize rs2
aes64esm x1, x24, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x11, 0x8000000000000001 # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
aes64esm x17, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x17, 0x8000000000000001 # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
aes64esm x1, x17, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x7, 0x8000000000000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
aes64esm x22, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x24, 0x8000000000000001 # initialize rs1
li x31, 0xfffffffffffffffe # initialize rs2
aes64esm x1, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x23, 0x8000000000000001 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x18, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0x8000000000000001 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x6, x10, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x9, 0x8000000000000001 # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
aes64esm x16, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x14, 0x8000000000000001 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
aes64esm x7, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x7, 0x8000000000000001 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
aes64esm x20, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x7, 0x8000000000000001 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
aes64esm x6, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x23, 0x8000000000000001 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
aes64esm x1, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x9, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
aes64esm x12, x9, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x30, 0x7fffffffffffffff # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
aes64esm x5, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x27, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
aes64esm x11, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x16, 0x7fffffffffffffff # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
aes64esm x18, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x31, 0x7fffffffffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
aes64esm x14, x31, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x23, 0x7fffffffffffffff # initialize rs1
li x29, 0x7fffffffffffffff # initialize rs2
aes64esm x9, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x31, 0x7fffffffffffffff # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
aes64esm x6, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x19, 0x7fffffffffffffff # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
aes64esm x10, x19, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x26, 0x7fffffffffffffff # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
aes64esm x11, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x12, 0x7fffffffffffffff # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x31, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x7fffffffffffffff # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x29, x17, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x27, 0x7fffffffffffffff # initialize rs1
li x9, 0x5555555555555555 # initialize rs2
aes64esm x12, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x28, 0x7fffffffffffffff # initialize rs1
li x21, 0x00000000ffffffff # initialize rs2
aes64esm x15, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x27, 0x7fffffffffffffff # initialize rs1
li x21, 0x00000000fffffffe # initialize rs2
aes64esm x2, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x1, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
aes64esm x24, x1, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x7, 0x7fffffffffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
aes64esm x21, x7, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x20, 0x7ffffffffffffffe # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
aes64esm x3, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x7, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
aes64esm x19, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x8, 0x7ffffffffffffffe # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
aes64esm x23, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x29, 0x7ffffffffffffffe # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
aes64esm x25, x29, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x20, 0x7ffffffffffffffe # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
aes64esm x10, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x13, 0x7ffffffffffffffe # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
aes64esm x20, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x28, 0x7ffffffffffffffe # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
aes64esm x7, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x15, 0x7ffffffffffffffe # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
aes64esm x27, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x23, 0x7ffffffffffffffe # initialize rs1
li x19, 0xfffffffffffffffe # initialize rs2
aes64esm x14, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x23, 0x7ffffffffffffffe # initialize rs1
li x27, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x16, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x22, 0x7ffffffffffffffe # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x30, x22, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x26, 0x7ffffffffffffffe # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
aes64esm x12, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x2, 0x7ffffffffffffffe # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
aes64esm x26, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x7, 0x7ffffffffffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
aes64esm x16, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x7, 0x7ffffffffffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
aes64esm x1, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x10, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
aes64esm x25, x10, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x5, 0xffffffffffffffff # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
aes64esm x14, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x27, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
aes64esm x31, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x7, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
aes64esm x2, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x7, 0xffffffffffffffff # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
aes64esm x14, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x17, 0xffffffffffffffff # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
aes64esm x26, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x29, 0xffffffffffffffff # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
aes64esm x2, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x24, 0xffffffffffffffff # initialize rs1
li x30, 0x7ffffffffffffffe # initialize rs2
aes64esm x10, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x6, 0xffffffffffffffff # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
aes64esm x27, x6, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x28, 0xffffffffffffffff # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
aes64esm x12, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x11, 0xffffffffffffffff # initialize rs1
li x7, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x26, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0xffffffffffffffff # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x26, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x10, 0xffffffffffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
aes64esm x30, x10, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x27, 0xffffffffffffffff # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
aes64esm x9, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x28, 0xffffffffffffffff # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
aes64esm x5, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x9, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
aes64esm x28, x9, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x5, 0xffffffffffffffff # initialize rs1
li x9, 0x0000000100000001 # initialize rs2
aes64esm x7, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x31, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
aes64esm x3, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x5, 0xfffffffffffffffe # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
aes64esm x20, x5, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x19, 0xfffffffffffffffe # initialize rs1
li x20, 0x0000000000000002 # initialize rs2
aes64esm x28, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x30, 0xfffffffffffffffe # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
aes64esm x17, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x23, 0xfffffffffffffffe # initialize rs1
li x29, 0x8000000000000001 # initialize rs2
aes64esm x18, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x1, 0xfffffffffffffffe # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
aes64esm x15, x1, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x29, 0xfffffffffffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
aes64esm x6, x29, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x21, 0xfffffffffffffffe # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
aes64esm x12, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x7, 0xfffffffffffffffe # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
aes64esm x15, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x26, 0xfffffffffffffffe # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x30, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0xfffffffffffffffe # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x22, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x1, 0xfffffffffffffffe # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
aes64esm x25, x1, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x28, 0xfffffffffffffffe # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
aes64esm x16, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x18, 0xfffffffffffffffe # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
aes64esm x11, x18, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x23, 0xfffffffffffffffe # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
aes64esm x7, x23, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x19, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
aes64esm x7, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x9, 0x5bbc887763ae86f2 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
aes64esm x7, x9, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x19, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
aes64esm x20, x19, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
aes64esm x23, x28, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x11, 0x8000000000000000 # initialize rs2
aes64esm x15, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
aes64esm x16, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
aes64esm x20, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x7ffffffffffffffe # initialize rs2
aes64esm x22, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
aes64esm x27, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
aes64esm x8, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x23, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x28, x20, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x13, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
aes64esm x3, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
aes64esm x20, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
aes64esm x23, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x0000000100000000 # initialize rs2
aes64esm x28, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
aes64esm x19, x15, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
aes64esm x11, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
aes64esm x10, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
aes64esm x18, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
aes64esm x11, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
aes64esm x21, x12, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
aes64esm x21, x2, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
aes64esm x28, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
aes64esm x8, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
aes64esm x8, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x6, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x19, x6, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x16, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
aes64esm x13, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
aes64esm x2, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
aes64esm x25, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
aes64esm x31, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
aes64esm x28, x21, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x27, 0x5555555555555555 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
aes64esm x28, x27, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x14, 0x5555555555555555 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
aes64esm x8, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x29, 0x5555555555555555 # initialize rs1
li x19, 0x0000000000000002 # initialize rs2
aes64esm x18, x29, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x29, 0x5555555555555555 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
aes64esm x19, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x7, 0x5555555555555555 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
aes64esm x25, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x2, 0x5555555555555555 # initialize rs1
li x31, 0x7fffffffffffffff # initialize rs2
aes64esm x25, x2, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x13, 0x5555555555555555 # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
aes64esm x25, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x2, 0x5555555555555555 # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
aes64esm x26, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x22, 0x5555555555555555 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
aes64esm x30, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x12, 0x5555555555555555 # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x16, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x19, 0x5555555555555555 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x7, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x30, 0x5555555555555555 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
aes64esm x14, x30, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x8, 0x5555555555555555 # initialize rs1
li x25, 0x00000000ffffffff # initialize rs2
aes64esm x20, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x28, 0x5555555555555555 # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
aes64esm x6, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x26, 0x5555555555555555 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
aes64esm x19, x26, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x24, 0x5555555555555555 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
aes64esm x17, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x24, 0x00000000ffffffff # initialize rs1
li x27, 0x0000000000000000 # initialize rs2
aes64esm x16, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x17, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
aes64esm x22, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x22, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000000000002 # initialize rs2
aes64esm x18, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x7, 0x00000000ffffffff # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
aes64esm x9, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x19, 0x00000000ffffffff # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
aes64esm x22, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x20, 0x00000000ffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
aes64esm x24, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0x00000000ffffffff # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
aes64esm x25, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x13, 0x00000000ffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
aes64esm x31, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x15, 0x00000000ffffffff # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
aes64esm x7, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x14, 0x00000000ffffffff # initialize rs1
li x13, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x12, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x00000000ffffffff # initialize rs1
li x5, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x30, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x28, 0x00000000ffffffff # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
aes64esm x23, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x25, 0x00000000ffffffff # initialize rs1
li x6, 0x00000000ffffffff # initialize rs2
aes64esm x2, x25, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x22, 0x00000000ffffffff # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
aes64esm x27, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x30, 0x00000000ffffffff # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
aes64esm x16, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x3, 0x00000000ffffffff # initialize rs1
li x6, 0x0000000100000001 # initialize rs2
aes64esm x19, x3, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x27, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
aes64esm x19, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x5, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
aes64esm x14, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x3, 0x00000000fffffffe # initialize rs1
li x8, 0x0000000000000002 # initialize rs2
aes64esm x16, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x16, 0x00000000fffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
aes64esm x9, x16, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x20, 0x00000000fffffffe # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
aes64esm x27, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x29, 0x00000000fffffffe # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
aes64esm x7, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x19, 0x00000000fffffffe # initialize rs1
li x10, 0x7ffffffffffffffe # initialize rs2
aes64esm x14, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x5, 0x00000000fffffffe # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
aes64esm x14, x5, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x2, 0x00000000fffffffe # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
aes64esm x8, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x10, 0x00000000fffffffe # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x2, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x00000000fffffffe # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x14, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x23, 0x00000000fffffffe # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
aes64esm x2, x23, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x9, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
aes64esm x2, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x9, 0x00000000fffffffe # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
aes64esm x2, x9, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x9, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
aes64esm x20, x9, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x13, 0x00000000fffffffe # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
aes64esm x15, x13, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x10, 0x0000000100000000 # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
aes64esm x15, x10, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x24, 0x0000000100000000 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
aes64esm x3, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x15, 0x0000000100000000 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
aes64esm x30, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x7, 0x0000000100000000 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
aes64esm x9, x7, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x5, 0x0000000100000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
aes64esm x10, x5, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x14, 0x0000000100000000 # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
aes64esm x8, x14, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x5, 0x0000000100000000 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
aes64esm x24, x5, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x14, 0x0000000100000000 # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
aes64esm x1, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x25, 0x0000000100000000 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
aes64esm x15, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x25, 0x0000000100000000 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x29, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0x0000000100000000 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x7, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x24, 0x0000000100000000 # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
aes64esm x14, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x21, 0x0000000100000000 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
aes64esm x8, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x25, 0x0000000100000000 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
aes64esm x23, x25, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x5, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
aes64esm x20, x5, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x18, 0x0000000100000000 # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
aes64esm x7, x18, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x20, 0x0000000100000001 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
aes64esm x12, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x17, 0x0000000100000001 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
aes64esm x5, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x23, 0x0000000100000001 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
aes64esm x15, x23, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x31, 0x0000000100000001 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
aes64esm x5, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x23, 0x0000000100000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
aes64esm x6, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x13, 0x0000000100000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
aes64esm x18, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x26, 0x0000000100000001 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
aes64esm x9, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x6, 0x0000000100000001 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
aes64esm x29, x6, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x22, 0x0000000100000001 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
aes64esm x29, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x24, 0x0000000100000001 # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
aes64esm x5, x24, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x15, 0x0000000100000001 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x16, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x10, 0x0000000100000001 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
aes64esm x25, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x8, 0x0000000100000001 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
aes64esm x15, x8, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x24, 0x0000000100000001 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
aes64esm x27, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x3, 0x0000000100000001 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
aes64esm x23, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x13, 0x0000000100000001 # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
aes64esm x19, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0xf992548c5ee33a83 # initialize rs1
li x0, 0xf105aa945d0d5c27 # initialize rs2
aes64esm x10, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x43b3f267cdaf86c5 # initialize rs1
li x1, 0xb79af2ad8d9a3fb5 # initialize rs2
aes64esm x16, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xfa59540ae248f4f7 # initialize rs1
li x2, 0x782e1a8b5ecd647b # initialize rs2
aes64esm x13, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0x2780acbfcc709080 # initialize rs1
li x3, 0xed484353a65c5c08 # initialize rs2
aes64esm x11, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x4e4a9717a091a689 # initialize rs1
li x4, 0x4ff82c5c1f35c1d6 # initialize rs2
aes64esm x6, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x98f808ed724aeef8 # initialize rs1
li x5, 0xe7dda9385a480fd9 # initialize rs2
aes64esm x11, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x11, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x6afc6656d21a84bc # initialize rs1
li x6, 0x746fa65fb1ae3ecd # initialize rs2
aes64esm x24, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x24, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xbec671f1b9d5260b # initialize rs1
li x7, 0x2f18c27521078b64 # initialize rs2
aes64esm x30, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x6f9d9188e88c97f0 # initialize rs1
li x8, 0xfe44bc956b3d5e94 # initialize rs2
aes64esm x1, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x083eeacc13eefceb # initialize rs1
li x9, 0x92cdc1a7cc8b6c7d # initialize rs2
aes64esm x3, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x00e2843314dfac3f # initialize rs1
li x10, 0x980631ecb13ef8c0 # initialize rs2
aes64esm x21, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x45c0fbdd1e4d8435 # initialize rs1
li x11, 0x7d4d2562e160a246 # initialize rs2
aes64esm x1, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x157d36d046305860 # initialize rs1
li x12, 0xedb1d46d49433f91 # initialize rs2
aes64esm x30, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0xd1b0c5dcf8bae96f # initialize rs1
li x13, 0xc9b6d053318db61f # initialize rs2
aes64esm x14, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xdd9634b68a50c2e3 # initialize rs1
li x14, 0x4ddcb42d53e461f4 # initialize rs2
aes64esm x2, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0xed19a6a66bd9e243 # initialize rs1
li x15, 0x55b91dabd09cc30d # initialize rs2
aes64esm x3, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xad9b79c978d34dc2 # initialize rs1
li x16, 0xbde72bc40cc5ba07 # initialize rs2
aes64esm x11, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x07694096460af5bf # initialize rs1
li x17, 0x38471c5ca64f82db # initialize rs2
aes64esm x5, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0xc34ddd7f49e7d9eb # initialize rs1
li x18, 0x3b2701e821f9c162 # initialize rs2
aes64esm x19, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xd05cec98376f1bb9 # initialize rs1
li x19, 0xfecc0a5244ef5261 # initialize rs2
aes64esm x21, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x88b9e4cb76532ff7 # initialize rs1
li x20, 0x4fead3b209411a6e # initialize rs2
aes64esm x13, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0x73ff843c5c10c605 # initialize rs1
li x21, 0xf5e4b959c438e5d4 # initialize rs2
aes64esm x26, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x316fec658728a21b # initialize rs1
li x22, 0x737d049e2724dad0 # initialize rs2
aes64esm x18, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x1fe55e183e0537c9 # initialize rs1
li x23, 0x61de96d699da9ed8 # initialize rs2
aes64esm x16, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x7eea6388f479317f # initialize rs1
li x24, 0x202b3b1d0b144a5d # initialize rs2
aes64esm x1, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0x71557f3cf920973f # initialize rs1
li x25, 0x1d962f628485f111 # initialize rs2
aes64esm x5, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xd33071bae96dc220 # initialize rs1
li x26, 0x8718a29a69a04ebe # initialize rs2
aes64esm x14, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x4535983b6e5e8230 # initialize rs1
li x27, 0xb74556e2bb0ed863 # initialize rs2
aes64esm x28, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x24aa415e8fc24eec # initialize rs1
li x28, 0x4e0b7bb65a0b0443 # initialize rs2
aes64esm x12, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x4fad887d4fb05f65 # initialize rs1
li x29, 0xdb5d85bdc799e12e # initialize rs2
aes64esm x16, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x492fb5abf165e0dc # initialize rs1
li x30, 0x57393529971254fb # initialize rs2
aes64esm x3, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x241b52fc64340cf1 # initialize rs1
li x31, 0xd2fc4b30d7b55150 # initialize rs2
aes64esm x13, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x7ac9c3aef08d51e0 # initialize rs1
li x13, 0x2f66d4e7f2c9b9cd # initialize rs2
aes64esm x0, x0, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0xad3a03969222b9af # initialize rs1
li x9, 0x936290ea0c4eab3b # initialize rs2
aes64esm x1, x1, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x00e42cae4d1f516b # initialize rs1
li x17, 0xa6ee26020a8e9716 # initialize rs2
aes64esm x2, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x2e5985ee5259bd7f # initialize rs1
li x5, 0xcdffbf4b4f3d37e0 # initialize rs2
aes64esm x3, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x025593935a2ee3ba # initialize rs1
li x7, 0x38c88e3708e4cb52 # initialize rs2
aes64esm x4, x4, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x3c7cb6c6f6c1cb0a # initialize rs1
li x23, 0x93fcb291a292c590 # initialize rs2
aes64esm x5, x5, x23 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd4861fadee048733 # initialize rs1
li x15, 0x98f6ab66f5556d20 # initialize rs2
aes64esm x6, x6, x15 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7e33898ea665d7c8 # initialize rs1
li x10, 0xf4cbfc6873c1979b # initialize rs2
aes64esm x7, x7, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x9a1631240c817585 # initialize rs1
li x13, 0x8323b2969ae4d5eb # initialize rs2
aes64esm x8, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xe489146869a76a1a # initialize rs1
li x16, 0xba8c1a6aa2b173e7 # initialize rs2
aes64esm x9, x9, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xe7ab2ffdadc74bf0 # initialize rs1
li x12, 0x2dbd7ce855e3eacb # initialize rs2
aes64esm x10, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xaf0cf059dabc184a # initialize rs1
li x12, 0xe59a7fd454d7a39d # initialize rs2
aes64esm x11, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x1ae4c4b06179545f # initialize rs1
li x13, 0xe2afb4fdb87395c9 # initialize rs2
aes64esm x12, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x3d3df0753bbefeef # initialize rs1
li x23, 0xb8920417e232b652 # initialize rs2
aes64esm x13, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xd55bd1cb63a46e12 # initialize rs1
li x11, 0x6873ab30b5478bb7 # initialize rs2
aes64esm x14, x14, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xb1cbff9f5e68831a # initialize rs1
li x11, 0xbec31325bca99d4a # initialize rs2
aes64esm x15, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0xd7077b05de61e4d1 # initialize rs1
li x7, 0x1b85d905360d65fa # initialize rs2
aes64esm x16, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x0e3586f4b2efde84 # initialize rs1
li x11, 0x1f1ba500d32f6fe7 # initialize rs2
aes64esm x17, x17, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x6874089fc3e039de # initialize rs1
li x26, 0x922d0eccb9513b41 # initialize rs2
aes64esm x18, x18, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x7fd0f134aae472b8 # initialize rs1
li x24, 0x8fddbb9bdaed57fd # initialize rs2
aes64esm x19, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x6707be0966b2e78f # initialize rs1
li x20, 0xcdafd1506dc61b6f # initialize rs2
aes64esm x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x159a800dc61b3869 # initialize rs1
li x11, 0x8bfbd886ff59fe03 # initialize rs2
aes64esm x21, x21, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3ca246f2a3049339 # initialize rs1
li x17, 0xccba09d36b110471 # initialize rs2
aes64esm x22, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x084dfda37a4e01f0 # initialize rs1
li x5, 0xe31c5ad49963b7c7 # initialize rs2
aes64esm x23, x23, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x8efe4cb7af20ce92 # initialize rs1
li x27, 0x3c710a73a851ab0d # initialize rs2
aes64esm x24, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x5d3fbc7f795daae4 # initialize rs1
li x26, 0x3e62f70a4963d0f4 # initialize rs2
aes64esm x25, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x1d774022f466c9c5 # initialize rs1
li x7, 0xfe71e6b8f371c71e # initialize rs2
aes64esm x26, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x9eacbde18a9d228d # initialize rs1
li x25, 0x23463120fe2e33da # initialize rs2
aes64esm x27, x27, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xa541a114371ee002 # initialize rs1
li x9, 0x518b3833f69c529a # initialize rs2
aes64esm x28, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xde8e89e42be5256d # initialize rs1
li x16, 0x867d5c3526c40772 # initialize rs2
aes64esm x29, x29, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xb65b096cc538f2a2 # initialize rs1
li x25, 0x3b3cfbb650ed45f3 # initialize rs2
aes64esm x30, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe0378e38c496e45f # initialize rs1
li x30, 0xd5dc6cb9e1ce05ef # initialize rs2
aes64esm x31, x31, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x23, 0xdb2bba55f441cf5d # initialize rs1
li x0, 0xaa20f324c93970aa # initialize rs2
aes64esm x0, x23, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x13, 0x5017e94c8cd82c66 # initialize rs1
li x1, 0x995aa9eb6d1248d2 # initialize rs2
aes64esm x1, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x12, 0x74cf6a7d236ab8a4 # initialize rs1
li x2, 0x3317a92bbd3e6daf # initialize rs2
aes64esm x2, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x6, 0x6099a7df4476009b # initialize rs1
li x3, 0x468e2cf7259a75f1 # initialize rs2
aes64esm x3, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0x850b6841284b1165 # initialize rs1
li x4, 0xa4fa0091b071a7df # initialize rs2
aes64esm x4, x25, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x25, 0x011c10aff5c7f34c # initialize rs1
li x5, 0xcb89b88d98b3e20f # initialize rs2
aes64esm x5, x25, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x13, 0xb399e058b9f05746 # initialize rs1
li x6, 0x7581a86866e446e0 # initialize rs2
aes64esm x6, x13, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x14, 0xab0c42f6d8672041 # initialize rs1
li x7, 0x77fa1ea7fa153717 # initialize rs2
aes64esm x7, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x19, 0x7fc6f9b6c5488fd2 # initialize rs1
li x8, 0xa6829af7d4b9fd4d # initialize rs2
aes64esm x8, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x27, 0x3d277170f69ee018 # initialize rs1
li x9, 0x41502847bc7226d5 # initialize rs2
aes64esm x9, x27, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x13, 0x4cf9a9a0c2d1377d # initialize rs1
li x10, 0x1d8e28c2087fe069 # initialize rs2
aes64esm x10, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x28, 0x5dae9fdde9ac11a1 # initialize rs1
li x11, 0xbae98476be8896cf # initialize rs2
aes64esm x11, x28, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x3, 0xd3009ab76d87f048 # initialize rs1
li x12, 0x9e9f5248d7de7bd9 # initialize rs2
aes64esm x12, x3, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x2, 0x25ef2547202fa048 # initialize rs1
li x13, 0x8090e1814179c871 # initialize rs2
aes64esm x13, x2, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x17, 0x9a2d2f556af6a350 # initialize rs1
li x14, 0xf8a6dec875d3b055 # initialize rs2
aes64esm x14, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x16, 0x4fd86fc8d00ca518 # initialize rs1
li x15, 0x9496ddf6e7efb75b # initialize rs2
aes64esm x15, x16, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x11, 0x13dd26d0feba282c # initialize rs1
li x16, 0x50f13f83e459d265 # initialize rs2
aes64esm x16, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x30, 0xf5abf7859cd4d863 # initialize rs1
li x17, 0x08d86333ebcd9cc8 # initialize rs2
aes64esm x17, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x14, 0x4ff77858183c32ba # initialize rs1
li x18, 0xf15c8debc484ea72 # initialize rs2
aes64esm x18, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x5, 0x1a4f1fd6bc361b1c # initialize rs1
li x19, 0xe790c3571016eb14 # initialize rs2
aes64esm x19, x5, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x3, 0x8cd7b2d8ecb080c6 # initialize rs1
li x20, 0x9c7725cadb02da5a # initialize rs2
aes64esm x20, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x21, 0xac0a3f6a562a12f0 # initialize rs1
li x21, 0x4666b5d63d918578 # initialize rs2
aes64esm x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x17, 0xe97dda0cc47f8e21 # initialize rs1
li x22, 0xf19cafe92333e64a # initialize rs2
aes64esm x22, x17, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x5, 0x0c13f23f3a2a13ac # initialize rs1
li x23, 0x74068f9434177605 # initialize rs2
aes64esm x23, x5, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x18, 0x406171b0f2c95867 # initialize rs1
li x24, 0x534c803cdac033cc # initialize rs2
aes64esm x24, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x26, 0xa9990accfbbd9ea9 # initialize rs1
li x25, 0x6e1c8e15eea08c6b # initialize rs2
aes64esm x25, x26, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x16, 0x119622f6fca662d8 # initialize rs1
li x26, 0x0630b4ce6655bb24 # initialize rs2
aes64esm x26, x16, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x6, 0x8d5f6bc1d63fcc2d # initialize rs1
li x27, 0x002717597518f427 # initialize rs2
aes64esm x27, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x3, 0x0209f07f60c9ea26 # initialize rs1
li x28, 0xcff2ea35453bd772 # initialize rs2
aes64esm x28, x3, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x6, 0x49ca5496bdc79604 # initialize rs1
li x29, 0xec2dd234b9959e70 # initialize rs2
aes64esm x29, x6, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x19, 0xfabecddbde7a7349 # initialize rs1
li x30, 0x2dc16f65cc234ce5 # initialize rs2
aes64esm x30, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x17, 0x667435f8aa097fc3 # initialize rs1
li x31, 0x2bf8e14b64a36e67 # initialize rs2
aes64esm x31, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x7f558cb3d1efb0ea # initialize rs1
li x0, 0x320169e1d7af3da8 # initialize rs2
aes64esm x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xd4573dcd6e2507a4 # initialize rs1
li x1, 0x47c7370a080ffb72 # initialize rs2
aes64esm x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x06d310d5a6cfaa69 # initialize rs1
li x2, 0x4296570dd20834ba # initialize rs2
aes64esm x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x1d9300ffd2030f3d # initialize rs1
li x3, 0x04bb5f8a524fa688 # initialize rs2
aes64esm x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x086e67eb999f55ad # initialize rs1
li x4, 0x96cad24c98bb12ed # initialize rs2
aes64esm x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x632858708026dede # initialize rs1
li x5, 0x2fe4aac3795f22c6 # initialize rs2
aes64esm x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x296c16ec2c7b9bb6 # initialize rs1
li x6, 0x662b7cc7d1e14a0e # initialize rs2
aes64esm x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xf45149321a44449e # initialize rs1
li x7, 0x1aba54db1f8b7e4c # initialize rs2
aes64esm x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x0a4151f7bf2a52ed # initialize rs1
li x8, 0xea5ec8cd194dc638 # initialize rs2
aes64esm x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x79ac4a2ae6a6b9b3 # initialize rs1
li x9, 0xfdb5e70eb3247020 # initialize rs2
aes64esm x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x28d5710535c05811 # initialize rs1
li x10, 0x858e53d450ac5540 # initialize rs2
aes64esm x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x8b377a216aeaef13 # initialize rs1
li x11, 0x752e53a0ece4cd3c # initialize rs2
aes64esm x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x64a8126c96d6e89d # initialize rs1
li x12, 0x73c03a45dcaca445 # initialize rs2
aes64esm x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x3d6e3b15e3c5a9d6 # initialize rs1
li x13, 0x043e08367b5febfa # initialize rs2
aes64esm x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x0fdc3e8a94ce881a # initialize rs1
li x14, 0xe769bc34240f6f46 # initialize rs2
aes64esm x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x3a7b0e7d610f36b8 # initialize rs1
li x15, 0xcf3f0c6da3c89326 # initialize rs2
aes64esm x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0xe4e19248d6d5dedd # initialize rs1
li x16, 0xdd7f0f2fbb8780b9 # initialize rs2
aes64esm x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xef065fc1d8fbb6c1 # initialize rs1
li x17, 0x07083546f534083b # initialize rs2
aes64esm x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0xd81a7387393244e9 # initialize rs1
li x18, 0xf94815aa6d12e3a1 # initialize rs2
aes64esm x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x9d4453fc1308806c # initialize rs1
li x19, 0x2ec724e6b6fbd157 # initialize rs2
aes64esm x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0xad44393c2fc03f85 # initialize rs1
li x20, 0xbca5baf0109e2b80 # initialize rs2
aes64esm x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xd788543a61be21fb # initialize rs1
li x21, 0x1f40be3bf505bf8d # initialize rs2
aes64esm x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x50c2e9d7c66f7282 # initialize rs1
li x22, 0x52e0c03f198996a0 # initialize rs2
aes64esm x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xee98a2d1efb68890 # initialize rs1
li x23, 0xf4690ad7c78fb98b # initialize rs2
aes64esm x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x619ab6a7465e3387 # initialize rs1
li x24, 0xc3f5d48d5354b349 # initialize rs2
aes64esm x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xde2b2d465b6346f1 # initialize rs1
li x25, 0x27706d013b638785 # initialize rs2
aes64esm x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xfc0ba056cddb2c20 # initialize rs1
li x26, 0x44c3f7ac779159c7 # initialize rs2
aes64esm x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x16f96450ed6df12b # initialize rs1
li x27, 0x4eb79ba303623e8e # initialize rs2
aes64esm x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x221bab3a83b80b7f # initialize rs1
li x28, 0xc331279a8967a525 # initialize rs2
aes64esm x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x1dbd1424b54ba53f # initialize rs1
li x29, 0xdb202cdc5ee7b21d # initialize rs2
aes64esm x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc27c3ec5efa85c59 # initialize rs1
li x30, 0x38d1f2f1783da317 # initialize rs2
aes64esm x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x1ac86bf3663c2b0d # initialize rs1
li x31, 0x6417ddd5b1c5297a # initialize rs2
aes64esm x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x14, x7, x18 # perform first operation
aes64esm x3, x1, x9 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x15, x9, x19 # perform first operation
aes64esm x30, x24, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x13, x10 # perform first operation
aes64esm x22, x21, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x8, x2, x15 # perform first operation
aes64esm x26, x8, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x3, x28 # perform first operation
aes64esm x15, x31, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x23, x8, x29 # perform first operation
aes64esm x29, x6, x23 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x10, x25, x16 # perform first operation
aes64esm x10, x12, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x11, x9, x26 # perform first operation
aes64esm x11, x31, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x31, x23, x13 # perform first operation
aes64esm x31, x2, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x11, x2, x27 # perform first operation
aes64esm x2, x20, x5 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x17, x2, x10 # perform first operation
aes64esm x10, x6, x8 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x5, x23, x10 # perform first operation
aes64esm x8, x21, x22 # perform second (triggering) operation

# Testcase cp_sbox = 0
li x13, 0x0000000000000000 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
aes64esm x7, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 496)

# Testcase cp_sbox = 1
li x25, 0x0101010101010101 # initialize rs1
li x20, 0x0101010101010101 # initialize rs2
aes64esm x31, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 504)

# Testcase cp_sbox = 2
li x22, 0x0202020202020202 # initialize rs1
li x25, 0x0202020202020202 # initialize rs2
aes64esm x13, x22, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 512)

# Testcase cp_sbox = 3
li x26, 0x0303030303030303 # initialize rs1
li x29, 0x0303030303030303 # initialize rs2
aes64esm x2, x26, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 520)

# Testcase cp_sbox = 4
li x7, 0x0404040404040404 # initialize rs1
li x14, 0x0404040404040404 # initialize rs2
aes64esm x28, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 528)

# Testcase cp_sbox = 5
li x6, 0x0505050505050505 # initialize rs1
li x3, 0x0505050505050505 # initialize rs2
aes64esm x22, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 536)

# Testcase cp_sbox = 6
li x10, 0x0606060606060606 # initialize rs1
li x1, 0x0606060606060606 # initialize rs2
aes64esm x3, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 544)

# Testcase cp_sbox = 7
li x8, 0x0707070707070707 # initialize rs1
li x28, 0x0707070707070707 # initialize rs2
aes64esm x16, x8, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 552)

# Testcase cp_sbox = 8
li x29, 0x0808080808080808 # initialize rs1
li x11, 0x0808080808080808 # initialize rs2
aes64esm x26, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 560)

# Testcase cp_sbox = 9
li x6, 0x0909090909090909 # initialize rs1
li x13, 0x0909090909090909 # initialize rs2
aes64esm x23, x6, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 568)

# Testcase cp_sbox = 10
li x31, 0x0a0a0a0a0a0a0a0a # initialize rs1
li x6, 0x0a0a0a0a0a0a0a0a # initialize rs2
aes64esm x12, x31, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 576)

# Testcase cp_sbox = 11
li x15, 0x0b0b0b0b0b0b0b0b # initialize rs1
li x16, 0x0b0b0b0b0b0b0b0b # initialize rs2
aes64esm x14, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 584)

# Testcase cp_sbox = 12
li x21, 0x0c0c0c0c0c0c0c0c # initialize rs1
li x12, 0x0c0c0c0c0c0c0c0c # initialize rs2
aes64esm x6, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 592)

# Testcase cp_sbox = 13
li x28, 0x0d0d0d0d0d0d0d0d # initialize rs1
li x19, 0x0d0d0d0d0d0d0d0d # initialize rs2
aes64esm x11, x28, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_sbox = 14
li x31, 0x0e0e0e0e0e0e0e0e # initialize rs1
li x1, 0x0e0e0e0e0e0e0e0e # initialize rs2
aes64esm x22, x31, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 608)

# Testcase cp_sbox = 15
li x6, 0x0f0f0f0f0f0f0f0f # initialize rs1
li x21, 0x0f0f0f0f0f0f0f0f # initialize rs2
aes64esm x5, x6, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 616)

# Testcase cp_sbox = 16
li x10, 0x1010101010101010 # initialize rs1
li x23, 0x1010101010101010 # initialize rs2
aes64esm x29, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 624)

# Testcase cp_sbox = 17
li x11, 0x1111111111111111 # initialize rs1
li x12, 0x1111111111111111 # initialize rs2
aes64esm x28, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 632)

# Testcase cp_sbox = 18
li x31, 0x1212121212121212 # initialize rs1
li x25, 0x1212121212121212 # initialize rs2
aes64esm x19, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 640)

# Testcase cp_sbox = 19
li x25, 0x1313131313131313 # initialize rs1
li x14, 0x1313131313131313 # initialize rs2
aes64esm x21, x25, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 648)

# Testcase cp_sbox = 20
li x19, 0x1414141414141414 # initialize rs1
li x17, 0x1414141414141414 # initialize rs2
aes64esm x9, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 656)

# Testcase cp_sbox = 21
li x29, 0x1515151515151515 # initialize rs1
li x3, 0x1515151515151515 # initialize rs2
aes64esm x16, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 664)

# Testcase cp_sbox = 22
li x14, 0x1616161616161616 # initialize rs1
li x23, 0x1616161616161616 # initialize rs2
aes64esm x16, x14, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 672)

# Testcase cp_sbox = 23
li x21, 0x1717171717171717 # initialize rs1
li x26, 0x1717171717171717 # initialize rs2
aes64esm x23, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 680)

# Testcase cp_sbox = 24
li x11, 0x1818181818181818 # initialize rs1
li x13, 0x1818181818181818 # initialize rs2
aes64esm x8, x11, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 688)

# Testcase cp_sbox = 25
li x21, 0x1919191919191919 # initialize rs1
li x24, 0x1919191919191919 # initialize rs2
aes64esm x15, x21, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 696)

# Testcase cp_sbox = 26
li x21, 0x1a1a1a1a1a1a1a1a # initialize rs1
li x6, 0x1a1a1a1a1a1a1a1a # initialize rs2
aes64esm x16, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 704)

# Testcase cp_sbox = 27
li x10, 0x1b1b1b1b1b1b1b1b # initialize rs1
li x17, 0x1b1b1b1b1b1b1b1b # initialize rs2
aes64esm x18, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 712)

# Testcase cp_sbox = 28
li x5, 0x1c1c1c1c1c1c1c1c # initialize rs1
li x11, 0x1c1c1c1c1c1c1c1c # initialize rs2
aes64esm x22, x5, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 720)

# Testcase cp_sbox = 29
li x2, 0x1d1d1d1d1d1d1d1d # initialize rs1
li x29, 0x1d1d1d1d1d1d1d1d # initialize rs2
aes64esm x12, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 728)

# Testcase cp_sbox = 30
li x9, 0x1e1e1e1e1e1e1e1e # initialize rs1
li x3, 0x1e1e1e1e1e1e1e1e # initialize rs2
aes64esm x16, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 736)

# Testcase cp_sbox = 31
li x20, 0x1f1f1f1f1f1f1f1f # initialize rs1
li x13, 0x1f1f1f1f1f1f1f1f # initialize rs2
aes64esm x29, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_sbox = 32
li x27, 0x2020202020202020 # initialize rs1
li x5, 0x2020202020202020 # initialize rs2
aes64esm x10, x27, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 752)

# Testcase cp_sbox = 33
li x5, 0x2121212121212121 # initialize rs1
li x27, 0x2121212121212121 # initialize rs2
aes64esm x17, x5, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 760)

# Testcase cp_sbox = 34
li x2, 0x2222222222222222 # initialize rs1
li x5, 0x2222222222222222 # initialize rs2
aes64esm x19, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 768)

# Testcase cp_sbox = 35
li x24, 0x2323232323232323 # initialize rs1
li x13, 0x2323232323232323 # initialize rs2
aes64esm x7, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 776)

# Testcase cp_sbox = 36
li x6, 0x2424242424242424 # initialize rs1
li x12, 0x2424242424242424 # initialize rs2
aes64esm x28, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 784)

# Testcase cp_sbox = 37
li x20, 0x2525252525252525 # initialize rs1
li x30, 0x2525252525252525 # initialize rs2
aes64esm x7, x20, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 792)

# Testcase cp_sbox = 38
li x26, 0x2626262626262626 # initialize rs1
li x22, 0x2626262626262626 # initialize rs2
aes64esm x23, x26, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 800)

# Testcase cp_sbox = 39
li x10, 0x2727272727272727 # initialize rs1
li x24, 0x2727272727272727 # initialize rs2
aes64esm x19, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 808)

# Testcase cp_sbox = 40
li x23, 0x2828282828282828 # initialize rs1
li x10, 0x2828282828282828 # initialize rs2
aes64esm x1, x23, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 816)

# Testcase cp_sbox = 41
li x16, 0x2929292929292929 # initialize rs1
li x19, 0x2929292929292929 # initialize rs2
aes64esm x2, x16, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 824)

# Testcase cp_sbox = 42
li x6, 0x2a2a2a2a2a2a2a2a # initialize rs1
li x3, 0x2a2a2a2a2a2a2a2a # initialize rs2
aes64esm x23, x6, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 832)

# Testcase cp_sbox = 43
li x18, 0x2b2b2b2b2b2b2b2b # initialize rs1
li x15, 0x2b2b2b2b2b2b2b2b # initialize rs2
aes64esm x5, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 840)

# Testcase cp_sbox = 44
li x29, 0x2c2c2c2c2c2c2c2c # initialize rs1
li x21, 0x2c2c2c2c2c2c2c2c # initialize rs2
aes64esm x20, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 848)

# Testcase cp_sbox = 45
li x27, 0x2d2d2d2d2d2d2d2d # initialize rs1
li x14, 0x2d2d2d2d2d2d2d2d # initialize rs2
aes64esm x20, x27, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 856)

# Testcase cp_sbox = 46
li x26, 0x2e2e2e2e2e2e2e2e # initialize rs1
li x19, 0x2e2e2e2e2e2e2e2e # initialize rs2
aes64esm x8, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 864)

# Testcase cp_sbox = 47
li x14, 0x2f2f2f2f2f2f2f2f # initialize rs1
li x1, 0x2f2f2f2f2f2f2f2f # initialize rs2
aes64esm x23, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 872)

# Testcase cp_sbox = 48
li x7, 0x3030303030303030 # initialize rs1
li x23, 0x3030303030303030 # initialize rs2
aes64esm x28, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 880)

# Testcase cp_sbox = 49
li x21, 0x3131313131313131 # initialize rs1
li x12, 0x3131313131313131 # initialize rs2
aes64esm x16, x21, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 888)

# Testcase cp_sbox = 50
li x2, 0x3232323232323232 # initialize rs1
li x30, 0x3232323232323232 # initialize rs2
aes64esm x15, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 896)

# Testcase cp_sbox = 51
li x11, 0x3333333333333333 # initialize rs1
li x25, 0x3333333333333333 # initialize rs2
aes64esm x18, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 904)

# Testcase cp_sbox = 52
li x5, 0x3434343434343434 # initialize rs1
li x13, 0x3434343434343434 # initialize rs2
aes64esm x24, x5, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 912)

# Testcase cp_sbox = 53
li x14, 0x3535353535353535 # initialize rs1
li x16, 0x3535353535353535 # initialize rs2
aes64esm x25, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 920)

# Testcase cp_sbox = 54
li x11, 0x3636363636363636 # initialize rs1
li x6, 0x3636363636363636 # initialize rs2
aes64esm x25, x11, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 928)

# Testcase cp_sbox = 55
li x14, 0x3737373737373737 # initialize rs1
li x3, 0x3737373737373737 # initialize rs2
aes64esm x29, x14, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 936)

# Testcase cp_sbox = 56
li x5, 0x3838383838383838 # initialize rs1
li x9, 0x3838383838383838 # initialize rs2
aes64esm x8, x5, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 944)

# Testcase cp_sbox = 57
li x24, 0x3939393939393939 # initialize rs1
li x27, 0x3939393939393939 # initialize rs2
aes64esm x30, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 952)

# Testcase cp_sbox = 58
li x17, 0x3a3a3a3a3a3a3a3a # initialize rs1
li x12, 0x3a3a3a3a3a3a3a3a # initialize rs2
aes64esm x10, x17, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 960)

# Testcase cp_sbox = 59
li x19, 0x3b3b3b3b3b3b3b3b # initialize rs1
li x14, 0x3b3b3b3b3b3b3b3b # initialize rs2
aes64esm x31, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 968)

# Testcase cp_sbox = 60
li x26, 0x3c3c3c3c3c3c3c3c # initialize rs1
li x15, 0x3c3c3c3c3c3c3c3c # initialize rs2
aes64esm x22, x26, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 976)

# Testcase cp_sbox = 61
li x10, 0x3d3d3d3d3d3d3d3d # initialize rs1
li x26, 0x3d3d3d3d3d3d3d3d # initialize rs2
aes64esm x25, x10, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 984)

# Testcase cp_sbox = 62
li x23, 0x3e3e3e3e3e3e3e3e # initialize rs1
li x27, 0x3e3e3e3e3e3e3e3e # initialize rs2
aes64esm x21, x23, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 992)

# Testcase cp_sbox = 63
li x6, 0x3f3f3f3f3f3f3f3f # initialize rs1
li x26, 0x3f3f3f3f3f3f3f3f # initialize rs2
aes64esm x20, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1000)

# Testcase cp_sbox = 64
li x20, 0x4040404040404040 # initialize rs1
li x11, 0x4040404040404040 # initialize rs2
aes64esm x2, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1008)

# Testcase cp_sbox = 65
li x14, 0x4141414141414141 # initialize rs1
li x16, 0x4141414141414141 # initialize rs2
aes64esm x30, x14, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1016)

# Testcase cp_sbox = 66
li x2, 0x4242424242424242 # initialize rs1
li x29, 0x4242424242424242 # initialize rs2
aes64esm x30, x2, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1024)

# Testcase cp_sbox = 67
li x25, 0x4343434343434343 # initialize rs1
li x20, 0x4343434343434343 # initialize rs2
aes64esm x8, x25, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1032)

# Testcase cp_sbox = 68
li x26, 0x4444444444444444 # initialize rs1
li x27, 0x4444444444444444 # initialize rs2
aes64esm x19, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1040)

# Testcase cp_sbox = 69
li x10, 0x4545454545454545 # initialize rs1
li x8, 0x4545454545454545 # initialize rs2
aes64esm x18, x10, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1048)

# Testcase cp_sbox = 70
li x13, 0x4646464646464646 # initialize rs1
li x1, 0x4646464646464646 # initialize rs2
aes64esm x5, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1056)

# Testcase cp_sbox = 71
li x18, 0x4747474747474747 # initialize rs1
li x2, 0x4747474747474747 # initialize rs2
aes64esm x21, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1064)

# Testcase cp_sbox = 72
li x19, 0x4848484848484848 # initialize rs1
li x25, 0x4848484848484848 # initialize rs2
aes64esm x9, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1072)

# Testcase cp_sbox = 73
li x16, 0x4949494949494949 # initialize rs1
li x30, 0x4949494949494949 # initialize rs2
aes64esm x31, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1080)

# Testcase cp_sbox = 74
li x16, 0x4a4a4a4a4a4a4a4a # initialize rs1
li x8, 0x4a4a4a4a4a4a4a4a # initialize rs2
aes64esm x2, x16, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1088)

# Testcase cp_sbox = 75
li x6, 0x4b4b4b4b4b4b4b4b # initialize rs1
li x27, 0x4b4b4b4b4b4b4b4b # initialize rs2
aes64esm x20, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1096)

# Testcase cp_sbox = 76
li x23, 0x4c4c4c4c4c4c4c4c # initialize rs1
li x2, 0x4c4c4c4c4c4c4c4c # initialize rs2
aes64esm x22, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1104)

# Testcase cp_sbox = 77
li x21, 0x4d4d4d4d4d4d4d4d # initialize rs1
li x30, 0x4d4d4d4d4d4d4d4d # initialize rs2
aes64esm x9, x21, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1112)

# Testcase cp_sbox = 78
li x13, 0x4e4e4e4e4e4e4e4e # initialize rs1
li x6, 0x4e4e4e4e4e4e4e4e # initialize rs2
aes64esm x28, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1120)

# Testcase cp_sbox = 79
li x18, 0x4f4f4f4f4f4f4f4f # initialize rs1
li x30, 0x4f4f4f4f4f4f4f4f # initialize rs2
aes64esm x9, x18, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1128)

# Testcase cp_sbox = 80
li x19, 0x5050505050505050 # initialize rs1
li x2, 0x5050505050505050 # initialize rs2
aes64esm x6, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1136)

# Testcase cp_sbox = 81
li x1, 0x5151515151515151 # initialize rs1
li x13, 0x5151515151515151 # initialize rs2
aes64esm x18, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1144)

# Testcase cp_sbox = 82
li x1, 0x5252525252525252 # initialize rs1
li x22, 0x5252525252525252 # initialize rs2
aes64esm x17, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1152)

# Testcase cp_sbox = 83
li x8, 0x5353535353535353 # initialize rs1
li x11, 0x5353535353535353 # initialize rs2
aes64esm x19, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1160)

# Testcase cp_sbox = 84
li x16, 0x5454545454545454 # initialize rs1
li x3, 0x5454545454545454 # initialize rs2
aes64esm x1, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1168)

# Testcase cp_sbox = 85
li x25, 0x5555555555555555 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
aes64esm x14, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1176)

# Testcase cp_sbox = 86
li x2, 0x5656565656565656 # initialize rs1
li x7, 0x5656565656565656 # initialize rs2
aes64esm x22, x2, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1184)

# Testcase cp_sbox = 87
li x3, 0x5757575757575757 # initialize rs1
li x19, 0x5757575757575757 # initialize rs2
aes64esm x25, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1192)

# Testcase cp_sbox = 88
li x20, 0x5858585858585858 # initialize rs1
li x22, 0x5858585858585858 # initialize rs2
aes64esm x8, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1200)

# Testcase cp_sbox = 89
li x13, 0x5959595959595959 # initialize rs1
li x9, 0x5959595959595959 # initialize rs2
aes64esm x19, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1208)

# Testcase cp_sbox = 90
li x18, 0x5a5a5a5a5a5a5a5a # initialize rs1
li x7, 0x5a5a5a5a5a5a5a5a # initialize rs2
aes64esm x16, x18, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1216)

# Testcase cp_sbox = 91
li x19, 0x5b5b5b5b5b5b5b5b # initialize rs1
li x21, 0x5b5b5b5b5b5b5b5b # initialize rs2
aes64esm x6, x19, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1224)

# Testcase cp_sbox = 92
li x14, 0x5c5c5c5c5c5c5c5c # initialize rs1
li x15, 0x5c5c5c5c5c5c5c5c # initialize rs2
aes64esm x22, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1232)

# Testcase cp_sbox = 93
li x15, 0x5d5d5d5d5d5d5d5d # initialize rs1
li x2, 0x5d5d5d5d5d5d5d5d # initialize rs2
aes64esm x18, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1240)

# Testcase cp_sbox = 94
li x1, 0x5e5e5e5e5e5e5e5e # initialize rs1
li x25, 0x5e5e5e5e5e5e5e5e # initialize rs2
aes64esm x13, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1248)

# Testcase cp_sbox = 95
li x14, 0x5f5f5f5f5f5f5f5f # initialize rs1
li x1, 0x5f5f5f5f5f5f5f5f # initialize rs2
aes64esm x22, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1256)

# Testcase cp_sbox = 96
li x26, 0x6060606060606060 # initialize rs1
li x7, 0x6060606060606060 # initialize rs2
aes64esm x9, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1264)

# Testcase cp_sbox = 97
li x3, 0x6161616161616161 # initialize rs1
li x7, 0x6161616161616161 # initialize rs2
aes64esm x19, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1272)

# Testcase cp_sbox = 98
li x15, 0x6262626262626262 # initialize rs1
li x8, 0x6262626262626262 # initialize rs2
aes64esm x26, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1280)

# Testcase cp_sbox = 99
li x13, 0x6363636363636363 # initialize rs1
li x1, 0x6363636363636363 # initialize rs2
aes64esm x25, x13, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1288)

# Testcase cp_sbox = 100
li x22, 0x6464646464646464 # initialize rs1
li x27, 0x6464646464646464 # initialize rs2
aes64esm x20, x22, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1296)

# Testcase cp_sbox = 101
li x22, 0x6565656565656565 # initialize rs1
li x16, 0x6565656565656565 # initialize rs2
aes64esm x27, x22, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1304)

# Testcase cp_sbox = 102
li x28, 0x6666666666666666 # initialize rs1
li x21, 0x6666666666666666 # initialize rs2
aes64esm x10, x28, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1312)

# Testcase cp_sbox = 103
li x30, 0x6767676767676767 # initialize rs1
li x16, 0x6767676767676767 # initialize rs2
aes64esm x3, x30, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1320)

# Testcase cp_sbox = 104
li x28, 0x6868686868686868 # initialize rs1
li x31, 0x6868686868686868 # initialize rs2
aes64esm x22, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1328)

# Testcase cp_sbox = 105
li x6, 0x6969696969696969 # initialize rs1
li x14, 0x6969696969696969 # initialize rs2
aes64esm x31, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1336)

# Testcase cp_sbox = 106
li x10, 0x6a6a6a6a6a6a6a6a # initialize rs1
li x17, 0x6a6a6a6a6a6a6a6a # initialize rs2
aes64esm x25, x10, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1344)

# Testcase cp_sbox = 107
li x31, 0x6b6b6b6b6b6b6b6b # initialize rs1
li x24, 0x6b6b6b6b6b6b6b6b # initialize rs2
aes64esm x27, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1352)

# Testcase cp_sbox = 108
li x28, 0x6c6c6c6c6c6c6c6c # initialize rs1
li x25, 0x6c6c6c6c6c6c6c6c # initialize rs2
aes64esm x20, x28, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1360)

# Testcase cp_sbox = 109
li x8, 0x6d6d6d6d6d6d6d6d # initialize rs1
li x29, 0x6d6d6d6d6d6d6d6d # initialize rs2
aes64esm x25, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1368)

# Testcase cp_sbox = 110
li x28, 0x6e6e6e6e6e6e6e6e # initialize rs1
li x26, 0x6e6e6e6e6e6e6e6e # initialize rs2
aes64esm x29, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1376)

# Testcase cp_sbox = 111
li x20, 0x6f6f6f6f6f6f6f6f # initialize rs1
li x13, 0x6f6f6f6f6f6f6f6f # initialize rs2
aes64esm x1, x20, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1384)

# Testcase cp_sbox = 112
li x3, 0x7070707070707070 # initialize rs1
li x5, 0x7070707070707070 # initialize rs2
aes64esm x10, x3, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1392)

# Testcase cp_sbox = 113
li x20, 0x7171717171717171 # initialize rs1
li x5, 0x7171717171717171 # initialize rs2
aes64esm x22, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1400)

# Testcase cp_sbox = 114
li x5, 0x7272727272727272 # initialize rs1
li x16, 0x7272727272727272 # initialize rs2
aes64esm x3, x5, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1408)

# Testcase cp_sbox = 115
li x16, 0x7373737373737373 # initialize rs1
li x10, 0x7373737373737373 # initialize rs2
aes64esm x21, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1416)

# Testcase cp_sbox = 116
li x16, 0x7474747474747474 # initialize rs1
li x28, 0x7474747474747474 # initialize rs2
aes64esm x11, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1424)

# Testcase cp_sbox = 117
li x23, 0x7575757575757575 # initialize rs1
li x29, 0x7575757575757575 # initialize rs2
aes64esm x22, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1432)

# Testcase cp_sbox = 118
li x14, 0x7676767676767676 # initialize rs1
li x30, 0x7676767676767676 # initialize rs2
aes64esm x8, x14, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1440)

# Testcase cp_sbox = 119
li x23, 0x7777777777777777 # initialize rs1
li x13, 0x7777777777777777 # initialize rs2
aes64esm x27, x23, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1448)

# Testcase cp_sbox = 120
li x22, 0x7878787878787878 # initialize rs1
li x2, 0x7878787878787878 # initialize rs2
aes64esm x14, x22, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1456)

# Testcase cp_sbox = 121
li x24, 0x7979797979797979 # initialize rs1
li x23, 0x7979797979797979 # initialize rs2
aes64esm x5, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1464)

# Testcase cp_sbox = 122
li x2, 0x7a7a7a7a7a7a7a7a # initialize rs1
li x16, 0x7a7a7a7a7a7a7a7a # initialize rs2
aes64esm x5, x2, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1472)

# Testcase cp_sbox = 123
li x12, 0x7b7b7b7b7b7b7b7b # initialize rs1
li x3, 0x7b7b7b7b7b7b7b7b # initialize rs2
aes64esm x10, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1480)

# Testcase cp_sbox = 124
li x30, 0x7c7c7c7c7c7c7c7c # initialize rs1
li x25, 0x7c7c7c7c7c7c7c7c # initialize rs2
aes64esm x9, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1488)

# Testcase cp_sbox = 125
li x13, 0x7d7d7d7d7d7d7d7d # initialize rs1
li x25, 0x7d7d7d7d7d7d7d7d # initialize rs2
aes64esm x8, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1496)

# Testcase cp_sbox = 126
li x1, 0x7e7e7e7e7e7e7e7e # initialize rs1
li x19, 0x7e7e7e7e7e7e7e7e # initialize rs2
aes64esm x23, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1504)

# Testcase cp_sbox = 127
li x16, 0x7f7f7f7f7f7f7f7f # initialize rs1
li x18, 0x7f7f7f7f7f7f7f7f # initialize rs2
aes64esm x3, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1512)

# Testcase cp_sbox = 128
li x23, 0x8080808080808080 # initialize rs1
li x30, 0x8080808080808080 # initialize rs2
aes64esm x3, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1520)

# Testcase cp_sbox = 129
li x22, 0x8181818181818181 # initialize rs1
li x28, 0x8181818181818181 # initialize rs2
aes64esm x2, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1528)

# Testcase cp_sbox = 130
li x20, 0x8282828282828282 # initialize rs1
li x19, 0x8282828282828282 # initialize rs2
aes64esm x16, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1536)

# Testcase cp_sbox = 131
li x29, 0x8383838383838383 # initialize rs1
li x11, 0x8383838383838383 # initialize rs2
aes64esm x2, x29, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cp_sbox = 132
li x12, 0x8484848484848484 # initialize rs1
li x2, 0x8484848484848484 # initialize rs2
aes64esm x18, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1552)

# Testcase cp_sbox = 133
li x29, 0x8585858585858585 # initialize rs1
li x26, 0x8585858585858585 # initialize rs2
aes64esm x1, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1560)

# Testcase cp_sbox = 134
li x11, 0x8686868686868686 # initialize rs1
li x5, 0x8686868686868686 # initialize rs2
aes64esm x19, x11, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1568)

# Testcase cp_sbox = 135
li x3, 0x8787878787878787 # initialize rs1
li x21, 0x8787878787878787 # initialize rs2
aes64esm x28, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1576)

# Testcase cp_sbox = 136
li x19, 0x8888888888888888 # initialize rs1
li x18, 0x8888888888888888 # initialize rs2
aes64esm x17, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1584)

# Testcase cp_sbox = 137
li x19, 0x8989898989898989 # initialize rs1
li x10, 0x8989898989898989 # initialize rs2
aes64esm x28, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1592)

# Testcase cp_sbox = 138
li x17, 0x8a8a8a8a8a8a8a8a # initialize rs1
li x20, 0x8a8a8a8a8a8a8a8a # initialize rs2
aes64esm x28, x17, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1600)

# Testcase cp_sbox = 139
li x31, 0x8b8b8b8b8b8b8b8b # initialize rs1
li x10, 0x8b8b8b8b8b8b8b8b # initialize rs2
aes64esm x12, x31, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1608)

# Testcase cp_sbox = 140
li x31, 0x8c8c8c8c8c8c8c8c # initialize rs1
li x28, 0x8c8c8c8c8c8c8c8c # initialize rs2
aes64esm x29, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1616)

# Testcase cp_sbox = 141
li x17, 0x8d8d8d8d8d8d8d8d # initialize rs1
li x14, 0x8d8d8d8d8d8d8d8d # initialize rs2
aes64esm x27, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1624)

# Testcase cp_sbox = 142
li x6, 0x8e8e8e8e8e8e8e8e # initialize rs1
li x2, 0x8e8e8e8e8e8e8e8e # initialize rs2
aes64esm x7, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1632)

# Testcase cp_sbox = 143
li x2, 0x8f8f8f8f8f8f8f8f # initialize rs1
li x5, 0x8f8f8f8f8f8f8f8f # initialize rs2
aes64esm x15, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1640)

# Testcase cp_sbox = 144
li x31, 0x9090909090909090 # initialize rs1
li x11, 0x9090909090909090 # initialize rs2
aes64esm x6, x31, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1648)

# Testcase cp_sbox = 145
li x23, 0x9191919191919191 # initialize rs1
li x7, 0x9191919191919191 # initialize rs2
aes64esm x3, x23, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1656)

# Testcase cp_sbox = 146
li x28, 0x9292929292929292 # initialize rs1
li x30, 0x9292929292929292 # initialize rs2
aes64esm x10, x28, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1664)

# Testcase cp_sbox = 147
li x21, 0x9393939393939393 # initialize rs1
li x31, 0x9393939393939393 # initialize rs2
aes64esm x14, x21, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1672)

# Testcase cp_sbox = 148
li x13, 0x9494949494949494 # initialize rs1
li x5, 0x9494949494949494 # initialize rs2
aes64esm x9, x13, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1680)

# Testcase cp_sbox = 149
li x21, 0x9595959595959595 # initialize rs1
li x19, 0x9595959595959595 # initialize rs2
aes64esm x25, x21, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1688)

# Testcase cp_sbox = 150
li x23, 0x9696969696969696 # initialize rs1
li x16, 0x9696969696969696 # initialize rs2
aes64esm x9, x23, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1696)

# Testcase cp_sbox = 151
li x23, 0x9797979797979797 # initialize rs1
li x26, 0x9797979797979797 # initialize rs2
aes64esm x17, x23, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1704)

# Testcase cp_sbox = 152
li x12, 0x9898989898989898 # initialize rs1
li x21, 0x9898989898989898 # initialize rs2
aes64esm x3, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1712)

# Testcase cp_sbox = 153
li x25, 0x9999999999999999 # initialize rs1
li x27, 0x9999999999999999 # initialize rs2
aes64esm x5, x25, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1720)

# Testcase cp_sbox = 154
li x31, 0x9a9a9a9a9a9a9a9a # initialize rs1
li x12, 0x9a9a9a9a9a9a9a9a # initialize rs2
aes64esm x9, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1728)

# Testcase cp_sbox = 155
li x7, 0x9b9b9b9b9b9b9b9b # initialize rs1
li x25, 0x9b9b9b9b9b9b9b9b # initialize rs2
aes64esm x10, x7, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1736)

# Testcase cp_sbox = 156
li x22, 0x9c9c9c9c9c9c9c9c # initialize rs1
li x14, 0x9c9c9c9c9c9c9c9c # initialize rs2
aes64esm x1, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1744)

# Testcase cp_sbox = 157
li x26, 0x9d9d9d9d9d9d9d9d # initialize rs1
li x23, 0x9d9d9d9d9d9d9d9d # initialize rs2
aes64esm x7, x26, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1752)

# Testcase cp_sbox = 158
li x3, 0x9e9e9e9e9e9e9e9e # initialize rs1
li x30, 0x9e9e9e9e9e9e9e9e # initialize rs2
aes64esm x11, x3, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1760)

# Testcase cp_sbox = 159
li x31, 0x9f9f9f9f9f9f9f9f # initialize rs1
li x9, 0x9f9f9f9f9f9f9f9f # initialize rs2
aes64esm x1, x31, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1768)

# Testcase cp_sbox = 160
li x13, 0xa0a0a0a0a0a0a0a0 # initialize rs1
li x26, 0xa0a0a0a0a0a0a0a0 # initialize rs2
aes64esm x25, x13, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1776)

# Testcase cp_sbox = 161
li x20, 0xa1a1a1a1a1a1a1a1 # initialize rs1
li x19, 0xa1a1a1a1a1a1a1a1 # initialize rs2
aes64esm x21, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1784)

# Testcase cp_sbox = 162
li x24, 0xa2a2a2a2a2a2a2a2 # initialize rs1
li x13, 0xa2a2a2a2a2a2a2a2 # initialize rs2
aes64esm x8, x24, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cp_sbox = 163
li x30, 0xa3a3a3a3a3a3a3a3 # initialize rs1
li x19, 0xa3a3a3a3a3a3a3a3 # initialize rs2
aes64esm x23, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cp_sbox = 164
li x29, 0xa4a4a4a4a4a4a4a4 # initialize rs1
li x14, 0xa4a4a4a4a4a4a4a4 # initialize rs2
aes64esm x23, x29, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 8)

# Testcase cp_sbox = 165
li x15, 0xa5a5a5a5a5a5a5a5 # initialize rs1
li x5, 0xa5a5a5a5a5a5a5a5 # initialize rs2
aes64esm x26, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 16)

# Testcase cp_sbox = 166
li x30, 0xa6a6a6a6a6a6a6a6 # initialize rs1
li x2, 0xa6a6a6a6a6a6a6a6 # initialize rs2
aes64esm x18, x30, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 24)

# Testcase cp_sbox = 167
li x12, 0xa7a7a7a7a7a7a7a7 # initialize rs1
li x27, 0xa7a7a7a7a7a7a7a7 # initialize rs2
aes64esm x18, x12, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 32)

# Testcase cp_sbox = 168
li x2, 0xa8a8a8a8a8a8a8a8 # initialize rs1
li x28, 0xa8a8a8a8a8a8a8a8 # initialize rs2
aes64esm x1, x2, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 40)

# Testcase cp_sbox = 169
li x13, 0xa9a9a9a9a9a9a9a9 # initialize rs1
li x14, 0xa9a9a9a9a9a9a9a9 # initialize rs2
aes64esm x23, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 48)

# Testcase cp_sbox = 170
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
aes64esm x23, x17, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 56)

# Testcase cp_sbox = 171
li x3, 0xabababababababab # initialize rs1
li x17, 0xabababababababab # initialize rs2
aes64esm x27, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 64)

# Testcase cp_sbox = 172
li x29, 0xacacacacacacacac # initialize rs1
li x20, 0xacacacacacacacac # initialize rs2
aes64esm x25, x29, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 72)

# Testcase cp_sbox = 173
li x26, 0xadadadadadadadad # initialize rs1
li x31, 0xadadadadadadadad # initialize rs2
aes64esm x22, x26, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cp_sbox = 174
li x30, 0xaeaeaeaeaeaeaeae # initialize rs1
li x17, 0xaeaeaeaeaeaeaeae # initialize rs2
aes64esm x12, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 88)

# Testcase cp_sbox = 175
li x17, 0xafafafafafafafaf # initialize rs1
li x25, 0xafafafafafafafaf # initialize rs2
aes64esm x10, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 96)

# Testcase cp_sbox = 176
li x21, 0xb0b0b0b0b0b0b0b0 # initialize rs1
li x3, 0xb0b0b0b0b0b0b0b0 # initialize rs2
aes64esm x9, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 104)

# Testcase cp_sbox = 177
li x31, 0xb1b1b1b1b1b1b1b1 # initialize rs1
li x28, 0xb1b1b1b1b1b1b1b1 # initialize rs2
aes64esm x2, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_sbox = 178
li x20, 0xb2b2b2b2b2b2b2b2 # initialize rs1
li x21, 0xb2b2b2b2b2b2b2b2 # initialize rs2
aes64esm x14, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 120)

# Testcase cp_sbox = 179
li x21, 0xb3b3b3b3b3b3b3b3 # initialize rs1
li x7, 0xb3b3b3b3b3b3b3b3 # initialize rs2
aes64esm x2, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 128)

# Testcase cp_sbox = 180
li x27, 0xb4b4b4b4b4b4b4b4 # initialize rs1
li x10, 0xb4b4b4b4b4b4b4b4 # initialize rs2
aes64esm x21, x27, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 136)

# Testcase cp_sbox = 181
li x21, 0xb5b5b5b5b5b5b5b5 # initialize rs1
li x7, 0xb5b5b5b5b5b5b5b5 # initialize rs2
aes64esm x14, x21, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 144)

# Testcase cp_sbox = 182
li x20, 0xb6b6b6b6b6b6b6b6 # initialize rs1
li x26, 0xb6b6b6b6b6b6b6b6 # initialize rs2
aes64esm x27, x20, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 152)

# Testcase cp_sbox = 183
li x19, 0xb7b7b7b7b7b7b7b7 # initialize rs1
li x29, 0xb7b7b7b7b7b7b7b7 # initialize rs2
aes64esm x13, x19, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 160)

# Testcase cp_sbox = 184
li x3, 0xb8b8b8b8b8b8b8b8 # initialize rs1
li x7, 0xb8b8b8b8b8b8b8b8 # initialize rs2
aes64esm x2, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 168)

# Testcase cp_sbox = 185
li x16, 0xb9b9b9b9b9b9b9b9 # initialize rs1
li x2, 0xb9b9b9b9b9b9b9b9 # initialize rs2
aes64esm x23, x16, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 176)

# Testcase cp_sbox = 186
li x22, 0xbabababababababa # initialize rs1
li x11, 0xbabababababababa # initialize rs2
aes64esm x7, x22, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 184)

# Testcase cp_sbox = 187
li x22, 0xbbbbbbbbbbbbbbbb # initialize rs1
li x20, 0xbbbbbbbbbbbbbbbb # initialize rs2
aes64esm x21, x22, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 192)

# Testcase cp_sbox = 188
li x23, 0xbcbcbcbcbcbcbcbc # initialize rs1
li x14, 0xbcbcbcbcbcbcbcbc # initialize rs2
aes64esm x17, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_sbox = 189
li x29, 0xbdbdbdbdbdbdbdbd # initialize rs1
li x2, 0xbdbdbdbdbdbdbdbd # initialize rs2
aes64esm x30, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 208)

# Testcase cp_sbox = 190
li x27, 0xbebebebebebebebe # initialize rs1
li x3, 0xbebebebebebebebe # initialize rs2
aes64esm x22, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 216)

# Testcase cp_sbox = 191
li x19, 0xbfbfbfbfbfbfbfbf # initialize rs1
li x13, 0xbfbfbfbfbfbfbfbf # initialize rs2
aes64esm x6, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_sbox = 192
li x12, 0xc0c0c0c0c0c0c0c0 # initialize rs1
li x25, 0xc0c0c0c0c0c0c0c0 # initialize rs2
aes64esm x20, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 232)

# Testcase cp_sbox = 193
li x23, 0xc1c1c1c1c1c1c1c1 # initialize rs1
li x18, 0xc1c1c1c1c1c1c1c1 # initialize rs2
aes64esm x30, x23, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 240)

# Testcase cp_sbox = 194
li x17, 0xc2c2c2c2c2c2c2c2 # initialize rs1
li x26, 0xc2c2c2c2c2c2c2c2 # initialize rs2
aes64esm x23, x17, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 248)

# Testcase cp_sbox = 195
li x13, 0xc3c3c3c3c3c3c3c3 # initialize rs1
li x16, 0xc3c3c3c3c3c3c3c3 # initialize rs2
aes64esm x25, x13, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 256)

# Testcase cp_sbox = 196
li x18, 0xc4c4c4c4c4c4c4c4 # initialize rs1
li x3, 0xc4c4c4c4c4c4c4c4 # initialize rs2
aes64esm x24, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 264)

# Testcase cp_sbox = 197
li x10, 0xc5c5c5c5c5c5c5c5 # initialize rs1
li x23, 0xc5c5c5c5c5c5c5c5 # initialize rs2
aes64esm x14, x10, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 272)

# Testcase cp_sbox = 198
li x28, 0xc6c6c6c6c6c6c6c6 # initialize rs1
li x26, 0xc6c6c6c6c6c6c6c6 # initialize rs2
aes64esm x27, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cp_sbox = 199
li x15, 0xc7c7c7c7c7c7c7c7 # initialize rs1
li x2, 0xc7c7c7c7c7c7c7c7 # initialize rs2
aes64esm x23, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 288)

# Testcase cp_sbox = 200
li x22, 0xc8c8c8c8c8c8c8c8 # initialize rs1
li x13, 0xc8c8c8c8c8c8c8c8 # initialize rs2
aes64esm x17, x22, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 296)

# Testcase cp_sbox = 201
li x6, 0xc9c9c9c9c9c9c9c9 # initialize rs1
li x14, 0xc9c9c9c9c9c9c9c9 # initialize rs2
aes64esm x25, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 304)

# Testcase cp_sbox = 202
li x24, 0xcacacacacacacaca # initialize rs1
li x21, 0xcacacacacacacaca # initialize rs2
aes64esm x3, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 312)

# Testcase cp_sbox = 203
li x11, 0xcbcbcbcbcbcbcbcb # initialize rs1
li x30, 0xcbcbcbcbcbcbcbcb # initialize rs2
aes64esm x22, x11, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 320)

# Testcase cp_sbox = 204
li x17, 0xcccccccccccccccc # initialize rs1
li x15, 0xcccccccccccccccc # initialize rs2
aes64esm x26, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 328)

# Testcase cp_sbox = 205
li x24, 0xcdcdcdcdcdcdcdcd # initialize rs1
li x20, 0xcdcdcdcdcdcdcdcd # initialize rs2
aes64esm x22, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 336)

# Testcase cp_sbox = 206
li x15, 0xcececececececece # initialize rs1
li x13, 0xcececececececece # initialize rs2
aes64esm x1, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 344)

# Testcase cp_sbox = 207
li x19, 0xcfcfcfcfcfcfcfcf # initialize rs1
li x24, 0xcfcfcfcfcfcfcfcf # initialize rs2
aes64esm x9, x19, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 352)

# Testcase cp_sbox = 208
li x9, 0xd0d0d0d0d0d0d0d0 # initialize rs1
li x24, 0xd0d0d0d0d0d0d0d0 # initialize rs2
aes64esm x14, x9, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 360)

# Testcase cp_sbox = 209
li x28, 0xd1d1d1d1d1d1d1d1 # initialize rs1
li x29, 0xd1d1d1d1d1d1d1d1 # initialize rs2
aes64esm x1, x28, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 368)

# Testcase cp_sbox = 210
li x24, 0xd2d2d2d2d2d2d2d2 # initialize rs1
li x5, 0xd2d2d2d2d2d2d2d2 # initialize rs2
aes64esm x18, x24, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 376)

# Testcase cp_sbox = 211
li x25, 0xd3d3d3d3d3d3d3d3 # initialize rs1
li x9, 0xd3d3d3d3d3d3d3d3 # initialize rs2
aes64esm x13, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 384)

# Testcase cp_sbox = 212
li x10, 0xd4d4d4d4d4d4d4d4 # initialize rs1
li x1, 0xd4d4d4d4d4d4d4d4 # initialize rs2
aes64esm x31, x10, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 392)

# Testcase cp_sbox = 213
li x8, 0xd5d5d5d5d5d5d5d5 # initialize rs1
li x23, 0xd5d5d5d5d5d5d5d5 # initialize rs2
aes64esm x18, x8, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 400)

# Testcase cp_sbox = 214
li x27, 0xd6d6d6d6d6d6d6d6 # initialize rs1
li x3, 0xd6d6d6d6d6d6d6d6 # initialize rs2
aes64esm x12, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 408)

# Testcase cp_sbox = 215
li x17, 0xd7d7d7d7d7d7d7d7 # initialize rs1
li x9, 0xd7d7d7d7d7d7d7d7 # initialize rs2
aes64esm x25, x17, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 416)

# Testcase cp_sbox = 216
li x16, 0xd8d8d8d8d8d8d8d8 # initialize rs1
li x24, 0xd8d8d8d8d8d8d8d8 # initialize rs2
aes64esm x11, x16, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 424)

# Testcase cp_sbox = 217
li x20, 0xd9d9d9d9d9d9d9d9 # initialize rs1
li x17, 0xd9d9d9d9d9d9d9d9 # initialize rs2
aes64esm x12, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 432)

# Testcase cp_sbox = 218
li x8, 0xdadadadadadadada # initialize rs1
li x13, 0xdadadadadadadada # initialize rs2
aes64esm x30, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 440)

# Testcase cp_sbox = 219
li x17, 0xdbdbdbdbdbdbdbdb # initialize rs1
li x5, 0xdbdbdbdbdbdbdbdb # initialize rs2
aes64esm x19, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 448)

# Testcase cp_sbox = 220
li x18, 0xdcdcdcdcdcdcdcdc # initialize rs1
li x27, 0xdcdcdcdcdcdcdcdc # initialize rs2
aes64esm x30, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 456)

# Testcase cp_sbox = 221
li x22, 0xdddddddddddddddd # initialize rs1
li x17, 0xdddddddddddddddd # initialize rs2
aes64esm x28, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cp_sbox = 222
li x25, 0xdededededededede # initialize rs1
li x11, 0xdededededededede # initialize rs2
aes64esm x29, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cp_sbox = 223
li x29, 0xdfdfdfdfdfdfdfdf # initialize rs1
li x2, 0xdfdfdfdfdfdfdfdf # initialize rs2
aes64esm x27, x29, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 480)

# Testcase cp_sbox = 224
li x6, 0xe0e0e0e0e0e0e0e0 # initialize rs1
li x15, 0xe0e0e0e0e0e0e0e0 # initialize rs2
aes64esm x18, x6, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 488)

# Testcase cp_sbox = 225
li x24, 0xe1e1e1e1e1e1e1e1 # initialize rs1
li x29, 0xe1e1e1e1e1e1e1e1 # initialize rs2
aes64esm x2, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 496)

# Testcase cp_sbox = 226
li x7, 0xe2e2e2e2e2e2e2e2 # initialize rs1
li x12, 0xe2e2e2e2e2e2e2e2 # initialize rs2
aes64esm x26, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 504)

# Testcase cp_sbox = 227
li x25, 0xe3e3e3e3e3e3e3e3 # initialize rs1
li x16, 0xe3e3e3e3e3e3e3e3 # initialize rs2
aes64esm x18, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 512)

# Testcase cp_sbox = 228
li x8, 0xe4e4e4e4e4e4e4e4 # initialize rs1
li x13, 0xe4e4e4e4e4e4e4e4 # initialize rs2
aes64esm x10, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 520)

# Testcase cp_sbox = 229
li x21, 0xe5e5e5e5e5e5e5e5 # initialize rs1
li x25, 0xe5e5e5e5e5e5e5e5 # initialize rs2
aes64esm x26, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 528)

# Testcase cp_sbox = 230
li x23, 0xe6e6e6e6e6e6e6e6 # initialize rs1
li x6, 0xe6e6e6e6e6e6e6e6 # initialize rs2
aes64esm x31, x23, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 536)

# Testcase cp_sbox = 231
li x10, 0xe7e7e7e7e7e7e7e7 # initialize rs1
li x27, 0xe7e7e7e7e7e7e7e7 # initialize rs2
aes64esm x9, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 544)

# Testcase cp_sbox = 232
li x22, 0xe8e8e8e8e8e8e8e8 # initialize rs1
li x14, 0xe8e8e8e8e8e8e8e8 # initialize rs2
aes64esm x31, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 552)

# Testcase cp_sbox = 233
li x19, 0xe9e9e9e9e9e9e9e9 # initialize rs1
li x6, 0xe9e9e9e9e9e9e9e9 # initialize rs2
aes64esm x20, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 560)

# Testcase cp_sbox = 234
li x13, 0xeaeaeaeaeaeaeaea # initialize rs1
li x20, 0xeaeaeaeaeaeaeaea # initialize rs2
aes64esm x15, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 568)

# Testcase cp_sbox = 235
li x30, 0xebebebebebebebeb # initialize rs1
li x8, 0xebebebebebebebeb # initialize rs2
aes64esm x27, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 576)

# Testcase cp_sbox = 236
li x2, 0xecececececececec # initialize rs1
li x5, 0xecececececececec # initialize rs2
aes64esm x23, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 584)

# Testcase cp_sbox = 237
li x27, 0xedededededededed # initialize rs1
li x6, 0xedededededededed # initialize rs2
aes64esm x16, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 592)

# Testcase cp_sbox = 238
li x25, 0xeeeeeeeeeeeeeeee # initialize rs1
li x3, 0xeeeeeeeeeeeeeeee # initialize rs2
aes64esm x9, x25, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 600)

# Testcase cp_sbox = 239
li x9, 0xefefefefefefefef # initialize rs1
li x21, 0xefefefefefefefef # initialize rs2
aes64esm x3, x9, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 608)

# Testcase cp_sbox = 240
li x1, 0xf0f0f0f0f0f0f0f0 # initialize rs1
li x22, 0xf0f0f0f0f0f0f0f0 # initialize rs2
aes64esm x13, x1, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_sbox = 241
li x17, 0xf1f1f1f1f1f1f1f1 # initialize rs1
li x14, 0xf1f1f1f1f1f1f1f1 # initialize rs2
aes64esm x21, x17, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 624)

# Testcase cp_sbox = 242
li x14, 0xf2f2f2f2f2f2f2f2 # initialize rs1
li x7, 0xf2f2f2f2f2f2f2f2 # initialize rs2
aes64esm x16, x14, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 632)

# Testcase cp_sbox = 243
li x20, 0xf3f3f3f3f3f3f3f3 # initialize rs1
li x22, 0xf3f3f3f3f3f3f3f3 # initialize rs2
aes64esm x12, x20, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 640)

# Testcase cp_sbox = 244
li x15, 0xf4f4f4f4f4f4f4f4 # initialize rs1
li x24, 0xf4f4f4f4f4f4f4f4 # initialize rs2
aes64esm x13, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 648)

# Testcase cp_sbox = 245
li x25, 0xf5f5f5f5f5f5f5f5 # initialize rs1
li x31, 0xf5f5f5f5f5f5f5f5 # initialize rs2
aes64esm x12, x25, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 656)

# Testcase cp_sbox = 246
li x2, 0xf6f6f6f6f6f6f6f6 # initialize rs1
li x3, 0xf6f6f6f6f6f6f6f6 # initialize rs2
aes64esm x11, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 664)

# Testcase cp_sbox = 247
li x3, 0xf7f7f7f7f7f7f7f7 # initialize rs1
li x21, 0xf7f7f7f7f7f7f7f7 # initialize rs2
aes64esm x23, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 672)

# Testcase cp_sbox = 248
li x31, 0xf8f8f8f8f8f8f8f8 # initialize rs1
li x28, 0xf8f8f8f8f8f8f8f8 # initialize rs2
aes64esm x18, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 680)

# Testcase cp_sbox = 249
li x11, 0xf9f9f9f9f9f9f9f9 # initialize rs1
li x25, 0xf9f9f9f9f9f9f9f9 # initialize rs2
aes64esm x5, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 688)

# Testcase cp_sbox = 250
li x20, 0xfafafafafafafafa # initialize rs1
li x17, 0xfafafafafafafafa # initialize rs2
aes64esm x19, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 696)

# Testcase cp_sbox = 251
li x31, 0xfbfbfbfbfbfbfbfb # initialize rs1
li x29, 0xfbfbfbfbfbfbfbfb # initialize rs2
aes64esm x3, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 704)

# Testcase cp_sbox = 252
li x11, 0xfcfcfcfcfcfcfcfc # initialize rs1
li x25, 0xfcfcfcfcfcfcfcfc # initialize rs2
aes64esm x23, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 712)

# Testcase cp_sbox = 253
li x29, 0xfdfdfdfdfdfdfdfd # initialize rs1
li x25, 0xfdfdfdfdfdfdfdfd # initialize rs2
aes64esm x18, x29, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 720)

# Testcase cp_sbox = 254
li x2, 0xfefefefefefefefe # initialize rs1
li x1, 0xfefefefefefefefe # initialize rs2
aes64esm x27, x2, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_sbox = 255
li x24, 0xffffffffffffffff # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
aes64esm x9, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 736)

#.EQU SIGSIZE,6144
.EQU SIGSIZE,17368 #combined


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
