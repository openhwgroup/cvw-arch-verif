///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zca//WALLY-COV-c.slli.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.993296
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

    
# Testcase cp_rd (Test destination rd = x0)
li x0, 0xd41f4ef5a589af4a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x0, 0x48a26ee2fe072814
c.slli x0, 33 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xc48cdb5c49714655 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x72e113ce40e01323
c.slli x1, 13 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0xa8cbce9262c5ae83 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x2, 0xb21589e184ec1b63
c.slli x2, 55 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x78b5f988c42fd0a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xc19638627fc94bd6
c.slli x3, 59 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0xc913d79e13f4eb25 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x802ca69e54ca3f40
c.slli x4, 19 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x35de52340f8a0d95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0x00d4dc204d527010
c.slli x5, 27 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xeb554bd2bd3cbb17 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x6, 0x5d0717dd71b8bdcc
c.slli x6, 62 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xc9f42f825f82334f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xa68c655bcb80a0b0
c.slli x7, 27 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xe0c67735704a5c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0xb0fae6e528dbe0c4
c.slli x8, 9 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x52815ebca7a45573 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0x174b9f492ee009aa
c.slli x9, 54 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xd5961bc922a0addc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xa8edb7e81413ba28
c.slli x10, 11 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0x8f7dc091cb46c493 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0x4bac4f02603e2f79
c.slli x11, 45 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xb6647979e53e274b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0xb0ed0f966c81ab8a
c.slli x12, 33 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x9f9a2608b8efd1f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x80af04e711a5a63e
c.slli x13, 37 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x8f65e66e7ca0eb0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x09b97576515294b6
c.slli x14, 34 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x511623a90992edfc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xea02329d23e1a149
c.slli x15, 37 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0x1b6d182c20aae08b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x8f75c22373198d8c
c.slli x16, 20 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xfee39cc6c3a558ca # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0xc2b0b24fe8327c5e
c.slli x17, 24 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0xafcfa80c4ab112fd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x563586b2b9eca42c
c.slli x18, 35 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xaddc5ebca13d7fff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xef2ec7962bd90fc0
c.slli x19, 36 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xeaff20a1522a67c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x22f115ca2a73ecca
c.slli x20, 58 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x6acd1ab0ed68fcd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0xcb5af3ec108f1679
c.slli x21, 23 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0xf8e7a4f1861de518 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x1173ebb82e7d6c29
c.slli x22, 38 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xb1e076d1a1035a32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xbce3d1f6ee3273cb
c.slli x23, 36 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x8eab4608c1812762 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0xfddb82305243ae2d
c.slli x24, 2 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x20c308e9947e725c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x25, 0x9073b84f59550b11
c.slli x25, 46 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0xb2dad07b7d2dce33 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x1c7791b1783fc96a
c.slli x26, 60 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x1df96aac4b42dc11 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xbf72c9b939c732f8
c.slli x27, 9 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x86a3555769ce7fb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x28, 0x8c34d461abd73675
c.slli x28, 56 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xecb9a8bef75f020a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x03953767f9b26aaa
c.slli x29, 62 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x9e55423a4cec2fcc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x944a4ddd01b2df9d
c.slli x30, 42 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x7a8dd932908d5c3e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x5f33ff97d35f721e
c.slli x31, 48 # perform operation

# Testcase cp_imm_shift
li x13, 0x1102a43abe5b6633 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x57e8c5c207dd92ae
c.slli x13, 1 # perform operation

# Testcase cp_imm_shift
li x18, 0xd4a000e3c1755473 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x681695bff420be16
c.slli x18, 2 # perform operation

# Testcase cp_imm_shift
li x30, 0xd9bd9adacee4307d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0xca4fbb45abc33f88
c.slli x30, 3 # perform operation

# Testcase cp_imm_shift
li x3, 0x39b00077f9de30f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0xa04f53a1d0770ae8
c.slli x3, 4 # perform operation

# Testcase cp_imm_shift
li x22, 0xe97611289bb23f3f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x428dad41b0e21bf5
c.slli x22, 5 # perform operation

# Testcase cp_imm_shift
li x10, 0xdb9cbeaa0312f754 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0x6feaac8e74a7a3e1
c.slli x10, 6 # perform operation

# Testcase cp_imm_shift
li x7, 0x528197d37b59d449 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x53ec309a94d30946
c.slli x7, 7 # perform operation

# Testcase cp_imm_shift
li x17, 0x044a65f2f0fdfd76 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x80f6ea871f6620eb
c.slli x17, 8 # perform operation

# Testcase cp_imm_shift
li x7, 0xc90dab73bc0e33cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x583ee2d195d26846
c.slli x7, 9 # perform operation

# Testcase cp_imm_shift
li x29, 0xa57c6c98dc507822 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x6aacebf242a3ab18
c.slli x29, 10 # perform operation

# Testcase cp_imm_shift
li x20, 0x314c66506808655d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x3decb4938f7a8857
c.slli x20, 11 # perform operation

# Testcase cp_imm_shift
li x4, 0x35e67f97802e0d97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x4, 0x9526e8f8c994e128
c.slli x4, 12 # perform operation

# Testcase cp_imm_shift
li x17, 0x5ac6365cacdfa85a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x77874b10d8f85671
c.slli x17, 13 # perform operation

# Testcase cp_imm_shift
li x20, 0x5506d024a919539f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0xb38dca7f40fcdc2c
c.slli x20, 14 # perform operation

# Testcase cp_imm_shift
li x22, 0x54b7d4976af17898 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0xe15152f46ce99ccd
c.slli x22, 15 # perform operation

# Testcase cp_imm_shift
li x16, 0x6f8c055a93a853be # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0xe1244f984b7563a2
c.slli x16, 16 # perform operation

# Testcase cp_imm_shift
li x31, 0x3041ad3a57e209c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0xde0198d16dd8da2e
c.slli x31, 17 # perform operation

# Testcase cp_imm_shift
li x19, 0x52836c18b3bcd16a # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0xdc581da0814a9058
c.slli x19, 18 # perform operation

# Testcase cp_imm_shift
li x8, 0x511d6739efda8479 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x747d032af4a883a6
c.slli x8, 19 # perform operation

# Testcase cp_imm_shift
li x22, 0xf2ed4d3fef7e3ee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x22, 0x3516c96f29f7fc5c
c.slli x22, 20 # perform operation

# Testcase cp_imm_shift
li x12, 0xd1c5c7cf86897e97 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x5d047211e3b36d4d
c.slli x12, 21 # perform operation

# Testcase cp_imm_shift
li x9, 0xc4465623871e458f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xb9a205dd4e31b2db
c.slli x9, 22 # perform operation

# Testcase cp_imm_shift
li x13, 0x94f2a2f09d9a5898 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x02fac52dff476625
c.slli x13, 23 # perform operation

# Testcase cp_imm_shift
li x26, 0x8d4dd7b2af146f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x590a0686dd777795
c.slli x26, 24 # perform operation

# Testcase cp_imm_shift
li x23, 0x24bad618d14dbb78 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x6072418e6f2f54c5
c.slli x23, 25 # perform operation

# Testcase cp_imm_shift
li x23, 0x38a49efe16705cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0xe806173d4285bdc2
c.slli x23, 26 # perform operation

# Testcase cp_imm_shift
li x24, 0xe8f4327e4ff7cb0e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x96f36f9d414b765b
c.slli x24, 27 # perform operation

# Testcase cp_imm_shift
li x27, 0x9b8669bb7ea47893 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x87a9a9e896aba5a8
c.slli x27, 28 # perform operation

# Testcase cp_imm_shift
li x29, 0xb2f04c434b665462 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0xc50fa9f1e41f4a20
c.slli x29, 29 # perform operation

# Testcase cp_imm_shift
li x23, 0xac7c2f705f5cb4ea # initialize rd to a random value that should get changed; helps covering rd_toggle
li x23, 0x0d3b811adb67b4c2
c.slli x23, 30 # perform operation

# Testcase cp_imm_shift
li x27, 0x565aa3aeaa154428 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0xdbc0d6da5359f23c
c.slli x27, 31 # perform operation

# Testcase cp_imm_shift
li x14, 0xa9bdadd2e7ade020 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0xa605888ddbda0868
c.slli x14, 32 # perform operation

# Testcase cp_imm_shift
li x7, 0x08f5ebe890fd545d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0x82afa9d3de350231
c.slli x7, 33 # perform operation

# Testcase cp_imm_shift
li x15, 0x485901c32389c79b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xc1703f43b1b12805
c.slli x15, 34 # perform operation

# Testcase cp_imm_shift
li x16, 0x26395d87cdf8063f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x240c6c76241aa575
c.slli x16, 35 # perform operation

# Testcase cp_imm_shift
li x26, 0x499398bc7176b1cd # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0xec043bae4d8b9957
c.slli x26, 36 # perform operation

# Testcase cp_imm_shift
li x13, 0x982b6fbf5109b3cf # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x85f800f499c9fb53
c.slli x13, 37 # perform operation

# Testcase cp_imm_shift
li x12, 0x45871ccefc09ba32 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x12, 0x0b09cb2b5b8c6a80
c.slli x12, 38 # perform operation

# Testcase cp_imm_shift
li x30, 0x70a8d4760947813e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x30, 0x89991113d2f0d4c2
c.slli x30, 39 # perform operation

# Testcase cp_imm_shift
li x31, 0xd55c26f2523f1d14 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x97eedcaddb0165af
c.slli x31, 40 # perform operation

# Testcase cp_imm_shift
li x24, 0x059a43d8ec1eea6e # initialize rd to a random value that should get changed; helps covering rd_toggle
li x24, 0x21c0ebda2a3a1b69
c.slli x24, 41 # perform operation

# Testcase cp_imm_shift
li x14, 0x52973c0d1d2f24bb # initialize rd to a random value that should get changed; helps covering rd_toggle
li x14, 0x1d8885438fdcec6d
c.slli x14, 42 # perform operation

# Testcase cp_imm_shift
li x7, 0xed8dcfb3bc7045ab # initialize rd to a random value that should get changed; helps covering rd_toggle
li x7, 0xd389c3bed81c43c7
c.slli x7, 43 # perform operation

# Testcase cp_imm_shift
li x1, 0x4ded3d9cbcc5804f # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0xf48b8047bcd7ae7f
c.slli x1, 44 # perform operation

# Testcase cp_imm_shift
li x9, 0x9c12958c1eaf6fd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x9, 0xe8e17f40f2a84b5e
c.slli x9, 45 # perform operation

# Testcase cp_imm_shift
li x26, 0x39582b7b22ac2c95 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x26, 0x794fb4ed3b72b1f1
c.slli x26, 46 # perform operation

# Testcase cp_imm_shift
li x5, 0x0c3284e3eff99a6c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x5, 0xa6ffd9cc7f4f9688
c.slli x5, 47 # perform operation

# Testcase cp_imm_shift
li x19, 0xc14c46df825d350d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x067971b1bc1dc4d9
c.slli x19, 48 # perform operation

# Testcase cp_imm_shift
li x31, 0x83e18e6534f6fcb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x1144c62abfeebd35
c.slli x31, 49 # perform operation

# Testcase cp_imm_shift
li x3, 0x737bea5720a0095c # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x1dadb3b50198c22b
c.slli x3, 50 # perform operation

# Testcase cp_imm_shift
li x3, 0x68513285b32384b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x3, 0x8b1886b4471181f6
c.slli x3, 51 # perform operation

# Testcase cp_imm_shift
li x13, 0xc699b0ef049fdfff # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0xadbc21ffa63df7f9
c.slli x13, 52 # perform operation

# Testcase cp_imm_shift
li x10, 0x06c257c7fa7cf670 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x10, 0xda79bee28c286cc0
c.slli x10, 53 # perform operation

# Testcase cp_imm_shift
li x20, 0xaf2e8aff5fbf5021 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x2686560cec8a82c0
c.slli x20, 54 # perform operation

# Testcase cp_imm_shift
li x31, 0x09ff787eefa70098 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x31, 0x6bd832910cdfc164
c.slli x31, 55 # perform operation

# Testcase cp_imm_shift
li x20, 0x08a23c0ad854a616 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x20, 0x12627564450c64ee
c.slli x20, 56 # perform operation

# Testcase cp_imm_shift
li x13, 0x46b8f0021de228f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x13, 0x1e1ba61e513ff9d9
c.slli x13, 57 # perform operation

# Testcase cp_imm_shift
li x11, 0x1f61eab34e8bec12 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x11, 0xd3e6a6ab5461fc73
c.slli x11, 58 # perform operation

# Testcase cp_imm_shift
li x21, 0xc726efbfee0d9d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2ddc6728502266a3
c.slli x21, 59 # perform operation

# Testcase cp_imm_shift
li x15, 0xe27577b289d5dbe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0xdfa6b593ccf42df6
c.slli x15, 60 # perform operation

# Testcase cp_imm_shift
li x15, 0x3cdac28610be8f41 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x15, 0x2790bbad6e06706c
c.slli x15, 61 # perform operation

# Testcase cp_imm_shift
li x8, 0xf2b8cd02aeb34112 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x8, 0x4b5be4978ee2a25a
c.slli x8, 62 # perform operation

# Testcase cp_imm_shift
li x1, 0xc4763c9d2c175988 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x1, 0x4a23b65472175aeb
c.slli x1, 63 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x0 Shifted by 1)
li x18, 0x1fa4dc35a08a70cc # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x0000000000000000
c.slli x18, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x1 Shifted by 1)
li x19, 0xe3c4df3242b8170b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x19, 0x0000000000000001
c.slli x19, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x4000000000000000 Shifted by 1)
li x18, 0x065953af1a46ae42 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x4000000000000000
c.slli x18, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffff Shifted by 1)
li x17, 0x3ccb42d2b2508185 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x17, 0x000000007fffffff
c.slli x17, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x80000000 Shifted by 1)
li x29, 0xddbaca1a617f3c9b # initialize rd to a random value that should get changed; helps covering rd_toggle
li x29, 0x0000000080000000
c.slli x29, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x3fffffffffffffff Shifted by 1)
li x18, 0x4c0273d2864c1c81 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x18, 0x3fffffffffffffff
c.slli x18, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x7fffffffffffffff Shifted by 1)
li x16, 0x64c45b37ff1d839d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x16, 0x7fffffffffffffff
c.slli x16, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x5555555555555555 Shifted by 1)
li x27, 0xa9e6a4b33a67e66d # initialize rd to a random value that should get changed; helps covering rd_toggle
li x27, 0x5555555555555555
c.slli x27, 1 # perform operation

# Testcase cp_rd_corners (Test rd value = 0x2dde443bb1d7437b Shifted by 1)
li x21, 0xa53a337d9445d367 # initialize rd to a random value that should get changed; helps covering rd_toggle
li x21, 0x2dde443bb1d7437b
c.slli x21, 1 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
