///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/Zba/WALLY-COV-sh2add.uw.S
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
li x0, 0xb9bafc7c0a26c60b # initialize rs1
li x9, 0x971f5e60f5bd7fb7 # initialize rs2
sh2add.uw x23, x0, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x6d68a19753103618 # initialize rs1
li x30, 0x3551d720da1cbd60 # initialize rs2
sh2add.uw x10, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0xeb4cf06972474661 # initialize rs1
li x5, 0x0d78c67d56a5b22f # initialize rs2
sh2add.uw x19, x2, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0x65c393caf162e2c0 # initialize rs1
li x16, 0x6f5ce7dab61c3c24 # initialize rs2
sh2add.uw x7, x3, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xb8c5d7d04e7bc790 # initialize rs1
li x16, 0x29249b6ce0eaf772 # initialize rs2
sh2add.uw x11, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x6f610bb62082e91d # initialize rs1
li x8, 0x6c9b53f95a807222 # initialize rs2
sh2add.uw x16, x5, x8 # perform operation
RVTEST_SIGUPD(x6, x0, x16, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1f78e94619f59a48 # initialize rs1
li x26, 0x31360c596f1f8fee # initialize rs2
sh2add.uw x30, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x30, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xc86da6ea431a745f # initialize rs1
li x24, 0x1aa2968449809077 # initialize rs2
sh2add.uw x12, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x2a5a222d91b22847 # initialize rs1
li x2, 0xb22dbefcbc79c01f # initialize rs2
sh2add.uw x18, x8, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x37e4643c759f5f63 # initialize rs1
li x30, 0x079f629e97619c24 # initialize rs2
sh2add.uw x12, x9, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0xb15cb25b860be62f # initialize rs1
li x28, 0x56b4e75876fcfabc # initialize rs2
sh2add.uw x19, x10, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x7228fa2138c371f2 # initialize rs1
li x28, 0x43dcceaa4a86cca5 # initialize rs2
sh2add.uw x6, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xda938afcfa70c5f9 # initialize rs1
li x18, 0x496ab88906e8902c # initialize rs2
sh2add.uw x3, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0xcdd7566d058f9a85 # initialize rs1
li x15, 0x917731b797970c86 # initialize rs2
sh2add.uw x21, x13, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0xcdeae669d0584c37 # initialize rs1
li x18, 0x3169f6271c45a9ee # initialize rs2
sh2add.uw x27, x14, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0xe716aa098091038b # initialize rs1
li x23, 0x41cf1c0e9fff273e # initialize rs2
sh2add.uw x1, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0xc97e2d718f2e139e # initialize rs1
li x10, 0x542069b1b3a9cdad # initialize rs2
sh2add.uw x21, x16, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x8689904e3aaaf6e1 # initialize rs1
li x2, 0x56a57fea80153428 # initialize rs2
sh2add.uw x19, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0xb77dec9ee897bd97 # initialize rs1
li x31, 0x072f9572990609cc # initialize rs2
sh2add.uw x29, x18, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0x2a94a320e25c0720 # initialize rs1
li x25, 0x0ea796ee84c8f180 # initialize rs2
sh2add.uw x26, x19, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xed97fe127c52226f # initialize rs1
li x5, 0x023664f700087562 # initialize rs2
sh2add.uw x26, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xeceed7facf004a98 # initialize rs1
li x15, 0xa3088b84de9ac199 # initialize rs2
sh2add.uw x24, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x81f04217cdd62760 # initialize rs1
li x23, 0xbad59a926a9b8962 # initialize rs2
sh2add.uw x24, x22, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x1062a86368d4c042 # initialize rs1
li x30, 0xcda07c73bd545378 # initialize rs2
sh2add.uw x26, x23, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xbaeec9b44ab45af6 # initialize rs1
li x26, 0xd7737a6f441b7c5f # initialize rs2
sh2add.uw x29, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x061e4c8211eff225 # initialize rs1
li x18, 0xa72d34314be63266 # initialize rs2
sh2add.uw x20, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0x13e8b9742f05c479 # initialize rs1
li x14, 0x0a304edb7f2d8eb0 # initialize rs2
sh2add.uw x10, x26, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0x219738073d2c7d33 # initialize rs1
li x7, 0xabf5fdc307a543ad # initialize rs2
sh2add.uw x10, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0xc84c38de9febb654 # initialize rs1
li x13, 0x52f2fbeb97f1e268 # initialize rs2
sh2add.uw x1, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0xe08d40ba48c6f833 # initialize rs1
li x12, 0x98c7f5bbb0f04210 # initialize rs2
sh2add.uw x2, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0x6f2106d99edaebd5 # initialize rs1
li x19, 0xef9dc256d65232f5 # initialize rs2
sh2add.uw x12, x30, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x29b1dfd28d7b3176 # initialize rs1
li x18, 0xdb938951ae104ee2 # initialize rs2
sh2add.uw x7, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x25, 0x430101f5c6c807c9 # initialize rs1
li x0, 0x3d9f416c29c0f9ec # initialize rs2
sh2add.uw x20, x25, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x12, 0x14d3567287c69d0c # initialize rs1
li x1, 0x5863d70a80154795 # initialize rs2
sh2add.uw x26, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x12, 0x37ecd566d3c8efce # initialize rs1
li x2, 0x12b58cf394f357a7 # initialize rs2
sh2add.uw x18, x12, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x27, 0x4d88508fbfabbb94 # initialize rs1
li x3, 0x854f6846315b5516 # initialize rs2
sh2add.uw x22, x27, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x9, 0xb2fad4c53aa1cd75 # initialize rs1
li x4, 0xd3398c49ad52102a # initialize rs2
sh2add.uw x22, x9, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x15, 0xd2315c9455e38a15 # initialize rs1
li x5, 0x31fec0cf9577b2d9 # initialize rs2
sh2add.uw x20, x15, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x20, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x4, x6 # switch signature pointer register to avoid conflict with test
li x7, 0xc83f98408dc89c6b # initialize rs1
li x6, 0x79120f79eed11fbd # initialize rs2
sh2add.uw x3, x7, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
li x31, 0x7954ab35dc4d1311 # initialize rs1
li x7, 0x762d809bedcb8733 # initialize rs2
sh2add.uw x27, x31, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x23, 0xb2b2c6e8ed3f1cb1 # initialize rs1
li x8, 0x9e17ad1197bf7e85 # initialize rs2
sh2add.uw x24, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x28, 0xd732ea973a98bb21 # initialize rs1
li x9, 0x68f3d54a0c80d627 # initialize rs2
sh2add.uw x3, x28, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x29, 0x394e29e247bd1a4c # initialize rs1
li x10, 0x73660bcb01461c6d # initialize rs2
sh2add.uw x28, x29, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x8, 0xf9626d3a208a42c1 # initialize rs1
li x11, 0x9a804356ecc14420 # initialize rs2
sh2add.uw x6, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x10, 0xe2a203458cb338c0 # initialize rs1
li x12, 0x7440074ae84ed4b4 # initialize rs2
sh2add.uw x13, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x8, 0x5a2dad0dee893705 # initialize rs1
li x13, 0x832b7d3066db386d # initialize rs2
sh2add.uw x7, x8, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x6, 0x2fe3fd3d5f9659b5 # initialize rs1
li x14, 0x95e1de36c6c34437 # initialize rs2
sh2add.uw x1, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x31, 0x53acebab971f7142 # initialize rs1
li x15, 0xd44df536a873aae9 # initialize rs2
sh2add.uw x3, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x1, 0xe1692f0f3f0b8146 # initialize rs1
li x16, 0x4f4383b24eecba59 # initialize rs2
sh2add.uw x29, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x29, 0x51f004ead67b4596 # initialize rs1
li x17, 0x44296d2511a45ace # initialize rs2
sh2add.uw x8, x29, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x25, 0x944ed4cfae6af088 # initialize rs1
li x18, 0x4c740e31f48c3b02 # initialize rs2
sh2add.uw x23, x25, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x1, 0x5315bf2978f4a40d # initialize rs1
li x19, 0x577efb3a7f041cdc # initialize rs2
sh2add.uw x6, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x21, 0xa497889a71c0e7c0 # initialize rs1
li x20, 0xafb7fa3bcc4abbea # initialize rs2
sh2add.uw x7, x21, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x11, 0xeddc704cbce2ecbc # initialize rs1
li x21, 0xeda9e221eb74cd02 # initialize rs2
sh2add.uw x9, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x24, 0x134409ca93a9ad47 # initialize rs1
li x22, 0x996c175ad1b1992e # initialize rs2
sh2add.uw x5, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x19, 0x8181bfe6493f87d9 # initialize rs1
li x23, 0x962e606c6f071c85 # initialize rs2
sh2add.uw x3, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x29, 0xc7807b4c329830b1 # initialize rs1
li x24, 0xc580d94bf2b0f069 # initialize rs2
sh2add.uw x10, x29, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x13, 0x53c7bd3d71509292 # initialize rs1
li x25, 0xf644386aed6fcc05 # initialize rs2
sh2add.uw x1, x13, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x24, 0x6222d733457c5878 # initialize rs1
li x26, 0x13a8797687184480 # initialize rs2
sh2add.uw x29, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x24, 0xbf8a8261b42ddbdb # initialize rs1
li x27, 0xa430950283a1b488 # initialize rs2
sh2add.uw x16, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x18, 0x7d72eb8340f6c910 # initialize rs1
li x28, 0xcafc4ab5bc2c14aa # initialize rs2
sh2add.uw x22, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x14, 0x432584c9f50d4ae9 # initialize rs1
li x29, 0x36a554e2ce70ebd2 # initialize rs2
sh2add.uw x20, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x2, 0x6658dc400f1f7ecb # initialize rs1
li x30, 0xcf0fc00d4ef8ed5e # initialize rs2
sh2add.uw x26, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x3, 0x51d379a49481e39a # initialize rs1
li x31, 0xb81927437fa4b0ad # initialize rs2
sh2add.uw x12, x3, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 504)

# Testcase cp_rd (Test destination rd = x0)
li x15, 0x0e87510b7e4e9e91 # initialize rs1
li x11, 0x62f42a3c47bb84ff # initialize rs2
sh2add.uw x0, x15, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x15, 0xa6e1dd9bdbfc31f0 # initialize rs1
li x5, 0x3cddd68bdddcd679 # initialize rs2
sh2add.uw x1, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x26, 0x0ecd297f16270c65 # initialize rs1
li x10, 0xc00808b72bb07718 # initialize rs2
sh2add.uw x2, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x24, 0x5e2fc6c949e569d0 # initialize rs1
li x29, 0xa8d4e29a37fc0dfb # initialize rs2
sh2add.uw x3, x24, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x23, 0xcb454cac577ae682 # initialize rs1
li x8, 0x679a88e58a3f903c # initialize rs2
sh2add.uw x4, x23, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0x9c8bfb13e474e68b # initialize rs1
li x22, 0xb9c0fd559211de40 # initialize rs2
sh2add.uw x5, x19, x22 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x22, 0x683737c69c022064 # initialize rs1
li x8, 0x3dc5e3c4393f3fe2 # initialize rs2
sh2add.uw x6, x22, x8 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x5, x7 # switch signature pointer register to avoid conflict with test
li x21, 0x78db28b13d64f6a7 # initialize rs1
li x4, 0x7680ab49b4b37982 # initialize rs2
sh2add.uw x7, x21, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x7, 0x193f669fc75b87cc # initialize rs1
li x16, 0xa638ea682276ae3a # initialize rs2
sh2add.uw x8, x7, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x19, 0x19a6438231990cda # initialize rs1
li x2, 0x6657ca408dd38d18 # initialize rs2
sh2add.uw x9, x19, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x11, 0xdcc03d7637147caf # initialize rs1
li x22, 0x40b46eacf9427363 # initialize rs2
sh2add.uw x10, x11, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x3, 0xfb3118c28c6747e6 # initialize rs1
li x22, 0x2ad93e2c4ecb3139 # initialize rs2
sh2add.uw x11, x3, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x8, 0xdcf10cba9e939865 # initialize rs1
li x11, 0x4947a1d9827d6140 # initialize rs2
sh2add.uw x12, x8, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x9, 0x5667503f9a533f40 # initialize rs1
li x16, 0x1231aef81eb45afa # initialize rs2
sh2add.uw x13, x9, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x22, 0x02932cdf4db53eee # initialize rs1
li x23, 0xc774197338a6150b # initialize rs2
sh2add.uw x14, x22, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x13, 0x6f67650553dd5096 # initialize rs1
li x10, 0x9313d529a4cd0271 # initialize rs2
sh2add.uw x15, x13, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x10, 0x29c05abdd446e87d # initialize rs1
li x13, 0x52941cd16a80a603 # initialize rs2
sh2add.uw x16, x10, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x11, 0x3be4435d3d9b5209 # initialize rs1
li x8, 0xa6d2eaa9204480cf # initialize rs2
sh2add.uw x17, x11, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x17, 0x6a007bc352b65526 # initialize rs1
li x9, 0xd56d8692ee708daf # initialize rs2
sh2add.uw x18, x17, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x6, 0x8190d8bcc75ba629 # initialize rs1
li x18, 0x02eeb568c326e7f8 # initialize rs2
sh2add.uw x19, x6, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x1, 0x8eee8411450f6f49 # initialize rs1
li x4, 0x2ff76912afb72455 # initialize rs2
sh2add.uw x20, x1, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x17, 0x2693f2ee2e942272 # initialize rs1
li x22, 0x69354ec29af48eef # initialize rs2
sh2add.uw x21, x17, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x21, 0x2248e3b243831871 # initialize rs1
li x19, 0x68ac89fb4bdebf23 # initialize rs2
sh2add.uw x22, x21, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x13, 0x16bd89c349fdbee3 # initialize rs1
li x24, 0x5e4b3679c53a08da # initialize rs2
sh2add.uw x23, x13, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x29, 0x420f9a0702afbe8d # initialize rs1
li x15, 0xd35e82d72382ce2a # initialize rs2
sh2add.uw x24, x29, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x1, 0x529be31b92409894 # initialize rs1
li x10, 0x7ae26fbf63d4ae54 # initialize rs2
sh2add.uw x25, x1, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x7, 0xb0f9ef7228920503 # initialize rs1
li x14, 0xc5ec5d0fb93c0520 # initialize rs2
sh2add.uw x26, x7, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x28, 0x616975477e1675d7 # initialize rs1
li x20, 0xfb0e93ba5af609e4 # initialize rs2
sh2add.uw x27, x28, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x16, 0x1c3c6e0ad41245b5 # initialize rs1
li x9, 0x3fb781139baba434 # initialize rs2
sh2add.uw x28, x16, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x24, 0x1b2882d678c73ce5 # initialize rs1
li x20, 0x14a1016f4b017d9b # initialize rs2
sh2add.uw x29, x24, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x18, 0xd1b9971ceb7b886e # initialize rs1
li x4, 0xe4e3090391d31246 # initialize rs2
sh2add.uw x30, x18, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x18, 0xf1237bba73e03be3 # initialize rs1
li x14, 0x79663f0aa24f2f22 # initialize rs2
sh2add.uw x31, x18, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x7, 0x0000000000000000 # initialize rs1
li x15, 0x5377664bb36efdc9 # initialize rs2
sh2add.uw x31, x7, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x25, 0x0000000000000001 # initialize rs1
li x24, 0x69595009ed281282 # initialize rs2
sh2add.uw x16, x25, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x30, 0x0000000000000002 # initialize rs1
li x28, 0x053134d0ec71d35e # initialize rs2
sh2add.uw x2, x30, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x25, 0x8000000000000000 # initialize rs1
li x24, 0x12b9f26e27bebed2 # initialize rs2
sh2add.uw x2, x25, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x1, 0x8000000000000001 # initialize rs1
li x3, 0x1558a98636a473e7 # initialize rs2
sh2add.uw x18, x1, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x8, 0x7fffffffffffffff # initialize rs1
li x15, 0xec9ee93fae359d69 # initialize rs2
sh2add.uw x14, x8, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x24, 0x7ffffffffffffffe # initialize rs1
li x19, 0x81cd7c259dc250af # initialize rs2
sh2add.uw x29, x24, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x7, 0xffffffffffffffff # initialize rs1
li x15, 0xf867b8e8a667a64d # initialize rs2
sh2add.uw x29, x7, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x6, 0xfffffffffffffffe # initialize rs1
li x13, 0x4f50ee9e2d3ee846 # initialize rs2
sh2add.uw x15, x6, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0xb5a7060bbf77c0a9 # initialize rs2
sh2add.uw x19, x18, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x05385dbb559b7380 # initialize rs2
sh2add.uw x17, x29, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x21, 0x5555555555555555 # initialize rs1
li x16, 0x31de8d6840ca7a19 # initialize rs2
sh2add.uw x25, x21, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x12, 0x00000000ffffffff # initialize rs1
li x28, 0x143ee0c3387d1e55 # initialize rs2
sh2add.uw x3, x12, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x4, 0x00000000fffffffe # initialize rs1
li x31, 0x3d195868b178844a # initialize rs2
sh2add.uw x16, x4, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x17, 0x0000000100000000 # initialize rs1
li x31, 0x3989305a82b27cdd # initialize rs2
sh2add.uw x29, x17, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x19, 0x0000000100000001 # initialize rs1
li x29, 0x78591ed1691c3880 # initialize rs2
sh2add.uw x1, x19, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x18, 0xddc3c2653ca8f934 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
sh2add.uw x22, x18, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x17, 0x28f5b1df2ebaac68 # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
sh2add.uw x14, x17, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x9, 0x7b6be843c8d296c0 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
sh2add.uw x12, x9, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x16, 0x4d479f70c8d82ef6 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
sh2add.uw x18, x16, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x17, 0x6e9b1052f98f4d0b # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
sh2add.uw x3, x17, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x17, 0x92b367c99d0095ca # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
sh2add.uw x6, x17, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x2, 0x20a16a9abc4749ca # initialize rs1
li x29, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x26, x2, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x19, 0x24d746625418d15a # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sh2add.uw x18, x19, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x9, 0x0ff1b7b60616eeb6 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sh2add.uw x30, x9, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x30, 0x46487a7e6e7424fd # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x20, x30, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x2, 0xcd956eece1be99f9 # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x15, x2, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x24, 0x36ea5f9bd8f28d01 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
sh2add.uw x8, x24, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x29, 0x30e17b840f6db895 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
sh2add.uw x17, x29, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x28, 0x668c311992e11302 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
sh2add.uw x4, x28, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x22, 0xc98608ec6831bec8 # initialize rs1
li x30, 0x0000000100000000 # initialize rs2
sh2add.uw x23, x22, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x22, 0xe2af9d0200fdc576 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
sh2add.uw x21, x22, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x11, 0x0000000000000000 # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
sh2add.uw x19, x11, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x8, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
sh2add.uw x11, x8, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x31, 0x0000000000000000 # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
sh2add.uw x26, x31, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x20, 0x0000000000000000 # initialize rs1
li x19, 0x8000000000000000 # initialize rs2
sh2add.uw x14, x20, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x17, 0x0000000000000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sh2add.uw x9, x17, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x2, 0x0000000000000000 # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
sh2add.uw x19, x2, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000000000000 # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x9, x27, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x23, 0x0000000000000000 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
sh2add.uw x6, x23, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000000000000 # initialize rs1
li x6, 0xfffffffffffffffe # initialize rs2
sh2add.uw x22, x14, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x11, 0x0000000000000000 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x10, x11, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x0000000000000000 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x21, x30, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x2, 0x0000000000000000 # initialize rs1
li x18, 0x5555555555555555 # initialize rs2
sh2add.uw x25, x2, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x31, 0x0000000000000000 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
sh2add.uw x29, x31, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x30, 0x0000000000000000 # initialize rs1
li x3, 0x00000000fffffffe # initialize rs2
sh2add.uw x16, x30, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x20, 0x0000000000000000 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
sh2add.uw x24, x20, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x1, 0x0000000000000000 # initialize rs1
li x2, 0x0000000100000001 # initialize rs2
sh2add.uw x29, x1, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x18, 0x0000000000000001 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
sh2add.uw x11, x18, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x4, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000001 # initialize rs2
sh2add.uw x22, x4, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x24, 0x0000000000000001 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
sh2add.uw x9, x24, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x23, 0x0000000000000001 # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
sh2add.uw x30, x23, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x16, 0x0000000000000001 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
sh2add.uw x8, x16, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x18, 0x0000000000000001 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sh2add.uw x23, x18, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x6, 0x0000000000000001 # initialize rs1
li x20, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x28, x6, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x25, 0x0000000000000001 # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
sh2add.uw x14, x25, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x15, 0x0000000000000001 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
sh2add.uw x23, x15, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x21, 0x0000000000000001 # initialize rs1
li x24, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x6, x21, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x0000000000000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x8, x23, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x1, 0x0000000000000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sh2add.uw x31, x1, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x6, 0x0000000000000001 # initialize rs1
li x4, 0x00000000ffffffff # initialize rs2
sh2add.uw x23, x6, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x1, 0x0000000000000001 # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sh2add.uw x8, x1, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x18, 0x0000000000000001 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
sh2add.uw x3, x18, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x14, 0x0000000000000001 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sh2add.uw x13, x14, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x26, 0x0000000000000002 # initialize rs1
li x12, 0x0000000000000000 # initialize rs2
sh2add.uw x4, x26, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x14, 0x0000000000000002 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
sh2add.uw x1, x14, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x21, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
sh2add.uw x2, x21, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x18, 0x0000000000000002 # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
sh2add.uw x6, x18, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x10, 0x0000000000000002 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
sh2add.uw x25, x10, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x11, 0x0000000000000002 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
sh2add.uw x7, x11, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x15, 0x0000000000000002 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x16, x15, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x30, 0x0000000000000002 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
sh2add.uw x12, x30, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000000000002 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
sh2add.uw x9, x14, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x19, 0x0000000000000002 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x18, x19, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x27, 0x0000000000000002 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x23, x27, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x22, 0x0000000000000002 # initialize rs1
li x16, 0x5555555555555555 # initialize rs2
sh2add.uw x11, x22, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x18, 0x0000000000000002 # initialize rs1
li x27, 0x00000000ffffffff # initialize rs2
sh2add.uw x24, x18, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x4, 0x0000000000000002 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
sh2add.uw x27, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x15, 0x0000000000000002 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
sh2add.uw x3, x15, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x12, 0x0000000000000002 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
sh2add.uw x1, x12, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x30, 0x8000000000000000 # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
sh2add.uw x3, x30, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x15, 0x8000000000000000 # initialize rs1
li x28, 0x0000000000000001 # initialize rs2
sh2add.uw x12, x15, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x9, 0x8000000000000000 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
sh2add.uw x27, x9, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x6, 0x8000000000000000 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
sh2add.uw x15, x6, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x25, 0x8000000000000000 # initialize rs1
li x18, 0x8000000000000001 # initialize rs2
sh2add.uw x9, x25, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x29, 0x8000000000000000 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
sh2add.uw x18, x29, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x12, 0x8000000000000000 # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x27, x12, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x3, 0x8000000000000000 # initialize rs1
li x7, 0xffffffffffffffff # initialize rs2
sh2add.uw x31, x3, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x12, 0x8000000000000000 # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
sh2add.uw x28, x12, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x6, 0x8000000000000000 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x23, x6, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x8000000000000000 # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x6, x4, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x2, 0x8000000000000000 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
sh2add.uw x4, x2, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x25, 0x8000000000000000 # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
sh2add.uw x7, x25, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x29, 0x8000000000000000 # initialize rs1
li x16, 0x00000000fffffffe # initialize rs2
sh2add.uw x2, x29, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x3, 0x8000000000000000 # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
sh2add.uw x14, x3, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x14, 0x8000000000000000 # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
sh2add.uw x26, x14, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x9, 0x8000000000000001 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
sh2add.uw x21, x9, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x20, 0x8000000000000001 # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
sh2add.uw x29, x20, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x27, 0x8000000000000001 # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
sh2add.uw x20, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x8, 0x8000000000000001 # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
sh2add.uw x20, x8, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x27, 0x8000000000000001 # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
sh2add.uw x9, x27, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x9, 0x8000000000000001 # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
sh2add.uw x20, x9, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x4, 0x8000000000000001 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x24, x4, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x2, 0x8000000000000001 # initialize rs1
li x11, 0xffffffffffffffff # initialize rs2
sh2add.uw x21, x2, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x3, 0x8000000000000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
sh2add.uw x4, x3, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x14, 0x8000000000000001 # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x21, x14, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x25, 0x8000000000000001 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x4, x25, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x6, 0x8000000000000001 # initialize rs1
li x20, 0x5555555555555555 # initialize rs2
sh2add.uw x10, x6, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x16, 0x8000000000000001 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
sh2add.uw x18, x16, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x4, 0x8000000000000001 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
sh2add.uw x17, x4, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x11, 0x8000000000000001 # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh2add.uw x20, x11, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x3, 0x8000000000000001 # initialize rs1
li x11, 0x0000000100000001 # initialize rs2
sh2add.uw x6, x3, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x11, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
sh2add.uw x30, x11, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x25, 0x7fffffffffffffff # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
sh2add.uw x12, x25, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x4, 0x7fffffffffffffff # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sh2add.uw x24, x4, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x29, 0x7fffffffffffffff # initialize rs1
li x13, 0x8000000000000000 # initialize rs2
sh2add.uw x14, x29, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x2, 0x7fffffffffffffff # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
sh2add.uw x23, x2, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x26, 0x7fffffffffffffff # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
sh2add.uw x25, x26, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x27, 0x7fffffffffffffff # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x29, x27, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x18, 0x7fffffffffffffff # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
sh2add.uw x28, x18, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x22, 0x7fffffffffffffff # initialize rs1
li x8, 0xfffffffffffffffe # initialize rs2
sh2add.uw x1, x22, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x19, 0x7fffffffffffffff # initialize rs1
li x3, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x31, x19, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x7fffffffffffffff # initialize rs1
li x2, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x11, x29, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x29, 0x7fffffffffffffff # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
sh2add.uw x22, x29, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x20, 0x7fffffffffffffff # initialize rs1
li x19, 0x00000000ffffffff # initialize rs2
sh2add.uw x11, x20, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x13, 0x7fffffffffffffff # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
sh2add.uw x24, x13, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x1, 0x7fffffffffffffff # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
sh2add.uw x27, x1, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x16, 0x7fffffffffffffff # initialize rs1
li x7, 0x0000000100000001 # initialize rs2
sh2add.uw x23, x16, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x21, 0x7ffffffffffffffe # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
sh2add.uw x18, x21, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 1792)
addi x5, x5, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x28, 0x7ffffffffffffffe # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
sh2add.uw x15, x28, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x21, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
sh2add.uw x7, x21, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x1, 0x7ffffffffffffffe # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
sh2add.uw x4, x1, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x29, 0x7ffffffffffffffe # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
sh2add.uw x19, x29, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x12, 0x7ffffffffffffffe # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
sh2add.uw x19, x12, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x29, 0x7ffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x4, x29, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x30, 0x7ffffffffffffffe # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
sh2add.uw x10, x30, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x9, 0x7ffffffffffffffe # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
sh2add.uw x17, x9, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x9, 0x7ffffffffffffffe # initialize rs1
li x21, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x6, x9, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x30, 0x7ffffffffffffffe # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x11, x30, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x24, 0x7ffffffffffffffe # initialize rs1
li x22, 0x5555555555555555 # initialize rs2
sh2add.uw x8, x24, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x17, 0x7ffffffffffffffe # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
sh2add.uw x3, x17, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x2, 0x7ffffffffffffffe # initialize rs1
li x22, 0x00000000fffffffe # initialize rs2
sh2add.uw x1, x2, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x22, 0x7ffffffffffffffe # initialize rs1
li x10, 0x0000000100000000 # initialize rs2
sh2add.uw x15, x22, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x11, 0x7ffffffffffffffe # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
sh2add.uw x25, x11, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x20, 0xffffffffffffffff # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
sh2add.uw x16, x20, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x4, 0xffffffffffffffff # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
sh2add.uw x30, x4, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x4, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
sh2add.uw x6, x4, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x6, 0xffffffffffffffff # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
sh2add.uw x7, x6, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x26, 0xffffffffffffffff # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
sh2add.uw x19, x26, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x18, 0xffffffffffffffff # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
sh2add.uw x3, x18, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x17, 0xffffffffffffffff # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x1, x17, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x7, 0xffffffffffffffff # initialize rs1
li x28, 0xffffffffffffffff # initialize rs2
sh2add.uw x12, x7, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x13, 0xffffffffffffffff # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
sh2add.uw x23, x13, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x17, 0xffffffffffffffff # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x23, x17, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0xffffffffffffffff # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x7, x3, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x14, 0xffffffffffffffff # initialize rs1
li x3, 0x5555555555555555 # initialize rs2
sh2add.uw x18, x14, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x2, 0xffffffffffffffff # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
sh2add.uw x20, x2, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x28, 0xffffffffffffffff # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
sh2add.uw x23, x28, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x18, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
sh2add.uw x29, x18, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x24, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh2add.uw x9, x24, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x20, 0xfffffffffffffffe # initialize rs1
li x18, 0x0000000000000000 # initialize rs2
sh2add.uw x3, x20, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x23, 0xfffffffffffffffe # initialize rs1
li x22, 0x0000000000000001 # initialize rs2
sh2add.uw x28, x23, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x15, 0xfffffffffffffffe # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
sh2add.uw x17, x15, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x10, 0xfffffffffffffffe # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sh2add.uw x8, x10, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x29, 0xfffffffffffffffe # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
sh2add.uw x10, x29, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x12, 0xfffffffffffffffe # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
sh2add.uw x6, x12, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x4, x23, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x15, 0xfffffffffffffffe # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
sh2add.uw x28, x15, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x8, 0xfffffffffffffffe # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
sh2add.uw x24, x8, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x29, 0xfffffffffffffffe # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x26, x29, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0xfffffffffffffffe # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x4, x24, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x9, 0xfffffffffffffffe # initialize rs1
li x8, 0x5555555555555555 # initialize rs2
sh2add.uw x19, x9, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x14, 0xfffffffffffffffe # initialize rs1
li x2, 0x00000000ffffffff # initialize rs2
sh2add.uw x8, x14, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x23, 0xfffffffffffffffe # initialize rs1
li x9, 0x00000000fffffffe # initialize rs2
sh2add.uw x26, x23, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x26, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
sh2add.uw x30, x26, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x12, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
sh2add.uw x9, x12, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
sh2add.uw x1, x7, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
sh2add.uw x10, x20, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
sh2add.uw x9, x25, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x8, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
sh2add.uw x31, x8, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
sh2add.uw x12, x11, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x23, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
sh2add.uw x10, x23, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x27, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x8, x27, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x1, 0x5bbc887763ae86f2 # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
sh2add.uw x21, x1, x9 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x14, 0x5bbc887763ae86f2 # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
sh2add.uw x12, x14, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x6, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x29, x16, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x11, x3, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
sh2add.uw x8, x21, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x14, 0x00000000ffffffff # initialize rs2
sh2add.uw x26, x7, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
sh2add.uw x8, x7, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
sh2add.uw x9, x28, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x3, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
sh2add.uw x15, x3, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
sh2add.uw x1, x28, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
sh2add.uw x8, x24, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
sh2add.uw x30, x15, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
sh2add.uw x10, x20, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
sh2add.uw x29, x12, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x7fffffffffffffff # initialize rs2
sh2add.uw x17, x31, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x10, x17, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
sh2add.uw x1, x28, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x1, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
sh2add.uw x24, x8, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x17, x12, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x29, x26, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
sh2add.uw x26, x17, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
sh2add.uw x29, x16, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
sh2add.uw x20, x21, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x0000000100000000 # initialize rs2
sh2add.uw x10, x17, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
sh2add.uw x16, x21, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x8, 0x5555555555555555 # initialize rs1
li x28, 0x0000000000000000 # initialize rs2
sh2add.uw x16, x8, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x27, 0x5555555555555555 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
sh2add.uw x17, x27, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x16, 0x5555555555555555 # initialize rs1
li x11, 0x0000000000000002 # initialize rs2
sh2add.uw x21, x16, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x25, 0x5555555555555555 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
sh2add.uw x14, x25, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x7, 0x5555555555555555 # initialize rs1
li x10, 0x8000000000000001 # initialize rs2
sh2add.uw x4, x7, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x6, 0x5555555555555555 # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
sh2add.uw x25, x6, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x6, 0x5555555555555555 # initialize rs1
li x18, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x21, x6, x18 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x27, 0x5555555555555555 # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
sh2add.uw x7, x27, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x7, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x13, 0x5555555555555555 # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
sh2add.uw x3, x13, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x31, 0x5555555555555555 # initialize rs1
li x26, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x30, x31, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x5555555555555555 # initialize rs1
li x22, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x3, x23, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x8, 0x5555555555555555 # initialize rs1
li x7, 0x5555555555555555 # initialize rs2
sh2add.uw x20, x8, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x9, 0x5555555555555555 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
sh2add.uw x10, x9, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x25, 0x5555555555555555 # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
sh2add.uw x20, x25, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x13, 0x5555555555555555 # initialize rs1
li x4, 0x0000000100000000 # initialize rs2
sh2add.uw x3, x13, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x17, 0x5555555555555555 # initialize rs1
li x4, 0x0000000100000001 # initialize rs2
sh2add.uw x2, x17, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x12, 0x00000000ffffffff # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
sh2add.uw x25, x12, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x30, 0x00000000ffffffff # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
sh2add.uw x19, x30, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x12, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
sh2add.uw x18, x12, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x21, 0x00000000ffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
sh2add.uw x31, x21, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x31, 0x00000000ffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sh2add.uw x26, x31, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x1, 0x00000000ffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
sh2add.uw x10, x1, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x14, 0x00000000ffffffff # initialize rs1
li x7, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x27, x14, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x18, 0x00000000ffffffff # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
sh2add.uw x10, x18, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x30, 0x00000000ffffffff # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
sh2add.uw x16, x30, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x4, 0x00000000ffffffff # initialize rs1
li x14, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x2, x4, x14 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x16, 0x00000000ffffffff # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x24, x16, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x22, 0x00000000ffffffff # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
sh2add.uw x19, x22, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x3, 0x00000000ffffffff # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
sh2add.uw x24, x3, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x26, 0x00000000ffffffff # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sh2add.uw x30, x26, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x8, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
sh2add.uw x26, x8, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x10, 0x00000000ffffffff # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
sh2add.uw x18, x10, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x18, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x6, 0x00000000fffffffe # initialize rs1
li x7, 0x0000000000000000 # initialize rs2
sh2add.uw x14, x6, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x14, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x23, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000000000001 # initialize rs2
sh2add.uw x9, x23, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x2, 0x00000000fffffffe # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
sh2add.uw x28, x2, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x28, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x24, 0x00000000fffffffe # initialize rs1
li x2, 0x8000000000000000 # initialize rs2
sh2add.uw x26, x24, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x2, 0x00000000fffffffe # initialize rs1
li x4, 0x8000000000000001 # initialize rs2
sh2add.uw x13, x2, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x4, 0x00000000fffffffe # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
sh2add.uw x3, x4, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x27, 0x00000000fffffffe # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x17, x27, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x17, 0x00000000fffffffe # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
sh2add.uw x24, x17, x6 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x18, 0x00000000fffffffe # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
sh2add.uw x16, x18, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x18, 0x00000000fffffffe # initialize rs1
li x8, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x30, x18, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x30, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x28, 0x00000000fffffffe # initialize rs1
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x8, x28, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x17, 0x00000000fffffffe # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
sh2add.uw x23, x17, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x21, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000ffffffff # initialize rs2
sh2add.uw x31, x21, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x15, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
sh2add.uw x3, x15, x24 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x24, 0x00000000fffffffe # initialize rs1
li x12, 0x0000000100000000 # initialize rs2
sh2add.uw x20, x24, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x29, 0x00000000fffffffe # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
sh2add.uw x8, x29, x30 # perform operation
RVTEST_SIGUPD(x5, x0, x8, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x4, 0x0000000100000000 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
sh2add.uw x3, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x3, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x23, 0x0000000100000000 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
sh2add.uw x12, x23, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x21, 0x0000000100000000 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
sh2add.uw x6, x21, x12 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x15, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
sh2add.uw x12, x15, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x7, 0x0000000100000000 # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
sh2add.uw x21, x7, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x21, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x23, 0x0000000100000000 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
sh2add.uw x17, x23, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x17, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x8, 0x0000000100000000 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x10, x8, x25 # perform operation
RVTEST_SIGUPD(x5, x0, x10, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x22, 0x0000000100000000 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
sh2add.uw x4, x22, x17 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x3, 0x0000000100000000 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
sh2add.uw x27, x3, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x16, 0x0000000100000000 # initialize rs1
li x19, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x11, x16, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0x0000000100000000 # initialize rs1
li x23, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x25, x26, x23 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x31, 0x0000000100000000 # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
sh2add.uw x20, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x3, 0x0000000100000000 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
sh2add.uw x22, x3, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x22, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x31, 0x0000000100000000 # initialize rs1
li x4, 0x00000000fffffffe # initialize rs2
sh2add.uw x26, x31, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x4, 0x0000000100000000 # initialize rs1
li x8, 0x0000000100000000 # initialize rs2
sh2add.uw x9, x4, x8 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x20, 0x0000000100000000 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
sh2add.uw x25, x20, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x25, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x21, 0x0000000100000001 # initialize rs1
li x29, 0x0000000000000000 # initialize rs2
sh2add.uw x4, x21, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x30, 0x0000000100000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
sh2add.uw x31, x30, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x24, 0x0000000100000001 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
sh2add.uw x15, x24, x28 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x2, 0x0000000100000001 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
sh2add.uw x12, x2, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x28, 0x0000000100000001 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
sh2add.uw x13, x28, x27 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x29, 0x0000000100000001 # initialize rs1
li x22, 0x7fffffffffffffff # initialize rs2
sh2add.uw x20, x29, x22 # perform operation
RVTEST_SIGUPD(x5, x0, x20, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x27, 0x0000000100000001 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
sh2add.uw x15, x27, x31 # perform operation
RVTEST_SIGUPD(x5, x0, x15, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x25, 0x0000000100000001 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
sh2add.uw x16, x25, x20 # perform operation
RVTEST_SIGUPD(x5, x0, x16, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000100000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
sh2add.uw x29, x14, x26 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x1, 0x0000000100000001 # initialize rs1
li x10, 0x5bbc887763ae86f2 # initialize rs2
sh2add.uw x23, x1, x10 # perform operation
RVTEST_SIGUPD(x5, x0, x23, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x0000000100000001 # initialize rs1
li x7, 0xaaaaaaaaaaaaaaaa # initialize rs2
sh2add.uw x26, x17, x7 # perform operation
RVTEST_SIGUPD(x5, x0, x26, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x1, 0x0000000100000001 # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
sh2add.uw x13, x1, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x25, 0x0000000100000001 # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
sh2add.uw x19, x25, x16 # perform operation
RVTEST_SIGUPD(x5, x0, x19, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x30, 0x0000000100000001 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
sh2add.uw x31, x30, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x31, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x1, 0x0000000100000001 # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
sh2add.uw x13, x1, x11 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x22, 0x0000000100000001 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
sh2add.uw x6, x22, x15 # perform operation
RVTEST_SIGUPD(x5, x0, x6, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x5107c549d327a541 # initialize rs1
li x0, 0x0d4ad006c1fdf949 # initialize rs2
sh2add.uw x9, x0, x0 # perform operation
RVTEST_SIGUPD(x5, x0, x9, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0xc2c04d642c1f1114 # initialize rs1
li x1, 0x05fad7e59f5a56f6 # initialize rs2
sh2add.uw x27, x1, x1 # perform operation
RVTEST_SIGUPD(x5, x0, x27, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0x7097d0adad21c557 # initialize rs1
li x2, 0x12bbacfed2643e7b # initialize rs2
sh2add.uw x29, x2, x2 # perform operation
RVTEST_SIGUPD(x5, x0, x29, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xd1914ee437a871cc # initialize rs1
li x3, 0xee2034192ce532ac # initialize rs2
sh2add.uw x13, x3, x3 # perform operation
RVTEST_SIGUPD(x5, x0, x13, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x4, 0x836794696a472698 # initialize rs1
li x4, 0x6aa2d67c5242118a # initialize rs2
sh2add.uw x2, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x2, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x85fe1be79f1ae476 # initialize rs1
li x5, 0x39da85af9b518318 # initialize rs2
sh2add.uw x12, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x12, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x1017edc6339d230e # initialize rs1
li x6, 0xace03f90d0dcd69b # initialize rs2
sh2add.uw x4, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x4, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x96a8863526c6fc4a # initialize rs1
li x7, 0xc628326c687fecda # initialize rs2
sh2add.uw x27, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x393e1deabf4537d0 # initialize rs1
li x8, 0xe0c707e012d04bc0 # initialize rs2
sh2add.uw x12, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0x0b94be0a44685c26 # initialize rs1
li x9, 0x86a5f3abd7311c81 # initialize rs2
sh2add.uw x12, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0x37ac788424d2a34c # initialize rs1
li x10, 0x260b1fa1358352a9 # initialize rs2
sh2add.uw x16, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x8dd3b1b1a88625fe # initialize rs1
li x11, 0x16464abeaf7d9640 # initialize rs2
sh2add.uw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x34eba4a5b099cb51 # initialize rs1
li x12, 0x938ce9c91158cae8 # initialize rs2
sh2add.uw x21, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x3444d7841ae50009 # initialize rs1
li x13, 0xfba82dd5489880b3 # initialize rs2
sh2add.uw x1, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0x03f7b445e17bf237 # initialize rs1
li x14, 0x96aa1c4343416ccc # initialize rs2
sh2add.uw x20, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x94b773f58fc6a3e2 # initialize rs1
li x15, 0x7f7f131ff55ec762 # initialize rs2
sh2add.uw x31, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xb0f8b403b010191d # initialize rs1
li x16, 0x4f795f49991c2d33 # initialize rs2
sh2add.uw x2, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0x074536fe71effa86 # initialize rs1
li x17, 0x9ec3f7f2247aed04 # initialize rs2
sh2add.uw x2, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x6a2b29b801cce89c # initialize rs1
li x18, 0x5718932f414add7b # initialize rs2
sh2add.uw x17, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0x79f4388f01ed74d2 # initialize rs1
li x19, 0x9510c5e7dde04215 # initialize rs2
sh2add.uw x28, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0xcfc6ef9e92c41f89 # initialize rs1
li x20, 0x4eaab99b0693963d # initialize rs2
sh2add.uw x31, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xc4e32ee2acc91b50 # initialize rs1
li x21, 0x31c33a66f3553fdc # initialize rs2
sh2add.uw x7, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x96ad6725b43667a2 # initialize rs1
li x22, 0x1d53e44407b983b4 # initialize rs2
sh2add.uw x26, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0x4e6789f7f433a0c4 # initialize rs1
li x23, 0x4fa9e1321fb478dd # initialize rs2
sh2add.uw x8, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x4b469559a6893fbb # initialize rs1
li x24, 0x75885ea4a15ade00 # initialize rs2
sh2add.uw x9, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xdea2b92649786e87 # initialize rs1
li x25, 0x4fff17d885308362 # initialize rs2
sh2add.uw x6, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0x9e2f1a1b5c0cd746 # initialize rs1
li x26, 0x747abcd3f27d57eb # initialize rs2
sh2add.uw x17, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x631577990efcb15b # initialize rs1
li x27, 0x65247c62247f1950 # initialize rs2
sh2add.uw x3, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0xca5d2c400e292409 # initialize rs1
li x28, 0x0c7387374cab154c # initialize rs2
sh2add.uw x15, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x29b7b4db7eadd8eb # initialize rs1
li x29, 0xf35d644004c166c0 # initialize rs2
sh2add.uw x19, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0xefc8bde4e6e06ae2 # initialize rs1
li x30, 0x1b7add3e42836695 # initialize rs2
sh2add.uw x14, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x913a4cb2a89d5720 # initialize rs1
li x31, 0x822fa567fbffd6af # initialize rs2
sh2add.uw x6, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xe50569437c112a55 # initialize rs1
li x14, 0x72e557a7aa4240b6 # initialize rs2
sh2add.uw x0, x0, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x7f1a9d0718ab57ee # initialize rs1
li x30, 0xe6322e75ce5c7975 # initialize rs2
sh2add.uw x1, x1, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xcdfd74174bd84fec # initialize rs1
li x18, 0x395150725cd1e619 # initialize rs2
sh2add.uw x2, x2, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0xbfa5f2008413befa # initialize rs1
li x26, 0x9f59c6efdbe47cc4 # initialize rs2
sh2add.uw x3, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xea4669afe36eba79 # initialize rs1
li x29, 0x5f2cac9c6a0ff6da # initialize rs2
sh2add.uw x4, x4, x29 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xbd92580f83a3fb8d # initialize rs1
li x7, 0x024b16197c4b5111 # initialize rs2
sh2add.uw x5, x5, x7 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xd9ce4b5d7c9f9f28 # initialize rs1
li x4, 0x43fe794fb182f4d8 # initialize rs2
sh2add.uw x6, x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x3557cc9063d2bcda # initialize rs1
li x26, 0xc5391f53159f4010 # initialize rs2
sh2add.uw x7, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0x51464a9f6172ec77 # initialize rs1
li x29, 0x6f7655dca5a5ff9d # initialize rs2
sh2add.uw x8, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc1f4914d906d8e59 # initialize rs1
li x9, 0x3189d066f6477e34 # initialize rs2
sh2add.uw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0xc8e7051e99d85467 # initialize rs1
li x12, 0x4278280b957e62b1 # initialize rs2
sh2add.uw x10, x10, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0xd81cae7825727f0b # initialize rs1
li x12, 0xb3688c16acc537ed # initialize rs2
sh2add.uw x11, x11, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0xd81d6ef1b9355381 # initialize rs1
li x1, 0x1c1a38c5844e8fea # initialize rs2
sh2add.uw x12, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xe594e4bc324b6b4e # initialize rs1
li x20, 0x4162e56d5518a1b6 # initialize rs2
sh2add.uw x13, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xaf615073e087163d # initialize rs1
li x26, 0xc3579b9b28b9a200 # initialize rs2
sh2add.uw x14, x14, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xc6857dbcf967a098 # initialize rs1
li x25, 0xef4817b936799f80 # initialize rs2
sh2add.uw x15, x15, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x9c12eeb25c140b6f # initialize rs1
li x31, 0xc5c574f8e8aa47e6 # initialize rs2
sh2add.uw x16, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x0fc74aef6da49044 # initialize rs1
li x21, 0xc0cd6dd8f1240495 # initialize rs2
sh2add.uw x17, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0xd957988275fc2d52 # initialize rs1
li x27, 0x4836814ebd1b7405 # initialize rs2
sh2add.uw x18, x18, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xdc577218af1bbf33 # initialize rs1
li x6, 0x7d881381e5bb0782 # initialize rs2
sh2add.uw x19, x19, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xa41766d943e33ae4 # initialize rs1
li x1, 0x589e0c6cc464f18d # initialize rs2
sh2add.uw x20, x20, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x9fb857164f2d29b0 # initialize rs1
li x21, 0xd770a2a990c3c512 # initialize rs2
sh2add.uw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x3f481600c873e296 # initialize rs1
li x10, 0xd058b869c25e0be2 # initialize rs2
sh2add.uw x22, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xbf3e605c7ddc7b57 # initialize rs1
li x21, 0xa0316e9fdbeb442e # initialize rs2
sh2add.uw x23, x23, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x0086785f2970ff39 # initialize rs1
li x27, 0x2be0f523a751dbe0 # initialize rs2
sh2add.uw x24, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x0097ee77ae247309 # initialize rs1
li x8, 0xd060d66b15aca16b # initialize rs2
sh2add.uw x25, x25, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x47b75f69783e37b8 # initialize rs1
li x30, 0x0f4e12043655dc0a # initialize rs2
sh2add.uw x26, x26, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xb2008d94d5300d1f # initialize rs1
li x6, 0x954429ec68d837c2 # initialize rs2
sh2add.uw x27, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xb3014ba6a3cf644c # initialize rs1
li x8, 0x949fcf3e23e34a4d # initialize rs2
sh2add.uw x28, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x715ce784a93be52b # initialize rs1
li x1, 0x28da1b01cd72555a # initialize rs2
sh2add.uw x29, x29, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0xab38a9365b01e859 # initialize rs1
li x25, 0xd8782bb276945051 # initialize rs2
sh2add.uw x30, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x4addb46ba095759d # initialize rs1
li x13, 0x26647827e5e3c4ee # initialize rs2
sh2add.uw x31, x31, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x29, 0x58f80ca39dec2b40 # initialize rs1
li x0, 0xfbf88062dbbfd641 # initialize rs2
sh2add.uw x0, x29, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x8, 0x62fbf4583259e2db # initialize rs1
li x1, 0x6f4566d59bd063d1 # initialize rs2
sh2add.uw x1, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x6, 0x6660b37d92bff6e9 # initialize rs1
li x2, 0x619f7c5a1f5f36b0 # initialize rs2
sh2add.uw x2, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x26, 0xcc4a398641e2d1c4 # initialize rs1
li x3, 0xf0f28b34f9842b4b # initialize rs2
sh2add.uw x3, x26, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0x9a440ee245e3adf1 # initialize rs1
li x4, 0x9f9b85c181625618 # initialize rs2
sh2add.uw x4, x25, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x30, 0xad9dc18de328a4d9 # initialize rs1
li x5, 0x25e9d5feebc7936d # initialize rs2
sh2add.uw x5, x30, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x11, 0x817728a6c6d18ddc # initialize rs1
li x6, 0x06d7f6217e23d46f # initialize rs2
sh2add.uw x6, x11, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x9, 0x955c1c037b9aae58 # initialize rs1
li x7, 0x38d94d71d59876da # initialize rs2
sh2add.uw x7, x9, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x7, 0xf018b9de11e36a84 # initialize rs1
li x8, 0xce29ab0fc94d463b # initialize rs2
sh2add.uw x8, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x23, 0x98e490da0d99f7f3 # initialize rs1
li x9, 0x91b3616c8ab93519 # initialize rs2
sh2add.uw x9, x23, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x5, 0xe9ccd23a065b53b4 # initialize rs1
li x10, 0xca768c9133df6237 # initialize rs2
sh2add.uw x10, x5, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x19, 0x3902d3511c36fcd2 # initialize rs1
li x11, 0x80bf27464ab04465 # initialize rs2
sh2add.uw x11, x19, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x24, 0xdcc341f0281c4c78 # initialize rs1
li x12, 0xc367a466cb82d447 # initialize rs2
sh2add.uw x12, x24, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x25, 0x6af6837c0a8046ec # initialize rs1
li x13, 0xa91935c328b5dc30 # initialize rs2
sh2add.uw x13, x25, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x19, 0xd22064371465fcf8 # initialize rs1
li x14, 0x2cc81d39a3b840ce # initialize rs2
sh2add.uw x14, x19, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x28, 0x5547b66967717032 # initialize rs1
li x15, 0xa7b10cc4f301b15f # initialize rs2
sh2add.uw x15, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x18, 0xbab4d8890e2dd929 # initialize rs1
li x16, 0x4e383925e718fd99 # initialize rs2
sh2add.uw x16, x18, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x3, 0x2fd5e2bc2906a030 # initialize rs1
li x17, 0x7614802ccc786615 # initialize rs2
sh2add.uw x17, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x28, 0x60f56cce940fafc7 # initialize rs1
li x18, 0x6836dca182e7e84d # initialize rs2
sh2add.uw x18, x28, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x19, 0x5b530fb12e2c35c0 # initialize rs1
li x19, 0x374a1351510ccc37 # initialize rs2
sh2add.uw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x12, 0x4249b736566d8cf5 # initialize rs1
li x20, 0x8e298106297cdd67 # initialize rs2
sh2add.uw x20, x12, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x13, 0xecee25b6ed7c535a # initialize rs1
li x21, 0xcc5ff3bc980acf4c # initialize rs2
sh2add.uw x21, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x15, 0x172950fcdf916041 # initialize rs1
li x22, 0x247d9113214bfc03 # initialize rs2
sh2add.uw x22, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x7, 0x9d10d8d1ff362e15 # initialize rs1
li x23, 0xd7b26b9631c9e214 # initialize rs2
sh2add.uw x23, x7, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x25, 0x338078b3ba4d467a # initialize rs1
li x24, 0xc7c5082ee6ddf42f # initialize rs2
sh2add.uw x24, x25, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x11, 0xb2924ae71ea627be # initialize rs1
li x25, 0xe2cc13f3b24b6ef1 # initialize rs2
sh2add.uw x25, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x6, 0x3114309e740e84ea # initialize rs1
li x26, 0x4265ef2d243f60de # initialize rs2
sh2add.uw x26, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x24, 0x61ae6223d7c0c939 # initialize rs1
li x27, 0xeb05970cc3837ae4 # initialize rs2
sh2add.uw x27, x24, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x17, 0x8e6f70c0bf565d27 # initialize rs1
li x28, 0x851998b854724e21 # initialize rs2
sh2add.uw x28, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x30, 0xff9162c5f038bd90 # initialize rs1
li x29, 0xa6991cd1bad572a3 # initialize rs2
sh2add.uw x29, x30, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x22, 0xe289dca62074d388 # initialize rs1
li x30, 0x042be4ae6d5dc056 # initialize rs2
sh2add.uw x30, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x28, 0xdf2a1f54c5dc4ed7 # initialize rs1
li x31, 0x5d6f8cc75f765972 # initialize rs2
sh2add.uw x31, x28, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x2937e13750f624a4 # initialize rs1
li x0, 0xf915487f2579ba8e # initialize rs2
sh2add.uw x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xea11e08c0f2257ea # initialize rs1
li x1, 0x7cb5a0ffba294bb1 # initialize rs2
sh2add.uw x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x5428c18c77a803b6 # initialize rs1
li x2, 0x3500d70b1c088696 # initialize rs2
sh2add.uw x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x410375d9700f7ba8 # initialize rs1
li x3, 0x13c2cfa036dd4d3b # initialize rs2
sh2add.uw x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x70f8edeb1302700d # initialize rs1
li x4, 0xcd3f033f5cbe17cf # initialize rs2
sh2add.uw x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xad2c76ce5695e342 # initialize rs1
li x5, 0x2633f360d9d23dfe # initialize rs2
sh2add.uw x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xed89fdeaa14dc4fe # initialize rs1
li x6, 0xa31cad1b735ff268 # initialize rs2
sh2add.uw x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xb6fb9ade50ecc1b3 # initialize rs1
li x7, 0x27681ea31b84cfc3 # initialize rs2
sh2add.uw x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xea6be0facbcb9458 # initialize rs1
li x8, 0x4797a88e5d11e1f3 # initialize rs2
sh2add.uw x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0x1d92dfc2073368c2 # initialize rs1
li x9, 0x5b2d5902511b9e78 # initialize rs2
sh2add.uw x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0xbf4bd8c4d8f4fad6 # initialize rs1
li x10, 0x9f240f7e8fc53feb # initialize rs2
sh2add.uw x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x819e0802ff984e9e # initialize rs1
li x11, 0xb4e4f7ff8a24c369 # initialize rs2
sh2add.uw x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0x15f72e4d98d8a28f # initialize rs1
li x12, 0x3cf7073c50747449 # initialize rs2
sh2add.uw x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xe3f50bfe392473fb # initialize rs1
li x13, 0xfd1f0a344a664589 # initialize rs2
sh2add.uw x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x511ebd0365958722 # initialize rs1
li x14, 0x888a84b4718f81c1 # initialize rs2
sh2add.uw x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xf5de9f70d2488e0e # initialize rs1
li x15, 0x0388fa56312d1987 # initialize rs2
sh2add.uw x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x2add0da47d1c815f # initialize rs1
li x16, 0x78bd8afd561c3595 # initialize rs2
sh2add.uw x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x8ce34d7e4c01bdb2 # initialize rs1
li x17, 0xe0dc4e1fa09b9a8b # initialize rs2
sh2add.uw x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x678aa2fc91b1a7de # initialize rs1
li x18, 0x67c3bb5750984c39 # initialize rs2
sh2add.uw x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x0828862d7c7e88ab # initialize rs1
li x19, 0x66553381d1a86aec # initialize rs2
sh2add.uw x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x2718596bf2c45632 # initialize rs1
li x20, 0xf14a05c9367b8eaa # initialize rs2
sh2add.uw x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0xa9547861e8e4d169 # initialize rs1
li x21, 0xd81c18804d85111c # initialize rs2
sh2add.uw x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x0b4f4ad517386669 # initialize rs1
li x22, 0x3f1160729dd33387 # initialize rs2
sh2add.uw x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x1dc8348359e9da4a # initialize rs1
li x23, 0x84cd340044ecf857 # initialize rs2
sh2add.uw x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xb39cd68d1bae5248 # initialize rs1
li x24, 0x6981608bcf6d450f # initialize rs2
sh2add.uw x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0xed461c2a7902bac8 # initialize rs1
li x25, 0xc58f54ad3245cfa1 # initialize rs2
sh2add.uw x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0x38be5a819d7c15a7 # initialize rs1
li x26, 0xd4005fa58b646908 # initialize rs2
sh2add.uw x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x5c948c17990062a0 # initialize rs1
li x27, 0x84433e66a690b662 # initialize rs2
sh2add.uw x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0xd942eaed72bc6f79 # initialize rs1
li x28, 0xb7e7b51a1eeb5c46 # initialize rs2
sh2add.uw x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xd80ffac1161421f4 # initialize rs1
li x29, 0x3cf40f359a52719c # initialize rs2
sh2add.uw x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xc7bb3b08a5c4d50d # initialize rs1
li x30, 0xb3bf5d3b94a0e7bc # initialize rs2
sh2add.uw x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xd0b421a5910d2b4d # initialize rs1
li x31, 0x519351392abab09d # initialize rs2
sh2add.uw x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x28, x19, x3 # perform first operation
sh2add.uw x31, x5, x15 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x9, x29, x5 # perform first operation
sh2add.uw x24, x10, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x7, x19, x10 # perform first operation
sh2add.uw x29, x26, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x5, x16, x25 # perform first operation
sh2add.uw x25, x5, x26 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x6, x24, x17 # perform first operation
sh2add.uw x17, x24, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x10, x24, x19 # perform first operation
sh2add.uw x24, x10, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x25, x11, x6 # perform first operation
sh2add.uw x25, x9, x28 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x30, x12, x22 # perform first operation
sh2add.uw x30, x11, x27 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x5, x9, x19 # perform first operation
sh2add.uw x5, x26, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x10, x9, x20 # perform first operation
sh2add.uw x9, x26, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x1, x7, x16 # perform first operation
sh2add.uw x16, x13, x21 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x19, x24, x3 # perform first operation
sh2add.uw x10, x16, x7 # perform second (triggering) operation

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
