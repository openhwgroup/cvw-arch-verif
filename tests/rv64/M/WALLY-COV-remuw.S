///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/M//WALLY-COV-remuw.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.675844
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0x953cb7938f3b005b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x26ad950c945dee6b # initialize rs1
li x15, 0x65f761efd32fb501 # initialize rs2
remuw x0, x14, x15 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x7c039e0a11ccd385 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x10060a4a4c5b4376 # initialize rs1
li x18, 0xa210520547df0e9b # initialize rs2
remuw x1, x20, x18 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x03728f02eb20c381 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x1216c94866c83791 # initialize rs1
li x15, 0x77926e0d7fa34ff3 # initialize rs2
remuw x2, x1, x15 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xc99c9b49c1b549e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x916cfd7c6c67e58a # initialize rs1
li x20, 0x7a4bfdfdc229fdab # initialize rs2
remuw x3, x16, x20 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xc65ae3cee01335fc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa305e5d6f4a8d885 # initialize rs1
li x29, 0xd946a06e3715c42c # initialize rs2
remuw x4, x24, x29 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x0b16c4eb8ca5fe8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xbca369c2809fbdeb # initialize rs1
li x21, 0xe643c3ca8408502c # initialize rs2
remuw x5, x19, x21 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x26f1379cab4ac82d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0b25107e1d2713c1 # initialize rs1
li x10, 0xa25b2ca941cb8a4c # initialize rs2
remuw x6, x18, x10 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xe35a7a4b867f89b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xebb21d1f18f6b058 # initialize rs1
li x10, 0x7fcbbf081f61b65b # initialize rs2
remuw x7, x6, x10 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x8b72e1196bca51cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x2296893c0593f668 # initialize rs1
li x2, 0xebbd8ebf6979fd7f # initialize rs2
remuw x8, x13, x2 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xea8c283c5bc38de4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xca8c9b0fb2ac8c63 # initialize rs1
li x6, 0xc1325a56004d3946 # initialize rs2
remuw x9, x22, x6 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x50e96772986c005e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xa9c4c59704d43978 # initialize rs1
li x23, 0xfbcfeee5316ddda4 # initialize rs2
remuw x10, x4, x23 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xd62e811cc6702490 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xc053d3135d758ec4 # initialize rs1
li x1, 0x4334850788a096d7 # initialize rs2
remuw x11, x19, x1 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xaec4d43b835eda71 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x6386046dd2b50164 # initialize rs1
li x30, 0x007de49a45de1e35 # initialize rs2
remuw x12, x7, x30 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x6f729f5d14b78362 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x26c430e1dd113441 # initialize rs1
li x29, 0xa35237b4ab05be5c # initialize rs2
remuw x13, x12, x29 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x182b816008b937da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe0ce0649208446d7 # initialize rs1
li x10, 0x6f624ee4a9ff313b # initialize rs2
remuw x14, x3, x10 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x6dff6bb262f161e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xe8f9fb60fb530ffb # initialize rs1
li x29, 0x1c5cff095f51c6d2 # initialize rs2
remuw x15, x11, x29 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x6e182756cf194ffb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x03f1d2327cf5083f # initialize rs1
li x2, 0xfcc9e5f3a29c2e06 # initialize rs2
remuw x16, x16, x2 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x6fc2c6a31d832a57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6fa3a9d7c8d57f03 # initialize rs1
li x1, 0x38334e31ef511c06 # initialize rs2
remuw x17, x12, x1 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x0d6e8eedd4a3a1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xdc85f02c51e9aa1d # initialize rs1
li x17, 0xd6caee43fde9db5d # initialize rs2
remuw x18, x14, x17 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x55db625a361c4929 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x1ff6e1ed8c41a7d7 # initialize rs1
li x19, 0x84c9bbe383448bf2 # initialize rs2
remuw x19, x23, x19 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x598973b19980e282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfd8131bfcdd97ea4 # initialize rs1
li x14, 0x3476a34ae655814b # initialize rs2
remuw x20, x8, x14 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x43676e09d5dd85c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x846cdccd29b100da # initialize rs1
li x26, 0x3a3431a122d0dd9a # initialize rs2
remuw x21, x2, x26 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x7befa1a316aa3f6b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xec6c6e286278c109 # initialize rs1
li x11, 0xbd32eebfe51bb506 # initialize rs2
remuw x22, x12, x11 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xd9d7f8376c62a28e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe71caec08f884d45 # initialize rs1
li x19, 0x1d70ce8df494eb18 # initialize rs2
remuw x23, x28, x19 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x5ab95133509e1589 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xbdeb09ba892f5d6c # initialize rs1
li x30, 0x6ef3a973bd3d1dce # initialize rs2
remuw x24, x3, x30 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x845c88fd4e8a9f88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xa6f680193d739765 # initialize rs1
li x15, 0x179fd98d910d4b5d # initialize rs2
remuw x25, x8, x15 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x16fda155e72894c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x69ee85d0ef16fe55 # initialize rs1
li x4, 0x6eff41d57ec5b5c7 # initialize rs2
remuw x26, x31, x4 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x038cec4bc05e847a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x3ef3489c33abbeeb # initialize rs1
li x17, 0xeedd934574b7d7f8 # initialize rs2
remuw x27, x31, x17 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x4e33623f0a5bc68e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xc3dfb60eb7ee7763 # initialize rs1
li x13, 0x078c3d47f328a8b9 # initialize rs2
remuw x28, x22, x13 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x86d4a979e26b52ff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x859c21738dc7e46c # initialize rs1
li x11, 0x8a60060ec1fbc8e6 # initialize rs2
remuw x29, x4, x11 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xcb58b8b58ed25bad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x069cf44e98ecb0f3 # initialize rs1
li x26, 0xd087109935ce0552 # initialize rs2
remuw x30, x20, x26 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x5ea31966f1a3aa67 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfa02f1f750243666 # initialize rs1
li x18, 0x97fd8c9a975e73d7 # initialize rs2
remuw x31, x26, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x0)
li x4, 0xc582f7580fd288a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x8d7ca572b5aaf04c # initialize rs1
li x17, 0xa16674acb7d19ea7 # initialize rs2
remuw x4, x0, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x1)
li x14, 0x065ba4ebe8725a66 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd23a28f0af6f572c # initialize rs1
li x28, 0xc08a0850a4229797 # initialize rs2
remuw x14, x1, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x28, 0x5b54a06edfd1f927 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x179b786ad5079eea # initialize rs1
li x12, 0x5b604e562001ab2d # initialize rs2
remuw x28, x2, x12 # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x27, 0x39d05d363818fe04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xd493abc4b60c5581 # initialize rs1
li x14, 0x95046dc40e34121a # initialize rs2
remuw x27, x3, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x28, 0x29321bba7e034ffc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x90c088961f50f67f # initialize rs1
li x14, 0x2b72cfa8aaa843b1 # initialize rs2
remuw x28, x4, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x9, 0x376f917dfa5ebe54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x908689ce346df2bb # initialize rs1
li x30, 0x11ee3f55c1127fb3 # initialize rs2
remuw x9, x5, x30 # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x8, 0x72e7608400a7158d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x160444507153a3c3 # initialize rs1
li x7, 0x75734ff1bbc2bb34 # initialize rs2
remuw x8, x6, x7 # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x25, 0x26a77bd641a48a28 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xdb4bda3f086ce302 # initialize rs1
li x14, 0x2abfa78df77a6cd1 # initialize rs2
remuw x25, x7, x14 # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x10, 0xbf8a2eb9332621ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x56af6b203e0c1583 # initialize rs1
li x5, 0x48c8e4f74e7f18f2 # initialize rs2
remuw x10, x8, x5 # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x15, 0xd370db2e9a055d6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x32015f83ba7dffb7 # initialize rs1
li x17, 0x199b1bef0d6837ae # initialize rs2
remuw x15, x9, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x14, 0x5df0e6d00f8ddfc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xff525badbb2ca373 # initialize rs1
li x13, 0x4a9e59f8977dd1b9 # initialize rs2
remuw x14, x10, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x17, 0xea2008c6c498fb39 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5ac6ee50a82b4f28 # initialize rs1
li x9, 0x339edb83f98b8032 # initialize rs2
remuw x17, x11, x9 # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x24, 0x41f86131ea914313 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7c2544f5de5417c8 # initialize rs1
li x18, 0xe371112da66ce254 # initialize rs2
remuw x24, x12, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x20, 0x114d13d14d1ec931 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x54a26eefd3cca01a # initialize rs1
li x2, 0x38c5891aaa0d41ac # initialize rs2
remuw x20, x13, x2 # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x30, 0xb2fdbde477b3b6ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x79bd1af73e3f2639 # initialize rs1
li x28, 0xc79ca25aff3000c7 # initialize rs2
remuw x30, x14, x28 # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x8, 0x8493ff9883d5767c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x26a6056cb4afb077 # initialize rs1
li x25, 0xd8655765965c9be5 # initialize rs2
remuw x8, x15, x25 # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x31, 0x500ca1fecbf1c882 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xdad9d4037f545096 # initialize rs1
li x19, 0xc60066de038f093a # initialize rs2
remuw x31, x16, x19 # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x26, 0x1a1c8555da7fd64a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x58452da47d3c5904 # initialize rs1
li x10, 0xf2fbf085b691963e # initialize rs2
remuw x26, x17, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x19, 0x6c04cc8db4bf3e2d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x158054ff6ab1dba4 # initialize rs1
li x23, 0xb7867c4ce737d8a5 # initialize rs2
remuw x19, x18, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x26, 0xf1edeead254147b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xd204ee4312843281 # initialize rs1
li x17, 0x9847468709dcadba # initialize rs2
remuw x26, x19, x17 # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x25, 0x1213586f1a12e2cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x6493b5f993ba9705 # initialize rs1
li x10, 0xe6ce8ef870a6cb6d # initialize rs2
remuw x25, x20, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x3, 0x2ea7b0e1fe623121 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xa81066fc0d24f9f2 # initialize rs1
li x4, 0x4b457084ae5d13c1 # initialize rs2
remuw x3, x21, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x30, 0x006b0bb2784a345d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1beebc1ab5d91da7 # initialize rs1
li x18, 0x830f4bf0d0a8eecd # initialize rs2
remuw x30, x22, x18 # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x6, 0x3b58553c8af2407c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x3f183d0109c51f6f # initialize rs1
li x4, 0x701a30624764fdea # initialize rs2
remuw x6, x23, x4 # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x28, 0x01caf6a7ce447e38 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x1b86584feb5b6ab1 # initialize rs1
li x21, 0xcac08b65e3d16915 # initialize rs2
remuw x28, x24, x21 # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x7, 0xbe36055222a12ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf1f77bb756367cdc # initialize rs1
li x13, 0xf06764b9e01c92cb # initialize rs2
remuw x7, x25, x13 # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x29, 0x1fb36bbd59ffa132 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe569e4f556f67695 # initialize rs1
li x10, 0x05471dcd402ef72e # initialize rs2
remuw x29, x26, x10 # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x2, 0x9b697d84189ced94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x25af878cf13d9f97 # initialize rs1
li x3, 0xa1eab767749abdcf # initialize rs2
remuw x2, x27, x3 # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x4, 0x50fc2a49d014dfc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x50da9b3e365bce2f # initialize rs1
li x11, 0x8e08638183bcfd16 # initialize rs2
remuw x4, x28, x11 # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x22, 0x639ff23b1a31c03e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xba41e583531c3932 # initialize rs1
li x20, 0x2702494da053958e # initialize rs2
remuw x22, x29, x20 # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x12, 0x98be330a491ea1b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x9ee246c486c9b716 # initialize rs1
li x23, 0xac4796952acdf6b9 # initialize rs2
remuw x12, x30, x23 # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x7, 0x7618124d6dfda195 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xb7beadee732aeb46 # initialize rs1
li x5, 0x8b76e00ae30fced8 # initialize rs2
remuw x7, x31, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x0)
li x5, 0xe18f4b6de5ed60ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf93bcac082f01fbd # initialize rs1
li x0, 0x08ea66ab4fca9887 # initialize rs2
remuw x5, x21, x0 # perform operation

# Testcase cp_rs2 (Test source rs2 = x1)
li x25, 0xa2ffde1c63b2beea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfd911fc418a02b85 # initialize rs1
li x1, 0x074dc5f087dbc281 # initialize rs2
remuw x25, x12, x1 # perform operation

# Testcase cp_rs2 (Test source rs2 = x2)
li x25, 0x5003ede437f6f89e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xc3f415cf18fd2938 # initialize rs1
li x2, 0x41e6e36be6c995a1 # initialize rs2
remuw x25, x7, x2 # perform operation

# Testcase cp_rs2 (Test source rs2 = x3)
li x26, 0xa4e4a42ceb5e4e3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x87dfa30d8efda2bc # initialize rs1
li x3, 0x5affa39cb6bd2c44 # initialize rs2
remuw x26, x21, x3 # perform operation

# Testcase cp_rs2 (Test source rs2 = x4)
li x7, 0xac709dd1d969d42f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8d4a35dab3c7822a # initialize rs1
li x4, 0x2c59eb58d5ac150d # initialize rs2
remuw x7, x27, x4 # perform operation

# Testcase cp_rs2 (Test source rs2 = x5)
li x31, 0xa6b1d034f04f29ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb2c1c19e6445f42b # initialize rs1
li x5, 0xb9e51338e6773e4e # initialize rs2
remuw x31, x16, x5 # perform operation

# Testcase cp_rs2 (Test source rs2 = x6)
li x19, 0x2e74e505e0bbd38a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xdb5f0bda39e0d369 # initialize rs1
li x6, 0x796e09f10ee6e65b # initialize rs2
remuw x19, x22, x6 # perform operation

# Testcase cp_rs2 (Test source rs2 = x7)
li x16, 0xa72ba60bf8a525e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xaece7bf0d102280a # initialize rs1
li x7, 0xac5b6c3571eed91e # initialize rs2
remuw x16, x26, x7 # perform operation

# Testcase cp_rs2 (Test source rs2 = x8)
li x2, 0x8b37437218cee484 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x23bc12c63b404454 # initialize rs1
li x8, 0xceef2bfdeb14124e # initialize rs2
remuw x2, x24, x8 # perform operation

# Testcase cp_rs2 (Test source rs2 = x9)
li x22, 0xd8c0bb199107ad97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x2546c97f696eceec # initialize rs1
li x9, 0x370c9623288f5390 # initialize rs2
remuw x22, x2, x9 # perform operation

# Testcase cp_rs2 (Test source rs2 = x10)
li x21, 0xf258092c29d23721 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa03d3fb1b53f5259 # initialize rs1
li x10, 0xfcfe5fe36e77c813 # initialize rs2
remuw x21, x3, x10 # perform operation

# Testcase cp_rs2 (Test source rs2 = x11)
li x12, 0xde4052d262a9f272 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x02ab4e5fbc29faa8 # initialize rs1
li x11, 0x03ee8b767d162761 # initialize rs2
remuw x12, x18, x11 # perform operation

# Testcase cp_rs2 (Test source rs2 = x12)
li x21, 0x0fe35536bbdb9806 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x778754202ffdbdac # initialize rs1
li x12, 0x8264b1f800f0893b # initialize rs2
remuw x21, x21, x12 # perform operation

# Testcase cp_rs2 (Test source rs2 = x13)
li x11, 0x02d03de0b5d81a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x6ba5f8ce968ccf75 # initialize rs1
li x13, 0x20574587f6139f1d # initialize rs2
remuw x11, x19, x13 # perform operation

# Testcase cp_rs2 (Test source rs2 = x14)
li x12, 0x6c244c4cbce5b690 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x001c4b44d339ba6d # initialize rs1
li x14, 0x7964cf4623fc89e9 # initialize rs2
remuw x12, x22, x14 # perform operation

# Testcase cp_rs2 (Test source rs2 = x15)
li x8, 0x52132fe63087437a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5e6158e9879463fb # initialize rs1
li x15, 0x7d7c0a7072646b14 # initialize rs2
remuw x8, x31, x15 # perform operation

# Testcase cp_rs2 (Test source rs2 = x16)
li x12, 0x11b629a7de0b94b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x76c707713f03867c # initialize rs1
li x16, 0xe46feaae5a382161 # initialize rs2
remuw x12, x10, x16 # perform operation

# Testcase cp_rs2 (Test source rs2 = x17)
li x23, 0x3aae12d7eb9000c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x6b550604e50d5604 # initialize rs1
li x17, 0x847c702c8306277a # initialize rs2
remuw x23, x12, x17 # perform operation

# Testcase cp_rs2 (Test source rs2 = x18)
li x28, 0x214446fc87d67303 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x522073933e52cc94 # initialize rs1
li x18, 0x1aa8263009e812ea # initialize rs2
remuw x28, x15, x18 # perform operation

# Testcase cp_rs2 (Test source rs2 = x19)
li x3, 0x24b80a51e8cf14e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd6a8172a9a727528 # initialize rs1
li x19, 0xf039c1b0289acbb5 # initialize rs2
remuw x3, x7, x19 # perform operation

# Testcase cp_rs2 (Test source rs2 = x20)
li x18, 0x0864a2fc0ab694b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x5828b0dd940f5cf5 # initialize rs1
li x20, 0x30f32d88fa78e339 # initialize rs2
remuw x18, x18, x20 # perform operation

# Testcase cp_rs2 (Test source rs2 = x21)
li x19, 0xfc8e213dfae31f5c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xbf26241e5fe2351c # initialize rs1
li x21, 0x4223f50da251800f # initialize rs2
remuw x19, x16, x21 # perform operation

# Testcase cp_rs2 (Test source rs2 = x22)
li x27, 0xd529cf05ec4b6084 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x35132e9f3bf45ca1 # initialize rs1
li x22, 0x1d55fe71b7a65e46 # initialize rs2
remuw x27, x17, x22 # perform operation

# Testcase cp_rs2 (Test source rs2 = x23)
li x12, 0x9a6a796bf7b88d4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xdcf050a21e6720c1 # initialize rs1
li x23, 0xa77c3719513e1605 # initialize rs2
remuw x12, x1, x23 # perform operation

# Testcase cp_rs2 (Test source rs2 = x24)
li x11, 0x6026a693614f120b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xe12156dabe36c90a # initialize rs1
li x24, 0x95a01d7b692ab651 # initialize rs2
remuw x11, x6, x24 # perform operation

# Testcase cp_rs2 (Test source rs2 = x25)
li x27, 0x252f351005eb3437 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xadd3b8fc6f360b13 # initialize rs1
li x25, 0xb0534cf5e97bc31a # initialize rs2
remuw x27, x16, x25 # perform operation

# Testcase cp_rs2 (Test source rs2 = x26)
li x4, 0x0f438e543d93559c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x861810e652c115d9 # initialize rs1
li x26, 0x99495610e81ad1b0 # initialize rs2
remuw x4, x11, x26 # perform operation

# Testcase cp_rs2 (Test source rs2 = x27)
li x28, 0x28dab4af088de30e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xa0e433c2c9aa3fa4 # initialize rs1
li x27, 0x5582de280bf9cd98 # initialize rs2
remuw x28, x20, x27 # perform operation

# Testcase cp_rs2 (Test source rs2 = x28)
li x1, 0xaf57a88f8e2b2b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xadf5a9f1b347ccf7 # initialize rs1
li x28, 0xa757444f5f650463 # initialize rs2
remuw x1, x13, x28 # perform operation

# Testcase cp_rs2 (Test source rs2 = x29)
li x22, 0xb918074f21d11412 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xa69c965aedfac286 # initialize rs1
li x29, 0x1c8b2f5a6bc67460 # initialize rs2
remuw x22, x17, x29 # perform operation

# Testcase cp_rs2 (Test source rs2 = x30)
li x20, 0x2a7384e3348af49d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8ec310e934791e65 # initialize rs1
li x30, 0x7aa0ffce56cea808 # initialize rs2
remuw x20, x16, x30 # perform operation

# Testcase cp_rs2 (Test source rs2 = x31)
li x16, 0x8234e24c8039fe4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x437ef2860505f4eb # initialize rs1
li x31, 0xfac8f7df0fc043b5 # initialize rs2
remuw x16, x5, x31 # perform operation

# Testcase cmp_rdm_rs1_eqval (Test rs1 = rd = 0x780b2eb9cfdcc89d)
li x2, 0x031da0753348ca2f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x031da0753348ca2f # initialize rs1
li x0, 0xfe1b835b1a493a25 # initialize rs2
remuw x2, x24, x0 # perform operation

# Testcase cmp_rd_rs2_eqval (Test rs2 = rd = 0x2170fc72554d0191)
li x23, 0x2170fc72554d0191 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x2170fc72554d0191 # initialize rs1
li x30, 0x2170fc72554d0191 # initialize rs2
remuw x23, x0, x30 # perform operation

# Testcase cmp_rs1_rs2_eqval (Test rs1 = rs2 = 0x963fdbbfce2499f7)
li x7, 0x172c55b89b4003b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x963fdbbfce2499f7 # initialize rs1
li x31, 0x963fdbbfce2499f7 # initialize rs2
remuw x7, x4, x31 # perform operation

# Testcase cmp_gpr_hazard raw test
remuw x6, x19, x7 # perform first operation
remuw x6, x6, x3 # perform second operation

# Testcase cmp_gpr_hazard raw test
remuw x22, x8, x7 # perform first operation
remuw x31, x8, x22 # perform second operation

# Testcase cmp_gpr_hazard waw test
remuw x24, x27, x4 # perform first operation
remuw x24, x8, x19 # perform second operation

# Testcase cmp_gpr_hazard waw test
remuw x7, x21, x29 # perform first operation
remuw x7, x10, x2 # perform second operation

# Testcase cmp_gpr_hazard war test
remuw x29, x23, x2 # perform first operation
remuw x23, x10, x1 # perform second operation

# Testcase cmp_gpr_hazard war test
remuw x21, x11, x13 # perform first operation
remuw x13, x5, x17 # perform second operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x6, 0x1f00099772c8fbb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
li x0, 0xdcc4c19ad33132dd # initialize rs2
remuw x6, x16, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x20, 0x40a5336e174f4f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x17, 0x0000000000000000 # initialize rs2
remuw x20, x11, x17 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0)
li x13, 0x429393c6a6c57616 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x23, 0x0000000000000000 # initialize rs2
remuw x13, x20, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x19, 0xf1838beba62959e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000001 # initialize rs1
li x0, 0x32f17a35c407a1a6 # initialize rs2
remuw x19, x28, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x23, 0x4a2218fcdc444c4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000001 # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
remuw x23, x18, x15 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1)
li x27, 0x76f63f8bc812aeff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
remuw x27, x25, x30 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x27, 0xcccee98f5d4439d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000002 # initialize rs1
li x0, 0x799dc6c73b2aa3fa # initialize rs2
remuw x27, x21, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x12, 0xfa34429f22928387 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000002 # initialize rs1
li x2, 0x0000000000000002 # initialize rs2
remuw x12, x15, x2 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2)
li x7, 0xcf6f7d4351a1385b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x14, 0x0000000000000002 # initialize rs2
remuw x7, x21, x14 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x9, 0x2c10a39640ff0e47 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000080000000 # initialize rs1
li x0, 0x1bcb163b5910f479 # initialize rs2
remuw x9, x5, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x21, 0x0e22f5371c76bf3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000080000000 # initialize rs1
li x18, 0x0000000080000000 # initialize rs2
remuw x21, x1, x18 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000)
li x24, 0x960e525001589be9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xffffffffffffffff # initialize rs1
li x25, 0x0000000080000000 # initialize rs2
remuw x24, x6, x25 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x7, 0x4bfe0b8044856f4d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000080000001 # initialize rs1
li x0, 0xecc07d5d57f55cc1 # initialize rs2
remuw x7, x26, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x23, 0xbd4c778ad4d861ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x0000000080000001 # initialize rs1
li x27, 0x0000000080000001 # initialize rs2
remuw x23, x6, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000001)
li x7, 0x0e630aee4ca402db # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xffffffffffffffff # initialize rs1
li x1, 0x0000000080000001 # initialize rs2
remuw x7, x28, x1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x6, 0xe400931c606ccf78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x000000007fffffff # initialize rs1
li x0, 0x28494a7e383714b7 # initialize rs2
remuw x6, x18, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x28, 0x2cabc8ac285edbbf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x000000007fffffff # initialize rs1
li x6, 0x000000007fffffff # initialize rs2
remuw x28, x24, x6 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff)
li x11, 0xa7e8074d0fdbe715 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xffffffffffffffff # initialize rs1
li x3, 0x000000007fffffff # initialize rs2
remuw x11, x10, x3 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x28, 0x4bae60f1308eb572 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x000000007ffffffe # initialize rs1
li x0, 0x67f098a3cb58a7d4 # initialize rs2
remuw x28, x10, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x17, 0x8a64d4abf4d1d220 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x000000007ffffffe # initialize rs1
li x22, 0x000000007ffffffe # initialize rs2
remuw x17, x16, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7ffffffe)
li x1, 0x1a74e9fd068391ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x8, 0x000000007ffffffe # initialize rs2
remuw x1, x26, x8 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x15, 0x2bf016fcd03d91aa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000ffffffff # initialize rs1
li x0, 0xbc08c9b9f15cc461 # initialize rs2
remuw x15, x1, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x30, 0xe4fd1a682b1338cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000ffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
remuw x30, x3, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xffffffff)
li x28, 0xce59df378cc1ab5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xffffffffffffffff # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
remuw x28, x20, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x13, 0x3319fa6784ee947c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000fffffffe # initialize rs1
li x0, 0x2d2080774e3b9cca # initialize rs2
remuw x13, x26, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x24, 0x436c92eb3adf8b51 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000fffffffe # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
remuw x24, x8, x27 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xfffffffe)
li x4, 0xdb7bb424e089438c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xffffffffffffffff # initialize rs1
li x31, 0x00000000fffffffe # initialize rs2
remuw x4, x14, x31 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x2, 0xef515aa0ba389142 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000aaaaaaaa # initialize rs1
li x0, 0x960bdb12415c10fa # initialize rs2
remuw x2, x20, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x26, 0xde5176dc876a3585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000aaaaaaaa # initialize rs1
li x22, 0x00000000aaaaaaaa # initialize rs2
remuw x26, x15, x22 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xaaaaaaaa)
li x13, 0x5b7c1d14d9a51a1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xffffffffffffffff # initialize rs1
li x28, 0x00000000aaaaaaaa # initialize rs2
remuw x13, x23, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x2, 0x234337ec0d63d987 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000055555555 # initialize rs1
li x0, 0x942196b0605a5628 # initialize rs2
remuw x2, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x11, 0x1964e1d662009da6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000055555555 # initialize rs1
li x23, 0x0000000055555555 # initialize rs2
remuw x11, x18, x23 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x55555555)
li x13, 0xef39159f5d3f0504 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xffffffffffffffff # initialize rs1
li x10, 0x0000000055555555 # initialize rs2
remuw x13, x15, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x21, 0xc8b0901924b56ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000063ae86f7 # initialize rs1
li x0, 0x2214d9472221ac3a # initialize rs2
remuw x21, x11, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x2, 0x7f18a41a1d6b52ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000063ae86f7 # initialize rs1
li x10, 0x0000000063ae86f7 # initialize rs2
remuw x2, x5, x10 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x63ae86f7)
li x23, 0x545636f9d4c66301 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xffffffffffffffff # initialize rs1
li x28, 0x0000000063ae86f7 # initialize rs2
remuw x23, x4, x28 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x4, 0xd1f5f30f9ac503ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x00000000e3ae86f7 # initialize rs1
li x0, 0x9d43020694e18f6e # initialize rs2
remuw x4, x13, x0 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x7, 0xa4ed91d21bd46548 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000e3ae86f7 # initialize rs1
li x24, 0x00000000e3ae86f7 # initialize rs2
remuw x7, x12, x24 # perform operation

# Testcase cp_rd_corners (Test rd value = 0xe3ae86f7)
li x29, 0x98dd5a5cf7adec55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x3, 0x00000000e3ae86f7 # initialize rs2
remuw x29, x7, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x0)
li x22, 0xcce22b8ee266aaa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000000 # initialize rs1
li x17, 0xa2d69050169e6690 # initialize rs2
remuw x22, x8, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x1)
li x6, 0xbf69fae785fc7c92 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000001 # initialize rs1
li x14, 0x52535a77dd9f0ee0 # initialize rs2
remuw x6, x29, x14 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x2)
li x8, 0xdf12e4011611de0d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
li x6, 0x454a5b6d74aaceea # initialize rs2
remuw x8, x12, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000000)
li x16, 0x9444629d9f65295f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000000 # initialize rs1
li x20, 0x88418313f9a3bf6f # initialize rs2
remuw x16, x2, x20 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x8000000000000001)
li x8, 0x5e786b73a4700a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000001 # initialize rs1
li x3, 0xf59a1187e48f6b54 # initialize rs2
remuw x8, x5, x3 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7fffffffffffffff)
li x26, 0xde423b00a03362e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x12, 0x565fbec5cea35fc2 # initialize rs2
remuw x26, x22, x12 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x7ffffffffffffffe)
li x20, 0x6c17040a98ff91ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
li x21, 0x7f109f538356cc64 # initialize rs2
remuw x20, x12, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffffffffffff)
li x24, 0x29d7458fcf2c7d9a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x4, 0x7dec07821853f1a9 # initialize rs2
remuw x24, x3, x4 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffffffffffe)
li x18, 0x065ba382e5336400 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x10, 0xbf80e0715be714e8 # initialize rs2
remuw x18, x8, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5bbc887763ae86f7)
li x14, 0x46d5181a560644a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0x35385ff557dc084d # initialize rs2
remuw x14, x1, x2 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xaaaaaaaaaaaaaaaa)
li x27, 0x108a4f854402df49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x17, 0x68fb6935baa3516a # initialize rs2
remuw x27, x20, x17 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x5555555555555555)
li x21, 0x45a98408c4d3ae0f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5555555555555555 # initialize rs1
li x6, 0xffb697e0a14e0077 # initialize rs2
remuw x21, x29, x6 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xffffffff)
li x14, 0x1a13145cf016d5b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x21, 0x3de1dc931a39c352 # initialize rs2
remuw x14, x15, x21 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0xfffffffe)
li x14, 0xbdf4ee99894702d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x23, 0x7f333aa2ce0de22c # initialize rs2
remuw x14, x20, x23 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000000)
li x25, 0xc3b6bd2ac23af0e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000100000000 # initialize rs1
li x10, 0x901026ba0f19be93 # initialize rs2
remuw x25, x15, x10 # perform operation

# Testcase cp_rs1_corners (Test source rs1 value = 0x100000001)
li x23, 0x81df8e79ac33e67d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000001 # initialize rs1
li x1, 0x34833660363681a6 # initialize rs2
remuw x23, x30, x1 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x0)
li x12, 0xeb580fde66371faf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xf15007b6b915ced5 # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
remuw x12, x21, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x1)
li x14, 0x685822d80752f9d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xe3c6273a1da58bd4 # initialize rs1
li x30, 0x0000000000000001 # initialize rs2
remuw x14, x28, x30 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x2)
li x31, 0x35d1e404ff2e4eff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x3fafd624d1c259cb # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
remuw x31, x10, x4 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000000)
li x19, 0x299eb8d5c7418f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xc9d6fffea22a4aeb # initialize rs1
li x6, 0x8000000000000000 # initialize rs2
remuw x19, x23, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x8000000000000001)
li x28, 0x2fbf1f875576d795 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x94d7fe37300fa080 # initialize rs1
li x14, 0x8000000000000001 # initialize rs2
remuw x28, x22, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7fffffffffffffff)
li x19, 0x55e6e33c6cff7489 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x316081afe5f8ff0c # initialize rs1
li x20, 0x7fffffffffffffff # initialize rs2
remuw x19, x29, x20 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x7ffffffffffffffe)
li x21, 0x9fab2e98afd76fa4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x628f56dff52e2315 # initialize rs1
li x13, 0x7ffffffffffffffe # initialize rs2
remuw x21, x27, x13 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffffffffffff)
li x25, 0x5b1d045546b8a34f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xf6f4713347c6b993 # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
remuw x25, x13, x19 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffffffffffe)
li x4, 0xe7673f6d77b5570b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfcf4da9c58fe9863 # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
remuw x4, x5, x14 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5bbc887763ae86f7)
li x8, 0x1c5976679a2e7fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x26e5fdbef36d7836 # initialize rs1
li x18, 0x5bbc887763ae86f7 # initialize rs2
remuw x8, x12, x18 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xaaaaaaaaaaaaaaaa)
li x11, 0xb5cf0c0380cb8a3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb751acc764735fc5 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x11, x20, x26 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x5555555555555555)
li x18, 0x5ea3452a258edc29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xe24c517137e211f8 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
remuw x18, x3, x17 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xffffffff)
li x28, 0xec0ef4969e2ea3f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x9f0c506e0c09c5a3 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
remuw x28, x21, x31 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0xfffffffe)
li x2, 0x5aa800c098e7962d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xa683ad3f4d0512af # initialize rs1
li x11, 0x00000000fffffffe # initialize rs2
remuw x2, x24, x11 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000000)
li x14, 0xc33ccd24e4e195ad # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd0e10d0c36e78163 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
remuw x14, x11, x6 # perform operation

# Testcase cp_rs2_corners (Test source rs2 value = 0x100000001)
li x19, 0xc33438d83ec5fdf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xa5ab2ac573a18a3f # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
remuw x19, x22, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x0)
li x5, 0xadb44695fe43bcf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000000 # initialize rs1
li x21, 0x0000000000000000 # initialize rs2
remuw x5, x26, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x1)
li x13, 0x1a505acb120ff4df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000000 # initialize rs1
li x10, 0x0000000000000001 # initialize rs2
remuw x13, x5, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x2)
li x5, 0xc4b1c57429b04905 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000000 # initialize rs1
li x25, 0x0000000000000002 # initialize rs2
remuw x5, x17, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000000)
li x13, 0xec564e025fc6278e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
remuw x13, x25, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x8000000000000001)
li x10, 0xfc04a1517cacef68 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000000 # initialize rs1
li x30, 0x8000000000000001 # initialize rs2
remuw x10, x3, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7fffffffffffffff)
li x18, 0xdfbb9f13c1354ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x0000000000000000 # initialize rs1
li x11, 0x7fffffffffffffff # initialize rs2
remuw x18, x20, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x7ffffffffffffffe)
li x28, 0xdf753e98039bdaae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
remuw x28, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffffffffffff)
li x4, 0x3116b4bf8feade7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000000 # initialize rs1
li x15, 0xffffffffffffffff # initialize rs2
remuw x4, x9, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffffffffffe)
li x8, 0x4b2fc32ad575a05d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000000 # initialize rs1
li x21, 0xfffffffffffffffe # initialize rs2
remuw x8, x1, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5bbc887763ae86f7)
li x31, 0x93bcf706ed364aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000000 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
remuw x31, x16, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xaaaaaaaaaaaaaaaa)
li x23, 0xee25e17d75c9659c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x23, x19, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x5555555555555555)
li x24, 0x46e23122551c88a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000000 # initialize rs1
li x17, 0x5555555555555555 # initialize rs2
remuw x24, x15, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xffffffff)
li x3, 0x5c16eb602ff04229 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000000000000 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
remuw x3, x21, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0xfffffffe)
li x4, 0x0af82966634f308e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x0000000000000000 # initialize rs1
li x7, 0x00000000fffffffe # initialize rs2
remuw x4, x25, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000000)
li x11, 0x9a1e496c96925ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x0000000000000000 # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
remuw x11, x24, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x0 rs2 = 0x100000001)
li x19, 0x2421b0a1ac8c1931 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000000 # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
remuw x19, x11, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x0)
li x25, 0x9adfef3d673da914 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
remuw x25, x30, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x1)
li x20, 0x020ac735725e6e3b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000000000001 # initialize rs1
li x2, 0x0000000000000001 # initialize rs2
remuw x20, x8, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x2)
li x29, 0x71d301fd7529f778 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000001 # initialize rs1
li x7, 0x0000000000000002 # initialize rs2
remuw x29, x5, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000000)
li x19, 0x15df51c262cea0ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000001 # initialize rs1
li x30, 0x8000000000000000 # initialize rs2
remuw x19, x5, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x8000000000000001)
li x27, 0x8b0255a1a9f6c687 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000001 # initialize rs1
li x23, 0x8000000000000001 # initialize rs2
remuw x27, x5, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7fffffffffffffff)
li x10, 0xadf727e23a6e3148 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000000000001 # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
remuw x10, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x7ffffffffffffffe)
li x21, 0xe448f4ee4fd546c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000000000001 # initialize rs1
li x27, 0x7ffffffffffffffe # initialize rs2
remuw x21, x5, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffffffffffff)
li x23, 0xbdf8dcec41adef7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
remuw x23, x15, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffffffffffe)
li x13, 0x8ad3fbc0d2b3fab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000001 # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
remuw x13, x3, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5bbc887763ae86f7)
li x23, 0xc9fb1f8783c77270 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000000000001 # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
remuw x23, x9, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xaaaaaaaaaaaaaaaa)
li x2, 0x601cb71ee1bc3db5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000001 # initialize rs1
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x2, x30, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x5555555555555555)
li x6, 0x310f4dd8d7c9e1be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x0000000000000001 # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
remuw x6, x31, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xffffffff)
li x17, 0x1750f477e28291d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x0000000000000001 # initialize rs1
li x18, 0x00000000ffffffff # initialize rs2
remuw x17, x27, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0xfffffffe)
li x20, 0x7c34d3de6509c53c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0000000000000001 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
remuw x20, x15, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000000)
li x23, 0x028800a139f13842 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000000000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
remuw x23, x17, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x1 rs2 = 0x100000001)
li x18, 0x457fbcc9dd641871 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000000000001 # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
remuw x18, x13, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x0)
li x25, 0xa42a1f57dc4e8919 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
li x4, 0x0000000000000000 # initialize rs2
remuw x25, x11, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x1)
li x2, 0x3dcc5e9c9cc3aefa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x0000000000000002 # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
remuw x2, x28, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x2)
li x6, 0x35df64d24ea6b018 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000000000002 # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
remuw x6, x30, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000000)
li x14, 0xb1c3f3c217eb020b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # initialize rs1
li x22, 0x8000000000000000 # initialize rs2
remuw x14, x4, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x8000000000000001)
li x28, 0x58ac2a23f5a2eff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # initialize rs1
li x22, 0x8000000000000001 # initialize rs2
remuw x28, x23, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7fffffffffffffff)
li x20, 0xd5c1300534ce8c4c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000000000002 # initialize rs1
li x12, 0x7fffffffffffffff # initialize rs2
remuw x20, x11, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x7ffffffffffffffe)
li x14, 0x10bcf890acaf6119 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000000000002 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
remuw x14, x1, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffffffffffff)
li x11, 0x251268a68f33c3e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
li x31, 0xffffffffffffffff # initialize rs2
remuw x11, x12, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffffffffffe)
li x11, 0x9224b8891559e299 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000000000002 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
remuw x11, x4, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5bbc887763ae86f7)
li x20, 0xac89a0ff225aee73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000000000002 # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
remuw x20, x14, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0xd9aacfc947114675 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x18, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x20, x29, x18 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x5555555555555555)
li x31, 0x76f6fcc99827fe7d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000000000002 # initialize rs1
li x27, 0x5555555555555555 # initialize rs2
remuw x31, x23, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xffffffff)
li x8, 0x60f86424439bd1c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000000000002 # initialize rs1
li x22, 0x00000000ffffffff # initialize rs2
remuw x8, x26, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0xfffffffe)
li x28, 0xe2b6d60aec4acf1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000000000002 # initialize rs1
li x19, 0x00000000fffffffe # initialize rs2
remuw x28, x29, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000000)
li x9, 0x7f4457391ee2c9a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000000000002 # initialize rs1
li x26, 0x0000000100000000 # initialize rs2
remuw x9, x3, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x2 rs2 = 0x100000001)
li x4, 0x89e095f94e0bb0f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0000000000000002 # initialize rs1
li x20, 0x0000000100000001 # initialize rs2
remuw x4, x12, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x0)
li x7, 0x67ee7dabb1b1fdf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x10, 0x0000000000000000 # initialize rs2
remuw x7, x30, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x1)
li x12, 0xc2d585e48f9afb21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x24, 0x0000000000000001 # initialize rs2
remuw x12, x26, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x2)
li x15, 0x04826a07a954a09c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
li x30, 0x0000000000000002 # initialize rs2
remuw x15, x29, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000000)
li x23, 0x731f24f4349e474d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
remuw x23, x29, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x8000000000000001)
li x19, 0x0386bd8872c058eb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x31, 0x8000000000000001 # initialize rs2
remuw x19, x24, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7fffffffffffffff)
li x24, 0x9097b455f28f311b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x8000000000000000 # initialize rs1
li x30, 0x7fffffffffffffff # initialize rs2
remuw x24, x29, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x7ffffffffffffffe)
li x12, 0xb1927558eb53ad13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x8000000000000000 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
remuw x12, x30, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffffffffffff)
li x8, 0x7a8b2eedfb011b54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x8000000000000000 # initialize rs1
li x10, 0xffffffffffffffff # initialize rs2
remuw x8, x27, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffffffffffe)
li x10, 0x7f8c048466408f8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x27, 0xfffffffffffffffe # initialize rs2
remuw x10, x26, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5bbc887763ae86f7)
li x10, 0xfe2dd78f4531a5d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000000 # initialize rs1
li x20, 0x5bbc887763ae86f7 # initialize rs2
remuw x10, x26, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x14, 0x92d2349d5c7e3845 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x8000000000000000 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x14, x15, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x5555555555555555)
li x17, 0xe48c2543f401c933 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8000000000000000 # initialize rs1
li x12, 0x5555555555555555 # initialize rs2
remuw x17, x16, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xffffffff)
li x20, 0x86e314974d22a0b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000000 # initialize rs1
li x29, 0x00000000ffffffff # initialize rs2
remuw x20, x1, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0xfffffffe)
li x28, 0xc2e06f75a844a856 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x8000000000000000 # initialize rs1
li x25, 0x00000000fffffffe # initialize rs2
remuw x28, x4, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000000)
li x18, 0x70c5a5aeaa7b2a97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000000 # initialize rs1
li x5, 0x0000000100000000 # initialize rs2
remuw x18, x1, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000000 rs2 = 0x100000001)
li x28, 0xdd64c7f78c8b4f36 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8000000000000000 # initialize rs1
li x19, 0x0000000100000001 # initialize rs2
remuw x28, x24, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x0)
li x8, 0xf2f1aa985752ca88 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x8000000000000001 # initialize rs1
li x2, 0x0000000000000000 # initialize rs2
remuw x8, x10, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x1)
li x3, 0x4c68a61a702ff4b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x8000000000000001 # initialize rs1
li x17, 0x0000000000000001 # initialize rs2
remuw x3, x5, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x2)
li x22, 0x304dfb9d904b55a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x5, 0x0000000000000002 # initialize rs2
remuw x22, x14, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000000)
li x31, 0x0b66ccc9353a80c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x21, 0x8000000000000000 # initialize rs2
remuw x31, x11, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x8000000000000001)
li x4, 0xae0416f089f3cf06 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x8000000000000001 # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
remuw x4, x8, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7fffffffffffffff)
li x2, 0x0f73c8592fe299cb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x8000000000000001 # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
remuw x2, x13, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x7ffffffffffffffe)
li x14, 0x1bb6e240f0921034 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000001 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
remuw x14, x2, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffffffffffff)
li x21, 0xeb2e19f2d55dae82 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x8000000000000001 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
remuw x21, x14, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffffffffffe)
li x25, 0x1975fe046d50d0ed # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x8000000000000001 # initialize rs1
li x26, 0xfffffffffffffffe # initialize rs2
remuw x25, x1, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5bbc887763ae86f7)
li x18, 0x94056106ac1a45f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x8000000000000001 # initialize rs1
li x12, 0x5bbc887763ae86f7 # initialize rs2
remuw x18, x21, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x8, 0x9d1383dbbde27766 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x8000000000000001 # initialize rs1
li x1, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x8, x23, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x5555555555555555)
li x2, 0x3f2c845b13160fae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x8000000000000001 # initialize rs1
li x21, 0x5555555555555555 # initialize rs2
remuw x2, x20, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xffffffff)
li x6, 0xfc34cfb50fb8769f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8000000000000001 # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
remuw x6, x3, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0xfffffffe)
li x18, 0xe8490bac78253320 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x8000000000000001 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
remuw x18, x2, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000000)
li x10, 0xd0485534fe508a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x8000000000000001 # initialize rs1
li x28, 0x0000000100000000 # initialize rs2
remuw x10, x26, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x8000000000000001 rs2 = 0x100000001)
li x19, 0x0ed1e170cfcba865 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x8000000000000001 # initialize rs1
li x24, 0x0000000100000001 # initialize rs2
remuw x19, x11, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x0)
li x24, 0x51f1aa11a3b7e094 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x7fffffffffffffff # initialize rs1
li x5, 0x0000000000000000 # initialize rs2
remuw x24, x28, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x1)
li x17, 0xf8429ab9c4f00ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7fffffffffffffff # initialize rs1
li x15, 0x0000000000000001 # initialize rs2
remuw x17, x31, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x2)
li x8, 0x68c96bc3bbffc903 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x27, 0x0000000000000002 # initialize rs2
remuw x8, x4, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000000)
li x16, 0x75fdfbc3e30ccc33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7fffffffffffffff # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
remuw x16, x1, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x8000000000000001)
li x22, 0x924bfc08c09bf057 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7fffffffffffffff # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
remuw x22, x7, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7fffffffffffffff)
li x7, 0x0d8a47182a96f622 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
li x21, 0x7fffffffffffffff # initialize rs2
remuw x7, x6, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x7ffffffffffffffe)
li x13, 0xabfc5e609d7b424a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x7fffffffffffffff # initialize rs1
li x16, 0x7ffffffffffffffe # initialize rs2
remuw x13, x25, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffffffffffff)
li x10, 0x132ff25c33e79fa5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x7fffffffffffffff # initialize rs1
li x19, 0xffffffffffffffff # initialize rs2
remuw x10, x23, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffffffffffe)
li x25, 0x55e715285a10e134 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x7fffffffffffffff # initialize rs1
li x14, 0xfffffffffffffffe # initialize rs2
remuw x25, x2, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x28, 0xb1dd2ca2f6247ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7fffffffffffffff # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
remuw x28, x29, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x3, 0x38d675b657db3a57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x7fffffffffffffff # initialize rs1
li x11, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x3, x6, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x5555555555555555)
li x7, 0x300b95434c9226c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x7fffffffffffffff # initialize rs1
li x25, 0x5555555555555555 # initialize rs2
remuw x7, x4, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xffffffff)
li x1, 0x82dccfa8a0143410 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x7fffffffffffffff # initialize rs1
li x17, 0x00000000ffffffff # initialize rs2
remuw x1, x21, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0xfffffffe)
li x5, 0xbfea5291fe781082 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7fffffffffffffff # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
remuw x5, x26, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000000)
li x3, 0x7860b4d075f610bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7fffffffffffffff # initialize rs1
li x2, 0x0000000100000000 # initialize rs2
remuw x3, x22, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7fffffffffffffff rs2 = 0x100000001)
li x9, 0x347ea5125f62800d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7fffffffffffffff # initialize rs1
li x25, 0x0000000100000001 # initialize rs2
remuw x9, x10, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x0)
li x3, 0xc071f634e3249d02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7ffffffffffffffe # initialize rs1
li x15, 0x0000000000000000 # initialize rs2
remuw x3, x8, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x1)
li x26, 0x5ed8cdcee4a017fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
remuw x26, x11, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x2)
li x21, 0x469c43b2c6124780 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x7ffffffffffffffe # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
remuw x21, x24, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000000)
li x24, 0xc0f3c9d3a4cf9764 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x12, 0x8000000000000000 # initialize rs2
remuw x24, x1, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x8000000000000001)
li x27, 0x6a307c4cf49c762b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x26, 0x8000000000000001 # initialize rs2
remuw x27, x1, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7fffffffffffffff)
li x13, 0x6945301ceb41839f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
remuw x13, x7, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x19, 0xdaf645593ebd27b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x7ffffffffffffffe # initialize rs1
li x22, 0x7ffffffffffffffe # initialize rs2
remuw x19, x27, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffffffffffff)
li x13, 0x089545c3379d3dda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x7ffffffffffffffe # initialize rs1
li x12, 0xffffffffffffffff # initialize rs2
remuw x13, x11, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffffffffffe)
li x4, 0xa523da434c4422bd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x7ffffffffffffffe # initialize rs1
li x13, 0xfffffffffffffffe # initialize rs2
remuw x4, x22, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x20, 0x362d53125269e3b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x7ffffffffffffffe # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
remuw x20, x12, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x20, 0x5bd6da74044c3e6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x7ffffffffffffffe # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x20, x1, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x5555555555555555)
li x11, 0x6994cf70ab75f4ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x7ffffffffffffffe # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
remuw x11, x7, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xffffffff)
li x27, 0x2ddb57575b3e7da0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x7ffffffffffffffe # initialize rs1
li x10, 0x00000000ffffffff # initialize rs2
remuw x27, x5, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0xfffffffe)
li x6, 0xbae452507f9a5083 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x7ffffffffffffffe # initialize rs1
li x14, 0x00000000fffffffe # initialize rs2
remuw x6, x29, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000000)
li x10, 0x6ba89c3697887fc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x7ffffffffffffffe # initialize rs1
li x7, 0x0000000100000000 # initialize rs2
remuw x10, x31, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x7ffffffffffffffe rs2 = 0x100000001)
li x16, 0x0bac4973e99c3d16 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x7ffffffffffffffe # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
remuw x16, x20, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x0)
li x28, 0xe992d74889499d6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xffffffffffffffff # initialize rs1
li x13, 0x0000000000000000 # initialize rs2
remuw x28, x1, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x1)
li x11, 0xa0215cdcb7c2c6a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x31, 0x0000000000000001 # initialize rs2
remuw x11, x22, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x2)
li x24, 0xb63877f6e0605b21 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xffffffffffffffff # initialize rs1
li x15, 0x0000000000000002 # initialize rs2
remuw x24, x12, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000000)
li x7, 0x95d99c7a7e89d637 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xffffffffffffffff # initialize rs1
li x17, 0x8000000000000000 # initialize rs2
remuw x7, x26, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x8000000000000001)
li x24, 0x1c79d2d499d73225 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xffffffffffffffff # initialize rs1
li x28, 0x8000000000000001 # initialize rs2
remuw x24, x21, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7fffffffffffffff)
li x30, 0x9a9dcbecc3cafd40 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xffffffffffffffff # initialize rs1
li x3, 0x7fffffffffffffff # initialize rs2
remuw x30, x25, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x7ffffffffffffffe)
li x28, 0x96eb9c9b0a1e7b3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xffffffffffffffff # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
remuw x28, x22, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffffffffffff)
li x4, 0xb4fd6ff538feb2b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xffffffffffffffff # initialize rs1
li x5, 0xffffffffffffffff # initialize rs2
remuw x4, x11, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffffffffffe)
li x29, 0xa12691a9a5bfc83a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xffffffffffffffff # initialize rs1
li x25, 0xfffffffffffffffe # initialize rs2
remuw x29, x27, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5bbc887763ae86f7)
li x19, 0x29189612c62e129f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xffffffffffffffff # initialize rs1
li x14, 0x5bbc887763ae86f7 # initialize rs2
remuw x19, x30, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x4, 0x9adc37853facdb70 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xffffffffffffffff # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x4, x3, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x5555555555555555)
li x12, 0xb37e8de84689f748 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffffffffffffffff # initialize rs1
li x4, 0x5555555555555555 # initialize rs2
remuw x12, x16, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xffffffff)
li x3, 0x5700bb03cda39e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xffffffffffffffff # initialize rs1
li x26, 0x00000000ffffffff # initialize rs2
remuw x3, x24, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0xfffffffe)
li x3, 0xdd559474070c19f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x27, 0x00000000fffffffe # initialize rs2
remuw x3, x31, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000000)
li x31, 0xb6ebf83b53eaa94d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xffffffffffffffff # initialize rs1
li x17, 0x0000000100000000 # initialize rs2
remuw x31, x7, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffffffffffff rs2 = 0x100000001)
li x5, 0x732a96cb60f7dd72 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xffffffffffffffff # initialize rs1
li x22, 0x0000000100000001 # initialize rs2
remuw x5, x31, x22 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x0)
li x4, 0x3f64839355a6681f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x19, 0x0000000000000000 # initialize rs2
remuw x4, x20, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x1)
li x9, 0x0a746f59d470db23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xfffffffffffffffe # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
remuw x9, x14, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x2)
li x4, 0x5380c9e00af5139d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xfffffffffffffffe # initialize rs1
li x13, 0x0000000000000002 # initialize rs2
remuw x4, x3, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000000)
li x18, 0x19f8ee2a1e19bd57 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
remuw x18, x12, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x8000000000000001)
li x10, 0x26cb33f00c4fc07c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xfffffffffffffffe # initialize rs1
li x21, 0x8000000000000001 # initialize rs2
remuw x10, x20, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7fffffffffffffff)
li x15, 0xa8f853c8f7dde32e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfffffffffffffffe # initialize rs1
li x10, 0x7fffffffffffffff # initialize rs2
remuw x15, x28, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x7ffffffffffffffe)
li x9, 0x0447812cf8cf8cb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xfffffffffffffffe # initialize rs1
li x21, 0x7ffffffffffffffe # initialize rs2
remuw x9, x5, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffffffffffff)
li x28, 0x52ae042c84558949 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfffffffffffffffe # initialize rs1
li x9, 0xffffffffffffffff # initialize rs2
remuw x28, x24, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffffffffffe)
li x24, 0x0ef8c525e8f84ad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
li x11, 0xfffffffffffffffe # initialize rs2
remuw x24, x12, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5bbc887763ae86f7)
li x7, 0x662a3037d158fad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xfffffffffffffffe # initialize rs1
li x23, 0x5bbc887763ae86f7 # initialize rs2
remuw x7, x30, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x87e57cf853bea39a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xfffffffffffffffe # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x18, x12, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x5555555555555555)
li x12, 0x3d3519dec8e2f1a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xfffffffffffffffe # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
remuw x12, x8, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xffffffff)
li x4, 0x22d58ae6da4a1d65 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xfffffffffffffffe # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
remuw x4, x11, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0xfffffffe)
li x16, 0x19da3d0806ba7dc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xfffffffffffffffe # initialize rs1
li x23, 0x00000000fffffffe # initialize rs2
remuw x16, x6, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000000)
li x20, 0x8d239573bb5cdcda # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xfffffffffffffffe # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
remuw x20, x26, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffffffffffe rs2 = 0x100000001)
li x5, 0x0d7d9a2ceec0785c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xfffffffffffffffe # initialize rs1
li x16, 0x0000000100000001 # initialize rs2
remuw x5, x25, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x0)
li x16, 0x3aac5aac51421a48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x5bbc887763ae86f7 # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
remuw x16, x8, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x1)
li x29, 0x35ab33185bff23c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x0000000000000001 # initialize rs2
remuw x29, x31, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x2)
li x28, 0xe84f0393caf516d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x5bbc887763ae86f7 # initialize rs1
li x12, 0x0000000000000002 # initialize rs2
remuw x28, x26, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000000)
li x3, 0x650e3b9601577c77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x27, 0x8000000000000000 # initialize rs2
remuw x3, x21, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x8000000000000001)
li x19, 0xa72b96eee6f2d014 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x17, 0x8000000000000001 # initialize rs2
remuw x19, x21, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7fffffffffffffff)
li x24, 0x4cdf7c452959d505 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x23, 0x7fffffffffffffff # initialize rs2
remuw x24, x2, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x7ffffffffffffffe)
li x28, 0xf4ee5530caac056b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0x7ffffffffffffffe # initialize rs2
remuw x28, x25, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffffffffffff)
li x3, 0x9e5a45a3221dd918 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0xffffffffffffffff # initialize rs2
remuw x3, x14, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffffffffffe)
li x22, 0xa7653668e48a68cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x5bbc887763ae86f7 # initialize rs1
li x3, 0xfffffffffffffffe # initialize rs2
remuw x22, x14, x3 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5bbc887763ae86f7)
li x15, 0x3e808ed2562e6608 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x5bbc887763ae86f7 # initialize rs1
li x13, 0x5bbc887763ae86f7 # initialize rs2
remuw x15, x21, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xaaaaaaaaaaaaaaaa)
li x13, 0xa70a283f3baa79b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x13, x12, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x5555555555555555)
li x15, 0x4d8bd1f962edd9f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x5bbc887763ae86f7 # initialize rs1
li x29, 0x5555555555555555 # initialize rs2
remuw x15, x2, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xffffffff)
li x16, 0xff25eaf15c13386a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5bbc887763ae86f7 # initialize rs1
li x9, 0x00000000ffffffff # initialize rs2
remuw x16, x25, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0xfffffffe)
li x9, 0xa441d5d8ef2961b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5bbc887763ae86f7 # initialize rs1
li x2, 0x00000000fffffffe # initialize rs2
remuw x9, x12, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000000)
li x7, 0xed763467bb0c359e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5bbc887763ae86f7 # initialize rs1
li x25, 0x0000000100000000 # initialize rs2
remuw x7, x30, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5bbc887763ae86f7 rs2 = 0x100000001)
li x24, 0xad25bc12daafd5bf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x5bbc887763ae86f7 # initialize rs1
li x15, 0x0000000100000001 # initialize rs2
remuw x24, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x0)
li x12, 0x356793c1163ba40b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x0000000000000000 # initialize rs2
remuw x12, x10, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x1)
li x20, 0x02f8cb3de981f492 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x0000000000000001 # initialize rs2
remuw x20, x3, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x2)
li x12, 0x2361ed63109eb6df # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0x0000000000000002 # initialize rs2
remuw x12, x21, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000000)
li x5, 0x89497cdedf49fe24 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x7, 0x8000000000000000 # initialize rs2
remuw x5, x27, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x8000000000000001)
li x18, 0x10ab9cef26ea4987 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
remuw x18, x24, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7fffffffffffffff)
li x1, 0x43b35aba152c5312 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x7fffffffffffffff # initialize rs2
remuw x1, x31, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x7ffffffffffffffe)
li x3, 0x7201635de957f5dc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x7ffffffffffffffe # initialize rs2
remuw x3, x24, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffffffffffff)
li x9, 0x189c678dee34d1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x4, 0xffffffffffffffff # initialize rs2
remuw x9, x19, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffffffffffe)
li x6, 0xe4346ba65c40fbdc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x16, 0xfffffffffffffffe # initialize rs2
remuw x6, x27, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5bbc887763ae86f7)
li x17, 0xb7635c9c6aff5f42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x6, 0x5bbc887763ae86f7 # initialize rs2
remuw x17, x28, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xaaaaaaaaaaaaaaaa)
li x12, 0x911963b24ed62a5a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x14, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x12, x4, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x5555555555555555)
li x4, 0x6b04c855b010625e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x5555555555555555 # initialize rs2
remuw x4, x12, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xffffffff)
li x3, 0x7aa98371d3776e81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x15, 0x00000000ffffffff # initialize rs2
remuw x3, x19, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0xfffffffe)
li x19, 0xdb427a3dbfbbe3e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
remuw x19, x16, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000000)
li x24, 0x924761ccce9e1970 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x13, 0x0000000100000000 # initialize rs2
remuw x24, x31, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xaaaaaaaaaaaaaaaa rs2 = 0x100000001)
li x17, 0x151621038edbc237 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xaaaaaaaaaaaaaaaa # initialize rs1
li x10, 0x0000000100000001 # initialize rs2
remuw x17, x4, x10 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x0)
li x15, 0xa38d31d87dd15625 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
remuw x15, x22, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x1)
li x25, 0x1b76afa8c523a274 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x5, 0x0000000000000001 # initialize rs2
remuw x25, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x2)
li x25, 0x410ef56c3776c8ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x23, 0x0000000000000002 # initialize rs2
remuw x25, x11, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000000)
li x19, 0x26ab493c4ca949fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x24, 0x8000000000000000 # initialize rs2
remuw x19, x25, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x8000000000000001)
li x1, 0x657fd56185c4fab1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x5555555555555555 # initialize rs1
li x16, 0x8000000000000001 # initialize rs2
remuw x1, x11, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7fffffffffffffff)
li x24, 0xbcaea533efe80fb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x5555555555555555 # initialize rs1
li x28, 0x7fffffffffffffff # initialize rs2
remuw x24, x22, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x7ffffffffffffffe)
li x27, 0xd29ebc7f76122a48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5555555555555555 # initialize rs1
li x31, 0x7ffffffffffffffe # initialize rs2
remuw x27, x17, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffffffffffff)
li x5, 0x08ba64ab1c3b060a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x5555555555555555 # initialize rs1
li x1, 0xffffffffffffffff # initialize rs2
remuw x5, x17, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffffffffffe)
li x10, 0x8a171738c2bdf04d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x12, 0xfffffffffffffffe # initialize rs2
remuw x10, x20, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5bbc887763ae86f7)
li x18, 0x68a1111de699ff8b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x5555555555555555 # initialize rs1
li x25, 0x5bbc887763ae86f7 # initialize rs2
remuw x18, x23, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0xfdf885225a0150c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x5555555555555555 # initialize rs1
li x26, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x29, x25, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x5555555555555555)
li x20, 0x4f09c5c1d9734a93 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x5555555555555555 # initialize rs1
li x13, 0x5555555555555555 # initialize rs2
remuw x20, x7, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xffffffff)
li x25, 0xcc710aa28283fa6a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x5555555555555555 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
remuw x25, x29, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0xfffffffe)
li x8, 0x32f5072741a936da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x5555555555555555 # initialize rs1
li x29, 0x00000000fffffffe # initialize rs2
remuw x8, x30, x29 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000000)
li x29, 0xda1c5c831d8018da # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x5555555555555555 # initialize rs1
li x6, 0x0000000100000000 # initialize rs2
remuw x29, x20, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x5555555555555555 rs2 = 0x100000001)
li x28, 0x00d61a95c211dd73 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x5555555555555555 # initialize rs1
li x27, 0x0000000100000001 # initialize rs2
remuw x28, x10, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x0)
li x25, 0x20f89ef5fc5197ec # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x00000000ffffffff # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
remuw x25, x26, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x1)
li x23, 0xf7cf5268fe87d9f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000ffffffff # initialize rs1
li x13, 0x0000000000000001 # initialize rs2
remuw x23, x27, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x2)
li x17, 0x7084f31a7d3ef923 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # initialize rs1
li x4, 0x0000000000000002 # initialize rs2
remuw x17, x11, x4 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000000)
li x20, 0x4da6a997f1d0d5c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000ffffffff # initialize rs1
li x14, 0x8000000000000000 # initialize rs2
remuw x20, x15, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x8000000000000001)
li x1, 0x81f4ff1bc2de500c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000ffffffff # initialize rs1
li x25, 0x8000000000000001 # initialize rs2
remuw x1, x2, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7fffffffffffffff)
li x28, 0x2900c21915ac0b64 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x00000000ffffffff # initialize rs1
li x17, 0x7fffffffffffffff # initialize rs2
remuw x28, x11, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x7ffffffffffffffe)
li x9, 0x32adfae41c028c02 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x00000000ffffffff # initialize rs1
li x11, 0x7ffffffffffffffe # initialize rs2
remuw x9, x18, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffffffffffff)
li x23, 0x37fa23aa95c919b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x00000000ffffffff # initialize rs1
li x8, 0xffffffffffffffff # initialize rs2
remuw x23, x31, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffffffffffe)
li x4, 0x160d610c1db028ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x9, 0xfffffffffffffffe # initialize rs2
remuw x4, x10, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5bbc887763ae86f7)
li x8, 0x83aaad7e217e7163 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x00000000ffffffff # initialize rs1
li x19, 0x5bbc887763ae86f7 # initialize rs2
remuw x8, x23, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xaaaaaaaaaaaaaaaa)
li x18, 0x08fb68581d67244d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x00000000ffffffff # initialize rs1
li x16, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x18, x9, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x5555555555555555)
li x17, 0x2d0d893854e21a13 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x00000000ffffffff # initialize rs1
li x31, 0x5555555555555555 # initialize rs2
remuw x17, x25, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xffffffff)
li x2, 0xa4e1a0cc612dedfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x00000000ffffffff # initialize rs1
li x23, 0x00000000ffffffff # initialize rs2
remuw x2, x10, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0xfffffffe)
li x25, 0xdd31ce2ca4ad71e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x00000000ffffffff # initialize rs1
li x20, 0x00000000fffffffe # initialize rs2
remuw x25, x8, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000000)
li x31, 0x84a57437672d5318 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x00000000ffffffff # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
remuw x31, x2, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xffffffff rs2 = 0x100000001)
li x8, 0xaef4159b07dcfdc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000ffffffff # initialize rs1
li x1, 0x0000000100000001 # initialize rs2
remuw x8, x20, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x0)
li x7, 0xd4021f834de3f801 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
li x9, 0x0000000000000000 # initialize rs2
remuw x7, x6, x9 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x1)
li x31, 0xda9058fc0dcf1b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000001 # initialize rs2
remuw x31, x12, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x2)
li x24, 0xef16524c8f2074d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
li x26, 0x0000000000000002 # initialize rs2
remuw x24, x6, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000000)
li x11, 0xce4b0703ec9f95de # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x00000000fffffffe # initialize rs1
li x31, 0x8000000000000000 # initialize rs2
remuw x11, x6, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x8000000000000001)
li x23, 0x79b2cb0fc835f448 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x00000000fffffffe # initialize rs1
li x19, 0x8000000000000001 # initialize rs2
remuw x23, x29, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7fffffffffffffff)
li x28, 0xc008fe86bd6a26f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x13, 0x7fffffffffffffff # initialize rs2
remuw x28, x24, x13 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x7ffffffffffffffe)
li x19, 0x68fca0cf4a665ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x14, 0x7ffffffffffffffe # initialize rs2
remuw x19, x24, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffffffffffff)
li x8, 0xec086f5ea5179544 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x00000000fffffffe # initialize rs1
li x21, 0xffffffffffffffff # initialize rs2
remuw x8, x7, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffffffffffe)
li x31, 0x5c4477810b0b6c95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x00000000fffffffe # initialize rs1
li x17, 0xfffffffffffffffe # initialize rs2
remuw x31, x15, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5bbc887763ae86f7)
li x16, 0x6c12a7a7b1882771 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x00000000fffffffe # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
remuw x16, x3, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xaaaaaaaaaaaaaaaa)
li x24, 0x91581ecb33695b77 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x00000000fffffffe # initialize rs1
li x15, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x24, x16, x15 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x5555555555555555)
li x2, 0x10cbcf7324ed2132 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x00000000fffffffe # initialize rs1
li x5, 0x5555555555555555 # initialize rs2
remuw x2, x20, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xffffffff)
li x2, 0xd890cc83ee1f6abe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x00000000fffffffe # initialize rs1
li x12, 0x00000000ffffffff # initialize rs2
remuw x2, x27, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0xfffffffe)
li x1, 0xf4ef05e066e382b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x00000000fffffffe # initialize rs1
li x24, 0x00000000fffffffe # initialize rs2
remuw x1, x30, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000000)
li x14, 0xc55063bbf42e3f0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x00000000fffffffe # initialize rs1
li x27, 0x0000000100000000 # initialize rs2
remuw x14, x1, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0xfffffffe rs2 = 0x100000001)
li x31, 0xbac008888f3048c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x00000000fffffffe # initialize rs1
li x28, 0x0000000100000001 # initialize rs2
remuw x31, x24, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x0)
li x1, 0xbdfe08df26d29d9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000000 # initialize rs1
li x26, 0x0000000000000000 # initialize rs2
remuw x1, x23, x26 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x1)
li x5, 0xda76ebb13606a6d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x16, 0x0000000000000001 # initialize rs2
remuw x5, x18, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x2)
li x10, 0xc23a3925f4e627c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000000 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
remuw x10, x4, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000000)
li x15, 0x78f32dcac44b08f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000000 # initialize rs1
li x23, 0x8000000000000000 # initialize rs2
remuw x15, x21, x23 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x8000000000000001)
li x28, 0x091d5eefe73a4571 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x0000000100000000 # initialize rs1
li x12, 0x8000000000000001 # initialize rs2
remuw x28, x26, x12 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7fffffffffffffff)
li x31, 0xadcb7065130405b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000000 # initialize rs1
li x2, 0x7fffffffffffffff # initialize rs2
remuw x31, x9, x2 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x7ffffffffffffffe)
li x8, 0x9ac412e20c7c8c85 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000000 # initialize rs1
li x24, 0x7ffffffffffffffe # initialize rs2
remuw x8, x3, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffffffffffff)
li x20, 0x3c4ce737cafa3d2b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000100000000 # initialize rs1
li x24, 0xffffffffffffffff # initialize rs2
remuw x20, x29, x24 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffffffffffe)
li x29, 0x528497880b7e0f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x0000000100000000 # initialize rs1
li x28, 0xfffffffffffffffe # initialize rs2
remuw x29, x13, x28 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5bbc887763ae86f7)
li x10, 0xd65a61a521e2d35c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000100000000 # initialize rs1
li x17, 0x5bbc887763ae86f7 # initialize rs2
remuw x10, x18, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xaaaaaaaaaaaaaaaa)
li x29, 0x3627c8d56f6f012e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x8, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x29, x14, x8 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x5555555555555555)
li x7, 0x99e327eff92f7e8f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0000000100000000 # initialize rs1
li x6, 0x5555555555555555 # initialize rs2
remuw x7, x8, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xffffffff)
li x10, 0x43bc0b711440f464 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x0000000100000000 # initialize rs1
li x7, 0x00000000ffffffff # initialize rs2
remuw x10, x30, x7 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0xfffffffe)
li x7, 0xd5c9768a79257c44 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x0000000100000000 # initialize rs1
li x6, 0x00000000fffffffe # initialize rs2
remuw x7, x9, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000000)
li x11, 0xfc5e9390dcda0fd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x0000000100000000 # initialize rs1
li x14, 0x0000000100000000 # initialize rs2
remuw x11, x3, x14 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000000 rs2 = 0x100000001)
li x8, 0x2a9035e2eee9f67f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x0000000100000000 # initialize rs1
li x17, 0x0000000100000001 # initialize rs2
remuw x8, x14, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x0)
li x2, 0xd1b067be589217c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0000000100000001 # initialize rs1
li x20, 0x0000000000000000 # initialize rs2
remuw x2, x23, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x1)
li x20, 0x0a57094ef52c63c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000001 # initialize rs1
li x27, 0x0000000000000001 # initialize rs2
remuw x20, x2, x27 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x2)
li x21, 0xcb00f30475003879 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x17, 0x0000000000000002 # initialize rs2
remuw x21, x1, x17 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000000)
li x27, 0xbbab6256823efdc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x20, 0x8000000000000000 # initialize rs2
remuw x27, x17, x20 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x8000000000000001)
li x6, 0xdc025c062d8939e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x0000000100000001 # initialize rs1
li x11, 0x8000000000000001 # initialize rs2
remuw x6, x16, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7fffffffffffffff)
li x30, 0x7270f708192d09ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x16, 0x7fffffffffffffff # initialize rs2
remuw x30, x1, x16 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x7ffffffffffffffe)
li x14, 0xf3432c76dabbc1e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x0000000100000001 # initialize rs1
li x25, 0x7ffffffffffffffe # initialize rs2
remuw x14, x4, x25 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffffffffffff)
li x7, 0x4910ee93825351ac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x6, 0xffffffffffffffff # initialize rs2
remuw x7, x17, x6 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffffffffffe)
li x27, 0xfbf2bdf041b111f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x0000000100000001 # initialize rs1
li x5, 0xfffffffffffffffe # initialize rs2
remuw x27, x22, x5 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5bbc887763ae86f7)
li x7, 0xb809b87ec749b853 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0000000100000001 # initialize rs1
li x11, 0x5bbc887763ae86f7 # initialize rs2
remuw x7, x21, x11 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xaaaaaaaaaaaaaaaa)
li x31, 0xed6bf79fe9fb1310 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x0000000100000001 # initialize rs1
li x19, 0xaaaaaaaaaaaaaaaa # initialize rs2
remuw x31, x5, x19 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x5555555555555555)
li x17, 0xd9568d00de8c5fb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x0000000100000001 # initialize rs1
li x1, 0x5555555555555555 # initialize rs2
remuw x17, x2, x1 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xffffffff)
li x24, 0x300c5d67857e0ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x0000000100000001 # initialize rs1
li x31, 0x00000000ffffffff # initialize rs2
remuw x24, x11, x31 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0xfffffffe)
li x9, 0xeafd484118a21ad7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x0000000100000001 # initialize rs1
li x30, 0x00000000fffffffe # initialize rs2
remuw x9, x1, x30 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000000)
li x11, 0x54aeb0f46942deaf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0000000100000001 # initialize rs1
li x21, 0x0000000100000000 # initialize rs2
remuw x11, x17, x21 # perform operation

# Testcase cr_rs1_rs2_corners (Test source rs1 = 0x100000001 rs2 = 0x100000001)
li x31, 0x317fc4eae6a3170f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0000000100000001 # initialize rs1
li x29, 0x0000000100000001 # initialize rs2
remuw x31, x10, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x0)
li x0, 0xd65a5955868e8d3c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0xcb8ac5b03161e225 # initialize rs1
li x15, 0x6d4895cc49f852c5 # initialize rs2
remuw x0, x0, x15 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x1)
li x1, 0x2544ddb4f07462c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xd60792d327774d0c # initialize rs1
li x16, 0xb0a6639e2c8c1a6b # initialize rs2
remuw x1, x1, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x2)
li x2, 0x7b6e6c2ff1a5750e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xcefc21f2663aa5bc # initialize rs1
li x3, 0x72e7a1a33fa92497 # initialize rs2
remuw x2, x2, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x3)
li x3, 0x800403d5023b099a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x18886df41e083de9 # initialize rs1
li x10, 0x86774dbcef4189b6 # initialize rs2
remuw x3, x3, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x4)
li x4, 0x2829c6862168b94b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x3ccd7d9be071b482 # initialize rs1
li x29, 0xbc28e0fe35198cd3 # initialize rs2
remuw x4, x4, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x5)
li x5, 0x40599d5cf7b58374 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb90ae65d370bb2ad # initialize rs1
li x14, 0x461d2d53cfd6b2ae # initialize rs2
remuw x5, x5, x14 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x6)
li x6, 0x2e1c3aaa7e063d6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4a3d6c7bab86370a # initialize rs1
li x21, 0x3d1d4ff9dee59754 # initialize rs2
remuw x6, x6, x21 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x7)
li x7, 0xe8517adf6224e313 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x60cc893f33d31234 # initialize rs1
li x27, 0x7a0f76b78c845dd1 # initialize rs2
remuw x7, x7, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x8)
li x8, 0xc3ba2229d570cb89 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xac285cee8c464441 # initialize rs1
li x24, 0xbf4296cc75e92c93 # initialize rs2
remuw x8, x8, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x9)
li x9, 0x4f3e8e610d6ac8a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5c0da6b7cf22ebc6 # initialize rs1
li x24, 0xfe5c6119f4d47f2d # initialize rs2
remuw x9, x9, x24 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x10)
li x10, 0x80ce748fa8bdb85d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x34ceb4f1489bb600 # initialize rs1
li x20, 0xd3885325d316c46d # initialize rs2
remuw x10, x10, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x11)
li x11, 0x2c5aacd5427b0f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xdba5b51ffd715c07 # initialize rs1
li x29, 0x910656b96dd8b13a # initialize rs2
remuw x11, x11, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x12)
li x12, 0x2ec44e1505e2fedd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x4263d24cb59789cb # initialize rs1
li x16, 0x588bc53503f9c622 # initialize rs2
remuw x12, x12, x16 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x13)
li x13, 0xfb16465af0700ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xcbc4ba9059323827 # initialize rs1
li x20, 0xd9de0fa59dcb887e # initialize rs2
remuw x13, x13, x20 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x14)
li x14, 0x27246b6e428307bc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4b65e2c37fe8860d # initialize rs1
li x26, 0xa3267121ba03293b # initialize rs2
remuw x14, x14, x26 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x15)
li x15, 0x9660999164df50e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2be0da03958e993d # initialize rs1
li x13, 0x5435645b2c824f23 # initialize rs2
remuw x15, x15, x13 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x16)
li x16, 0x32ead559852a5a83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xb27b969a76c13804 # initialize rs1
li x11, 0x1eca28b229a9aff6 # initialize rs2
remuw x16, x16, x11 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x17)
li x17, 0x9ddc415f9b9ae46b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x0fc2da6cbca8df2a # initialize rs1
li x12, 0x89c16085d24570f0 # initialize rs2
remuw x17, x17, x12 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x18)
li x18, 0x2b2bfebd2e993ff6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x825fa5b962ffd5c3 # initialize rs1
li x18, 0x47aa1c909c38b173 # initialize rs2
remuw x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x19)
li x19, 0x68fe33fab78468e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x71567ea36190a80f # initialize rs1
li x29, 0xb9de6ccafab98280 # initialize rs2
remuw x19, x19, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x20)
li x20, 0xe3d039e755807d42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x618b5f3f66a2e8de # initialize rs1
li x5, 0xbe2af9f6a287021e # initialize rs2
remuw x20, x20, x5 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x21)
li x21, 0x792a74bf9e6c5af7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xb9a2645712911d79 # initialize rs1
li x7, 0x85c38f0fad6ec6fb # initialize rs2
remuw x21, x21, x7 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x22)
li x22, 0x5c2b15c0d2019cf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x6bd49f0f5e4012e5 # initialize rs1
li x6, 0xdaedaa238a59b9f7 # initialize rs2
remuw x22, x22, x6 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x23)
li x23, 0xa2394670065c3f55 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x93ffeeac147f8b5b # initialize rs1
li x18, 0x352bb35df85dbc2d # initialize rs2
remuw x23, x23, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x24)
li x24, 0x17f90735fe6d3e32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x73aa0c1f6485e5d8 # initialize rs1
li x18, 0x632ccaf6addb003f # initialize rs2
remuw x24, x24, x18 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x25)
li x25, 0xcdbbd9941a6b60ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xf40b71d42dbb2505 # initialize rs1
li x3, 0x0cf076ef2365906f # initialize rs2
remuw x25, x25, x3 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x26)
li x26, 0x594281fa21ff6e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x373151c7f72c78ba # initialize rs1
li x28, 0xbb885d3eb67b7237 # initialize rs2
remuw x26, x26, x28 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x27)
li x27, 0xc5fb9f384c53359f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xf53f9092c4ff0a30 # initialize rs1
li x27, 0x800f9e797e5ba121 # initialize rs2
remuw x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x28)
li x28, 0x19ecdf884bfc210d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xfc1ea84d91c8fbfd # initialize rs1
li x22, 0x1fb1b33f3328cf86 # initialize rs2
remuw x28, x28, x22 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x29)
li x29, 0xd591b1ec1c7d7163 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x1be6f35c25c3349b # initialize rs1
li x10, 0xa41238eaf5d35eea # initialize rs2
remuw x29, x29, x10 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x30)
li x30, 0x92d774d932f5c8fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xd14692257977a1cc # initialize rs1
li x29, 0x9b39cbf65b980e32 # initialize rs2
remuw x30, x30, x29 # perform operation

# Testcase cmp_rd_rs1 (Test rd = rs1 = x31)
li x31, 0x169aec09a1a9969f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x1086e42ac837e3c4 # initialize rs1
li x5, 0x9dea097d52ad843b # initialize rs2
remuw x31, x31, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x0)
li x0, 0x6ddd77d56832ddcf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x1a2b609c45f99e52 # initialize rs1
li x0, 0xe36b59a39430c235 # initialize rs2
remuw x0, x9, x0 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x1)
li x1, 0x6261cb9121cc3d0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xe04fd8bbfdf0ba97 # initialize rs1
li x1, 0x33f69375c13cf1dc # initialize rs2
remuw x1, x26, x1 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x2)
li x2, 0x8d18050c6d211d31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x418899628a072a23 # initialize rs1
li x2, 0xb3af83b2c1d1ec6e # initialize rs2
remuw x2, x10, x2 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x3)
li x3, 0xa304e16ada70ff7f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x5174f2527b951378 # initialize rs1
li x3, 0x3a7f256f0fb7f3e8 # initialize rs2
remuw x3, x28, x3 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x4)
li x4, 0x0d003cf0993d3c04 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0xdd5f4388f7eeb1bc # initialize rs1
li x4, 0x681d794e5f5be83c # initialize rs2
remuw x4, x18, x4 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x5)
li x5, 0x9d50c7a187f4363f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x9fbbb2d63d659c48 # initialize rs1
li x5, 0x4e4ce02cea0d5161 # initialize rs2
remuw x5, x8, x5 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x6)
li x6, 0x79bd2c57d3eaca48 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xf294f1714fd61271 # initialize rs1
li x6, 0xbe5ab59f9ee59b7c # initialize rs2
remuw x6, x16, x6 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x7)
li x7, 0xc0428a04a8512370 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x3e03940213a9dc24 # initialize rs1
li x7, 0xb52bddb0ed58138e # initialize rs2
remuw x7, x29, x7 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x8)
li x8, 0x0d9e22d76b0c6e9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xffdd5a2b888aaebc # initialize rs1
li x8, 0x8d384495942edf0d # initialize rs2
remuw x8, x16, x8 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x9)
li x9, 0xe22fd4f8dbc2f41c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x825eac9ea7e8e8b6 # initialize rs1
li x9, 0xa58f52a88bf3c3c1 # initialize rs2
remuw x9, x28, x9 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x10)
li x10, 0x9ea49c9b899b52c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x32b40d9aa4294244 # initialize rs1
li x10, 0x074bf935b31c29dd # initialize rs2
remuw x10, x25, x10 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x11)
li x11, 0x39d82d87a45c5b4b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xd6d714740de2c438 # initialize rs1
li x11, 0x1be7f495a2f3deb9 # initialize rs2
remuw x11, x28, x11 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x12)
li x12, 0x0db7a562d072702e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x1f52f78b7b8ae66c # initialize rs1
li x12, 0x832d49b5e2bb49d9 # initialize rs2
remuw x12, x21, x12 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x13)
li x13, 0xb7cf2f5cd22524fa # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x2243e9692b1cc584 # initialize rs1
li x13, 0x8eab469643d485ed # initialize rs2
remuw x13, x3, x13 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x14)
li x14, 0x00c797be22971428 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x0466a752ce8785de # initialize rs1
li x14, 0xde74302cca5b15e5 # initialize rs2
remuw x14, x15, x14 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x15)
li x15, 0x596ad86d4ddcc96d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x86eedb16d4b07c78 # initialize rs1
li x15, 0xc9cec160add3079e # initialize rs2
remuw x15, x23, x15 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x16)
li x16, 0x8c76d6e92417246c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x4e3939f63df585f5 # initialize rs1
li x16, 0xdb4decc54553812a # initialize rs2
remuw x16, x23, x16 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x17)
li x17, 0xf5873a9ca1581236 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x0dbb09f30793239b # initialize rs1
li x17, 0x4f684ee18451a212 # initialize rs2
remuw x17, x8, x17 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x18)
li x18, 0xe6e76b7cd83a708d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0xbd86755eaa83b7f6 # initialize rs1
li x18, 0x0d1eaab18607193a # initialize rs2
remuw x18, x6, x18 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x19)
li x19, 0x4cc9e4d3bff8af31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3d4acd98a2260b98 # initialize rs1
li x19, 0x9fd0b2d2ade8c016 # initialize rs2
remuw x19, x1, x19 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x20)
li x20, 0x131cecd10a6f1fe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x513b31cf450bebe9 # initialize rs1
li x20, 0x4d4e47d731da009c # initialize rs2
remuw x20, x1, x20 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x21)
li x21, 0x5a79467bce0b4f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xe7ce33b20ea44844 # initialize rs1
li x21, 0x5d720b19d3f0699e # initialize rs2
remuw x21, x19, x21 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x22)
li x22, 0x5eed8b5315f97939 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x6a525be6f964bfc6 # initialize rs1
li x22, 0x671008c19bdf16ba # initialize rs2
remuw x22, x21, x22 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x23)
li x23, 0xc38997bf433b4b49 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x7baff0ce9f1350a1 # initialize rs1
li x23, 0x3ecb450d1616b41a # initialize rs2
remuw x23, x8, x23 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x24)
li x24, 0x739f8e579bbb6c63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xf1b97de4081d81e1 # initialize rs1
li x24, 0x79afea8315c7c6a5 # initialize rs2
remuw x24, x23, x24 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x25)
li x25, 0x6137c14d19ce4505 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xda89709cb917aaaf # initialize rs1
li x25, 0x0dc978e00dd7af94 # initialize rs2
remuw x25, x16, x25 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x26)
li x26, 0x4bfdaaed740d96fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x3b0055c50da822ae # initialize rs1
li x26, 0x1feaff735316b1fd # initialize rs2
remuw x26, x1, x26 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x27)
li x27, 0x7467f08e513156d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x2b3f255272cb4b66 # initialize rs1
li x27, 0x74c83f700fdb13a7 # initialize rs2
remuw x27, x11, x27 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x28)
li x28, 0x7d1c3de6d48ca282 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x2c6fcdc48f004382 # initialize rs1
li x28, 0x9776441f499637be # initialize rs2
remuw x28, x10, x28 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x29)
li x29, 0xc484417ba46c84b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0xfda0e1d4d57a879f # initialize rs1
li x29, 0x606be0aa3c6c2868 # initialize rs2
remuw x29, x4, x29 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x30)
li x30, 0xf95df5358ff1b508 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x02ad0d1c6d4e01c9 # initialize rs1
li x30, 0x809ee60e25822c51 # initialize rs2
remuw x30, x22, x30 # perform operation

# Testcase cmp_rd_rs2 (Test rd = rs1 = x31)
li x31, 0x8bad6942430ca386 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x7c83ca39858684a7 # initialize rs1
li x31, 0xa38a766c25fcb71d # initialize rs2
remuw x31, x10, x31 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x0)
li x0, 0x0d46978642bc809a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x95f26099c9cc0e8b # initialize rs1
li x0, 0x8bf1754b57363c3f # initialize rs2
remuw x0, x0, x0 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x1)
li x1, 0xefc6096da6570009 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf28571b303cdccaf # initialize rs1
li x1, 0xd7eb61660784e460 # initialize rs2
remuw x1, x1, x1 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x2)
li x2, 0x86040a00094d4c31 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0x6355d70b24344b5f # initialize rs1
li x2, 0x7a14506816077322 # initialize rs2
remuw x2, x2, x2 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x3)
li x3, 0x3b6639069461b7c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf5e689ad4786d8f5 # initialize rs1
li x3, 0x59fda3905fb8542f # initialize rs2
remuw x3, x3, x3 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x4)
li x4, 0x902de2ddc1bff488 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x6df1a67ff086a0db # initialize rs1
li x4, 0x5f50b11ec18f2dc8 # initialize rs2
remuw x4, x4, x4 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x5)
li x5, 0xfeaa2988bc269aa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xf069915b6f570633 # initialize rs1
li x5, 0x780b37f64e1c7fa4 # initialize rs2
remuw x5, x5, x5 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x6)
li x6, 0x9cc5c37dd966394f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x4edaa888e80af8cf # initialize rs1
li x6, 0xb5a289a19a2d13d4 # initialize rs2
remuw x6, x6, x6 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x7)
li x7, 0x2bd45b6ee4c186f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd652f255bfe6dcf1 # initialize rs1
li x7, 0xd23e6a4d869921e7 # initialize rs2
remuw x7, x7, x7 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x8)
li x8, 0xd78ba4c5d101d703 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x795bf560fac60a57 # initialize rs1
li x8, 0xd03e984778d14eb0 # initialize rs2
remuw x8, x8, x8 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x9)
li x9, 0xe3171cb612d03db5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x5b4c9d7f784c8be1 # initialize rs1
li x9, 0x22f897c7a1c5f9c3 # initialize rs2
remuw x9, x9, x9 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x10)
li x10, 0x221020bbadd66585 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xb6e008dd10db5491 # initialize rs1
li x10, 0x1bd968ea0fad72c5 # initialize rs2
remuw x10, x10, x10 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x11)
li x11, 0x2df0403dfa116f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x1298940939f9488f # initialize rs1
li x11, 0x9ccfd6fcef8ea0d6 # initialize rs2
remuw x11, x11, x11 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x12)
li x12, 0xca4a24b327d4b6b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xce8031e1ba70e757 # initialize rs1
li x12, 0x10e9a04221576053 # initialize rs2
remuw x12, x12, x12 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x13)
li x13, 0x47996643b9da8545 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x471b07d8bf3bb63b # initialize rs1
li x13, 0x776ae8843a1d7051 # initialize rs2
remuw x13, x13, x13 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x14)
li x14, 0x254d41caab731f2e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x7ab5a66dc61b6703 # initialize rs1
li x14, 0x2b1f64d581455985 # initialize rs2
remuw x14, x14, x14 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x15)
li x15, 0x1ed016eabebb8945 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xfece71f52dcdaacc # initialize rs1
li x15, 0x22c1fbfac8c3fa97 # initialize rs2
remuw x15, x15, x15 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x16)
li x16, 0x9976998df4fbcf29 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xc57b1dc87a6adc6f # initialize rs1
li x16, 0x24b5f5355bca8dba # initialize rs2
remuw x16, x16, x16 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x17)
li x17, 0xca5fd186525c608a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x1e3ac86705f299fa # initialize rs1
li x17, 0x1f845f840464d72e # initialize rs2
remuw x17, x17, x17 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x18)
li x18, 0x7f34ac77c0f5cdbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x524f8af020e00778 # initialize rs1
li x18, 0xb569f3011e3e65dd # initialize rs2
remuw x18, x18, x18 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x19)
li x19, 0x5ff982cdb069e90e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x7c58c0366a07778d # initialize rs1
li x19, 0x8765d9889ba57409 # initialize rs2
remuw x19, x19, x19 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x20)
li x20, 0x8d3213156cd950ba # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x588e268e82af5520 # initialize rs1
li x20, 0x27145d5b5388d116 # initialize rs2
remuw x20, x20, x20 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x21)
li x21, 0x76748054ee1c1dbe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xdbae13d113c163e2 # initialize rs1
li x21, 0x90e6049aeaea0b3f # initialize rs2
remuw x21, x21, x21 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x22)
li x22, 0x2637973581c2f81e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x2dbeb6ec6244e308 # initialize rs1
li x22, 0xa3a97279306a1a21 # initialize rs2
remuw x22, x22, x22 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x23)
li x23, 0xdce17dce8b674007 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x9e2f7be2ee252651 # initialize rs1
li x23, 0xdadc5fc47c14596a # initialize rs2
remuw x23, x23, x23 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x24)
li x24, 0xc95ff8d88cd053ae # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xb3fdbfbdb70abe7d # initialize rs1
li x24, 0xae331281169671c9 # initialize rs2
remuw x24, x24, x24 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x25)
li x25, 0x7f75e961b248952b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xbe2ef9a670d62e23 # initialize rs1
li x25, 0xa918a9434ca56630 # initialize rs2
remuw x25, x25, x25 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x26)
li x26, 0xc64c3d14609cfa32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xb452ab74e7449098 # initialize rs1
li x26, 0xc4f07cc8eeb836e3 # initialize rs2
remuw x26, x26, x26 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x27)
li x27, 0x92e69cac8af68829 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x1f567d3ed6551396 # initialize rs1
li x27, 0xb925bb104a8250fc # initialize rs2
remuw x27, x27, x27 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x28)
li x28, 0x11ce393d15e7081d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0xc13172ddc2e2cf58 # initialize rs1
li x28, 0x515c3950947b164f # initialize rs2
remuw x28, x28, x28 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x29)
li x29, 0xa4ed596b9d7dabeb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc09959f749fbcc44 # initialize rs1
li x29, 0x32fab27a35390b98 # initialize rs2
remuw x29, x29, x29 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x30)
li x30, 0xbce21aa4c801f1d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x417ab647e553719a # initialize rs1
li x30, 0xb385a8b1b862c48a # initialize rs2
remuw x30, x30, x30 # perform operation

# Testcase cmp_rd_rs1_rs2 (Test rd = rs1 = rs2 = x31)
li x31, 0xabc637caece327ef # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6455ef40faa13af9 # initialize rs1
li x31, 0xcc3e27d7a28c7ad3 # initialize rs2
remuw x31, x31, x31 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x0)
li x14, 0x9a5de0fc149c4ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x45636616073c410f # initialize rs1
li x0, 0x1f8e2a4b7c2e920d # initialize rs2
remuw x14, x0, x0 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x1)
li x18, 0xf045b5a3f19cc9fe # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x324890b363ffcb04 # initialize rs1
li x1, 0xd3cb71ad9f8f3983 # initialize rs2
remuw x18, x1, x1 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x2)
li x31, 0xea3673140fa9ff19 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xe31145fb2c96c978 # initialize rs1
li x2, 0x834f0095a19a2c28 # initialize rs2
remuw x31, x2, x2 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x3)
li x2, 0x6267fc4274b24db0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xf8c362c5e1d7bf17 # initialize rs1
li x3, 0x5ec3e8e2b2ae1a31 # initialize rs2
remuw x2, x3, x3 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x4)
li x15, 0xfdbe4bcb804ad4c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x85fe635e95a2be90 # initialize rs1
li x4, 0xa19bba497253b7ce # initialize rs2
remuw x15, x4, x4 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x5)
li x29, 0x25825cc226c6f709 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xc5069e2b716a0292 # initialize rs1
li x5, 0xc3249ca452aec975 # initialize rs2
remuw x29, x5, x5 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x6)
li x17, 0xd2385426749d3e1c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x1b95ac8a6782c07b # initialize rs1
li x6, 0x66110690c4d1f0f8 # initialize rs2
remuw x17, x6, x6 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x7)
li x22, 0x74e731b13dae6d63 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x69e23d7290c82c6b # initialize rs1
li x7, 0x793268c65de1fcb7 # initialize rs2
remuw x22, x7, x7 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x8)
li x24, 0xb30379477a57efac # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4194f35fde775fe6 # initialize rs1
li x8, 0x035bf0975e03cdb5 # initialize rs2
remuw x24, x8, x8 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x9)
li x30, 0xcccace1ccc4bd014 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x08ec6a1f3c06f657 # initialize rs1
li x9, 0x9354b38ff4aff2e6 # initialize rs2
remuw x30, x9, x9 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x10)
li x12, 0x68204b11decab96c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x0a1e3a8152c4a6a4 # initialize rs1
li x10, 0x69cab428f13863bd # initialize rs2
remuw x12, x10, x10 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x11)
li x2, 0x3a6f33259a7bdbf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4d80fd8aca43ad47 # initialize rs1
li x11, 0xd22fcd50d2388547 # initialize rs2
remuw x2, x11, x11 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x12)
li x13, 0x309b3f451392179d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x727f16edd6767c48 # initialize rs1
li x12, 0x90bdf12fa8a9f008 # initialize rs2
remuw x13, x12, x12 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x13)
li x12, 0x50723c9eae406a7a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x87b4dec3ccfdf5fa # initialize rs1
li x13, 0x5f56f5154171d3e8 # initialize rs2
remuw x12, x13, x13 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x14)
li x6, 0x5c9ca352da3c4640 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x4c4b109ecf47dd76 # initialize rs1
li x14, 0x5a4dba3059403403 # initialize rs2
remuw x6, x14, x14 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x15)
li x7, 0xa1c0ed6dfcd3db0b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x77e66e2e73a3f375 # initialize rs1
li x15, 0x6cd7e4a62137d8d1 # initialize rs2
remuw x7, x15, x15 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x16)
li x1, 0x8ff0250db720260b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xbf92017a120e6ec4 # initialize rs1
li x16, 0x061aa8de5851899a # initialize rs2
remuw x1, x16, x16 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x17)
li x20, 0x2e4097e4a5883c07 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x4d0693af1d5ca21e # initialize rs1
li x17, 0x954079f545b23469 # initialize rs2
remuw x20, x17, x17 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x18)
li x19, 0xd85d2dc7b81e328d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4f8132f1b292dd7a # initialize rs1
li x18, 0x237d4a4052bd593e # initialize rs2
remuw x19, x18, x18 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x19)
li x24, 0xe5d24e592fdc27a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x2e7188b309d9b951 # initialize rs1
li x19, 0xc18a21eed6f98b62 # initialize rs2
remuw x24, x19, x19 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x20)
li x27, 0xa7e0879b314b4c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x692356a4a1ec443e # initialize rs1
li x20, 0xdee4a912b7cf17d7 # initialize rs2
remuw x27, x20, x20 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x21)
li x28, 0x6031c952e7d59c5b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x0b53d99ae28230d7 # initialize rs1
li x21, 0x76f7d224562ec870 # initialize rs2
remuw x28, x21, x21 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x22)
li x30, 0x891778ac1b0ed1ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xef65b7c2817bb3a7 # initialize rs1
li x22, 0xd2dc1bf17863c278 # initialize rs2
remuw x30, x22, x22 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x23)
li x4, 0xb13ff3def31dd0a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x08c24b1169d735bd # initialize rs1
li x23, 0x4ff35fb6d9a17dcb # initialize rs2
remuw x4, x23, x23 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x24)
li x11, 0x892c4972de018293 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x8dd8dcacb38cab10 # initialize rs1
li x24, 0xb58b04a1bebbaf2d # initialize rs2
remuw x11, x24, x24 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x25)
li x7, 0xda309afc07f9b095 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0xcc1f0270314940ba # initialize rs1
li x25, 0xb195b42fee2caa49 # initialize rs2
remuw x7, x25, x25 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x26)
li x1, 0xbbeb4f093c36315f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x7e9cd6245b9c28de # initialize rs1
li x26, 0xa495fab4b8676e3d # initialize rs2
remuw x1, x26, x26 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x27)
li x28, 0x49824092ddae823e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5988278395dbb56b # initialize rs1
li x27, 0xf144b382b277eef6 # initialize rs2
remuw x28, x27, x27 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x28)
li x24, 0xc26517f68a4341d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x9aa59d004d7d4ee0 # initialize rs1
li x28, 0x64805752d9898656 # initialize rs2
remuw x24, x28, x28 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x29)
li x9, 0x8b352d1a4f96b0cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xbc8b971f88c625b2 # initialize rs1
li x29, 0x3141071d96bd2afc # initialize rs2
remuw x9, x29, x29 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x30)
li x4, 0x3ceb70b3d59a62b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xb9eb4bc37ed81402 # initialize rs1
li x30, 0xa833ce8c495e67c2 # initialize rs2
remuw x4, x30, x30 # perform operation

# Testcase cmp_rs1_rs2 (Test rs1 = rs2 = x31)
li x21, 0x1a7e1960b1cfad23 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xc4bd82253df65f36 # initialize rs1
li x31, 0xb17dad483831c46f # initialize rs2
remuw x21, x31, x31 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = 0x2e67ac8f71217a9b)
li x15, 0x5bd097e450f01ff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x2e67ac8f71217a9b # initialize rs1
li x20, 0x823ef2f9e105c795 # initialize rs2
remuw x15, x31, x20 # perform operation

# Testcase cp_rs1_sign (Test source rs1 value = -0x516ca18bbd7c116)
li x17, 0xb367f6ad26c6d185 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xfae935e744283eea # initialize rs1
li x16, 0x70dcc85fd91252aa # initialize rs2
remuw x17, x19, x16 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = 0x5569734e68aac8ae)
li x9, 0x29b3c964026b4231 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xb01d88d62a71258f # initialize rs1
li x22, 0x5569734e68aac8ae # initialize rs2
remuw x9, x5, x22 # perform operation

# Testcase cp_rs2_sign (Test source rs2 value = -0x73318d617c311d1d)
li x2, 0xfdaf9b4b0a508884 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x15c5de454c6dcb6c # initialize rs1
li x26, 0x8cce729e83cee2e3 # initialize rs2
remuw x2, x28, x26 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
