///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/I/WALLY-COV-or.S
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
li x0, 0x4f873aea818f60b4 # initialize rs1
li x18, 0xb828146d0aa04088 # initialize rs2
or x17, x0, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 0)

# Testcase cp_rs1 (Test source rs1 = x1)
li x1, 0x9ec9fd4b4d3a2556 # initialize rs1
li x19, 0xba83fc789407f724 # initialize rs2
or x15, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase cp_rs1 (Test source rs1 = x2)
li x2, 0x5058b865e7700fe2 # initialize rs1
li x11, 0x111cfbe90ea90643 # initialize rs2
or x30, x2, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 16)

# Testcase cp_rs1 (Test source rs1 = x3)
li x3, 0xe5aeef952aa82edf # initialize rs1
li x11, 0x13b949f76617155a # initialize rs2
or x17, x3, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 24)

# Testcase cp_rs1 (Test source rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x47bf5b80b0950927 # initialize rs1
li x19, 0xe3f6b699f4245e90 # initialize rs2
or x24, x4, x19 # perform operation
RVTEST_SIGUPD(x5, x0, x24, 32)

# Testcase cp_rs1 (Test source rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xf5ce19c8496e9747 # initialize rs1
li x14, 0x34b0b5d6a2388f7a # initialize rs2
or x19, x5, x14 # perform operation
RVTEST_SIGUPD(x6, x0, x19, 40)

# Testcase cp_rs1 (Test source rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xba06e15f8a097f28 # initialize rs1
li x4, 0x7ed7ea9546d1efc2 # initialize rs2
or x9, x6, x4 # perform operation
RVTEST_SIGUPD(x7, x0, x9, 48)

# Testcase cp_rs1 (Test source rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0xeeadbd28a58c25bd # initialize rs1
li x24, 0xa5554ad0f368637f # initialize rs2
or x3, x7, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 56)

# Testcase cp_rs1 (Test source rs1 = x8)
li x8, 0x1be1c32e2e029141 # initialize rs1
li x25, 0x375dd76fc58f7a9c # initialize rs2
or x27, x8, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 64)

# Testcase cp_rs1 (Test source rs1 = x9)
li x9, 0x209b146052550d77 # initialize rs1
li x29, 0x3a8c5089d10d0538 # initialize rs2
or x7, x9, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase cp_rs1 (Test source rs1 = x10)
li x10, 0x6989610138fa217f # initialize rs1
li x29, 0x53deec644dc75f86 # initialize rs2
or x9, x10, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 80)

# Testcase cp_rs1 (Test source rs1 = x11)
li x11, 0x164b6fc0227b2279 # initialize rs1
li x25, 0x9f3c994e36a26912 # initialize rs2
or x18, x11, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 88)

# Testcase cp_rs1 (Test source rs1 = x12)
li x12, 0xb6e7129c7d85ea90 # initialize rs1
li x13, 0xd984be428b248759 # initialize rs2
or x30, x12, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 96)

# Testcase cp_rs1 (Test source rs1 = x13)
li x13, 0x836dc1c3ec9d367f # initialize rs1
li x27, 0x21ce46ec5902dd99 # initialize rs2
or x6, x13, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 104)

# Testcase cp_rs1 (Test source rs1 = x14)
li x14, 0x3b47485fba1afeda # initialize rs1
li x15, 0x445c7f7dc588c8af # initialize rs2
or x9, x14, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 112)

# Testcase cp_rs1 (Test source rs1 = x15)
li x15, 0x2fad6de2af1505c2 # initialize rs1
li x19, 0x3ea2090cbda8c58c # initialize rs2
or x27, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 120)

# Testcase cp_rs1 (Test source rs1 = x16)
li x16, 0x82d9aa0ad4b0711d # initialize rs1
li x18, 0x999adfb6284b2faa # initialize rs2
or x5, x16, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 128)

# Testcase cp_rs1 (Test source rs1 = x17)
li x17, 0x09257605e5c4ee64 # initialize rs1
li x2, 0x12681997cd2d16f0 # initialize rs2
or x3, x17, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 136)

# Testcase cp_rs1 (Test source rs1 = x18)
li x18, 0x2550b994d0833ded # initialize rs1
li x24, 0xb36930fa94b453d3 # initialize rs2
or x3, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 144)

# Testcase cp_rs1 (Test source rs1 = x19)
li x19, 0xc24defabf9659f02 # initialize rs1
li x28, 0xb3509fc2c83ca7c4 # initialize rs2
or x16, x19, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 152)

# Testcase cp_rs1 (Test source rs1 = x20)
li x20, 0xdb12bf3e55df18b9 # initialize rs1
li x21, 0x287b4d7667c056f2 # initialize rs2
or x5, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 160)

# Testcase cp_rs1 (Test source rs1 = x21)
li x21, 0xbe04c1e61ca38b16 # initialize rs1
li x18, 0xdffaff59c9e5ed02 # initialize rs2
or x29, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 168)

# Testcase cp_rs1 (Test source rs1 = x22)
li x22, 0x65e6eb66e6848cae # initialize rs1
li x15, 0x16c888bbf1ea1029 # initialize rs2
or x29, x22, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 176)

# Testcase cp_rs1 (Test source rs1 = x23)
li x23, 0x94eb352d785dd828 # initialize rs1
li x28, 0x16ace8b74bbcc1e9 # initialize rs2
or x2, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 184)

# Testcase cp_rs1 (Test source rs1 = x24)
li x24, 0xe695a36b8a89fe4f # initialize rs1
li x31, 0xedab051d4744cca3 # initialize rs2
or x29, x24, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 192)

# Testcase cp_rs1 (Test source rs1 = x25)
li x25, 0x93a48601dad92e98 # initialize rs1
li x2, 0x094be85b32fb4c4b # initialize rs2
or x17, x25, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 200)

# Testcase cp_rs1 (Test source rs1 = x26)
li x26, 0xec0b2e5f01d37e7c # initialize rs1
li x2, 0xdcc2b597f886e04b # initialize rs2
or x13, x26, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 208)

# Testcase cp_rs1 (Test source rs1 = x27)
li x27, 0xe5b6ed9d3d212c66 # initialize rs1
li x21, 0xe80711efb4525429 # initialize rs2
or x25, x27, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 216)

# Testcase cp_rs1 (Test source rs1 = x28)
li x28, 0x9abe2e1b316a40d7 # initialize rs1
li x24, 0xdab0baecfa7ab857 # initialize rs2
or x6, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 224)

# Testcase cp_rs1 (Test source rs1 = x29)
li x29, 0x672946a36ecfb661 # initialize rs1
li x26, 0x77cae87679f7c26a # initialize rs2
or x5, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 232)

# Testcase cp_rs1 (Test source rs1 = x30)
li x30, 0xe21028492dded47b # initialize rs1
li x1, 0x27c0b3c5aff64dc6 # initialize rs2
or x16, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 240)

# Testcase cp_rs1 (Test source rs1 = x31)
li x31, 0x26059a499755faf1 # initialize rs1
li x25, 0x9086bcae4898d26e # initialize rs2
or x3, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 248)

# Testcase cp_rs2 (Test source rs2 = x0)
li x5, 0x90dcaf8b739de088 # initialize rs1
li x0, 0x3c457ab3ec619c8f # initialize rs2
or x3, x5, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 256)

# Testcase cp_rs2 (Test source rs2 = x1)
li x7, 0x4a65070e4a944d60 # initialize rs1
li x1, 0xa5d4edb85288897f # initialize rs2
or x28, x7, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 264)

# Testcase cp_rs2 (Test source rs2 = x2)
li x13, 0x806e6504fbeef007 # initialize rs1
li x2, 0x553821e7fc50724e # initialize rs2
or x28, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 272)

# Testcase cp_rs2 (Test source rs2 = x3)
li x12, 0xb2c6a2f9b9d2196c # initialize rs1
li x3, 0xbbc12b40ecd664b4 # initialize rs2
or x27, x12, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 280)

# Testcase cp_rs2 (Test source rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x1, 0x2962d9394865d39a # initialize rs1
li x4, 0x3e378bd5052add0d # initialize rs2
or x11, x1, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x11, 288)

# Testcase cp_rs2 (Test source rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x19, 0x2df699e126235975 # initialize rs1
li x5, 0x4bceed5edc283c20 # initialize rs2
or x31, x19, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x31, 296)

# Testcase cp_rs2 (Test source rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x4, 0x3f51b129070fafe8 # initialize rs1
li x6, 0x246c201154772424 # initialize rs2
or x16, x4, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x16, 304)

# Testcase cp_rs2 (Test source rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x15, 0x0582821ebba698ec # initialize rs1
li x7, 0xe28c7e0f22bf27f4 # initialize rs2
or x12, x15, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 312)

# Testcase cp_rs2 (Test source rs2 = x8)
li x26, 0x1e1401c2c2bf2afd # initialize rs1
li x8, 0x6db3db9b25ab03fd # initialize rs2
or x9, x26, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 320)

# Testcase cp_rs2 (Test source rs2 = x9)
li x25, 0x49d7d2b0b1c2ad5e # initialize rs1
li x9, 0x62e7cf4d5c636135 # initialize rs2
or x5, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 328)

# Testcase cp_rs2 (Test source rs2 = x10)
li x19, 0xa13a00976c0b5978 # initialize rs1
li x10, 0x1a27d9ee6b1038ec # initialize rs2
or x15, x19, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 336)

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0xb07afe650c69f836 # initialize rs1
li x11, 0xbdd68f6a5f4a3e81 # initialize rs2
or x27, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 344)

# Testcase cp_rs2 (Test source rs2 = x12)
li x16, 0xce8f86b4578c3ff4 # initialize rs1
li x12, 0x4a8960c166373e33 # initialize rs2
or x17, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 352)

# Testcase cp_rs2 (Test source rs2 = x13)
li x28, 0xf640c41740f5c44f # initialize rs1
li x13, 0x9ceb1d08c65ea68e # initialize rs2
or x27, x28, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 360)

# Testcase cp_rs2 (Test source rs2 = x14)
li x30, 0x21a85c355d2d4b96 # initialize rs1
li x14, 0x9e25300840bc3709 # initialize rs2
or x17, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 368)

# Testcase cp_rs2 (Test source rs2 = x15)
li x1, 0x27ba7a6b4c6c8eda # initialize rs1
li x15, 0xd9c90de7745ba7bf # initialize rs2
or x22, x1, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 376)

# Testcase cp_rs2 (Test source rs2 = x16)
li x7, 0x7cadfd2f45a59119 # initialize rs1
li x16, 0xe2e9c3764f9dc749 # initialize rs2
or x1, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 384)

# Testcase cp_rs2 (Test source rs2 = x17)
li x3, 0xdabbdeed878015d3 # initialize rs1
li x17, 0xd45233de2fcab903 # initialize rs2
or x7, x3, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 392)

# Testcase cp_rs2 (Test source rs2 = x18)
li x20, 0x6588339388a08d6c # initialize rs1
li x18, 0x438813f727059ad5 # initialize rs2
or x14, x20, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 400)

# Testcase cp_rs2 (Test source rs2 = x19)
li x1, 0xe6a0a576f300c75a # initialize rs1
li x19, 0x609d0d398755160d # initialize rs2
or x31, x1, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 408)

# Testcase cp_rs2 (Test source rs2 = x20)
li x28, 0x3f346cfd02c33215 # initialize rs1
li x20, 0xae0b4a43825b5738 # initialize rs2
or x29, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 416)

# Testcase cp_rs2 (Test source rs2 = x21)
li x12, 0x13e7f960b7cda1c0 # initialize rs1
li x21, 0x2b4a5411e019339f # initialize rs2
or x28, x12, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 424)

# Testcase cp_rs2 (Test source rs2 = x22)
li x24, 0x02d2df961a0c33b2 # initialize rs1
li x22, 0xd461d2e8f5f66dbb # initialize rs2
or x5, x24, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 432)

# Testcase cp_rs2 (Test source rs2 = x23)
li x24, 0xde7f4dab9e8dbdba # initialize rs1
li x23, 0x3d0ab4a900f20e2b # initialize rs2
or x13, x24, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 440)

# Testcase cp_rs2 (Test source rs2 = x24)
li x13, 0x2f42101e8989a28a # initialize rs1
li x24, 0x8a618aa5136bae7d # initialize rs2
or x7, x13, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 448)

# Testcase cp_rs2 (Test source rs2 = x25)
li x10, 0x67a8ce8fc5888ee7 # initialize rs1
li x25, 0xfa60eaf83bca5804 # initialize rs2
or x17, x10, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 456)

# Testcase cp_rs2 (Test source rs2 = x26)
li x31, 0xeb99ae351cf21b30 # initialize rs1
li x26, 0x2ceac2525f482761 # initialize rs2
or x16, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 464)

# Testcase cp_rs2 (Test source rs2 = x27)
li x26, 0x04a9d6f985dd7790 # initialize rs1
li x27, 0x73dd5b2e19d7d626 # initialize rs2
or x29, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cp_rs2 (Test source rs2 = x28)
li x18, 0xa20f17414abac4f2 # initialize rs1
li x28, 0x4eece338f557ebc3 # initialize rs2
or x25, x18, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 480)

# Testcase cp_rs2 (Test source rs2 = x29)
li x23, 0x575bfc6976712361 # initialize rs1
li x29, 0x47a4752e0af69cdc # initialize rs2
or x8, x23, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 488)

# Testcase cp_rs2 (Test source rs2 = x30)
li x2, 0x6c73bc0778551c85 # initialize rs1
li x30, 0xeaac6daeed55f629 # initialize rs2
or x8, x2, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cp_rs2 (Test source rs2 = x31)
li x29, 0x3c1b688c2370f3a3 # initialize rs1
li x31, 0x51faab505a3a07c3 # initialize rs2
or x13, x29, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 504)

# Testcase cp_rd (Test destination rd = x0)
li x17, 0x53180c8f2554d23f # initialize rs1
li x21, 0xecbba3016de0f2ab # initialize rs2
or x0, x17, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 512)

# Testcase cp_rd (Test destination rd = x1)
li x6, 0xb46f1ef1ad18224e # initialize rs1
li x27, 0xcdf6d59143e97913 # initialize rs2
or x1, x6, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 520)

# Testcase cp_rd (Test destination rd = x2)
li x20, 0x128dad87e0fbac85 # initialize rs1
li x11, 0x06f6c46cdda1865a # initialize rs2
or x2, x20, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 528)

# Testcase cp_rd (Test destination rd = x3)
li x22, 0x6717f83c49ad82ae # initialize rs1
li x7, 0x366c951e7cd827b1 # initialize rs2
or x3, x22, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 536)

# Testcase cp_rd (Test destination rd = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x25, 0x05e4855ad611f61b # initialize rs1
li x13, 0x850369361ad62bf0 # initialize rs2
or x4, x25, x13 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 544)

# Testcase cp_rd (Test destination rd = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x24, 0x33a3c1fa46e6fca6 # initialize rs1
li x11, 0x9e9d3612b9999d75 # initialize rs2
or x5, x24, x11 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 552)

# Testcase cp_rd (Test destination rd = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x15, 0x5c3bdd00ab6be6f1 # initialize rs1
li x9, 0x262afa47b119d7c0 # initialize rs2
or x6, x15, x9 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 560)

# Testcase cp_rd (Test destination rd = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x6, 0x259cac67b274429f # initialize rs1
li x14, 0xa35453a939d211ab # initialize rs2
or x7, x6, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 568)

# Testcase cp_rd (Test destination rd = x8)
li x26, 0x26356581d4224bb0 # initialize rs1
li x19, 0x03902ebaf8ef5385 # initialize rs2
or x8, x26, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 576)

# Testcase cp_rd (Test destination rd = x9)
li x7, 0x36d60a450e584118 # initialize rs1
li x16, 0xbaf6ce9bb416c396 # initialize rs2
or x9, x7, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cp_rd (Test destination rd = x10)
li x11, 0x97c111eb98d0cb4b # initialize rs1
li x10, 0x0d5242bfcaaafb63 # initialize rs2
or x10, x11, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 592)

# Testcase cp_rd (Test destination rd = x11)
li x19, 0x088fd22b324e77b1 # initialize rs1
li x8, 0xac7460c8a9cd2e13 # initialize rs2
or x11, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 600)

# Testcase cp_rd (Test destination rd = x12)
li x31, 0xad48b1cabaf96e19 # initialize rs1
li x21, 0xb3d2351f26479991 # initialize rs2
or x12, x31, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 608)

# Testcase cp_rd (Test destination rd = x13)
li x22, 0x18dbb558a3de41dd # initialize rs1
li x17, 0xe026c23e1c8bd4a6 # initialize rs2
or x13, x22, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 616)

# Testcase cp_rd (Test destination rd = x14)
li x22, 0x65ae3e2c5e130965 # initialize rs1
li x10, 0x1c407021c04a4c0e # initialize rs2
or x14, x22, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 624)

# Testcase cp_rd (Test destination rd = x15)
li x31, 0x7101c9ed1abaf3c0 # initialize rs1
li x25, 0xd1756aed43b7899c # initialize rs2
or x15, x31, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cp_rd (Test destination rd = x16)
li x28, 0xd9898453685c92f1 # initialize rs1
li x15, 0xf42c97909bff35e3 # initialize rs2
or x16, x28, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 640)

# Testcase cp_rd (Test destination rd = x17)
li x7, 0xb3fe855f9e979b33 # initialize rs1
li x8, 0x1b0abf4cadbe25ae # initialize rs2
or x17, x7, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 648)

# Testcase cp_rd (Test destination rd = x18)
li x13, 0x6192214132edffa3 # initialize rs1
li x6, 0xfb2d2735c44f3f8e # initialize rs2
or x18, x13, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 656)

# Testcase cp_rd (Test destination rd = x19)
li x15, 0x654a1153b003c926 # initialize rs1
li x6, 0x4ae9c83e46144b8f # initialize rs2
or x19, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 664)

# Testcase cp_rd (Test destination rd = x20)
li x6, 0x49737b0722ea2b90 # initialize rs1
li x2, 0xf8015bd895d4349c # initialize rs2
or x20, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 672)

# Testcase cp_rd (Test destination rd = x21)
li x7, 0x3e09133681c660f4 # initialize rs1
li x12, 0x57b3a21cd6660995 # initialize rs2
or x21, x7, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cp_rd (Test destination rd = x22)
li x26, 0x6cb627447b481f91 # initialize rs1
li x5, 0x4f6b081747209b88 # initialize rs2
or x22, x26, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 688)

# Testcase cp_rd (Test destination rd = x23)
li x28, 0x905e639b0faa4682 # initialize rs1
li x17, 0x7e4819270c514586 # initialize rs2
or x23, x28, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 696)

# Testcase cp_rd (Test destination rd = x24)
li x14, 0xb01fc673b33f9dac # initialize rs1
li x13, 0x1857b2e82e98f5ae # initialize rs2
or x24, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 704)

# Testcase cp_rd (Test destination rd = x25)
li x18, 0xe983a60a42905f9f # initialize rs1
li x22, 0x65f220a00e297308 # initialize rs2
or x25, x18, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 712)

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xb901c966774525af # initialize rs1
li x27, 0x431a614eac48734b # initialize rs2
or x26, x26, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 720)

# Testcase cp_rd (Test destination rd = x27)
li x6, 0xdac6a4d14f9da2ed # initialize rs1
li x20, 0xe0b7ce11825a5186 # initialize rs2
or x27, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 728)

# Testcase cp_rd (Test destination rd = x28)
li x24, 0x25e88a45de178bec # initialize rs1
li x30, 0x97136f5faf274201 # initialize rs2
or x28, x24, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 736)

# Testcase cp_rd (Test destination rd = x29)
li x15, 0x032a6a493171e7e9 # initialize rs1
li x3, 0x740c5a8b8fdf08a2 # initialize rs2
or x29, x15, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 744)

# Testcase cp_rd (Test destination rd = x30)
li x29, 0x0128bdbeb3463a23 # initialize rs1
li x9, 0x57f4faed26fb452a # initialize rs2
or x30, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 752)

# Testcase cp_rd (Test destination rd = x31)
li x7, 0x15ad125f4432837c # initialize rs1
li x20, 0x7702945ae8793b3d # initialize rs2
or x31, x7, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 760)

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x31, 0x0000000000000000 # initialize rs1
li x26, 0x02fd703b20ae9a3a # initialize rs2
or x21, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 768)

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x18, 0x0000000000000001 # initialize rs1
li x11, 0x64bd1fafa4815749 # initialize rs2
or x17, x18, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x20, 0x0000000000000002 # initialize rs1
li x7, 0x0491d734b500409e # initialize rs2
or x3, x20, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 784)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x23, 0x8000000000000000 # initialize rs1
li x2, 0xc9f518fd57669c49 # initialize rs2
or x24, x23, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 792)

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x20, 0x8000000000000001 # initialize rs1
li x17, 0xf62e83fa180a6947 # initialize rs2
or x10, x20, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 800)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x1, 0x7fffffffffffffff # initialize rs1
li x7, 0x10762e9246796f98 # initialize rs2
or x2, x1, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 808)

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x15, 0x7ffffffffffffffe # initialize rs1
li x8, 0x4bf4bfd89a086616 # initialize rs2
or x19, x15, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 816)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x29, 0xffffffffffffffff # initialize rs1
li x26, 0x92e63a494f33ed7e # initialize rs2
or x28, x29, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 824)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x11, 0xfffffffffffffffe # initialize rs1
li x21, 0x1448d85fa3c1fa8b # initialize rs2
or x31, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 832)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f2)
li x17, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x1d613f42c78bea24 # initialize rs2
or x25, x17, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 840)

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x8, 0x410e0f20e8d4bf78 # initialize rs2
or x20, x14, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 848)

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x29, 0x5555555555555555 # initialize rs1
li x30, 0x1c2c47cf64b22376 # initialize rs2
or x13, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 856)

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x15, 0x00000000ffffffff # initialize rs1
li x22, 0xa2b327fadd906ba9 # initialize rs2
or x23, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 864)

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x9, 0x00000000fffffffe # initialize rs1
li x31, 0x5b3224f6d0718c24 # initialize rs2
or x11, x9, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 872)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x25, 0x0000000100000000 # initialize rs1
li x17, 0xcefc1256bc0c50c8 # initialize rs2
or x27, x25, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 880)

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x28, 0x0000000100000001 # initialize rs1
li x12, 0x34f557471f0b5b34 # initialize rs2
or x27, x28, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 888)

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x6, 0x50f941883f298b99 # initialize rs1
li x25, 0x0000000000000000 # initialize rs2
or x22, x6, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 896)

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x9, 0x42268445be95d1d7 # initialize rs1
li x20, 0x0000000000000001 # initialize rs2
or x3, x9, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 904)

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x7, 0x388afd137c55d240 # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
or x14, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 912)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x28, 0x59c1b77e5a0787a4 # initialize rs1
li x8, 0x8000000000000000 # initialize rs2
or x5, x28, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 920)

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x7, 0xda645ce19fb11bc4 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
or x17, x7, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 928)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x29, 0xdb40aba7aedd924d # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
or x30, x29, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 936)

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x15, 0xa294102f862429e6 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
or x26, x15, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 944)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x12, 0xe4a9cd0c42cd15f1 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
or x8, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 952)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x31, 0xa59503c65c619d9a # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
or x8, x31, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 960)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f2)
li x21, 0x04e0eb3fb7dee085 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
or x24, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 968)

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x31, 0x9083d4aca97a389d # initialize rs1
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x27, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 976)

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x1, 0x9fff80675d6e00b7 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
or x8, x1, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 984)

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x15, 0xa7d66208c57d8292 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
or x9, x15, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 992)

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x18, 0x78c5f0e3534b1179 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
or x9, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x6, 0xb47416d37d809654 # initialize rs1
li x20, 0x0000000100000000 # initialize rs2
or x23, x6, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1008)

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x12, 0x5dc73ca8eba0c00f # initialize rs1
li x18, 0x0000000100000001 # initialize rs2
or x26, x12, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x12, 0x0000000000000000 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
or x3, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x6, 0x0000000000000000 # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
or x29, x6, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x2, 0x0000000000000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
or x10, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x26, 0x0000000000000000 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
or x19, x26, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x3, 0x0000000000000000 # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
or x16, x3, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000000000000 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
or x11, x3, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x13, 0x0000000000000000 # initialize rs1
li x8, 0x7ffffffffffffffe # initialize rs2
or x17, x13, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x14, 0x0000000000000000 # initialize rs1
li x22, 0xffffffffffffffff # initialize rs2
or x17, x14, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x24, 0x0000000000000000 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
or x8, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f2)
li x14, 0x0000000000000000 # initialize rs1
li x31, 0x5bbc887763ae86f2 # initialize rs2
or x9, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x0000000000000000 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x28, x13, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x13, 0x0000000000000000 # initialize rs1
li x23, 0x5555555555555555 # initialize rs2
or x7, x13, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x30, 0x0000000000000000 # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
or x24, x30, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x16, 0x0000000000000000 # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
or x7, x16, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x15, 0x0000000000000000 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
or x10, x15, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x15, 0x0000000000000000 # initialize rs1
li x12, 0x0000000100000001 # initialize rs2
or x10, x15, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x26, 0x0000000000000001 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
or x16, x26, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x29, 0x0000000000000001 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
or x15, x29, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x31, 0x0000000000000001 # initialize rs1
li x28, 0x0000000000000002 # initialize rs2
or x7, x31, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x16, 0x0000000000000001 # initialize rs1
li x25, 0x8000000000000000 # initialize rs2
or x3, x16, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x30, 0x0000000000000001 # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
or x21, x30, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x11, 0x0000000000000001 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
or x17, x11, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x20, 0x0000000000000001 # initialize rs1
li x23, 0x7ffffffffffffffe # initialize rs2
or x21, x20, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x15, 0x0000000000000001 # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
or x6, x15, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x8, 0x0000000000000001 # initialize rs1
li x30, 0xfffffffffffffffe # initialize rs2
or x29, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f2)
li x17, 0x0000000000000001 # initialize rs1
li x5, 0x5bbc887763ae86f2 # initialize rs2
or x10, x17, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000000000001 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x22, x1, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x20, 0x0000000000000001 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
or x7, x20, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x30, 0x0000000000000001 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
or x7, x30, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x8, 0x0000000000000001 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
or x20, x8, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x12, 0x0000000000000001 # initialize rs1
li x15, 0x0000000100000000 # initialize rs2
or x21, x12, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x24, 0x0000000000000001 # initialize rs1
li x26, 0x0000000100000001 # initialize rs2
or x29, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x20, 0x0000000000000002 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
or x17, x20, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x8, 0x0000000000000002 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
or x27, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x19, 0x0000000000000002 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
or x16, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x24, 0x0000000000000002 # initialize rs1
li x10, 0x8000000000000000 # initialize rs2
or x18, x24, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x31, 0x0000000000000002 # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
or x23, x31, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x15, 0x0000000000000002 # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
or x18, x15, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x22, 0x0000000000000002 # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
or x2, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x18, 0x0000000000000002 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
or x24, x18, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x8, 0x0000000000000002 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
or x11, x8, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f2)
li x28, 0x0000000000000002 # initialize rs1
li x1, 0x5bbc887763ae86f2 # initialize rs2
or x2, x28, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x7, 0x0000000000000002 # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x22, x7, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x30, 0x0000000000000002 # initialize rs1
li x14, 0x5555555555555555 # initialize rs2
or x16, x30, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x24, 0x0000000000000002 # initialize rs1
li x20, 0x00000000ffffffff # initialize rs2
or x11, x24, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x23, 0x0000000000000002 # initialize rs1
li x15, 0x00000000fffffffe # initialize rs2
or x26, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x23, 0x0000000000000002 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
or x15, x23, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x16, 0x0000000000000002 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
or x14, x16, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x28, 0x8000000000000000 # initialize rs1
li x14, 0x0000000000000000 # initialize rs2
or x11, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x23, 0x8000000000000000 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
or x7, x23, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x10, 0x8000000000000000 # initialize rs1
li x22, 0x0000000000000002 # initialize rs2
or x29, x10, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x21, 0x8000000000000000 # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
or x30, x21, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x29, 0x8000000000000000 # initialize rs1
li x9, 0x8000000000000001 # initialize rs2
or x24, x29, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x8, 0x8000000000000000 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
or x24, x8, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x26, 0x8000000000000000 # initialize rs1
li x1, 0x7ffffffffffffffe # initialize rs2
or x2, x26, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x30, 0x8000000000000000 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
or x5, x30, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x13, 0x8000000000000000 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
or x18, x13, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f2)
li x6, 0x8000000000000000 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
or x30, x6, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x8000000000000000 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x16, x8, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x29, 0x8000000000000000 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
or x31, x29, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x8, 0x8000000000000000 # initialize rs1
li x3, 0x00000000ffffffff # initialize rs2
or x24, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x7, 0x8000000000000000 # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
or x10, x7, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x16, 0x8000000000000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
or x1, x16, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x22, 0x8000000000000000 # initialize rs1
li x30, 0x0000000100000001 # initialize rs2
or x25, x22, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x31, 0x8000000000000001 # initialize rs1
li x24, 0x0000000000000000 # initialize rs2
or x6, x31, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x20, 0x8000000000000001 # initialize rs1
li x3, 0x0000000000000001 # initialize rs2
or x10, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x27, 0x8000000000000001 # initialize rs1
li x31, 0x0000000000000002 # initialize rs2
or x7, x27, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x13, 0x8000000000000001 # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
or x19, x13, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x20, 0x8000000000000001 # initialize rs1
li x3, 0x8000000000000001 # initialize rs2
or x2, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x24, 0x8000000000000001 # initialize rs1
li x1, 0x7fffffffffffffff # initialize rs2
or x6, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x27, 0x8000000000000001 # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
or x2, x27, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x25, 0x8000000000000001 # initialize rs1
li x26, 0xffffffffffffffff # initialize rs2
or x17, x25, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x24, 0x8000000000000001 # initialize rs1
li x18, 0xfffffffffffffffe # initialize rs2
or x5, x24, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f2)
li x25, 0x8000000000000001 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
or x19, x25, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x8000000000000001 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x19, x8, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x3, 0x8000000000000001 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
or x17, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x1, 0x8000000000000001 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
or x21, x1, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x6, 0x8000000000000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
or x28, x6, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x7, 0x8000000000000001 # initialize rs1
li x29, 0x0000000100000000 # initialize rs2
or x30, x7, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x2, 0x8000000000000001 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
or x9, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x15, 0x7fffffffffffffff # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
or x25, x15, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x8, 0x7fffffffffffffff # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
or x7, x8, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x14, 0x7fffffffffffffff # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
or x1, x14, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x10, 0x7fffffffffffffff # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
or x15, x10, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x28, 0x7fffffffffffffff # initialize rs1
li x20, 0x8000000000000001 # initialize rs2
or x29, x28, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x1, 0x7fffffffffffffff # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
or x5, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x26, 0x7fffffffffffffff # initialize rs1
li x6, 0x7ffffffffffffffe # initialize rs2
or x29, x26, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x14, 0x7fffffffffffffff # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
or x11, x14, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x24, 0x7fffffffffffffff # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
or x29, x24, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x17, 0x7fffffffffffffff # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
or x1, x17, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x7fffffffffffffff # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x25, x17, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x12, 0x7fffffffffffffff # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
or x14, x12, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x9, 0x7fffffffffffffff # initialize rs1
li x13, 0x00000000ffffffff # initialize rs2
or x14, x9, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x21, 0x7fffffffffffffff # initialize rs1
li x18, 0x00000000fffffffe # initialize rs2
or x9, x21, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x22, 0x7fffffffffffffff # initialize rs1
li x9, 0x0000000100000000 # initialize rs2
or x15, x22, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x27, 0x7fffffffffffffff # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
or x3, x27, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x19, 0x7ffffffffffffffe # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
or x6, x19, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x1, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
or x9, x1, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 0)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x12, 0x7ffffffffffffffe # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
or x24, x12, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x16, 0x7ffffffffffffffe # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
or x25, x16, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 16)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x27, 0x7ffffffffffffffe # initialize rs1
li x15, 0x8000000000000001 # initialize rs2
or x29, x27, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 24)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x19, 0x7ffffffffffffffe # initialize rs1
li x26, 0x7fffffffffffffff # initialize rs2
or x20, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 32)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x21, 0x7ffffffffffffffe # initialize rs1
li x5, 0x7ffffffffffffffe # initialize rs2
or x3, x21, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 40)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x1, 0x7ffffffffffffffe # initialize rs1
li x20, 0xffffffffffffffff # initialize rs2
or x10, x1, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 48)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x1, 0x7ffffffffffffffe # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
or x24, x1, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 56)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x15, 0x7ffffffffffffffe # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
or x7, x15, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 64)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0x7ffffffffffffffe # initialize rs1
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x30, x13, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 72)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x3, 0x7ffffffffffffffe # initialize rs1
li x19, 0x5555555555555555 # initialize rs2
or x11, x3, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 80)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x15, 0x7ffffffffffffffe # initialize rs1
li x24, 0x00000000ffffffff # initialize rs2
or x16, x15, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 88)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x22, 0x7ffffffffffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
or x26, x22, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 96)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x8, 0x7ffffffffffffffe # initialize rs1
li x11, 0x0000000100000000 # initialize rs2
or x5, x8, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x25, 0x7ffffffffffffffe # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
or x17, x25, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x1, 0xffffffffffffffff # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
or x28, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x27, 0xffffffffffffffff # initialize rs1
li x7, 0x0000000000000001 # initialize rs2
or x8, x27, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x18, 0xffffffffffffffff # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
or x11, x18, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x16, 0xffffffffffffffff # initialize rs1
li x1, 0x8000000000000000 # initialize rs2
or x30, x16, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x11, 0xffffffffffffffff # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
or x21, x11, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x27, 0xffffffffffffffff # initialize rs1
li x24, 0x7fffffffffffffff # initialize rs2
or x22, x27, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x26, 0xffffffffffffffff # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
or x23, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x25, 0xffffffffffffffff # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
or x30, x25, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x23, 0xffffffffffffffff # initialize rs1
li x20, 0xfffffffffffffffe # initialize rs2
or x9, x23, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f2)
li x24, 0xffffffffffffffff # initialize rs1
li x17, 0x5bbc887763ae86f2 # initialize rs2
or x26, x24, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x10, 0xffffffffffffffff # initialize rs1
li x9, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x24, x10, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x19, 0xffffffffffffffff # initialize rs1
li x15, 0x5555555555555555 # initialize rs2
or x28, x19, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x14, 0xffffffffffffffff # initialize rs1
li x1, 0x00000000ffffffff # initialize rs2
or x15, x14, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x12, 0xffffffffffffffff # initialize rs1
li x1, 0x00000000fffffffe # initialize rs2
or x8, x12, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x2, 0xffffffffffffffff # initialize rs1
li x3, 0x0000000100000000 # initialize rs2
or x23, x2, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x10, 0xffffffffffffffff # initialize rs1
li x13, 0x0000000100000001 # initialize rs2
or x5, x10, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x16, 0xfffffffffffffffe # initialize rs1
li x6, 0x0000000000000000 # initialize rs2
or x20, x16, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x31, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000000000001 # initialize rs2
or x5, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x3, 0xfffffffffffffffe # initialize rs1
li x29, 0x0000000000000002 # initialize rs2
or x8, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 264)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x5, 0xfffffffffffffffe # initialize rs1
li x28, 0x8000000000000000 # initialize rs2
or x10, x5, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 272)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x12, 0xfffffffffffffffe # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
or x30, x12, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 280)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x23, 0xfffffffffffffffe # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
or x31, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 288)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x25, 0xfffffffffffffffe # initialize rs1
li x9, 0x7ffffffffffffffe # initialize rs2
or x22, x25, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 296)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x20, 0xfffffffffffffffe # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
or x5, x20, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 304)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x20, 0xfffffffffffffffe # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
or x29, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 312)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f2)
li x31, 0xfffffffffffffffe # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
or x30, x31, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 320)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x26, 0xfffffffffffffffe # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x24, x26, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 328)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x24, 0xfffffffffffffffe # initialize rs1
li x2, 0x5555555555555555 # initialize rs2
or x7, x24, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 336)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x19, 0xfffffffffffffffe # initialize rs1
li x8, 0x00000000ffffffff # initialize rs2
or x12, x19, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 344)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x15, 0xfffffffffffffffe # initialize rs1
li x26, 0x00000000fffffffe # initialize rs2
or x11, x15, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 352)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x17, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
or x20, x17, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 360)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x22, 0xfffffffffffffffe # initialize rs1
li x14, 0x0000000100000001 # initialize rs2
or x1, x22, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 368)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x0)
li x22, 0x5bbc887763ae86f2 # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
or x23, x22, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 376)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x1)
li x25, 0x5bbc887763ae86f2 # initialize rs1
li x29, 0x0000000000000001 # initialize rs2
or x5, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 384)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x2)
li x28, 0x5bbc887763ae86f2 # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
or x7, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 392)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000000)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
or x21, x11, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 400)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x8000000000000001)
li x7, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
or x30, x7, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 408)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7fffffffffffffff)
li x10, 0x5bbc887763ae86f2 # initialize rs1
li x27, 0x7fffffffffffffff # initialize rs2
or x16, x10, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 416)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x7ffffffffffffffe)
li x20, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
or x10, x20, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 424)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffffffffffff)
li x30, 0x5bbc887763ae86f2 # initialize rs1
li x17, 0xffffffffffffffff # initialize rs2
or x28, x30, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 432)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffffffffffe)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x22, 0xfffffffffffffffe # initialize rs2
or x3, x21, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 440)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5bbc887763ae86f2)
li x31, 0x5bbc887763ae86f2 # initialize rs1
li x18, 0x5bbc887763ae86f2 # initialize rs2
or x20, x31, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 448)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x11, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x30, x11, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 456)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x5555555555555555)
li x15, 0x5bbc887763ae86f2 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
or x25, x15, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 464)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xffffffff)
li x26, 0x5bbc887763ae86f2 # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
or x28, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 472)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0xfffffffe)
li x16, 0x5bbc887763ae86f2 # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
or x11, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 480)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000000)
li x21, 0x5bbc887763ae86f2 # initialize rs1
li x23, 0x0000000100000000 # initialize rs2
or x25, x21, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 488)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f2 rs2 = 0x100000001)
li x18, 0x5bbc887763ae86f2 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
or x8, x18, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 496)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x22, 0x0000000000000000 # initialize rs2
or x15, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 504)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000000000001 # initialize rs2
or x20, x29, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 512)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
or x2, x28, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 520)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x5, 0x8000000000000000 # initialize rs2
or x20, x10, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 528)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x27, 0x8000000000000001 # initialize rs2
or x14, x1, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 536)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0x7fffffffffffffff # initialize rs2
or x29, x21, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 544)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x28, 0x7ffffffffffffffe # initialize rs2
or x11, x21, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 552)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x3, 0xffffffffffffffff # initialize rs2
or x14, x20, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 560)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x25, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x1, 0xfffffffffffffffe # initialize rs2
or x27, x25, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 568)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f2)
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x5bbc887763ae86f2 # initialize rs2
or x11, x31, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 576)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x9, x21, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 584)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x17, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x5555555555555555 # initialize rs2
or x24, x17, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 592)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x00000000ffffffff # initialize rs2
or x7, x1, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 600)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x00000000fffffffe # initialize rs2
or x2, x19, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 608)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
or x19, x28, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 616)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x21, 0x0000000100000001 # initialize rs2
or x29, x24, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 624)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x28, 0x5555555555555555 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
or x15, x28, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 632)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x14, 0x5555555555555555 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
or x9, x14, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 640)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x31, 0x5555555555555555 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
or x21, x31, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 648)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x16, 0x5555555555555555 # initialize rs1
li x9, 0x8000000000000000 # initialize rs2
or x30, x16, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 656)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x22, 0x5555555555555555 # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
or x16, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 664)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x1, 0x5555555555555555 # initialize rs1
li x6, 0x7fffffffffffffff # initialize rs2
or x30, x1, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 672)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x14, 0x5555555555555555 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
or x21, x14, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 680)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x23, 0x5555555555555555 # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
or x3, x23, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 688)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x19, 0x5555555555555555 # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
or x18, x19, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 696)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f2)
li x26, 0x5555555555555555 # initialize rs1
li x9, 0x5bbc887763ae86f2 # initialize rs2
or x19, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 704)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x17, 0x5555555555555555 # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x26, x17, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 712)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x3, 0x5555555555555555 # initialize rs1
li x26, 0x5555555555555555 # initialize rs2
or x11, x3, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 720)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x24, 0x5555555555555555 # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
or x1, x24, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 728)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x6, 0x5555555555555555 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
or x15, x6, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 736)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x25, 0x5555555555555555 # initialize rs1
li x22, 0x0000000100000000 # initialize rs2
or x18, x25, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 744)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x18, 0x5555555555555555 # initialize rs1
li x3, 0x0000000100000001 # initialize rs2
or x13, x18, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 752)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x31, 0x00000000ffffffff # initialize rs1
li x3, 0x0000000000000000 # initialize rs2
or x19, x31, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 760)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x6, 0x00000000ffffffff # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
or x12, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 768)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x6, 0x00000000ffffffff # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
or x17, x6, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 776)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x21, 0x00000000ffffffff # initialize rs1
li x3, 0x8000000000000000 # initialize rs2
or x6, x21, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 784)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x6, 0x00000000ffffffff # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
or x30, x6, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 792)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x27, 0x00000000ffffffff # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
or x19, x27, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 800)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x6, 0x00000000ffffffff # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
or x9, x6, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 808)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x1, 0x00000000ffffffff # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
or x20, x1, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 816)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x19, 0x00000000ffffffff # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
or x27, x19, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 824)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f2)
li x3, 0x00000000ffffffff # initialize rs1
li x20, 0x5bbc887763ae86f2 # initialize rs2
or x15, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 832)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0x00000000ffffffff # initialize rs1
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x9, x23, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 840)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x30, 0x00000000ffffffff # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
or x29, x30, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 848)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x16, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
or x2, x16, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 856)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x27, 0x00000000ffffffff # initialize rs1
li x12, 0x00000000fffffffe # initialize rs2
or x21, x27, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 864)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x16, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000100000000 # initialize rs2
or x8, x16, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 872)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x17, 0x00000000ffffffff # initialize rs1
li x31, 0x0000000100000001 # initialize rs2
or x23, x17, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 880)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x25, 0x00000000fffffffe # initialize rs1
li x11, 0x0000000000000000 # initialize rs2
or x27, x25, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 888)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x30, 0x00000000fffffffe # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
or x3, x30, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 896)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x1, 0x00000000fffffffe # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
or x15, x1, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 904)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x19, 0x00000000fffffffe # initialize rs1
li x18, 0x8000000000000000 # initialize rs2
or x22, x19, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 912)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x30, 0x00000000fffffffe # initialize rs1
li x8, 0x8000000000000001 # initialize rs2
or x26, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 920)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x21, 0x00000000fffffffe # initialize rs1
li x25, 0x7fffffffffffffff # initialize rs2
or x2, x21, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 928)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x15, 0x00000000fffffffe # initialize rs1
li x19, 0x7ffffffffffffffe # initialize rs2
or x17, x15, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 936)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x25, 0x00000000fffffffe # initialize rs1
li x29, 0xffffffffffffffff # initialize rs2
or x24, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 944)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x17, 0x00000000fffffffe # initialize rs1
li x23, 0xfffffffffffffffe # initialize rs2
or x30, x17, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 952)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f2)
li x20, 0x00000000fffffffe # initialize rs1
li x28, 0x5bbc887763ae86f2 # initialize rs2
or x21, x20, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 960)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x00000000fffffffe # initialize rs1
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x27, x18, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 968)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x12, 0x00000000fffffffe # initialize rs1
li x11, 0x5555555555555555 # initialize rs2
or x28, x12, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 976)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x11, 0x00000000fffffffe # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
or x9, x11, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 984)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x11, 0x00000000fffffffe # initialize rs1
li x28, 0x00000000fffffffe # initialize rs2
or x17, x11, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 992)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x16, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
or x9, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1000)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x20, 0x00000000fffffffe # initialize rs1
li x5, 0x0000000100000001 # initialize rs2
or x3, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1008)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x19, 0x0000000100000000 # initialize rs1
li x30, 0x0000000000000000 # initialize rs2
or x26, x19, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1016)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x8, 0x0000000100000000 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
or x17, x8, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1024)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x8, 0x0000000100000000 # initialize rs1
li x3, 0x0000000000000002 # initialize rs2
or x12, x8, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1032)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x30, 0x0000000100000000 # initialize rs1
li x15, 0x8000000000000000 # initialize rs2
or x28, x30, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1040)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x31, 0x0000000100000000 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
or x9, x31, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1048)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x3, 0x0000000100000000 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
or x19, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1056)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x6, 0x0000000100000000 # initialize rs1
li x2, 0x7ffffffffffffffe # initialize rs2
or x27, x6, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1064)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x10, 0x0000000100000000 # initialize rs1
li x16, 0xffffffffffffffff # initialize rs2
or x17, x10, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1072)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x7, 0x0000000100000000 # initialize rs1
li x15, 0xfffffffffffffffe # initialize rs2
or x20, x7, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1080)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f2)
li x7, 0x0000000100000000 # initialize rs1
li x2, 0x5bbc887763ae86f2 # initialize rs2
or x13, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1088)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0x0000000100000000 # initialize rs1
li x29, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x30, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1096)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x20, 0x0000000100000000 # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
or x2, x20, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1104)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x13, 0x0000000100000000 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
or x6, x13, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 1112)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x31, 0x0000000100000000 # initialize rs1
li x5, 0x00000000fffffffe # initialize rs2
or x16, x31, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1120)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x20, 0x0000000100000000 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
or x7, x20, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1128)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x28, 0x0000000100000000 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
or x1, x28, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1136)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x27, 0x0000000100000001 # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
or x7, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1144)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x8, 0x0000000100000001 # initialize rs1
li x21, 0x0000000000000001 # initialize rs2
or x14, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1152)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x3, 0x0000000100000001 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
or x12, x3, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1160)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x27, 0x0000000100000001 # initialize rs1
li x16, 0x8000000000000000 # initialize rs2
or x9, x27, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1168)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x5, 0x0000000100000001 # initialize rs1
li x1, 0x8000000000000001 # initialize rs2
or x13, x5, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1176)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x8, 0x0000000100000001 # initialize rs1
li x9, 0x7fffffffffffffff # initialize rs2
or x30, x8, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1184)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x1, 0x0000000100000001 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
or x13, x1, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1192)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x20, 0x0000000100000001 # initialize rs1
li x25, 0xffffffffffffffff # initialize rs2
or x5, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 1200)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x14, 0x0000000100000001 # initialize rs1
li x29, 0xfffffffffffffffe # initialize rs2
or x24, x14, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1208)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f2)
li x29, 0x0000000100000001 # initialize rs1
li x12, 0x5bbc887763ae86f2 # initialize rs2
or x3, x29, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1216)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x1, 0x0000000100000001 # initialize rs1
li x13, 0xaaaaaaaaaaaaaaaa # initialize rs2
or x2, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1224)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x5, 0x0000000100000001 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
or x20, x5, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1232)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x8, 0x0000000100000001 # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
or x25, x8, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1240)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x30, 0x0000000100000001 # initialize rs1
li x8, 0x00000000fffffffe # initialize rs2
or x27, x30, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1248)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x2, 0x0000000100000001 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
or x7, x2, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1256)

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x3, 0x0000000100000001 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
or x27, x3, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1264)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x0, 0x2606a6cd09c388ba # initialize rs1
li x0, 0xe42252768fb2fc67 # initialize rs2
or x25, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1272)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x1, 0x7203db67a61b85bb # initialize rs1
li x1, 0x42d1322169ff6595 # initialize rs2
or x26, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1280)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x2, 0xc255c6bc6fea8de9 # initialize rs1
li x2, 0xd2c3ac1ad492f5a1 # initialize rs2
or x12, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1288)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x3, 0xdb7915f395287a32 # initialize rs1
li x3, 0x98f951086440e608 # initialize rs2
or x11, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1296)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0xcf48b89fe9a4dca4 # initialize rs1
li x4, 0xbdbd58c82e6729e4 # initialize rs2
or x12, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x12, 1304)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0x8e7355f84a7b8a99 # initialize rs1
li x5, 0xb2d6d5a5298218a6 # initialize rs2
or x9, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x9, 1312)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xf8ac8cea93876278 # initialize rs1
li x6, 0x15fbbfb140d882f5 # initialize rs2
or x21, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x21, 1320)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x7120790792706483 # initialize rs1
li x7, 0xdef7afb389024d09 # initialize rs2
or x3, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1328)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x8, 0x59bf89dfa200648b # initialize rs1
li x8, 0x5bb27d552346b547 # initialize rs2
or x30, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1336)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x9, 0xcf5f4f5887963ee2 # initialize rs1
li x9, 0x54bdd8b7fbe0d2b1 # initialize rs2
or x2, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1344)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x10, 0xaaaa5018fc5c5cdf # initialize rs1
li x10, 0x49165a1386383791 # initialize rs2
or x25, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1352)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x11, 0x26bbd2cf928b11a2 # initialize rs1
li x11, 0xf0b76a7a138446df # initialize rs2
or x24, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1360)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x12, 0x7349fc67def87b07 # initialize rs1
li x12, 0xdf9b0665f646d831 # initialize rs2
or x18, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1368)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x13, 0x3bc6e3c136843222 # initialize rs1
li x13, 0xca40b2329538819d # initialize rs2
or x28, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1376)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x14, 0xa73c39f14b754ac9 # initialize rs1
li x14, 0x04224c4a4dd6a43a # initialize rs2
or x22, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1384)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x15, 0x0d89cc07d2ab784f # initialize rs1
li x15, 0xb3cba7a77562d7f6 # initialize rs2
or x31, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1392)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x16, 0xac25d786b8bb42eb # initialize rs1
li x16, 0xa31771ead40f9c37 # initialize rs2
or x1, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1400)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x17, 0xaaf9af0d4c5734bb # initialize rs1
li x17, 0xb0ebd9075e36b8dc # initialize rs2
or x26, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1408)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x18, 0x03f1c9a1ae050cfb # initialize rs1
li x18, 0xd3f0bfa78a27be52 # initialize rs2
or x13, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1416)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x19, 0xbdbfcd0a43074eb1 # initialize rs1
li x19, 0xbcdc379e98cb9381 # initialize rs2
or x17, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1424)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x20, 0x448e48ae5f0bfe3f # initialize rs1
li x20, 0xbcf1ae6bb6ab6d53 # initialize rs2
or x12, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1432)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x21, 0xffd3e784fc176be9 # initialize rs1
li x21, 0xd1d9506877b85c7a # initialize rs2
or x23, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1440)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x22, 0x6b6b16f2682faa5c # initialize rs1
li x22, 0xe9ac87a88e4f4617 # initialize rs2
or x20, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1448)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x23, 0xfac1b62e601ae3be # initialize rs1
li x23, 0x3d1b7fea9ffee4b4 # initialize rs2
or x12, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1456)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x24, 0x15759c471991ad8b # initialize rs1
li x24, 0x2b7a3be55d4eb920 # initialize rs2
or x8, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1464)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x25, 0xe44a9975d162face # initialize rs1
li x25, 0xb67e5dbde27d2c6d # initialize rs2
or x27, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1472)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x26, 0xd6f1ed9e7608b9b8 # initialize rs1
li x26, 0x588b81e81ed36bcf # initialize rs2
or x12, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1480)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x27, 0x59f9c85f2659346a # initialize rs1
li x27, 0x999aa499f48b4219 # initialize rs2
or x26, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1488)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x28, 0x64df3348c087af44 # initialize rs1
li x28, 0x3f8035bbe6527068 # initialize rs2
or x22, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1496)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x29, 0x07b46f3a792ac017 # initialize rs1
li x29, 0xdcaa7268ba8178e8 # initialize rs2
or x16, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1504)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x30, 0x472762ce8870da25 # initialize rs1
li x30, 0x5c76f68c23bea1b2 # initialize rs2
or x26, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1512)

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x31, 0x3c68867fbc76a3ac # initialize rs1
li x31, 0x9b729216f07c45a7 # initialize rs2
or x15, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1520)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0x08288d3be653f087 # initialize rs1
li x22, 0x81a671e4853a8018 # initialize rs2
or x0, x0, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1528)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x2038e510da2eef23 # initialize rs1
li x1, 0xbb14d06b124bf707 # initialize rs2
or x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1536)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0xab7fe27a9c894e4e # initialize rs1
li x8, 0xc4423e13c9dff017 # initialize rs2
or x2, x2, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 1544)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x7a6855fef0055aba # initialize rs1
li x29, 0x09ddaeb13ae53822 # initialize rs2
or x3, x3, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 1552)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x13de8b57c5ee0c48 # initialize rs1
li x21, 0x5f33ae275aa510e2 # initialize rs2
or x4, x4, x21 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 1560)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xc5adba2059b1cfab # initialize rs1
li x15, 0x96819e0f264a56a0 # initialize rs2
or x5, x5, x15 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 1568)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0xfd08783df8bf8b9e # initialize rs1
li x26, 0xae9c7193763e4842 # initialize rs2
or x6, x6, x26 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 1576)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x1df2564a089be1f9 # initialize rs1
li x2, 0x53242cfbb0ce7c9a # initialize rs2
or x7, x7, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 1584)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xf1e0af86163d5498 # initialize rs1
li x21, 0xd88e06a9e7e702af # initialize rs2
or x8, x8, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 1592)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0xc93f044b996ef99a # initialize rs1
li x3, 0xf9a3e43c5c22f114 # initialize rs2
or x9, x9, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 1600)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x5e0f76faae40a3ce # initialize rs1
li x24, 0x45c441f64992efc0 # initialize rs2
or x10, x10, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 1608)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x1993497d7431f620 # initialize rs1
li x19, 0x242d4f405cd54135 # initialize rs2
or x11, x11, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 1616)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x0b80358a44f69f0e # initialize rs1
li x25, 0xfb32dd0b3ec694d4 # initialize rs2
or x12, x12, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 1624)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0x2f38627854c5e3ad # initialize rs1
li x30, 0xfcb4cf597ad6e770 # initialize rs2
or x13, x13, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 1632)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0xaefb9641ac089d62 # initialize rs1
li x14, 0xe1fc58f9d401498d # initialize rs2
or x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 1640)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0xd4528239f3dd2d89 # initialize rs1
li x5, 0x0cfe02c4c1123377 # initialize rs2
or x15, x15, x5 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 1648)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x1408137bc52055ac # initialize rs1
li x7, 0x9dc03471e112820d # initialize rs2
or x16, x16, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 1656)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0xbb380601661b2567 # initialize rs1
li x7, 0x0bf355029d16c8d9 # initialize rs2
or x17, x17, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 1664)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x54184063825c7dd5 # initialize rs1
li x24, 0x7f4b77cd79254d71 # initialize rs2
or x18, x18, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 1672)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0xa78c1a5bfd3d0da9 # initialize rs1
li x2, 0x0045539cb30f6ab0 # initialize rs2
or x19, x19, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 1680)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0x58638b61bf212a7a # initialize rs1
li x16, 0x61b2d07da259ff99 # initialize rs2
or x20, x20, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 1688)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x851cad2de8d7a19d # initialize rs1
li x1, 0xe196f3e43a291c0d # initialize rs2
or x21, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 1696)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x97d6fbd57f78f736 # initialize rs1
li x21, 0xf6638c275bb78923 # initialize rs2
or x22, x22, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 1704)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0x612ca7959bfb0ad7 # initialize rs1
li x24, 0x266398e8e8a68cd5 # initialize rs2
or x23, x23, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 1712)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0xa27798e2a3f67005 # initialize rs1
li x16, 0xe9a39981a29c71a3 # initialize rs2
or x24, x24, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 1720)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0x50d1bb10ab51ecfd # initialize rs1
li x29, 0x128af71db0baf8af # initialize rs2
or x25, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 1728)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x2ed44be48cfcd711 # initialize rs1
li x10, 0x8c3215a8819aa550 # initialize rs2
or x26, x26, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 1736)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0x84c7bc5e9b666cf5 # initialize rs1
li x6, 0xfd7c2baf30e28fdc # initialize rs2
or x27, x27, x6 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 1744)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0xcad51da9a629c390 # initialize rs1
li x26, 0xdf5d03d805f395a6 # initialize rs2
or x28, x28, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 1752)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0x003779401b81fb59 # initialize rs1
li x30, 0x0663051550737c19 # initialize rs2
or x29, x29, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 1760)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x1568c8380ddbd6d4 # initialize rs1
li x3, 0x1bc34e965df95b80 # initialize rs2
or x30, x30, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 1768)

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0xe0bd858414d276fe # initialize rs1
li x29, 0xbc108822ef51a7ca # initialize rs2
or x31, x31, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 1776)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x0)
li x22, 0x60b834926185f52f # initialize rs1
li x0, 0x89851af14f017e7c # initialize rs2
or x0, x22, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 1784)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x1)
li x21, 0x374eb0707833292a # initialize rs1
li x1, 0x9bf791c7ad763427 # initialize rs2
or x1, x21, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 1792)
addi x4, x4, 1800 # increment signature pointer and reset offset

# Testcase cmp_rd_rs2 (Test rd = rs2 = x2)
li x13, 0x2b7e7495f46c65c2 # initialize rs1
li x2, 0x2ccb192d07a7c5d6 # initialize rs2
or x2, x13, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 0)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x3)
li x24, 0x1699da69bf9e92e9 # initialize rs1
li x3, 0x34a51255be0f1174 # initialize rs2
or x3, x24, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 8)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x22, 0xf795d77f12a383ee # initialize rs1
li x4, 0x1ccd8094d760d375 # initialize rs2
or x4, x22, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 16)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x17, 0x410ef7cb79b7c75d # initialize rs1
li x5, 0x74a3dde291a0d95d # initialize rs2
or x5, x17, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 24)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x17, 0xc372cdccdb767c24 # initialize rs1
li x6, 0xc5c7a154b99b09c0 # initialize rs2
or x6, x17, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 32)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x26, 0x91988711962a9a3f # initialize rs1
li x7, 0x32bedede2155bd2c # initialize rs2
or x7, x26, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 40)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x8)
li x24, 0x133015921ec90586 # initialize rs1
li x8, 0x5b61a6f28f6d78d4 # initialize rs2
or x8, x24, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 48)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x9)
li x26, 0x94f345d8d8155e25 # initialize rs1
li x9, 0xfad5cdd5f059a057 # initialize rs2
or x9, x26, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 56)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x10)
li x13, 0x85380a20a83c7e34 # initialize rs1
li x10, 0xe4a17bdcf02d94be # initialize rs2
or x10, x13, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 64)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x11)
li x27, 0xc335b292ef15809e # initialize rs1
li x11, 0x681291e943b12a06 # initialize rs2
or x11, x27, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 72)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x12)
li x30, 0xe8cf20035abf8774 # initialize rs1
li x12, 0x1eb15def17495aa4 # initialize rs2
or x12, x30, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x13)
li x1, 0xb1403b3e0620c641 # initialize rs1
li x13, 0xe0cde4f154a46979 # initialize rs2
or x13, x1, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 88)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x14)
li x28, 0x30a7be7161d08fad # initialize rs1
li x14, 0x8a7c250a8b3e3e56 # initialize rs2
or x14, x28, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 96)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x15)
li x21, 0x13c9d7abe0cb2be0 # initialize rs1
li x15, 0x78ad7f08b5f894f9 # initialize rs2
or x15, x21, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 104)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x16)
li x11, 0x3de5aea3159a6ab1 # initialize rs1
li x16, 0x335c3a88c673df96 # initialize rs2
or x16, x11, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 112)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x17)
li x13, 0x7141e847fd5aff4d # initialize rs1
li x17, 0xce7cd30b9d476928 # initialize rs2
or x17, x13, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x18)
li x7, 0x63a0a38a213d3db2 # initialize rs1
li x18, 0x5c0d6a4773fc29f6 # initialize rs2
or x18, x7, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 128)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x19)
li x9, 0x467ce74c5de88dd6 # initialize rs1
li x19, 0xb35ad8cb979cedfd # initialize rs2
or x19, x9, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 136)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x20)
li x19, 0xcb1e713c62054f55 # initialize rs1
li x20, 0xfe795821eedee996 # initialize rs2
or x20, x19, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 144)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x21)
li x3, 0x3754d64001d842ea # initialize rs1
li x21, 0x536fc9c500a95779 # initialize rs2
or x21, x3, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 152)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x22)
li x19, 0xbd7c70e37beae3c9 # initialize rs1
li x22, 0x1fb7f52f9fe67281 # initialize rs2
or x22, x19, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 160)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x23)
li x3, 0xeff134a251e7a0ac # initialize rs1
li x23, 0xe7c11546bb1a4444 # initialize rs2
or x23, x3, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 168)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x24)
li x20, 0x526ff6199e46ddc8 # initialize rs1
li x24, 0x22a92ea76cf02084 # initialize rs2
or x24, x20, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 176)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x25)
li x20, 0xa73bb2dca4162621 # initialize rs1
li x25, 0xaf0e9fc1d6d10cbd # initialize rs2
or x25, x20, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x26)
li x22, 0xbff3ea229e3b92d7 # initialize rs1
li x26, 0x83b8db0034f4017c # initialize rs2
or x26, x22, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 192)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x27)
li x16, 0x15ba7eb5572e80fe # initialize rs1
li x27, 0xda2d5ad3a7c7f5d8 # initialize rs2
or x27, x16, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 200)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x28)
li x16, 0x17240f3ca8d9f86c # initialize rs1
li x28, 0x17922058c0f3db40 # initialize rs2
or x28, x16, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 208)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x29)
li x25, 0x6136a5623aa81d87 # initialize rs1
li x29, 0x772c73114a001ab5 # initialize rs2
or x29, x25, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 216)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x30)
li x27, 0xae0f1b621da2b917 # initialize rs1
li x30, 0x2020ea4136605b79 # initialize rs2
or x30, x27, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 224)

# Testcase cmp_rd_rs2 (Test rd = rs2 = x31)
li x20, 0xf6370d9801e95bfd # initialize rs1
li x31, 0xd9f46d4ee011975a # initialize rs2
or x31, x20, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 232)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x335fb87dda874c3f # initialize rs1
li x0, 0xedc0da443d86fc0f # initialize rs2
or x0, x0, x0 # perform operation
RVTEST_SIGUPD(x4, x0, x0, 240)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0x3b561cb47146ffc6 # initialize rs1
li x1, 0x583f502b5c5e3fbe # initialize rs2
or x1, x1, x1 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 248)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0xe90d7a177caec365 # initialize rs1
li x2, 0x4c7ee3a1f6dc1f4a # initialize rs2
or x2, x2, x2 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 256)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0xa6edaa25731cd42f # initialize rs1
li x3, 0x161fdb57e7427568 # initialize rs2
or x3, x3, x3 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 264)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
mv x5, x4 # switch signature pointer register to avoid conflict with test
li x4, 0x97a8565b9a201a3c # initialize rs1
li x4, 0x738743687d8b59df # initialize rs2
or x4, x4, x4 # perform operation
RVTEST_SIGUPD(x5, x0, x4, 272)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
mv x6, x5 # switch signature pointer register to avoid conflict with test
li x5, 0xd9ed051c2d630ece # initialize rs1
li x5, 0xdc2e9a3fc13f912d # initialize rs2
or x5, x5, x5 # perform operation
RVTEST_SIGUPD(x6, x0, x5, 280)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
mv x7, x6 # switch signature pointer register to avoid conflict with test
li x6, 0x8fcadecd29ed9b8e # initialize rs1
li x6, 0xc28bf7ef21f323e9 # initialize rs2
or x6, x6, x6 # perform operation
RVTEST_SIGUPD(x7, x0, x6, 288)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
mv x4, x7 # switch signature pointer register to avoid conflict with test
li x7, 0x82d7a8b6321d2fbf # initialize rs1
li x7, 0x30ed7eb46984051b # initialize rs2
or x7, x7, x7 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 296)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0x370ca75f285f6b1d # initialize rs1
li x8, 0x50c5634708cc787a # initialize rs2
or x8, x8, x8 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 304)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xbcc008eb288258e9 # initialize rs1
li x9, 0x607d9b3d0ceb9014 # initialize rs2
or x9, x9, x9 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 312)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x453d6c909d2365ad # initialize rs1
li x10, 0xf457b2393e6a0b23 # initialize rs2
or x10, x10, x10 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 320)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x1e216d74f924a4b4 # initialize rs1
li x11, 0xa64caac8463f7294 # initialize rs2
or x11, x11, x11 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 328)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xa3e631df22b71669 # initialize rs1
li x12, 0xfbeffaa4763b3af3 # initialize rs2
or x12, x12, x12 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 336)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0xb9cc83af04a48530 # initialize rs1
li x13, 0x62cb3563745bf8d4 # initialize rs2
or x13, x13, x13 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 344)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0xd46795d8557d1095 # initialize rs1
li x14, 0x93ac8df430b677de # initialize rs2
or x14, x14, x14 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 352)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0xb68e1acf8d58ec23 # initialize rs1
li x15, 0xef915ba645022ab7 # initialize rs2
or x15, x15, x15 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 360)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x64507530628448c9 # initialize rs1
li x16, 0x8105797f11f662af # initialize rs2
or x16, x16, x16 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 368)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0x009ba45637efcafb # initialize rs1
li x17, 0x0b93920000f5c6fa # initialize rs2
or x17, x17, x17 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 376)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x214f596c1054df99 # initialize rs1
li x18, 0xdfcd3cc147e81b75 # initialize rs2
or x18, x18, x18 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 384)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x6f0db0ea3efe29ee # initialize rs1
li x19, 0xbc3daab21f2e2a42 # initialize rs2
or x19, x19, x19 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 392)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x9bdd68880b4d53c8 # initialize rs1
li x20, 0xe57ef4eef80fd670 # initialize rs2
or x20, x20, x20 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 400)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x314a897ca98f85d9 # initialize rs1
li x21, 0xb9fbaf8293b7d2dc # initialize rs2
or x21, x21, x21 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 408)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x748b0e74fb640bc9 # initialize rs1
li x22, 0xc3adcb10a13ce6e7 # initialize rs2
or x22, x22, x22 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 416)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0x215f5fca8d483e35 # initialize rs1
li x23, 0x60abb5de89ade1fe # initialize rs2
or x23, x23, x23 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 424)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0x5bd89d633aeb2e61 # initialize rs1
li x24, 0x0a24fc78c0e0d9e3 # initialize rs2
or x24, x24, x24 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 432)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x455a93b526315918 # initialize rs1
li x25, 0x90478849ad9712d3 # initialize rs2
or x25, x25, x25 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 440)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xefb62185f5d955ee # initialize rs1
li x26, 0xc08d73a6acf7cd80 # initialize rs2
or x26, x26, x26 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 448)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x8b160337afaa5a17 # initialize rs1
li x27, 0xd3cb6b1393501f32 # initialize rs2
or x27, x27, x27 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 456)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x469ea98e2e28d0a3 # initialize rs1
li x28, 0x4a05073e1806048d # initialize rs2
or x28, x28, x28 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 464)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0x22d375d088549c16 # initialize rs1
li x29, 0x929931756c79256b # initialize rs2
or x29, x29, x29 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 472)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xd38dcf85e3b20557 # initialize rs1
li x30, 0x3d8a9e67b9d8118a # initialize rs2
or x30, x30, x30 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 480)

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0x49484e30058af9c2 # initialize rs1
li x31, 0xed536ebd8c4cc23e # initialize rs2
or x31, x31, x31 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 488)

# Testcase cp_gpr/fpr_hazard nohaz test
add x26, x24, x18 # perform first operation
or x28, x29, x7 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x23, x15, x18 # perform first operation
or x28, x11, x17 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard nohaz test
add x2, x30, x9 # perform first operation
or x14, x15, x18 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x31, x19, x26 # perform first operation
or x19, x31, x11 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x13, x30, x28 # perform first operation
or x28, x29, x31 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard raw test
add x17, x31, x3 # perform first operation
or x24, x13, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x16, x20, x14 # perform first operation
or x16, x27, x10 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x8, x22, x19 # perform first operation
or x8, x21, x20 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard waw test
add x21, x26, x3 # perform first operation
or x21, x7, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x22, x10, x16 # perform first operation
or x10, x26, x6 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x30, x10, x18 # perform first operation
or x18, x6, x29 # perform second (triggering) operation

# Testcase cp_gpr/fpr_hazard war test
add x14, x12, x30 # perform first operation
or x1, x18, x9 # perform second (triggering) operation

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
